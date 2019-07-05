unit ChequeUpCredAlloc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  MiscFunc,ExtCtrls, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS, DateTimeAccount;
type
  TfrmChequeUpCredAlloc = class(TForm)
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    dbgUpCred: TDBGrid;
    dsAlloc: TUniDataSource;
    qryAlloc: TUniQuery;
    lblUnallocatedMsg: TLabel;
    lblUnalloc: TLabel;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    qryAllocUpdate: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure dbgUpCredKeyPress(Sender: TObject; var Key: Char);
    procedure btnOKClick(Sender: TObject);
    procedure dbgUpCredColExit(Sender: TObject);
    procedure dbgUpCredColEnter(Sender: TObject);
  private
    { Private declarations }
    qryCheque : TUniQuery;
    tmpCurr : currency;
    tmpTaxCode : String;
    dtpDate : TDateTimeAccount;
    iNchequeId : integer;
    cbText : String;
    procedure updateTotal;
  public
    { Public declarations }
    procedure setChequeQry(cQry : TUniQuery);
    procedure SetdtpDate(dtpDate : TDateTimeAccount);
    procedure setiNchequeId(iNchequeId : integer);
    procedure setcbText(cbText : String);
    procedure CalcTax;
  end;

var
  frmChequeUpCredAlloc: TfrmChequeUpCredAlloc;


implementation

{$R *.DFM}

uses
  AxiomData;


procedure TfrmChequeUpCredAlloc.SetdtpDate(dtpDate : TDateTimeAccount);
begin
Self.dtpDate := dtpDate;
end;
procedure TfrmChequeUpCredAlloc.setiNchequeId(iNchequeId : integer);
begin
Self.iNchequeId := iNchequeId;
end;
procedure TfrmChequeUpCredAlloc.setcbText(cbText : String);
begin
Self.cbText := cbText;
end;

procedure TfrmChequeUpCredAlloc.FormShow(Sender: TObject);

var itemptotal : currency;
begin
   // raise exception is qryCheque is nill
   if qryCheque = nil then
      raise Exception.Create('Error: qryCheque not set');


  qryAlloc.ParamByName('NINVOICE').AsInteger := qryCheque.FieldByName('UNIQUEID').AsInteger;
  qryAlloc.Open;
  lblTotal.Caption := '0';
  lblUnalloc.Caption := qryCheque.FieldByName('AMOUNT').AsString;
  StringPopulate(dbgUpCred.Columns[8].PickList, 'TAXTYPE', 'CODE');
  qryAlloc.Edit;
  itemptotal := qryCheque.FieldByName('AMOUNT').AsCurrency;
  // allocate for each amount

  qryAlloc.First;

  while (not qryAlloc.EOF) and (itemptotal <> 0) do
  begin
    qryAlloc.Edit;

    if qryAlloc.FieldByName('OWING').AsCurrency < itemptotal then
    begin
        qryAlloc.FieldByName('AMOUNT_PAY').AsCurrency := qryAlloc.FieldByName('AMOUNT').AsCurrency;
        qryAlloc.FieldByName('TAX').AsCurrency := qryAlloc.FieldByName('TAX_OWING').AsCurrency;
        itemptotal := itemptotal -  qryAlloc.FieldByName('AMOUNT').AsCurrency;
    end
    else
    begin
        qryAlloc.FieldByName('AMOUNT_PAY').AsCurrency := itemptotal;
        itemptotal := 0;
        CalcTax;
    end;


  qryAlloc.Next;
  end;
  UpdateTotal;


end;

procedure TfrmChequeUpCredAlloc.setChequeQry(cQry : TUniQuery);
begin
  //showmessage(cQry.FieldByName('UNIQUEID').AsString);
  qryCheque := cQry;
end;

procedure TfrmChequeUpCredAlloc.updateTotal;
var
    bmPrevRecord: TBookmark;
    total	 : Currency	;
begin
    qryAlloc.Edit;
    total := 0;
    bmPrevRecord := qryAlloc.GetBookmark;
    qryAlloc.First;

    while not qryAlloc.Eof do
    begin
    total := total + qryAlloc.FieldByName('AMOUNT_PAY').AsCurrency;
    qryAlloc.Next;
    end;

    if bmPrevRecord <> nil then
     begin
       qryAlloc.GoToBookmark(bmPrevRecord);
       qryAlloc.FreeBookmark(bmPrevRecord);
     end;

     lblTotal.Caption := Format('%m', [total]);
     lblUnalloc.Caption := Format('%m', [qryCheque.FieldByName('AMOUNT').AsCurrency - total]);

     btnOK.Enabled := ((qryCheque.FieldByName('AMOUNT').AsCurrency - total) = 0);

end;


procedure TfrmChequeUpCredAlloc.dbgUpCredKeyPress(Sender: TObject;
  var Key: Char);
begin
  case dbgUpCred.SelectedIndex of
    7:
      if Key = #13 then
        begin
        CalcTax;
        UpdateTotal;
        end;
  end;
end;

procedure TfrmChequeUpCredAlloc.btnOKClick(Sender: TObject);
begin
// loop through each record
qryAlloc.First;

while not qryAlloc.Eof do
begin
    // insert alloc/invoice record
    qryAllocUpdate.Open;
    qryAllocUpdate.Insert;
    qryAllocUpdate.FieldByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
    qryAllocUpdate.FieldByName('NINVOICE').AsInteger := qryCheque.FieldByName('UNIQUEID').AsInteger;
    qryAllocUpdate.FieldByName('AMOUNT').AsCurrency := qryAlloc.FieldByName('AMOUNT').AsCurrency;
    qryAllocUpdate.FieldByName('TAX').AsCurrency := qryAlloc.FieldByName('TAX').AsCurrency;
    qryAllocUpdate.FieldByName('TRUST').AsString := 'G';
    qryAllocUpdate.FieldByname('DESCR').AsString :=  qryCheque.FieldByName('REASON').AsString;
    qryAllocUpdate.FieldByname('UPCRED').AsInteger := 0;
    qryAllocUpdate.FieldByname('PMNT_TO_UPCRED').AsInteger := 0;
    qryAllocUpdate.FieldByname('ANTD').AsInteger := 0;
    qryAllocUpdate.FieldByname('CREATED').AsDateTime := dtpDate.Date;
    qryAllocUpdate.FieldByname('ACCT').AsString := cbText;
    qryAllocUpdate.FieldByname('NMATTER').AsINTEGER := qryAlloc.FieldByname('NMATTER').AsInteger;
    qryAllocUpdate.FieldByname('FILEID').AsString := qryAlloc.FieldByname('FILEID').AsString;
    qryAllocUpdate.FieldByname('TAXCODE').AsString := qryAlloc.FieldByname('TAXCODE').AsString;
    qryAllocUpdate.FieldByname('NCLIENT').AsString := qryAlloc.FieldByname('NCLIENT').AsString;
    qryAllocUpdate.FieldByname('REFNO').AsString := qryCheque.FieldByname('REFNO').AsString;
    qryAllocUpdate.FieldByname('BILLED').AsString := 'N';
    qryAllocUpdate.FieldByname('TYPE').AsString := 'IV';
    qryAllocUpdate.Post;

    // insert the disb record
    qryAllocUpdate.Insert;
    qryAllocUpdate.FieldByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
    qryAllocUpdate.FieldByName('NCHEQUE').AsInteger := iNchequeId;
    qryAllocUpdate.FieldByName('AMOUNT').AsCurrency := qryAlloc.FieldByName('AMOUNT').AsCurrency * -1;
    qryAllocUpdate.FieldByName('TAX').AsCurrency := qryAlloc.FieldByName('TAX').AsCurrency * -1;
    qryAllocUpdate.FieldByName('TRUST').AsString := 'G';
    qryAllocUpdate.FieldByname('DESCR').AsString :=  qryCheque.FieldByName('REASON').AsString;
    qryAllocUpdate.FieldByname('UPCRED').AsInteger := 0;
    qryAllocUpdate.FieldByname('PMNT_TO_UPCRED').AsInteger := 0;
    qryAllocUpdate.FieldByname('ANTD').AsInteger := 0;
    qryAllocUpdate.FieldByname('CREATED').AsDateTime := dtpDate.Date;
    qryAllocUpdate.FieldByname('ACCT').AsString := cbText;
    qryAllocUpdate.FieldByname('NMATTER').AsINTEGER := qryAlloc.FieldByname('NMATTER').AsInteger;
    qryAllocUpdate.FieldByname('FILEID').AsString := qryAlloc.FieldByname('FILEID').AsString;
    qryAllocUpdate.FieldByname('TAXCODE').AsString := qryAlloc.FieldByname('TAXCODE').AsString;
    qryAllocUpdate.FieldByname('NCLIENT').AsString := qryAlloc.FieldByname('NCLIENT').AsString;
    qryAllocUpdate.FieldByname('REFNO').AsString := qryCheque.FieldByname('REFNO').AsString;
    qryAllocUpdate.FieldByname('BILLED').AsString := 'N';
    qryAllocUpdate.FieldByname('TYPE').AsString := 'CQ';
    qryAllocUpdate.Post;

    // update the current alloc record

    AllocUpdate(qryAlloc.FieldByName('NALLOC').AsInteger,'UPCRED',qryAlloc.FieldByName('AMOUNT').AsCurrency*-1);

    // update the matter bals 
    MatterUpdate(qryAlloc.FieldByName('NMATTER').AsInteger, 'UNBILL_UPCRED', 0 - (qryAlloc.FieldByName('AMOUNT').AsCurrency));
    MatterUpdate(qryAlloc.FieldByName('NMATTER').AsInteger, 'UNBILL_ANTD', 0 - (qryAlloc.FieldByName('AMOUNT').AsCurrency));
    MatterUpdate(qryAlloc.FieldByName('NMATTER').AsInteger, 'UNBILL_DISB',(qryAlloc.FieldByName('AMOUNT').AsCurrency));


    qryAlloc.Next;
end;
qryAllocUpdate.ApplyUpdates;

end;

procedure TfrmChequeUpCredAlloc.dbgUpCredColExit(Sender: TObject);
begin
    if (tmpCurr <> qryAlloc.FieldByName('AMOUNT_PAY').AsCurrency)
    or (tmpTaxCode <> qryAlloc.FieldByName('TAXCODE').AsString) then
    begin
    CalcTax;
    UpdateTotal;
    end;
end;


procedure TfrmChequeUpCredAlloc.CalcTax;
var
  dAmount: double;
begin
  qryAlloc.Edit;
  dAmount := qryAlloc.FieldByName('AMOUNT_PAY').AsCurrency;
  qryAlloc.FieldByName('TAX').AsFloat := TaxCalc(dAmount, '', qryAlloc.FieldByName('TAXCODE').AsString, dtpDate.Date);
  qryAlloc.FieldByName('AMOUNT_PAY').AsCurrency := dAmount;
  if qryAlloc.State in [dsInsert, dsEdit] then
    UpdateTotal;
end;



procedure TfrmChequeUpCredAlloc.dbgUpCredColEnter(Sender: TObject);
begin
 // store the amount field

 tmpCurr := qryAlloc.FieldByName('AMOUNT_PAY').AsCurrency;
 tmpTaxCode := qryAlloc.FieldByName('TAXCODE').AsString;

end;

end.
