unit MatterPositionRpt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni, MemDS, ppDB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppReport, ppSubRpt,
  ppStrtch, ppRichTx, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppDBBDE;

type
  TfrmPositionReport = class(TForm)
    rptMatterPosition: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBRichText1: TppDBRichText;
    ppLabel22: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel38: TppLabel;
    ppDBText20: TppDBText;
    ppLabel46: TppLabel;
    ppDBText24: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine9: TppLine;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLine12: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDesignLayers9: TppDesignLayers;
    ppDesignLayer9: TppDesignLayer;
    ppLabel51: TppLabel;
    ppDBText28: TppDBText;
    ppLabel53: TppLabel;
    ppDBText30: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList4: TppParameterList;
    plPositionTotals: TppDBPipeline;
    qInvestments: TUniQuery;
    dsInvestments: TUniDataSource;
    qClientDetails: TUniQuery;
    dsClientDetails: TDataSource;
    qryPositionTotals: TUniQuery;
    dsPositionTotals: TUniDataSource;
    plClientDetails: TppBDEPipeline;
    plInvestments: TppDBPipeline;
    qryMatter: TUniQuery;
    dsMatter: TDataSource;
    plMatter: TppBDEPipeline;
    ppDBRichText2: TppDBRichText;
    ppDBText16: TppDBText;
    ppDBText21: TppDBText;
    procedure ppDBRichText1Print(Sender: TObject);
    procedure ppLabel26GetText(Sender: TObject; var Text: string);
    procedure ppLabel27GetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    FNMatter: integer;
    FNClient: integer;
    FWithGST: boolean;
    imaxLength: integer;
  public
    { Public declarations }
    property NMatter: integer read FNMatter write FNMatter;
    property NClient: integer read FNClient write FNClient;
    property WithGST: boolean read FWithGST write FWithGST;
    procedure PrintPositionRpt;
  end;

var
  frmPositionReport: TfrmPositionReport;

implementation

{$R *.dfm}

uses
   axiomdata, miscfunc;

procedure TfrmPositionReport.ppDBRichText1Print(Sender: TObject);
begin
//   ppDBRichText1.Font.Name := 'Arial';
//   ppDBRichText1.Font.Size := 10;
end;

procedure TfrmPositionReport.ppLabel26GetText(Sender: TObject;
  var Text: string);
begin
   Text := getLabelValue('MATTER','CONTROLLER',imaxLength);
end;

procedure TfrmPositionReport.ppLabel27GetText(Sender: TObject;
  var Text: string);
begin
   Text := getLabelValue('MATTER','AUTHOR',imaxLength);
end;

procedure TfrmPositionReport.PrintPositionRpt;
begin
   try
      with qryMatter do
      begin
         Close;
         ParamByName('NMATTER').AsInteger := Nmatter;
         Open;
      end;

      with qInvestments do
      begin
           close;
           ParamByName('NMATTER').AsInteger := NMatter;
           Open;
      end;

      with qClientDetails do
      begin
         Close;
         ParamByName('NCLIENT').AsInteger := NClient;
         ParamByName('NMATTER').AsInteger := NMatter;
         Open;

         with qryPositionTotals do
         begin
            Close;
            SQL.Clear;
            if (WithGST = True) then
            begin
               SQL.Add('select ');
               SQL.Add('getWIP(:P_File ) AS unbill_fees,');
               SQL.Add('getUnbillDisb(:P_File ) AS unbill_disb,');
               SQL.Add('getAntDisb(:P_File ) AS unbill_antd,');
               SQL.Add('getSundries(:P_File ) AS unbill_sund,');
               SQL.Add('getUnbillCredAmount(:P_File) + getUnbillCredTax(:P_File) AS UNBILL_CRED,');
               SQL.Add('getClearedTrustAmount(:P_File ) AS cl_trust_bal, ');
               SQL.Add('getUnbillDisb(:P_File ) +  getAntDisb(:P_File ) + getSundries(:P_File ) + getUnbillCredAmount(:P_File) + getUnbillCredTax(:P_File) AS total ');
               SQL.Add('from dual ');
            end
            else
            begin
            // no gst
               SQL.Add('select ');
               SQL.Add('getWIPAmount(:P_File) AS unbill_fees,');
               SQL.Add('getUnbillDisbAmount( :P_File ) AS unbill_disb,');
               SQL.Add('getAntDisbAmount( :P_File ) AS unbill_antd,');
               SQL.Add('getSundriesAmount( :P_File ) AS unbill_sund, ');
               SQL.Add('getClearedTrustAmount(:P_File ) AS cl_trust_bal, ');
//               SQL.Add('getUbilledCheqReqAmount(:P_File ) AS unbilled_cheqreq_no_tax,');
               SQL.Add('getUnbillCredAmount(:P_File) AS UNBILL_CRED,');
               SQL.Add('getUnbillDisbAmount( :P_File ) + getAntDisbAmount( :P_File ) + getSundriesAmount( :P_File ) + getUnbillCredAmount(:P_File) AS total ');
               SQL.Add('from dual ');
            end;
//         qryPositionTotals.ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
            ParamByName('P_File').AsInteger := NMatter;
            Open;
         end;

         try
            rptMatterPosition.Print;
         except
            // error
         end;
      end;
   finally
      qryPositionTotals.Close;
      qClientDetails.Close;
      qInvestments.Close;
      qryMatter.Close;
   end;
end;

end.
