unit MasterBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxContainer, cxEdit, Vcl.ImgList, Data.DB, DBAccess,
  Uni, MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, cxButtons;

type

  TBillItem = class(TObject)
         private
         iNmemo : integer;
         public
         property nmemo : integer read inmemo;
         constructor Create(iNmemo : integer);
  end;

  TfrmMasterBill = class(TForm)
    lblMaster: TLabel;
    btnAdd: TcxButton;
    btnRemove: TcxButton;
    qryMasterBills: TUniQuery;
    dsMasterBills: TUniDataSource;
    qryBillUpdate: TUniQuery;
    lbAssoc: TListView;
    qryLoadNmemo: TUniQuery;
    qryCheckBill: TUniQuery;
    lstMaster: TImageList;
    qryMasterBillList: TUniQuery;
    dsMasterBillList: TUniDataSource;
    cxMasterBill: TcxComboBox;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    procedure qryMasterBillsNewRecord(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure cxMasterBillPropertiesChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    iNmaster : integer;
    deleteList : TList;
    bNew : boolean;

    procedure save;

  public
    { Public declarations }
    procedure addBill(iNmemo : integer;bLoading : boolean = true);
    procedure newMaster;
    procedure loadMaster(inmaster : integer);
  end;

var
  frmMasterBill: TfrmMasterBill;

implementation

{$R *.dfm}

uses miscFunc, AxiomData,InvoiceSearch, Bills;

constructor TBillItem.Create(iNmemo : integer);
begin
    self.iNmemo := iNmemo;
end;


procedure TfrmMasterBill.save;
var
   iloop : integer;
   billItem : TBillItem;
   iCtr: integer;
   bFormUpdated: boolean;
begin

    if cxMasterBill.Text = '' then
    begin
        MsgErr('Please enter a value for the master bill');
        exit;
    end;


    if (lbAssoc.Items.Count = 0) and bNew then
    begin
        if MsgAsk('Master bill has no children, do you want to save') = mrNo then
                exit;
    end;


    try

    if bNew and (iNmaster = -1) then
    begin
        qryMasterBills.Insert;
        qryMasterBills.fieldByName('DESCR').AsString := cxMasterBill.text;
    end;


    dmAxiom.uniInsight.StartTransaction;
    if qryMasterBills.State in [dsEdit,dsInsert] then
        qryMasterBills.post;

    //qryMasterBills.ApplyUpdates;

    for iLoop := 0 to lbAssoc.Items.Count-1 do
    begin
        billItem := lbAssoc.Items[iLoop].Data;
        qryBillUpdate.close;
        qryBillUpdate.ParamByName('NMEMO').AsInteger := billItem.nmemo;
        qryBillUpdate.ParamByName('NMASTER').AsInteger := iNmaster;
        qryBillUpdate.ExecSQL;

    end;

    for iloop := 0 to deleteList.Count -1 do
    begin
        billItem := deleteList.items[iloop];
        qryBillUpdate.close;
        qryBillUpdate.ParamByName('NMEMO').AsInteger := billItem.nmemo;
        qryBillUpdate.ParamByName('NMASTER').AsString  := '';
        qryBillUpdate.ExecSQL;
    end;



    deleteList.Clear;

    if (lbAssoc.Items.Count = 0) and not bNew then
    begin
        if MsgAsk('Master bill has no children, do you want to delete it') = mrYes then
        begin
          qryMasterBills.Delete;
          qryMasterBills.ApplyUpdates;
        end;

    end;

    dmAxiom.uniInsight.Commit;

    iCtr := 0;
    bFormUpdated := False;
    while (iCtr < Screen.FormCount) and not bFormUpdated do
    begin
      if Screen.Forms[iCtr].ClassName = 'TfrmBills' then
      begin
        (Screen.Forms[iCtr] as TfrmBills).MakeSQL;
        bFormUpdated := True;
      end;
      iCtr := iCtr + 1;
    end;

    close;

    except
        dmAxiom.uniInsight.Rollback;
        raise;
    end;


end;

procedure TfrmMasterBill.addBill(iNmemo : integer;bLoading : boolean = true);
var iloop : integer;
billItem : TBillItem;
begin

    if not bLoading then
    begin
    qryCheckBill.Close;
    qryCheckBill.ParamByName('nmemo').AsInteger := iNmemo;
    qryCheckBill.open;
    qryCheckBill.First;
    if not qryCheckBill.FieldByName('nmaster').IsNull then
    begin
        qryCheckBill.Close;
        exit;
    end;

    qryCheckBill.close;
    end;

    for iLoop := 0 to lbAssoc.Items.Count-1 do
    begin
        billItem := lbAssoc.Items[iLoop].Data;
        if billItem.nmemo = iNmemo then
                exit;
    end;

        lbAssoc.AddItem(TableString('NMEMO','NMEMO',inmemo,'REFNO'),
        TBillItem.Create(iNmemo));

end;

procedure TfrmMasterBill.newMaster;
begin
    //qryMasterBills.Insert;
    bNew := true;
    iNmaster := -1;

   cxMasterBill.Properties.Items.Clear;
   qryMasterBillList.Close;
   qryMasterBillList.Open;
   while not qryMasterBillList.Eof do
   begin
     cxMasterBill.Properties.Items.Add(qryMasterBillList.fieldByName('DESCR').AsString);
     qryMasterBillList.Next;
   end;

end;

procedure TfrmMasterBill.loadMaster(inmaster : integer);
begin
   qryMasterBills.Close;
   qryMasterBills.ParamByName('NMASTER').AsInteger := inmaster;
   qryMasterBills.Open;

   qryMasterBillList.Close;
   qryMasterBillList.Open;
   qryMasterBillList.Locate('NMASTER',inmaster,[]);

   cxMasterBill.Properties.Items.Clear;
   cxMasterBill.Text := qryMasterBillList.fieldByName('DESCR').AsString;
   cxMasterBill.Properties.ReadOnly  := true;
   cxMasterBillPropertiesChange(self);


   qryLoadNmemo.Close;
   qryLoadNmemo.ParamByName('NMASTER').AsInteger := inmaster;
   qryLoadNmemo.Open;


   while not qryLoadNmemo.Eof do
   begin
      addBill(qryLoadNmemo.fieldByName('NMEMO').AsInteger,true);
      qryLoadNmemo.Next;
   end;

   Self.iNmaster := inmaster;
end;

procedure TfrmMasterBill.qryMasterBillsNewRecord(DataSet: TDataSet);
begin
      iNmaster := strToInt(dmAxiom.GetSeqNumber('seq_masterbills'));
      qryMasterBills.FieldByName('NMASTER').AsInteger := iNmaster;
end;

procedure TfrmMasterBill.btnAddClick(Sender: TObject);
var frmInvoiceSearch : TfrmInvoiceSearch;
begin

 frmInvoiceSearch := TfrmInvoiceSearch.Create(self);
 frmInvoiceSearch.ShowModal;
 addBill(frmInvoiceSearch.qryInvoices.fieldByname('NMEMO').AsInteger);
 frmInvoiceSearch.free;

end;

procedure TfrmMasterBill.FormCreate(Sender: TObject);
begin
        qryMasterBills.open;
        deleteList := TList.Create();
end;

procedure TfrmMasterBill.btnRemoveClick(Sender: TObject);

begin
    if lbAssoc.SelCount > 0 then
    begin
       deleteList.add(lbAssoc.Selected.Data);
       lbAssoc.Items.delete(lbAssoc.Selected.Index);
    end;
end;

procedure TfrmMasterBill.cxMasterBillPropertiesChange(Sender: TObject);
begin
        if qryMasterBillList.Locate('DESCR',cxMasterBill.Text,[]) then
        begin
            iNmaster := qryMasterBillList.fieldByName('NMASTER').AsInteger;
            lblMaster.caption := 'Existing Master Bill';
        end
        else
        begin
            iNmaster := -1;
            lblMaster.caption := 'New Master Bill';
        end;

end;

procedure TfrmMasterBill.btnSaveClick(Sender: TObject);
begin
   save;
end;

procedure TfrmMasterBill.btnCancelClick(Sender: TObject);
begin
 close;
end;

end.
