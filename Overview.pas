unit Overview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, StdCtrls, Buttons, ExtCtrls, ToolWin, Menus,
  ImgList, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, DBAccess;

const
  imgNORMAL = 0;
  imgSELECTED = 1;

  ISMATTER = 2;
  ISMATTERSELECTED = 3;
  ISARCHIVED = 4;
  ISARCHIVEDSELECTED = 5;
  ISINVOICE = 6;
  ISINVOICESELECTED = 7;
  ISFEE = 8;
  ISFEEUNBILLED = 9;
  ISDISB = 10;
  ISDISBUNBILLED = 11;
  ISSUNDRY = 12;
  ISSUNDRYUNBILLED = 13;

type
  TRootGroup = (rgAuthor, rgClient, rgType);

  TptrNodeData = ^TrecNodeData;
  TrecNodeData = record
    Code: Variant;
  end;

  TfrmOverview = class(TForm)
    tvOverview: TTreeView;
    ilstItems: TImageList;
    ilstStatus: TImageList;
    lvDetails: TListView;
    spCentre: TSplitter;
    sbarExplorer: TStatusBar;
    ilstToolbar: TImageList;
    mnuMain: TMainMenu;
    mnuFile: TMenuItem;
    mnuNew: TMenuItem;
    mnuFileLine1: TMenuItem;
    mnuFileNewClient: TMenuItem;
    mnuFileDelete: TMenuItem;
    mnuFileRename: TMenuItem;
    mnuFileLine2: TMenuItem;
    mnuFileClose: TMenuItem;
    mnuView: TMenuItem;
    mnuViewToolbar: TMenuItem;
    mnuViewStatusbar: TMenuItem;
    mnuViewLine1: TMenuItem;
    mnuViewLargeicons: TMenuItem;
    mnuViewSmallIcons: TMenuItem;
    mnuViewList: TMenuItem;
    mnuViewDetails: TMenuItem;
    mnuViewLine2: TMenuItem;
    mnuViewArrange: TMenuItem;
    mnuViewArrangeName: TMenuItem;
    mnuViewArrangeDate: TMenuItem;
    mnuViewArrangeType: TMenuItem;
    mnuViewLine3: TMenuItem;
    mnuViewRefresh: TMenuItem;
    mnuViewOptions: TMenuItem;
    mnuTools: TMenuItem;
    Find1: TMenuItem;
    mnuToolsGoto: TMenuItem;
    mnuHelp: TMenuItem;
    mnuHelpTopics: TMenuItem;
    mniHelpLine1: TMenuItem;
    mnuHelpAbout: TMenuItem;
    popOverview: TPopupMenu;
    tbarToolbar: TToolBar;
    tbtnIconLarge: TToolButton;
    tbtnIconSmall: TToolButton;
    tbtnIconList: TToolButton;
    tbtnIconDetails: TToolButton;
    ToolButton2: TToolButton;
    tbtnSnapshot: TToolButton;
    ToolButton4: TToolButton;
    qryRootGroup: TUniQuery;
    qryMatters: TUniQuery;
    qryMatterFees: TUniQuery;
    qryMatterInvoices: TUniQuery;
    mnuViewGroupby: TMenuItem;
    mnuViewGroupbyAuthor: TMenuItem;
    mnuViewGroupbyClient: TMenuItem;
    mnuViewGroupbyType: TMenuItem;
    tbtnRefresh: TToolButton;
    tbtnFind: TToolButton;
    mnuFileSnapshot: TMenuItem;
    qryMatterCount: TUniQuery;
    ToolButton1: TToolButton;
    procedure FormLoad(Sender: TObject);
    procedure tvOverviewChange(Sender: TObject; Node: TTreeNode);
    procedure tvOverviewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure mnuViewLargeiconsClick(Sender: TObject);
    procedure mnuViewSmallIconsClick(Sender: TObject);
    procedure mnuViewListClick(Sender: TObject);
    procedure mnuViewDetailsClick(Sender: TObject);
    procedure mnuHelpAboutClick(Sender: TObject);
    procedure popOverviewPopup(Sender: TObject);
    procedure mnuViewToolbarClick(Sender: TObject);
    procedure mnuViewStatusbarClick(Sender: TObject);
    procedure tbtnIconLargeClick(Sender: TObject);
    procedure tbtnIconSmallClick(Sender: TObject);
    procedure tbtnIconListClick(Sender: TObject);
    procedure tbtnIconDetailsClick(Sender: TObject);
    procedure tbtnSnapshotClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mnuViewGroupbyAuthorClick(Sender: TObject);
    procedure mnuViewGroupbyClientClick(Sender: TObject);
    procedure mnuViewGroupbyTypeClick(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mnuFileCloseClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);

  private
    { Private declarations }
    FRootGroup: TRootGroup;
    FGroupField: string;
    GroupImages: array [imgNORMAL..imgSELECTED, rgAuthor..rgType] of Integer;
    function NewPopup(sCaption: string; sName: String; bDefault: boolean) : TMenuItem;
{
  Modified 25.10.2002 GG
  Removed compiler hint

    procedure OpenMatter(Sender: TObject);
}
    function MatterCount(Code: Variant; Table: string): Integer;
{
  Modified 25.10.2002 GG
  Removed compiler hint

    procedure NewMatter(Sender: TObject);
    procedure OpenClient(Sender: TObject);
    procedure FeeNewClick(Sender: TObject);
}
    procedure FreeNodeData;
    function PopupAddSub(mnuParent: TMenuItem; sCaption: string; sName: String) : TMenuItem;
{
  Modified 25.10.2002 GG
  Removed compiler hint

    procedure GraphInvoice(Sender: TObject);
    procedure AutoReceipt(Sender: TObject);
    procedure NewInvoice(Sender: TObject);
    procedure OpenInvoice(Sender: TObject);
    procedure PostInvoice(Sender: TObject);
}
    procedure RebuildCaptions;
    procedure SetRootGroup(Value: TRootGroup);
    procedure SetSQL;
    property GroupField: string read FGroupField;
    property RootGroup: TRootGroup read FRootGroup Write SetRootGroup;

  public
    { Public declarations }
    procedure Refresh;
  end;

var
  sPopupText: string;

implementation

uses
  AboutExp, Matters, Clients, FeeNew, IGraph, Desktop,
  Receipt, BillNew, InvPost, MatterNew, AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmOverview.FormLoad(Sender: TObject);
begin
  Refresh;
end;


procedure TfrmOverview.SetRootGroup(Value: TRootGroup);
begin
  FRootGroup := Value;
  case FRootGroup of
    rgAuthor: FGroupField := 'AUTHOR';
    rgClient: FGroupField := 'NCLIENT';
    rgType: FGroupField := 'TYPE';
  end;
  SetSQL;
  Refresh;
end;

procedure TfrmOverview.SetSQL;
begin
  // Initialize Tables
  case FRootGroup of
    rgAuthor:
    begin
      qryRootGroup.SQL.Text := 'SELECT CODE, NAME AS DESCR FROM EMPLOYEE WHERE ACTIVE = ''Y'' AND ISAUTHOR = ''Y'' ORDER BY NAME';
      with qryMatters do
      begin
        SQL.Clear;
        SQL.Add('SELECT 2 AS IMAGEINDEX, TITLE, SHORTDESCR, NMATTER, FILEID, PARTNER, AUTHOR, TYPE FROM MATTER WHERE AUTHOR = :AUTHOR');
        SQL.Add('UNION');
        SQL.Add('SELECT 4 AS IMAGEINDEX, TITLE, SHORTDESCR, NMATTER, FILEID, PARTNER, AUTHOR, TYPE FROM ARCHIVE WHERE AUTHOR = :AUTHOR');
      end;
    end;
    rgClient:
    begin
      qryRootGroup.SQL.Text := 'SELECT NCLIENT AS CODE, SEARCH AS DESCR FROM CLIENT ORDER BY SEARCH';
      with qryMatters do
      begin
        SQL.Clear;
        SQL.Add('SELECT 2 AS IMAGEINDEX, TITLE, SHORTDESCR, NMATTER, FILEID, PARTNER, AUTHOR, TYPE FROM MATTER WHERE NCLIENT = :NCLIENT');
        SQL.Add('UNION');
        SQL.Add('SELECT 4 AS IMAGEINDEX, TITLE, SHORTDESCR, NMATTER, FILEID, PARTNER, AUTHOR, TYPE FROM ARCHIVE WHERE NCLIENT = :NCLIENT');
      end;
    end;
    rgType:
    begin
      qryRootGroup.SQL.Text := 'SELECT CODE, DESCR FROM MATTERTYPE ORDER BY DESCR';
      with qryMatters do
      begin
        SQL.Clear;
        SQL.Add('SELECT 2 AS IMAGEINDEX, TITLE, SHORTDESCR, NMATTER, FILEID, PARTNER, AUTHOR, TYPE FROM MATTER WHERE TYPE = :TYPE');
        SQL.Add('UNION');
        SQL.Add('SELECT 4 AS IMAGEINDEX, TITLE, SHORTDESCR, NMATTER, FILEID, PARTNER, AUTHOR, TYPE FROM ARCHIVE WHERE TYPE = :TYPE');
      end;
    end;
  end;
end;


procedure TfrmOverview.Refresh;
var
  iMatters: Integer;
  nodGroup: TTreeNode;
  ptrNodeData: TptrNodeData;
begin
  with tvOverview, qryRootGroup do
  begin
    Open;
    Items.Clear;
    // Defer drawing TreeView until EndUpdate
    Items.BeginUpdate;
    // Add all customer names to TreeNodes
    while not EOF do
    begin
      nodGroup := Items.Add(Nil, FieldByName('DESCR').AsString);
      nodGroup.ImageIndex := GroupImages[imgNORMAL, FRootGroup];
      nodGroup.SelectedIndex := GroupImages[imgSELECTED, FRootGroup];
      New(ptrNodeData);
      ptrNodeData^.Code := FieldByName('CODE').Value;
      nodGroup.Data := ptrNodeData;
      // Check to see if there are any Matters
      iMatters := MatterCount(FieldByName('CODE').Value, 'ALLMATTERS');
      nodGroup.HasChildren := iMatters > 0;

      Next;
      // Allow Status Bar text and Progress Bar to be painted
      Application.ProcessMessages;
    end;
    Close;
    // Draw the TTreeView now that all items are loaded
    Items.EndUpdate;
    // Set focus to first item in the Tree View
    Items.GetFirstNode.Selected := True;
  end;
end;


procedure TfrmOverview.tvOverviewChange(Sender: TObject; Node: TTreeNode);
var
  MakeTree: Boolean;
  ThisItem: TListItem;
  ThisNode: TTreeNode;
{
  Modified 25.10.2002 GG
  Removed compiler hint

  sMatter: String;
  sInvoice: String;
}
  sTmp: String;
  iCtr: Integer;
  ptrNodeData: TptrNodeData;
begin
  if Node.Count = 0 then
    MakeTree := True
  else
    MakeTree := false;
  // Remove all the items
  lvDetails.Items.Clear;
  sbarExplorer.Panels[0].Text := '';
  case tvOverview.Selected.Level of
    0:  // Major group - so we add the Matters to the List View
      begin
        ptrNodeData := Node.Data;
        iCtr := MatterCount(ptrNodeData^.Code, 'MATTER');
        if iCtr = 1 then
          sTmp := '1 Matter; '
        else
          sTmp := IntToStr(iCtr) + ' Matters; ';
        sbarExplorer.Panels[0].Text := sTmp;
        iCtr := MatterCount(ptrNodeData^.Code, 'ARCHIVE');
        if iCtr = 1 then
          sTmp := '1 Archived Matter; '
        else
          sTmp := IntToStr(iCtr) + ' Archived Matters; ';
        sbarExplorer.Panels[0].Text := sbarExplorer.Panels[0].Text + sTmp;

        // Load the Matters
        qryMatters.Close;
        qryMatters.Params[0].Value := ptrNodeData^.Code;
        qryMatters.Open;
        while not qryMatters.EOF do
        begin
          // Update the list view
          ThisItem := lvDetails.Items.Add;
          ThisItem.Caption := qryMatters.FieldByName('FILEID').AsString;
          ThisItem.ImageIndex := qryMatters.FieldByName('IMAGEINDEX').AsInteger;
          ThisItem.SubItems.Add(qryMatters.FieldByName('TITLE').AsString);
          ThisItem.SubItems.Add(qryMatters.FieldByName('SHORTDESCR').AsString);
          ThisItem.SubItems.Add(qryMatters.FieldByName('PARTNER').AsString);
          ThisItem.SubItems.Add(qryMatters.FieldByName('AUTHOR').AsString);
          ThisItem.SubItems.Add(qryMatters.FieldByName('TYPE').AsString);
          if MakeTree then
          begin
            // Add the Tree node
            ThisNode := tvOverview.Items.AddChild(Node, qryMatters.FieldByName('FILEID').AsString +
                           '  ' + qryMatters.FieldByName('SHORTDESCR').AsString);
            ThisNode.ImageIndex := qryMatters.FieldByName('IMAGEINDEX').AsInteger;
            ThisNode.SelectedIndex := qryMatters.FieldByName('IMAGEINDEX').AsInteger;
          end;
          // Get next Matter
          qryMatters.Next;
        end;
        qryMatters.Close;

      end;
{
    1:  // Matters - add items
      case Node.ImageIndex of
        ISMATTER, ISMATTERSELECTED:
          begin
            // Locate the Matter
            tblMatters.Open;
            tblMatterFees.Open;
            strMatter := '';
            iCtr := 1;
            while Node.Text[iCtr] <> ' ' do
            begin
              strMatter := strMatter + Node.Text[iCtr];
              iCtr := iCtr + 1;
            end;
            tblMatters.Locate ('FILEID', strMatter, []);

            // Invoice items
            tblMatterInvoices.Close;
            tblMatterInvoices.Open;
            tblMatterInvoices.Refresh;
            tblMatterInvoices.First;
            while not tblMatterInvoices.EOF do
            begin
              // Update the list view
              ThisItem := lvDetails.Items.Add;
              strTmp := tblMatterInvoices.FieldByName('DISPATCHED').AsString;
              if strTmp = '' then strTmp := 'Not Posted';
              ThisItem.Caption := strTmp;
              if lvDetails.ViewStyle <> vsReport then
                ThisItem.Caption := ThisItem.Caption + ' ' + Format('%m', [tblMatterInvoices.FieldByName('FEES').AsFloat + tblMatterInvoices.FieldByName('DISB').AsFloat + tblMatterInvoices.FieldByName('SUND').AsFloat]);
              ThisItem.ImageIndex := ISINVOICE;
              ThisItem.SubItems.Add(tblMatterInvoices.FieldByName('GENERATED').AsString);
              ThisItem.SubItems.Add(tblMatterInvoices.FieldByName('REFNO').AsString);
              ThisItem.SubItems.Add('Client Bill');
              ThisItem.SubItems.Add(Format('%m', [tblMatterInvoices.FieldByName('FEES').AsFloat + tblMatterInvoices.FieldByName('DISB').AsFloat + tblMatterInvoices.FieldByName('SUND').AsFloat]));
              ThisItem.SubItems.Add(tblMatterInvoices.FieldByName('DISPATCHED').AsString);
              ThisItem.SubItems.Add('');
              if MakeTree then
              begin
                // Add the Tree node
                strTmp := tblMatterInvoices.FieldByName('DISPATCHED').AsString;
                if strTmp = '' then strTmp := 'Not Posted';
                ThisNode := tvOverview.Items.AddChild(Node, strTmp +
                            ' ' + tblMatterInvoices.FieldByName('REFNO').AsString +
                            ' ' + Format('%m', [(tblMatterInvoices.FieldByName('FEES').AsCurrency +
                            tblMatterInvoices.FieldByName('DISB').AsCurrency +
                            tblMatterInvoices.FieldByName('SUND').AsCurrency)]));
                ThisNode.ImageIndex := ISINVOICE;
                ThisNode.SelectedIndex := ISINVOICESELECTED;
              end;
              // Get next Invoice for this Matter
              tblMatterInvoices.Next;
            end;
            tblMatterInvoices.Close;

            // Fee items
            tblMatterFees.Refresh;
            while not tblMatterFees.EOF do
            begin
              // Update the list view
              ThisItem := lvDetails.Items.Add;
              ThisItem.Caption := tblMatterFees.FieldByName('CREATED').AsString;
              if lvDetails.ViewStyle <> vsReport then
                ThisItem.Caption := ThisItem.Caption + ' ' + Format('%m', [tblMatterFees.FieldByName('AMOUNT').AsCurrency]);
              if tblMatterFees.FieldByName('BILLED').AsString = 'Y' then
                ThisItem.ImageIndex := ISFEE
              else
                ThisItem.ImageIndex := ISFEEUNBILLED;
              ThisItem.SubItems.Add(tblMatterFees.FieldByName('CREATED').AsString);
              ThisItem.SubItems.Add(tblMatterFees.FieldByName('AUTHOR').AsString);
              ThisItem.SubItems.Add(tblMatterFees.FieldByName('DESCR').AsString);
              ThisItem.SubItems.Add(Format('%m', [tblMatterFees.FieldByName('AMOUNT').AsFloat]));
              ThisItem.SubItems.Add(tblMatterFees.FieldByName('BILLED').AsString);
              ThisItem.SubItems.Add(IntToStr(tblMatterFees.FieldByName('NMEMO').AsInteger));
              // Get next Fee for this Matter
              tblMatterFees.Next;
            end;
            tblMatterFees.Close;

            // Now the Allocs
            tblInvoiceDisb.Open;
            tblInvoiceDisb.Refresh;
            while not tblInvoiceDisb.EOF do
            begin
              // Update the list view
              ThisItem := lvDetails.Items.Add;
              ThisItem.Caption := tblInvoiceDisb.FieldByName('CREATED').AsString;
              if lvDetails.ViewStyle <> vsReport then
                ThisItem.Caption := ThisItem.Caption + ' ' + Format('%m', [tblInvoiceDisb.FieldByName('AMOUNT').AsFloat]);
              if tblInvoiceDisb.FieldByName('BILLED').AsString = 'Y' then
                ThisItem.ImageIndex := ISDISB
              else
                ThisItem.ImageIndex := ISDISBUNBILLED;
              ThisItem.SubItems.Add(tblInvoiceDisb.FieldByName('CREATED').AsString);
              ThisItem.SubItems.Add(tblInvoiceDisb.FieldByName('REFNO').AsString);
              ThisItem.SubItems.Add(tblInvoiceDisb.FieldByName('DESCR').AsString);
              ThisItem.SubItems.Add(Format('%m', [tblInvoiceDisb.FieldByName('AMOUNT').AsFloat]));
              ThisItem.SubItems.Add(tblInvoiceDisb.FieldByName('BILLED').AsString);
              ThisItem.SubItems.Add(IntToStr(tblInvoiceDisb.FieldByName('NMEMO').AsInteger));

              // Get next Alloc for this Matter
              tblInvoiceDisb.Next;
            end;
            tblInvoiceDisb.Close;

            // Now the Sundrys
            tblInvoiceSund.Open;
            tblInvoiceSund.Refresh;
            while not tblInvoiceSund.EOF do
            begin
              // Update the list view
              ThisItem := lvDetails.Items.Add;
              ThisItem.Caption := tblInvoiceSund.FieldByName('CREATED').AsString;
              if lvDetails.ViewStyle <> vsReport then
                ThisItem.Caption := ThisItem.Caption + ' ' + Format('%m', [tblInvoiceSund.FieldByName('AMOUNT').AsCurrency]);
              if tblInvoiceSund.FieldByName('BILLED').AsString = 'Y' then
                ThisItem.ImageIndex := ISSUNDRY
              else
                ThisItem.ImageIndex := ISSUNDRYUNBILLED;
              ThisItem.SubItems.Add(tblInvoiceSund.FieldByName('CREATED').AsString);
              ThisItem.SubItems.Add(tblInvoiceSund.FieldByName('TYPE').AsString);
              ThisItem.SubItems.Add(tblInvoiceSund.FieldByName('DESCR').AsString);
              ThisItem.SubItems.Add(Format('%m', [tblInvoiceSund.FieldByName('AMOUNT').AsFloat]));
              ThisItem.SubItems.Add(tblInvoiceSund.FieldByName('BILLED').AsString);
              ThisItem.SubItems.Add(IntToStr(tblInvoiceSund.FieldByName('NMEMO').AsInteger));

              // Get next Sundry for this Matter
              tblInvoiceSund.Next;
            end;
            tblInvoiceSund.Close;

          end;
      end;

    2:  // Invoices - add items
      begin
        // Fee items
        tblMatters.Open;
        strMatter := '';
        iCtr := 1;
        while Node.Parent.Text[iCtr] <> ' ' do
        begin
          strMatter := strMatter + Node.Parent.Text[iCtr];
          iCtr := iCtr + 1;
        end;
        tblMatters.Locate ('FILEID', strMatter, []);
        // Find the Invoice number
        strInvoice := '';
        iCtr := Pos('#', Node.Text) + 1;
        while Node.Text[iCtr] <> ' ' do
        begin
          strInvoice := strInvoice + Node.Text[iCtr];
          iCtr := iCtr + 1;
        end;
        tblInvoiceFees.Open;
        tblInvoiceFees.Refresh;
        while not tblInvoiceFees.EOF do
        begin
          if tblInvoiceFees.FieldByName('NMEMO').AsString = strInvoice then
          begin
            // Update the list view
            ThisItem := lvDetails.Items.Add;
            ThisItem.Caption := tblInvoiceFees.FieldByName('CREATED').AsString;
            if lvDetails.ViewStyle <> vsReport then
              ThisItem.Caption := ThisItem.Caption + ' ' + Format('%m', [tblInvoiceFees.FieldByName('AMOUNT').AsFloat]);
            if tblInvoiceFees.FieldByName('BILLED').AsString = 'Y' then
              ThisItem.ImageIndex := ISFEE
            else
              ThisItem.ImageIndex := ISFEEUNBILLED;
            ThisItem.SubItems.Add(tblInvoiceFees.FieldByName('CREATED').AsString);
            ThisItem.SubItems.Add(tblInvoiceFees.FieldByName('AUTHOR').AsString);
            ThisItem.SubItems.Add(tblInvoiceFees.FieldByName('DESCR').AsString);
            ThisItem.SubItems.Add(Format('%m', [tblInvoiceFees.FieldByName('AMOUNT').AsFloat]));
            ThisItem.SubItems.Add(tblInvoiceFees.FieldByName('BILLED').AsString);
            ThisItem.SubItems.Add(IntToStr(tblInvoiceFees.FieldByName('NMEMO').AsInteger));
          end;

          // Get next Fee for this Invoice
          tblInvoiceFees.Next;
        end;
        tblInvoiceFees.Close;

        // Now the Allocs
        tblInvoiceDisb.Open;
        tblInvoiceDisb.Refresh;
        while not tblInvoiceDisb.EOF do
        begin
          if tblInvoiceDisb.FieldByName('NMEMO').AsString = strInvoice then
          begin
            // Update the list view
            ThisItem := lvDetails.Items.Add;
            ThisItem.Caption := tblInvoiceDisb.FieldByName('CREATED').AsString;
            if lvDetails.ViewStyle <> vsReport then
              ThisItem.Caption := ThisItem.Caption + ' ' + Format('%m', [tblInvoiceDisb.FieldByName('AMOUNT').AsFloat]);
            if tblInvoiceDisb.FieldByName('BILLED').AsString = 'Y' then
              ThisItem.ImageIndex := ISDISB
            else
              ThisItem.ImageIndex := ISDISBUNBILLED;
            ThisItem.SubItems.Add(tblInvoiceDisb.FieldByName('CREATED').AsString);
            ThisItem.SubItems.Add(tblInvoiceDisb.FieldByName('REFNO').AsString);
            ThisItem.SubItems.Add(tblInvoiceDisb.FieldByName('DESCR').AsString);
            ThisItem.SubItems.Add(Format('%m', [tblInvoiceDisb.FieldByName('AMOUNT').AsFloat]));
            ThisItem.SubItems.Add(tblInvoiceDisb.FieldByName('BILLED').AsString);
            ThisItem.SubItems.Add(IntToStr(tblInvoiceDisb.FieldByName('NMEMO').AsInteger));
          end;

          // Get next Disbursement for this Invoice
          tblInvoiceDisb.Next;
        end;
        tblInvoiceDisb.Close;

        // Now the Sundrys
        tblInvoiceSund.Open;
        tblInvoiceSund.Refresh;
        while not tblInvoiceSund.EOF do
        begin
          if tblInvoiceSund.FieldByName('NMEMO').AsString = strInvoice then
          begin
            // Update the list view
            ThisItem := lvDetails.Items.Add;
            ThisItem.Caption := tblInvoiceSund.FieldByName('CREATED').AsString;
            if lvDetails.ViewStyle <> vsReport then
              ThisItem.Caption := ThisItem.Caption + ' ' + Format('%m', [tblInvoiceSund.FieldByName('AMOUNT').AsFloat]);
            if tblInvoiceSund.FieldByName('BILLED').AsString = 'Y' then
              ThisItem.ImageIndex := ISSUNDRY
            else
              ThisItem.ImageIndex := ISSUNDRYUNBILLED;
            ThisItem.SubItems.Add(tblInvoiceSund.FieldByName('CREATED').AsString);
            ThisItem.SubItems.Add(tblInvoiceSund.FieldByName('TYPE').AsString);
            ThisItem.SubItems.Add(tblInvoiceSund.FieldByName('DESCR').AsString);
            ThisItem.SubItems.Add(Format('%m', [tblInvoiceSund.FieldByName('AMOUNT').AsFloat]));
            ThisItem.SubItems.Add(tblInvoiceSund.FieldByName('BILLED').AsString);
            ThisItem.SubItems.Add(IntToStr(tblInvoiceSund.FieldByName('NMEMO').AsInteger));
          end;

          // Get next Sundry for this Matter
          tblInvoiceSund.Next;
        end;
        tblInvoiceSund.Close;

      end;
}      
  end; // case

  if lvDetails.ViewStyle = vsReport then
    tbtnIconDetailsClick(Self);

end;


procedure TfrmOverview.tvOverviewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  ThisNode: TTreeNode;
  ptrNodeData: TptrNodeData;
begin
  if Node.Count = 0 then
  begin
    case Node.Level of
      0:  // Highest group level
        begin
          ptrNodeData := Node.Data;
          qryMatters.Params[0].Value := ptrNodeData^.Code;
          qryMatters.Open;
          while not qryMatters.EOF do
          begin
            // Add the Tree node
            ThisNode := tvOverview.Items.AddChild(Node, qryMatters.FieldByName('FILEID').AsString +
                           '  ' + qryMatters.FieldByName('SHORTDESCR').AsString);
            ThisNode.ImageIndex := qryMatters.FieldByName('IMAGEINDEX').AsInteger;
            ThisNode.SelectedIndex := qryMatters.FieldByName('IMAGEINDEX').AsInteger + 1;
            // Get next Matter
            qryMatters.Next;
          end;
          qryMatters.Close;

        end;

      1:  // Matters - add items
        begin

        end;

    end; // case
  end;
end;


procedure TfrmOverview.mnuViewLargeiconsClick(Sender: TObject);
begin
  RebuildCaptions;
  mnuViewLargeicons.Checked := true;
  lvDetails.ViewStyle := vsIcon;
end;

procedure TfrmOverview.mnuViewSmallIconsClick(Sender: TObject);
begin
  RebuildCaptions;
  mnuViewSmallicons.Checked := true;
  lvDetails.ViewStyle := vsSmallIcon;
end;

procedure TfrmOverview.mnuViewListClick(Sender: TObject);
begin
  RebuildCaptions;
  mnuViewList.Checked := true;
  lvDetails.ViewStyle := vsList;
end;

procedure TfrmOverview.RebuildCaptions;
var
  iCtr : integer;
begin
  if tvOverview.selected.Level > 0 then
    for iCtr := 0 to lvDetails.Items.Count - 1 do
      lvDetails.Items.Item[iCtr].Caption := lvDetails.Items.Item[iCtr].SubItems.Strings[0] + ' ' + lvDetails.Items.Item[iCtr].SubItems.Strings[3];
end;

procedure TfrmOverview.mnuViewDetailsClick(Sender: TObject);
var
  iCtr : integer;
  ThisColumn : TListColumn;
begin
  case tvOverview.selected.Level of
    0:  // Client - so we add the Matters Columns
    begin
      with lvDetails.Columns do
      begin
        Clear;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'FILEID';
        ThisColumn.Width := 120;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Client';
        ThisColumn.Width := 120;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Description';
        ThisColumn.Width := 200;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Partner';
        ThisColumn.Width := 50;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Author';
        ThisColumn.Width := 50;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Type';
        ThisColumn.Width := 50;
      end;
    end;
    1, 2:  // Matter or Invoice - so we add the items Columns
    begin
      with lvDetails.Columns do
      begin
        Clear;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Date';
        ThisColumn.Width := 100;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Invisible Date';
        ThisColumn.Width := 0;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Reference';
        ThisColumn.Width := 70;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Description';
        ThisColumn.Width := 170;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Amount';
        ThisColumn.Width := 80;
        ThisColumn.Alignment := taRightJustify;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Billed';
        ThisColumn.Width := 40;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Invoice';
        ThisColumn.Width := 50;
        ThisColumn.Alignment := taRightJustify;
      end;
      for iCtr := 0 to lvDetails.Items.Count - 1 do
        lvDetails.Items.Item[iCtr].Caption := lvDetails.Items.Item[iCtr].SubItems.Strings[0];
    end;
  end;
  mnuViewDetails.Checked := true;
  lvDetails.ViewStyle := vsReport;
end;

procedure TfrmOverview.mnuHelpAboutClick(Sender: TObject);
begin
  frmAboutExp := TfrmAboutExp.Create(Self);
  frmAboutExp.ShowModal;
end;


procedure TfrmOverview.popOverviewPopup(Sender: TObject);
{
  Modified 25.10.2002 GG
  Removed compiler hint

var
  iCtr: integer;
  sTmp: string;
  mnuItem, mnuSubitem: TMenuItem;
}
begin
{
  // Destroy the current menu
  for iCtr := 1 to popOverview.Items.Count do
    popOverview.Items[0].Free;
  sPopupText := tvOverview.Selected.Text;
  // Construct the new menu
  case tvOverview.Selected.ImageIndex of
    ISCLIENT, ISCLIENTSELECTED:
      begin
        mnuItem := NewPopup('&Open', 'popOpen', True);
        mnuItem.OnClick := OpenClient;
        mnuItem := NewPopup('&New', 'popNew', False);
        mnuSubitem := PopupAddSub(mnuItem, '&Matter', 'popMatter');
        mnuSubItem.OnClick := NewMatter;
        mnuSubitem := PopupAddSub(mnuItem, '&Note', 'popNote');
        mnuItem := NewPopup('&Print', 'popPrint', False);
        mnuItem := NewPopup('&Delete', 'popDelete', False);
      end;
    ISMATTER, ISMATTERSELECTED:
      begin
        mnuItem := NewPopup('&Open', 'popOpen', True);
        mnuItem.OnClick := OpenMatter;
        mnuItem := NewPopup('&New', 'popNew', False);
        mnuSubitem := PopupAddSub(mnuItem, '&Fee', 'popFee');
        mnuSubitem.OnClick := FeeNewClick;
        mnuSubitem := PopupAddSub(mnuItem, '&Sundry', 'popSundry');
        mnuSubitem := PopupAddSub(mnuItem, '&Ant. Disb.', 'popAntdisb');
        mnuSubitem := PopupAddSub(mnuItem, '&Invoice', 'popInvoice');
        mnuSubItem.OnClick := NewInvoice;
        mnuItem := NewPopup('&Print', 'popPrint', False);
        mnuItem := NewPopup('&Delete', 'popDelete', False);
        mnuItem := NewPopup('&Archive', 'popArchive', False);
      end;
    ISARCHIVED, ISARCHIVEDSELECTED:
      begin
        mnuItem := NewPopup('&Open', 'popOpen', True);
        mnuItem := NewPopup('&Print', 'popPrint', False);
        mnuItem := NewPopup('&Unarchive', 'popUnarchive', False);
      end;
    ISINVOICE, ISINVOICESELECTED:
      begin
        sTmp := sPopupText[1] + sPopupText[2] + sPopupText[3];
        mnuItem := NewPopup('&Open', 'popOpen', True);
        mnuItem.OnClick := OpenInvoice;
        mnuItem := NewPopup('&Print', 'popPrint', False);
        mnuItem := NewPopup('&Graph', 'popGraph', False);
        mnuItem.OnClick := GraphInvoice;
        mnuItem := NewPopup('&Clear', 'popClear', False);
        if sTmp = 'Not' then
        begin
          mnuSubitem := PopupAddSub(mnuItem, '&All', 'popClearAll');
          mnuSubitem := PopupAddSub(mnuItem, '&Fees', 'popClearFees');
          mnuSubitem := PopupAddSub(mnuItem, '&Disbursments', 'popClearDisb');
          mnuSubitem := PopupAddSub(mnuItem, 'A&nt. Disb.', 'popClearAntD');
          mnuSubitem := PopupAddSub(mnuItem, '&Sundries', 'popClearSund');
        end
        else mnuItem.Enabled := false;
        mnuItem := NewPopup('Re&build', 'popRebuild', False);
        if sTmp = 'Not' then
        begin
          mnuSubitem := PopupAddSub(mnuItem, '&All', 'popRebuildAll');
          mnuSubitem := PopupAddSub(mnuItem, '&Fees', 'popRebuildFees');
          mnuSubitem := PopupAddSub(mnuItem, '&Disbursments', 'popRebuildDisb');
          mnuSubitem := PopupAddSub(mnuItem, 'A&nt. Disb.', 'popRebuildAntD');
          mnuSubitem := PopupAddSub(mnuItem, '&Sundries', 'popRebuildSund');
        end
        else mnuItem.Enabled := false;
        mnuItem := NewPopup('Pos&t', 'popPost', False);
        if sTmp <> 'Not' then
          mnuItem.Enabled := false
        else
          mnuItem.OnClick := PostInvoice;
        mnuItem := NewPopup('&AutoReceipt', 'popReceipt', False);
        mnuItem.OnClick := AutoReceipt;
        if sTmp = 'Not' then mnuItem.Enabled := false;
        mnuItem := NewPopup('&Reverse', 'popReverse', False);
        if sTmp = 'Not' then mnuItem.Enabled := false;
      end;
  end; // case
}
end;


(*
  Modified 25.10.2002 GG
  Removed compiler hint

procedure TfrmOverview.OpenClient(Sender: TObject);
begin
{
  with TfrmClients.Create(Self) do
    DisplayClient(sPopupText);
}
end;

procedure TfrmOverview.NewMatter(Sender: TObject);
begin
end;


procedure TfrmOverview.GraphInvoice(Sender: TObject);
var
  sInvoice : string;
  iInvoice : integer;
  iCtr : integer;
  frmNewInvoiceGraph : TfrmInvoiceGraph;
begin
  sInvoice := '';
  iCtr := Pos('#', sPopupText) + 1;
  while sPopupText[iCtr] <> ' ' do
  begin
    sInvoice := sInvoice + sPopupText[iCtr];
    iCtr := iCtr + 1;
  end;
  frmNewInvoiceGraph := TfrmInvoiceGraph.Create(Self);
  frmNewInvoiceGraph.show;
  iInvoice := StrToInt(sInvoice);
  frmNewInvoiceGraph.DisplayInvoice(iInvoice);
end;


procedure TfrmOverview.AutoReceipt(Sender: TObject);
var
  sInvoice : string;
  iCtr : integer;
  frmNewReceipt : TfrmReceipt;
begin
  sInvoice := '';
  iCtr := Pos('#', sPopupText) + 1;
  while sPopupText[iCtr] <> ' ' do
  begin
    sInvoice := sInvoice + sPopupText[iCtr];
    iCtr := iCtr + 1;
  end;
  frmNewReceipt := TfrmReceipt.Create(Self);
  frmNewReceipt.Show;
  frmNewReceipt.AutoReceipt(StrToInt(sInvoice));
end;
*)


function TfrmOverview.NewPopup(sCaption: string; sName: String; bDefault: boolean) : TMenuItem;
var
  mnuNew: TMenuItem;

begin
  mnuNew := TMenuItem.Create(Self);
  mnuNew.Caption := sCaption;
  mnuNew.Name := sName;
  mnuNew.Default := bDefault;
  popOverview.Items.Add(mnuNew);
  NewPopup := mnuNew;
end;


function TfrmOverview.PopupAddSub(mnuParent: TMenuItem; sCaption: string; sName: String) : TMenuItem;
var
  mnuSub: TMenuItem;

begin
  mnuSub := TMenuItem.Create(Self);
  mnuSub.Caption := sCaption;
  mnuSub.Name := sName;
  PopupAddSub := mnuSub;
  mnuParent.Add(mnuSub);
end;


(*
  Modified 25.10.2002 GG
  Removed compiler hint

procedure TfrmOverview.FeeNewClick(Sender: TObject);
var
  sMatter : string;
  iCtr : integer;
  frmNewFeeNew : TfrmFeeNew;
begin
  // Work out the Matter number
  sMatter := '';
  iCtr := 1;
  while sPopupText[iCtr] <> ' ' do
  begin
    sMatter := sMatter + sPopupText[iCtr];
    iCtr := iCtr + 1;
  end;
  frmNewFeeNew := TfrmFeeNew.Create(Self);
  frmNewFeeNew.show;
  frmNewFeeNew.DisplayMatter(sMatter);
end;

procedure TfrmOverview.OpenMatter(Sender: TObject);
var
  sMatter : string;
  iCtr : integer;
{
  Modified 25.10.2002 GG
  Removed compiler hint

  frmNewMatter : TfrmMatters;
}
begin
  // Work out the File number
  sMatter := '';
  iCtr := 1;
  while sPopupText[iCtr] <> ' ' do
  begin
    sMatter := sMatter + sPopupText[iCtr];
    iCtr := iCtr + 1;
  end;

  with TfrmMatters.Create(Self) do
    DisplayMatter(sMatter);

end;


procedure TfrmOverview.NewInvoice(Sender: TObject);
var
  sMatter : string;
  iCtr : integer;
  frmNewInvoice : TfrmInvoice;
begin
  // Work out the Matter number
  sMatter := '';
  iCtr := 1;
  while sPopupText[iCtr] <> ' ' do
  begin
    sMatter := sMatter + sPopupText[iCtr];
    iCtr := iCtr + 1;
  end;

  frmNewInvoice := TfrmInvoice.Create(Self);
  frmNewInvoice.CreateInvoice(StrToInt(sMatter));
  frmNewInvoice.Show;
end;


procedure TfrmOverview.OpenInvoice(Sender: TObject);
var
  sInvoice : string;
  iInvoice : integer;
  iCtr : integer;
  frmNewInvoice : TfrmInvoice;
begin
  sInvoice := '';
  iCtr := Pos('#', sPopupText) + 1;
  while sPopupText[iCtr] <> ' ' do
  begin
    sInvoice := sInvoice + sPopupText[iCtr];
    iCtr := iCtr + 1;
  end;
  frmNewInvoice := TfrmInvoice.Create(Self);
  iInvoice := StrToInt(sInvoice);
  frmNewInvoice.DisplayInvoice(iInvoice);
  frmNewInvoice.Show;
end;


procedure TfrmOverview.PostInvoice(Sender: TObject);
var
  sInvoice : string;
  iInvoice : integer;
  iCtr : integer;
  frmNewInvPost : TfrmInvPost;
begin
  sInvoice := '';
  iCtr := Pos('#', sPopupText) + 1;
  while sPopupText[iCtr] <> ' ' do
  begin
    sInvoice := sInvoice + sPopupText[iCtr];
    iCtr := iCtr + 1;
  end;
  frmNewInvPost := TfrmInvPost.Create(Self);
  iInvoice := StrToInt(sInvoice);
  frmNewInvPost.DisplayInvoice(iInvoice);
  frmNewInvPost.Show;
end;

*)

procedure TfrmOverview.mnuViewToolbarClick(Sender: TObject);
begin
  mnuViewToolbar.Checked := not mnuViewToolbar.Checked;
  tbarToolbar.Visible := mnuViewToolbar.Checked;
end;

procedure TfrmOverview.mnuViewStatusbarClick(Sender: TObject);
begin
  mnuViewStatusbar.Checked := not mnuViewStatusbar.Checked;
  sbarExplorer.Visible := mnuViewStatusbar.Checked;
end;


procedure TfrmOverview.tbtnIconLargeClick(Sender: TObject);
begin
  mnuViewLargeiconsClick(Self);
end;

procedure TfrmOverview.tbtnIconSmallClick(Sender: TObject);
begin
  mnuViewSmallIconsClick(Self);
end;

procedure TfrmOverview.tbtnIconListClick(Sender: TObject);
begin
  mnuViewListClick(Self);
end;

procedure TfrmOverview.tbtnIconDetailsClick(Sender: TObject);
begin
  mnuViewDetailsClick(Self);
end;

procedure TfrmOverview.tbtnSnapshotClick(Sender: TObject);
begin
{
  case tvOverview.Selected.ImageIndex of
    ISCLIENT, ISCLIENTSELECTED:
    begin
      frmDesktop.AddSnapshot(1, tvOverview.Selected.Text);
    end;
    ISMATTER, ISMATTERSELECTED:
    begin
      frmDesktop.AddSnapshot(0, tvOverview.Selected.Text);
    end;
  end;
}  
end;



procedure TfrmOverview.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Self.Release;
  RemoveFromDesktop(Self);
end;

procedure TfrmOverview.FormCreate(Sender: TObject);
begin
  Self.caption := CN_PROGRAM_NAME + ' Explorer';
  RootGroup := rgAuthor;
  // Initialize the image arrays
  GroupImages[imgNORMAL, rgAuthor] := 0;
  GroupImages[imgSELECTED, rgAuthor] := 0;
  GroupImages[imgNORMAL, rgClient] := 0;
  GroupImages[imgSELECTED, rgClient] := 0;
  GroupImages[imgNORMAL, rgType] := 0;
  GroupImages[imgSELECTED, rgType] := 0;

end;

procedure TfrmOverview.mnuViewGroupbyAuthorClick(Sender: TObject);
begin
  mnuViewGroupbyAuthor.Checked := True;
  RootGroup := rgAuthor;
end;

procedure TfrmOverview.mnuViewGroupbyClientClick(Sender: TObject);
begin
  mnuViewGroupbyClient.Checked := True;
  RootGroup := rgClient;
end;

procedure TfrmOverview.mnuViewGroupbyTypeClick(Sender: TObject);
begin
  mnuViewGroupbyType.Checked := True;
  RootGroup := rgType;
end;

procedure TfrmOverview.tbtnRefreshClick(Sender: TObject);
begin
  Refresh;
end;

procedure TfrmOverview.FormDestroy(Sender: TObject);
begin
  FreeNodeData;
end;


procedure TfrmOverview.FreeNodeData;
var
  iCtr: Integer;
begin
  for iCtr := 0 to tvOverview.Items.Count-1 do
    if tvOverview.Items[iCtr].Data <> nil then
      FreeMem(TptrNodeData(tvOverview.Items[iCtr].Data));
end;

function TfrmOverview.MatterCount(Code: Variant; Table: string): Integer;
begin
  with qryMatterCount do
  begin
    SQL.Clear;
    SQL.Add('SELECT COUNT(NMATTER) AS MATTERS');
    SQL.Add('FROM ' + Table);
    SQL.Add('WHERE ' + GroupField + ' = :CODE');
    Params[0].Value := Code;
    Open;
    Result := FieldByName('MATTERS').AsInteger;
    Close;
  end;
end;


procedure TfrmOverview.mnuFileCloseClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmOverview.ToolButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

end.

