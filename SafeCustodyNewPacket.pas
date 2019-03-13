unit SafeCustodyNewPacket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  cxLabel, StdCtrls, ComCtrls, DBDateTimePicker, cxGraphics, cxControls,
  cxLookAndFeels, cxContainer, cxEdit, cxMemo, cxDBEdit, cxTextEdit,
  dxGDIPlusClasses, dxDPIAwareUtils;

type
  TfrmSafeCustodyNewPacket = class(TForm)
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    qryNewPacket: TUniQuery;
    dsNewPacket: TUniDataSource;
    dfPacketID: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    Label1: TLabel;
    dtDestroyDate: TDBDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBTextEdit2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dfPacketIDEnter(Sender: TObject);
    procedure qryNewPacketBeforePost(DataSet: TDataSet);

  published
      constructor Create(AOwner: TComponent; NClient: integer; NDocReg: Integer); reintroduce; overload;
  private
    { Private declarations }
    FNClient: integer;
    FNDocReg: integer;
    function IsPacketUnique(nPacket: string): boolean;
    function IsDocRegUnique(ADocReg: integer): boolean;
  public
    { Public declarations }
  end;

var
  frmSafeCustodyNewPacket: TfrmSafeCustodyNewPacket;

implementation

uses
   AxiomData, MiscFunc;

{$R *.dfm}

constructor TfrmSafeCustodyNewPacket.Create(AOwner: TComponent; NClient: integer; NDocReg: Integer);
begin
   inherited Create(AOwner);
   FNClient := NClient;
   FNDocReg := NDocReg;
//  lblClient.Caption := TableString('CLIENT', 'NCLIENT', FNClient, 'SEARCH');
   qryNewPacket.Close;
   qryNewPacket.ParamByName('ndocreg').AsInteger := FNDocReg;
   qryNewPacket.ParamByName('nclient').AsInteger := FNClient;
   qryNewPacket.Open;
   if NDocReg = 0 then
   begin
      qryNewPacket.Insert;
      qryNewPacket.FieldByName('PACKETID').AsString := 'AUTO GENERATE';
   end
   else
   begin
      qryNewPacket.Edit;
      dfPacketID.Enabled := False;
   end;
   dtDestroyDate.Checked := False;
end;

procedure TfrmSafeCustodyNewPacket.cxButton1Click(Sender: TObject);
var
   ADocReg: string;
begin
   with qryNewPacket do
   begin
      FieldByName('NCLIENT').AsInteger := FNClient;
      if (FieldByName('packetid').AsString = 'AUTO GENERATE') then
      begin
         if (dfPacketID.Text = '') or (dfPacketID.Text = 'AUTO GENERATE') then
         begin
            dmAxiom.procDocRegPacketId.Execute;
            FNDocReg := dmAxiom.procDocRegPacketId.Params[0].AsInteger;
         end
         else
            FNDocReg := dfPacketID.EditValue;
         FieldByName('packetid').AsString := IntToStr(FNDocReg);
         FieldByName('NDOCREG').AsInteger := FNDocReg;
      end
      else if (FNDocReg = 0) and (dfPacketID.Text = 'AUTO GENERATE') then
         begin
            dmAxiom.procDocRegPacketId.Execute;
            FNDocReg := dmAxiom.procDocRegPacketId.Params[0].AsInteger;
            FieldByName('packetid').AsString := dfPacketID.EditValue;
            FieldByName('NDOCREG').AsInteger := FNDocReg;
         end
      else
      if FNDocReg = 0 then
      begin
         try
            StrToInt(dfPacketID.EditValue);
            ADocReg := dfPacketID.EditValue;
            if not IsDocRegUnique(StrToInt(ADocReg)) then
            begin
               dmAxiom.procDocRegPacketId.Execute;
               ADocReg := IntToStr(dmAxiom.procDocRegPacketId.Params[0].AsInteger);
            end;
         except
            dmAxiom.procDocRegPacketId.Execute;
            ADocReg := IntToStr(dmAxiom.procDocRegPacketId.Params[0].AsInteger);
         end;

         FieldByName('packetid').AsString := dfPacketID.EditValue;
         FieldByName('NDOCREG').AsString := ADocReg;
      end;
      Post;
   end;
end;

procedure TfrmSafeCustodyNewPacket.cxButton2Click(Sender: TObject);
begin
   with qryNewPacket do
   begin
      Cancel;
   end;
end;

function TfrmSafeCustodyNewPacket.IsPacketUnique(nPacket: string): boolean;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;

      try
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('SELECT ''x'' FROM DOCREG WHERE PACKETID = :nPacket');
         loQry.Params[0].AsString := nPacket;

         loQry.Open;

         Result := loQry.Eof;

      finally
      loQry.Close;
      FreeAndNil(loQry);
    end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
end;

procedure TfrmSafeCustodyNewPacket.qryNewPacketBeforePost(DataSet: TDataSet);
begin
   if dtDestroyDate.Checked = False then
      DataSet.FieldByName('DESTROY_DATE').Clear;
end;

procedure TfrmSafeCustodyNewPacket.cxDBTextEdit2PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   IF not IsPacketUnique(DisplayValue) then
   begin
      ErrorText := 'Packet ID is not unique.  Please enter new value and try again.';
      Error := True;
   end;
end;

function TfrmSafeCustodyNewPacket.IsDocRegUnique(ADocReg: integer): boolean;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;

      try
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('SELECT ''x'' FROM DOCREG WHERE NDOCREG = :nPacket');
         loQry.Params[0].AsInteger := ADocReg;

         loQry.Open;

         Result := loQry.Eof;

      finally
      loQry.Close;
      FreeAndNil(loQry);
    end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
end;

procedure TfrmSafeCustodyNewPacket.dfPacketIDEnter(Sender: TObject);
begin
   TcxDBTextEdit(Sender).SelectAll;
end;

end.
