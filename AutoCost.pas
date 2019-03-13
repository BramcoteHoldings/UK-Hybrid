unit AutoCost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ToolWin, ComCtrls, StdCtrls, DBCtrls, Db, ExtCtrls, NumberEdit, Buttons,
  NumberLabel, ImgList, MemDS, OracleUniProvider, Uni, DBAccess, dxBar, cxClasses;

const
  BTNRESUME = 12; //3
  BTNPAUSE = 13; // 4
  SBARCOUNT = 0;
  SBARTIME = 1;
  SBARBILLUNITS = 2;
  SBARAMOUNT = 3;

type
  TfrmAutocost = class(TForm)
    ilstToolbar: TImageList;
    tbrAutocost: TToolBar;
    tbtnFinish: TToolButton;
    ToolButton2: TToolButton;
    tbtnResume: TToolButton;
    tbtnDelete: TToolButton;
    ToolButton4: TToolButton;
    lvTimers: TListView;
    ilstTimers: TImageList;
    tmrAutocost: TTimer;
    imgDetails: TImage;
    Label1: TLabel;
    lblMatter: TLabel;
    lblClient: TLabel;
    Label3: TLabel;
    lblDesc: TLabel;
    Label4: TLabel;
    lblPartner: TLabel;
    lblPartner1: TLabel;
    lblAuthor: TLabel;
    lblAuthor1: TLabel;
    lblStarted: TLabel;
    Label8: TLabel;
    lblElapsed: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    mmoDesc: TMemo;
    Image1: TImage;
    popMatter: TPopupMenu;
    popMatterFile: TMenuItem;
    popMatterClient: TMenuItem;
    tbtnIcons: TToolButton;
    tbtnDetails: TToolButton;
    ToolButton1: TToolButton;
    Label2: TLabel;
    tbtnFind: TToolButton;
    sbarStatus: TStatusBar;
    lblUnits: TLabel;
    tbtnMakeFee: TToolButton;
    neRate: TNumberEdit;
    nlAmount: TNumberLabel;
    ToolButton3: TToolButton;
    tbtnHelp: TToolButton;
    tbtnMatter: TToolButton;
    tbtnSnapshot: TToolButton;
    Label5: TLabel;
    lblFeeTypeDescr: TLabel;
    cbFeeType: TComboBox;
    qryFeeInsert: TUniQuery;
    ToolButton5: TToolButton;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    tbtnResume1: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    procedure tmrAutocostTimer(Sender: TObject);
    procedure lvTimersClick(Sender: TObject);
    procedure lvTimersDblClick(Sender: TObject);
    procedure mmoDescExit(Sender: TObject);
    procedure tbtnFinishClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure tbtnResumeClick(Sender: TObject);
    procedure mmoDescKeyPress(Sender: TObject; var Key: Char);
    procedure tbtnIconsClick(Sender: TObject);
    procedure tbtnDetailsClick(Sender: TObject);
    procedure lvTimersEditing(Sender: TObject; Item: TListItem;
      var AllowEdit: Boolean);
    procedure tbtnFindClick(Sender: TObject);
    procedure mnuFilePauseClick(Sender: TObject);
    procedure mnuFileResumeClick(Sender: TObject);
    procedure mnuFileMakeFeeClick(Sender: TObject);
    procedure tbtnMakeFeeClick(Sender: TObject);
    procedure neRateExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbtnMatterClick(Sender: TObject);
    procedure tbtnSnapshotClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFeeTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuFileNewClick(Sender: TObject);
    procedure mmoDescChange(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
    fActive : boolean;
    procedure DisplayDetails;
    procedure EnableToolbuttons;
    procedure DisableToolbuttons;
    procedure ShowTime;
    procedure IncrPriorities(iTimer : integer);
    procedure DecrPriorities(iTimer : integer);
    procedure SetResume;
    procedure SetPause;
    function CalcStrAmount(iSecs : integer; cRate : currency; sType : string) : string;
    function CalcAmount(iSecs : integer; cRate : currency; sType : string) : currency;
    procedure CalcStatusbar;
  public
    { Public declarations }
    procedure CreateTimer(sFile : string);
  end;

  recTimer = record
    sMatter : string;
    sClient : string;
    sRe : string;
    dtStarted : TDateTime;
    iElapsed : integer;
    bPaused : boolean;
    cRate : currency;
    cAmount : currency;
    sPartner : string;
    sAuthor : string;
    sType : string;
    bBillable : boolean;
    sDesc : string;
    iPriority : integer;
  end; // record recTimer

var
  frmAutocost: TfrmAutocost;

implementation

uses
  Desktop, FeeNew, Matters, MiscFunc, AxiomData, MSearch, citfunc;

{$R *.DFM}

var
  rTimers : array [0 .. 150] of recTimer;
  iActiveTimer : integer;
  iMinsPerUnit : integer;

procedure TfrmAutocost.FormShow(Sender: TObject);
begin
   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   iActiveTimer := -1;
  // See if we are Unit costing
   iMinsPerUnit := SystemInteger('TIME_UNITS');

   fActive := True;
   lvTimers.SetFocus;
   EnableToolbuttons;
end;

procedure TfrmAutocost.tbtnResumeClick(Sender: TObject);
var
  iCtr : integer;
begin
   if lvTimers.Items.Count > 0 then
   begin
      if lvTimers.Selected.Index <> iActiveTimer then
      begin
         rTimers[lvTimers.Selected.Index].bPaused := False;
         IncrPriorities(lvTimers.Selected.Index);
         for iCtr := 0 to lvTimers.Items.Count - 1 do
            if iCtr <> iActiveTimer then
               lvTimers.Items[iCtr].ImageIndex := 0;
         lvTimers.Items[iActiveTimer].ImageIndex := 1;
         DisplayDetails;
         SetPause;
         tmrAutocost.Enabled := True;
      end
      else
      begin
         tmrAutocost.Enabled := False;
         rTimers[iActiveTimer].bPaused := True;
         lvTimers.Items[iActiveTimer].ImageIndex := 0;
//    btnSwatch.Glyph := ilstTimers[3]. ;
         iActiveTimer := -1;
         SetResume;
      end;
   end
   else
      MsgErr('You must select a matter.');
end;

procedure TfrmAutocost.CreateTimer(sFile : string);
var
  NewListItem : TListItem;
  iExists, iCtr : integer;
begin
   iExists := -1;
   iCtr := 0;
   while (iCtr < lvTimers.Items.Count) and (iExists = -1) do
   begin
      if lvTimers.Items[iCtr].Caption = sFile then
      begin
         iExists := iCtr;
         IncrPriorities(iCtr);
      end;
      iCtr := iCtr + 1;
   end;
   if iExists < 0 then
   begin
      NewListItem := lvTimers.Items.Add;
      NewListItem.ImageIndex := 1;
      NewListItem.Caption := sFile;
      NewListItem.Focused := True;
      NewListItem.Selected := True;
      // Make the new rTimer entry
      rTimers[NewListItem.Index].sMatter := sFile;
      rTimers[NewListItem.Index].sClient := MatterString(sFile, 'TITLE');
      rTimers[NewListItem.Index].sRe := MatterString(sFile, 'SHORTDESCR');
      rTimers[NewListItem.Index].dtStarted := Now;
      rTimers[NewListItem.Index].iElapsed := 0;
      rTimers[NewListItem.Index].bPaused := False;
      rTimers[NewListItem.Index].cRate := dmAxiom.AuthorRate;
      rTimers[NewListItem.Index].cAmount := 0;
      rTimers[NewListItem.Index].sPartner := MatterString(sFile, 'PARTNER');
      rTimers[NewListItem.Index].sAuthor := dmAxiom.UserID;
      rTimers[NewListItem.Index].sType := 'N';
      rTimers[NewListItem.Index].bBillable := True;
      rTimers[NewListItem.Index].sDesc := '';
      rTimers[NewListItem.Index].iPriority := 0;
      IncrPriorities(NewListItem.Index);
      sbarStatus.Panels[SBARCOUNT].Text := IntToStr(lvTimers.Items.Count) + ' Timer(s)';
      NewListItem.SubItems.Add(rTimers[NewListItem.Index].sClient);
      NewListItem.SubItems.Add(rTimers[NewListItem.Index].sRe);
      NewListItem.SubItems.Add('0 secs');
      NewListItem.SubItems.Add('$0.00');
   end;

   DisplayDetails;
   tmrAutoCost.Enabled := True;
 //  lvTimers.SetFocus;
 //  EnableToolbuttons;
end;

procedure TfrmAutoCost.DisplayDetails;
var
  iTmp, iIdx : integer;
begin
  if lvTimers.SelCount > 0 then
    iIdx := lvTimers.Selected.Index
  else
    iIdx := -1;

  if iIdx >= 0 then
  begin
{    if iIdx <> iActiveTimer then
      imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchz.bmp');
}
    lblMatter.Caption := rTimers[iIdx].sMatter;
    lblClient.Caption := rTimers[iIdx].sClient;
    lblDesc.Caption := rTimers[iIdx].sRe;
    lblPartner.Caption := rTimers[iIdx].sPartner;
    lblAuthor.Caption := rTimers[iIdx].sAuthor;
    lblStarted.Caption := DateTimeToStr(rTimers[iIdx].dtStarted);
    neRate.AsCurrency := rTimers[iIdx].cRate;
    cbFeeType.ItemIndex := cbFeeType.Items.IndexOf(rTimers[iIdx].sType);
    cbFeeType.OnClick(Self);
    mmoDesc.Text := rTimers[iIdx].sDesc;
    if iMinsPerUnit = 0 then
      lblUnits.Caption := 'N/A';
    // Show the time
    lblElapsed.Caption := '';
    iTmp := rTimers[iIdx].iElapsed div 60;
    if iTmp > 0 then
      lblElapsed.Caption := IntToStr(iTmp) + ' mins, ';
    iTmp := rTimers[iIdx].iElapsed mod 60;
    lblElapsed.Caption := lblElapsed.Caption + IntToStr(iTmp) + ' secs';
    // Calc the amount
    nlAmount.AsCurrency := CalcAmount(rTimers[iIdx].iElapsed, rTimers[iIdx].cRate, rTimers[iIdx].sType);
    //ShowTime;
    tbtnResume.Enabled := True;
  end;
  if iIdx < 0 then
  begin
    tmrAutocost.Enabled := False;
//    imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchz.bmp');
    lblMatter.Caption := '';
    lblClient.Caption := '';
    lblDesc.Caption := '';
    lblPartner.Caption := '';
    lblAuthor.Caption := '';
    lblStarted.Caption := '';
    lblElapsed.Caption := '';
    neRate.AsCurrency := 0;
    nlAmount.AsCurrency := 0.00;
    lblUnits.Caption := '';
    mmoDesc.Text := '';
    tbtnResume.Enabled := False;
    DisableToolbuttons;
    sbarStatus.Panels[SBARTIME].Text := '';
    sbarStatus.Panels[SBARBILLUNITS].Text := '';
    sbarStatus.Panels[SBARAMOUNT].Text := '';
  end;
end;

procedure TfrmAutocost.IncrPriorities(iTimer : integer);
// Increments the Timer Priority sequence, making the Timer
// parameter the iActiveTimer
var
  iCtr, iOldPriority : integer;
begin
  // Deactivate and re-prioritise the Timers
  iOldPriority := rTimers[iTimer].iPriority;
  if iOldPriority = 0 then
    iOldPriority := lvTimers.Items.Count;
  for iCtr := 0 to lvTimers.Items.Count - 1 do
  begin
    lvTimers.Items[iCtr].ImageIndex := 0;
    rTimers[iTimer].bPaused := True;
    if rTimers[iCtr].iPriority <= iOldPriority then
      rTimers[iCtr].iPriority := rTimers[iCtr].iPriority + 1;
  end;
  // Make this the active one
  rTimers[iTimer].iPriority := 1;
  rTimers[iTimer].bPaused := False;
  iActiveTimer := iTimer;
  lvTimers.Selected := lvTimers.Items[iTimer];
  lvTimers.Items[iTimer].ImageIndex := 1;
  EnableToolbuttons;
  SetPause;
end;

procedure TfrmAutocost.DecrPriorities(iTimer : integer);
// Decrements the Timer Priority sequence
var
  iCtr, iOldPriority : integer;
begin
  iActiveTimer := -1;
  iOldPriority := rTimers[iTimer].iPriority;
  for iCtr := 0 to lvTimers.Items.Count - 1 do
  begin
    lvTimers.Items[iCtr].ImageIndex := 0;
    if rTimers[iCtr].iPriority > iOldPriority then
      rTimers[iCtr].iPriority := rTimers[iCtr].iPriority - 1;
    if (rTimers[iCtr].iPriority = 1) and (iCtr <> iTimer) then
      iActiveTimer := iCtr;
  end;
  for iCtr := iTimer to lvTimers.Items.Count do
    rTimers[iCtr] := rTimers[iCtr+1];
  if iActiveTimer > iTimer then
    iActiveTimer := iActiveTimer - 1;
  lvTimers.Items[iTimer].Delete;
  if iActiveTimer <> -1 then
  begin
    lvTimers.Selected := lvTimers.Items[iActiveTimer];
    lvTimers.Items[iActiveTimer].ImageIndex := 1;
  end
  else
    DisableToolbuttons;
  sbarStatus.Panels[SBARCOUNT].Text := IntToStr(lvTimers.Items.Count) + ' Timer(s)';
end;

procedure TfrmAutocost.tmrAutocostTimer(Sender: TObject);
begin
  if iActiveTimer >= 0 then
  begin
    rTimers[iActiveTimer].iElapsed := rTimers[iActiveTimer].iElapsed + 1;
    if fActive then
    begin
      ShowTime;
      CalcStatusBar;
    end;
  end;
{  if lvTimers.Selected.Index = iActiveTimer then
  begin
    case iCurrentImage of
      0: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatcha.bmp');
      1: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchb.bmp');
      2: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchc.bmp');
      3: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchd.bmp');
      4: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatche.bmp');
      5: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchf.bmp');
      6: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchg.bmp');
      7: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchh.bmp');
      8: imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatcha.bmp');
    end;
    iCurrentImage := iCurrentImage + 1;
    if iCurrentImage > 8 then
      iCurrentImage := 1;
  end
  else imgSwatch.Picture.LoadFromFile('C:\BM4Win\images\Swatchz.bmp');
}
end;

procedure TfrmAutocost.CalcStatusbar;
var
  iTotalElapsed : integer;
  iCtr : integer;
  iHours, iMins, iSecs, iUnits : integer;
  sElapsed : string;
  cAmount : currency;
begin
  iUnits := 0;
  cAmount := 0;
  iTotalElapsed := 0;
  for iCtr := 0 to lvTimers.Items.Count - 1 do
  begin
    iTotalElapsed := iTotalElapsed + rTimers[iCtr].iElapsed;
    if (rTimers[iCtr].sType = 'N') and (iMinsPerUnit > 0) then
      iUnits := iUnits + ((rTimers[iCtr].iElapsed div 60 div iMinsPerUnit) + 1);
    cAmount := cAmount + CalcAmount(rTimers[iCtr].iElapsed, rTimers[iCtr].cRate, rTimers[iCtr].sType);
  end;
  sElapsed := 'Total Time = ';
  // Do the minutes
  iMins := iTotalElapsed div 60;
  if iMins > 0 then
    if iMins > 59 then
    begin
      iHours := iMins div 60;
      iMins := iMins mod 60;
      if iHours = 1 then
        sElapsed := '1 hour, '
      else
        sElapsed := IntToStr(iHours) + ' hours, '
    end;
  if iMins = 1 then
    sElapsed := sElapsed + '1 min, '
  else
    sElapsed := sElapsed + IntToStr(iMins) + ' mins, ';
  // and now the seconds
  iSecs := iTotalElapsed mod 60;
  if iSecs = 1 then
    sElapsed := sElapsed + '1 sec'
  else
    sElapsed := sElapsed + IntToStr(iSecs) + ' secs';
  sbarStatus.Panels[SBARTIME].Text := sElapsed;
  if iUnits > 0 then
    sbarStatus.Panels[SBARBILLUNITS].Text := IntToStr(iUnits) + ' Billable Units'
  else
    sbarStatus.Panels[SBARBILLUNITS].Text := '';
  sbarStatus.Panels[SBARAMOUNT].Text := Format('%m', [cAmount]);
end;

procedure TfrmAutocost.ShowTime;
var
  sElapsed, sShortTime, sAmount : string;
  iHours, iMins, iSecs : integer;
begin
  iHours := 0;
  // Do the minutes
  sElapsed := '';
  iMins := rTimers[iActiveTimer].iElapsed div 60;
  if iMins > 0 then
    if iMins > 59 then
    begin
      iHours := iMins div 60;
      iMins := iMins mod 60;
      if iHours = 1 then
        sElapsed := '1 hour, '
      else
        sElapsed := IntToStr(iHours) + ' hours, '
    end;
  if iMins = 1 then
    sElapsed := sElapsed + '1 min, '
  else
    sElapsed := sElapsed + IntToStr(iMins) + ' mins, ';
  if iHours > 0 then
  begin
    sShortTime := IntToStr(iHours) + ':';
    if iMins < 10 then
      sShortTime := sShortTime + '0';
    sShortTime := sShortTime + IntToStr(iMins) + ':';
  end
  else
    sShortTime := IntToStr(iMins) + ':';
  // and now the seconds
  iSecs := rTimers[iActiveTimer].iElapsed mod 60;
  if iSecs = 1 then
    sElapsed := sElapsed + '1 sec'
  else
    sElapsed := sElapsed + IntToStr(iSecs) + ' secs';
  if iSecs < 10 then
    sShortTime := sShortTime + '0';
  sShortTime := sShortTime + IntToStr(iSecs);

  // The units
  if iMinsPerUnit > 0 then
    lblUnits.Caption := IntToStr(((rTimers[iActiveTimer].iElapsed div 60) div iMinsPerUnit) + 1);

  // Calc the amount
  sAmount := CalcStrAmount(rTimers[iActiveTimer].iElapsed, rTimers[iActiveTimer].cRate, rTimers[iActiveTimer].sType);

  // Update the Details ListView
  lvTimers.Items[iActiveTimer].Subitems.Strings[2] := sShortTime;
  lvTimers.Items[iActiveTimer].Subitems.Strings[3] := sAmount;

  if lvTimers.Selected.Index = iActiveTimer then
  begin
    lblElapsed.Caption := sElapsed;
    nlAmount.AsCurrency := CalcAmount(rTimers[iActiveTimer].iElapsed, rTimers[iActiveTimer].cRate, rTimers[iActiveTimer].sType);
  end;
end;

function TfrmAutocost.CalcStrAmount(iSecs : integer; cRate : currency; sType : string) : string;
begin
  CalcStrAmount := Format('%m', [CalcAmount(iSecs, cRate, sType)]);
end;

function TfrmAutocost.CalcAmount(iSecs : integer; cRate : currency; sType : string) : currency;
begin
  if ((iSecs >= 0) and (iActiveTimer >= 0) and (rTimers[iActiveTimer].bBillable)) then
  begin
    if iMinsPerUnit > 0 then
      CalcAmount := (((iSecs div 60) div iMinsPerUnit) + 1) * cRate / 60 * iMinsPerUnit
    else
      CalcAmount := iSecs * cRate / 3600;
  end
  else  // Non-billable
    CalcAmount := 0.0;
end;

procedure TfrmAutocost.lvTimersDblClick(Sender: TObject);
begin
  if (lvTimers.SelCount = 0) and (iActiveTimer >= 0) then
    lvTimers.Selected := lvTimers.Items[iActiveTimer];
  if lvTimers.SelCount > 0 then
    tbtnResumeClick(Self);
end;

procedure TfrmAutocost.EnableToolbuttons;
begin
  tbtnFinish.Enabled := True;
  tbtnMakeFee.Enabled := True;
//  mnuFileFinish.Enabled := True;
//  mnuFileMakeFee.Enabled := True;
  if tbtnResume.Hint = 'Pause' then
  begin
//    mnuFileResume.Enabled := False;
//    mnuFilePause.Enabled := True;
  end
  else
  begin
//    mnuFileResume.Enabled := True;
//    mnuFilePause.Enabled := False;
  end;
  tbtnResume.Enabled := True;
  tbtnDelete.Enabled := True;
  tbtnMatter.Enabled := True;
  tbtnSnapshot.Enabled := True;
//  mnuFileDelete.Enabled := True;
  neRate.Enabled := True;
  cbFeeType.Enabled := True;
  mmoDesc.Enabled := True;
end;

procedure TfrmAutocost.DisableToolbuttons;
begin
  tbtnFinish.Enabled := False;
  tbtnMakeFee.Enabled := False;
//  mnuFileFinish.Enabled := False;
//  mnuFileMakeFee.Enabled := False;
  tbtnResume.Enabled := False;
//  mnuFileResume.Enabled := False;
//  mnuFilePause.Enabled := False;
  tbtnDelete.Enabled := False;
  tbtnMatter.Enabled := False;
  tbtnSnapshot.Enabled := False;
//  mnuFileDelete.Enabled := False;
  neRate.Enabled := False;
  cbFeeType.Enabled := False;
  mmoDesc.Enabled := False;
end;

procedure TfrmAutocost.lvTimersClick(Sender: TObject);
begin
  if (lvTimers.SelCount = 0) and (iActiveTimer >= 0) then
    lvTimers.Selected := lvTimers.Items[iActiveTimer];
  if lvTimers.SelCount > 0 then
  begin
    if (lvTimers.Selected.Index = iActiveTimer) and (iActiveTimer <> -1) then
      SetPause
    else
      SetResume;
    DisplayDetails;
  end;
end;

procedure TfrmAutocost.mmoDescExit(Sender: TObject);
begin
  Quickcode(mmoDesc);
end;

procedure TfrmAutocost.tbtnFinishClick(Sender: TObject);
var
  dAmount: Double;
begin
  if mmoDesc.Text <> '' then
  begin
    qryFeeInsert.ParamByName('CREATED').AsDateTime := rTimers[iActiveTimer].dtStarted;
    qryFeeInsert.ParamByName('DESCR').AsString := rTimers[iActiveTimer].sDesc;
    if SystemInteger('TIME_UNITS') > 0 then
    begin
      qryFeeInsert.ParamByName('UNITS').AsInteger := 1 + (rTimers[iActiveTimer].iElapsed div 60) div SystemInteger('TIME_UNITS');
      qryFeeInsert.ParamByName('MINS').AsInteger := rTimers[iActiveTimer].iElapsed div 60;
      qryFeeInsert.ParamByName('UNIT').AsString := 'Units';
    end
    else
    begin
      qryFeeInsert.ParamByName('UNITS').AsInteger := rTimers[iActiveTimer].iElapsed div 60;
      qryFeeInsert.ParamByName('MINS').AsInteger := rTimers[iActiveTimer].iElapsed div 60;
      qryFeeInsert.ParamByName('UNIT').AsString := 'Mins';
    end;
    qryFeeInsert.ParamByName('AUTHOR').AsString := rTimers[iActiveTimer].sAuthor;
    qryFeeInsert.ParamByName('RATE').AsFloat := rTimers[iActiveTimer].cRate;
    qryFeeInsert.ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', rTimers[iActiveTimer].sMatter, 'NMATTER');
    qryFeeInsert.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', rTimers[iActiveTimer].sMatter, 'NCLIENT');
    qryFeeInsert.ParamByName('PARTNER').AsString := MatterString(rTimers[iActiveTimer].sMatter, 'PARTNER');
    qryFeeInsert.ParamByName('FILEID').AsString := rTimers[iActiveTimer].sMatter;
    if rTimers[iActiveTimer].bBillable then
      qryFeeInsert.ParamByName('BILLED').AsString := 'N'
    else
      qryFeeInsert.ParamByName('BILLED').AsString := 'Y';
    qryFeeInsert.ParamByName('TYPE').AsString := rTimers[iActiveTimer].sType;
    qryFeeInsert.ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
    qryFeeInsert.ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', rTimers[iActiveTimer].sAuthor, 'DEPT');
    qryFeeInsert.ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', rTimers[iActiveTimer].sAuthor, 'TYPE');
    qryFeeInsert.ParamByName('TAXCODE').AsString := dmAxiom.DefaultTax;
    dAmount := CalcAmount(rTimers[iActiveTimer].iElapsed, rTimers[iActiveTimer].cRate, rTimers[iActiveTimer].sType);
    qryFeeInsert.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', dmAxiom.DefaultTax, qryFeeInsert.ParamByName('CREATED').AsDateTime);
    qryFeeInsert.ParamByName('AMOUNT').AsFloat := dAmount;
    qryFeeInsert.ExecSQL;

    MatterUpdate(qryFeeInsert.ParamByName('NMATTER').AsInteger, 'UNBILL_FEES', qryFeeInsert.ParamByName('AMOUNT').AsFloat);
    if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR') <> '' then
      PostLedgers(qryFeeInsert.ParamByName('CREATED').AsDateTime
        , qryFeeInsert.ParamByName('AMOUNT').AsFloat
        , qryFeeInsert.ParamByName('FILEID').AsString
        , 'FEE'
        , GetSeqNumberi('SQNC_NFEE')
        , qryFeeInsert.ParamByName('DESCR').AsString
        , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR')
        , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR')
        , qryFeeInsert.ParamByName('AUTHOR').AsString
        , dmAxiom.DefaultTax);

    DecrPriorities(lvTimers.Selected.Index);
    DisplayDetails;

    
    CheckLedgerTotal;
  end
  else
    MsgErr('You must enter a description before saving this Fee');
end;

procedure TfrmAutocost.tbtnDeleteClick(Sender: TObject);
begin
  DecrPriorities(lvTimers.Selected.Index);
  DisplayDetails;
end;

procedure TfrmAutocost.SetResume;
begin
  tbtnResume1.ImageIndex := BTNRESUME;
//  tbtnResume.Repaint; // Clear the image
  tbtnResume1.Hint := 'Resume';
//  mnuFileResume.Enabled := True;
//  mnuFilePause.Enabled := False;
end;

procedure TfrmAutocost.SetPause;
begin
  tbtnResume1.ImageIndex := BTNPAUSE;
//  tbtnResume.Repaint; // Clear the image
  tbtnResume1.Hint := 'Pause';
//  mnuFileResume.Enabled := False;
//  mnuFilePause.Enabled := True;
end;

procedure TfrmAutocost.mmoDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(mmoDesc);
end;

procedure TfrmAutocost.tbtnIconsClick(Sender: TObject);
begin
  lvTimers.ViewStyle := vsIcon;
end;

procedure TfrmAutocost.tbtnDetailsClick(Sender: TObject);
begin
  lvTimers.ViewStyle := vsReport;
end;

procedure TfrmAutocost.lvTimersEditing(Sender: TObject; Item: TListItem;
  var AllowEdit: Boolean);
begin
  Item.CancelEdit;
  AllowEdit := False;
end;

procedure TfrmAutocost.tbtnFindClick(Sender: TObject);
begin
  if not FormExists(frmMatterSearch) then
    Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
  if frmMatterSearch.ShowModal = mrOK then
    if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
    begin
      if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
         CreateTimer(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)
      else
         MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' is not current');
    end;
end;

procedure TfrmAutocost.mnuFilePauseClick(Sender: TObject);
begin
  tbtnResumeClick(Self);
end;

procedure TfrmAutocost.mnuFileResumeClick(Sender: TObject);
begin
  tbtnResumeClick(Self);
end;

procedure TfrmAutocost.mnuFileMakeFeeClick(Sender: TObject);
begin
  tbtnMakeFeeClick(Self);
end;

procedure TfrmAutocost.tbtnMakeFeeClick(Sender: TObject);
var
  frmNewFee : TfrmFeeNew;
  sUnits : string;
  cAmount : currency;
begin
  // Turn of the clock
  tmrAutoCost.Enabled := False;
  // Convert Timer to Editable Fee
  if iMinsPerUnit = 0 then
    sUnits := CurrToStr(rTimers[lvTimers.Selected.Index].cRate)
  else
    sUnits := lblUnits.Caption;
  if iMinsPerUnit > 0 then
    cAmount := (((rTimers[lvTimers.Selected.Index].iElapsed div 60) div iMinsPerUnit) + 1) * rTimers[lvTimers.Selected.Index].cRate / 60 * iMinsPerUnit
  else
    cAmount := rTimers[lvTimers.Selected.Index].iElapsed * rTimers[lvTimers.Selected.Index].cRate / 3600;

  frmNewFee := TfrmFeeNew.Create(Self, False);
  frmNewFee.Show;
  frmNewFee.CreateFee(lblMatter.Caption, lblAuthor.Caption, mmoDesc.Text, sUnits, (rTimers[lvTimers.Selected.Index].iElapsed div 60),  rTimers[lvTimers.Selected.Index].cRate, cAmount, cbFeeType.Text);

  DecrPriorities(lvTimers.Selected.Index);
  DisplayDetails;
end;

procedure TfrmAutocost.neRateExit(Sender: TObject);
var
  iIdx : integer;
begin
  if lvTimers.Items.Count > 0 then
  begin
    iIdx := lvTimers.Selected.Index;
    rTimers[iIdx].cRate := neRate.AsCurrency;
    // Calc the amount
    nlAmount.AsCurrency := CalcAmount(rTimers[iIdx].iElapsed, rTimers[iIdx].cRate, rTimers[iIdx].sType);
  end;
end;


procedure TfrmAutocost.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if lvTimers.Items.Count > 0 then
    if MsgWarn('You are still Autocosting. Are you sure you want to stop Autocosting?') = mrNo then
      CanClose := False;
end;

procedure TfrmAutocost.tbtnMatterClick(Sender: TObject);
begin
  if lvTimers.Items.Count > 0 then
  begin
    if lvTimers.Selected.Index >= 0 then
    begin
      with TfrmMatters.Create(Self) do
        DisplayMatter(rTimers[lvTimers.Selected.Index].sMatter);
    end;
  end;
end;

procedure TfrmAutocost.tbtnSnapshotClick(Sender: TObject);
begin
  frmDesktop.AddSnapshot(13, lblMatter.Caption + ' ' + lblClient.Caption + ' ' + lblDesc.Caption);
end;

procedure TfrmAutocost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Self.Release;
  RemoveFromDesktop(Self);
end;

procedure TfrmAutocost.cbFeeTypeClick(Sender: TObject);
var
  lcRate: currency;
  lsec: integer;
  lsType: string;
begin
  if lvTimers.Items.Count > 0 then
  begin
    rTimers[lvTimers.Selected.Index].sType := cbFeeType.Text;
    lblFeeTypeDescr.Caption := TableString('FEETYPE', 'CODE', cbFeeType.Text, 'DESCR');
    if TableString('FEETYPE', 'CODE', cbFeeType.Text, 'BILLABLE') = 'N' then
    begin
      rTimers[lvTimers.Selected.Index].bBillable := False;
      neRate.AsCurrency := 0.00;
      rTimers[lvTimers.Selected.Index].cRate := 0.0;
    end
    else
    begin
      rTimers[lvTimers.Selected.Index].bBillable := True;
      neRate.AsCurrency := dmAxiom.AuthorRate;
      rTimers[lvTimers.Selected.Index].cRate := dmAxiom.AuthorRate;
      lcRate :=  rTimers[iActiveTimer].cRate;
      lsec :=  rTimers[iActiveTimer].iElapsed;
      lsType := rTimers[iActiveTimer].sType;
      nlAmount.AsCurrency := CalcAmount(rTimers[iActiveTimer].iElapsed, rTimers[iActiveTimer].cRate, rTimers[iActiveTimer].sType);
    end;
  end;
end;


procedure TfrmAutocost.FormCreate(Sender: TObject);
var
    iMaxLength : integer;
begin
  iMaxLength := 0;
  GetLabel(lblPartner1,'MATTER','PARTNER',imaxLength);
  //GetLabel(lblOpCap,'MATTER','OPERATOR',imaxLength);
  GetLabel(lblAuthor1,'MATTER','AUTHOR',imaxLength);
  //GetLabel(lblControl,'MATTER','CONTROLLER',imaxLength);
  StringPopulate(cbFeeType.Items, 'FEETYPE', 'CODE', 'CODE < ''a''');
end;

procedure TfrmAutocost.mnuFileNewClick(Sender: TObject);
begin
  tbtnFind.Click;
end;

procedure TfrmAutocost.mmoDescChange(Sender: TObject);
begin
  if lvTimers.Selected <> nil then
    rTimers[lvTimers.Selected.Index].sDesc := mmoDesc.Text;
end;

procedure TfrmAutocost.mnuFileExitClick(Sender: TObject);
begin
  Close;
//  RemoveFromDesktop(Self);
end;

procedure TfrmAutocost.ToolButton5Click(Sender: TObject);
begin
   Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmAutocost.FormHide(Sender: TObject);
begin
   fActive := False;
end;

end.

