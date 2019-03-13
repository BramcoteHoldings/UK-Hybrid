unit browser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ShDocVw, OleCtrls, Menus, ImgList, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxHyperLinkEdit, dxBarExtItems, dxBar,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxGraphics,
  cxProgressBar, dxStatusBar, MSHTML, DB, MemDS, DBAccess, OracleUniProvider, Uni, ComCtrls,
  StdCtrls, ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters, IEAddress,
  SHDocVw_EWB, EwbCore, EmbeddedWB, cxClasses;

type
  TfrmBrowser = class(TForm)
    odlgOpenHtml: TOpenDialog;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    bbtnRefresh: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarButton6: TdxBarButton;
    ImageList1: TImageList;
    dxBarStatic1: TdxBarStatic;
    StatusBar: TdxStatusBar;
    dxBarButton7: TdxBarButton;
    dxStatusBar1Container1: TdxStatusBarContainerControl;
    barProgress: TcxProgressBar;
    mnuFavourites: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    qrySettings: TUniQuery;
    dxBarButton11: TdxBarButton;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    Animate1: TAnimate;
    dxBarButton12: TdxBarButton;
    brBrowser: TEmbeddedWB;
    dfAddress: TIEAddress;
    Timer1: TTimer;
    procedure bbtnRefreshClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure brBrowserDownloadComplete(Sender: TObject);
    procedure brBrowserDownloadBegin(Sender: TObject);
    procedure brBrowserProgressChange(Sender: TObject; Progress,
      ProgressMax: Integer);
    procedure FormCreate(Sender: TObject);
    procedure brBrowserBeforeNavigate2(Sender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure brBrowserNavigateComplete2(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure mnuFavouritesPopup(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brBrowserStatusTextChange(ASender: TObject;
      const Text: WideString);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dfAddressKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dfAddressKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure FindAddress;
    procedure LoadURL(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmBrowser: TfrmBrowser;

implementation

uses
  AxiomData, WebFavourites, browseproperties, BrowserOrgFavourites, MiscFunc;

{$R *.dfm}

procedure TfrmBrowser.bbtnRefreshClick(Sender: TObject);
begin
   try
      brBrowser.Refresh;
   except
      // some error
   end;
end;

procedure TfrmBrowser.dxBarButton1Click(Sender: TObject);
begin
   try
      brBrowser.GoBack;
   except
     //
   end;
end;

procedure TfrmBrowser.dxBarButton2Click(Sender: TObject);
begin
   try
      brBrowser.GoForward;
   except
      //
   end;
end;

procedure TfrmBrowser.dxBarButton5Click(Sender: TObject);
begin
   brBrowser.Stop;
end;

procedure TfrmBrowser.dxBarButton3Click(Sender: TObject);
var
  Flags: OLEVariant;
begin
   dfAddress.Text := dmAxiom.HomePageURL;
   FindAddress;
end;

procedure TfrmBrowser.dxBarButton6Click(Sender: TObject);
begin
   FindAddress;
   brBrowser.Go(dfAddress.Text);
end;

procedure TfrmBrowser.brBrowserDownloadComplete(Sender: TObject);
begin
   barProgress.Position := 0;
   Animate1.Active := False;
   StatusBar.Panels.Items[1].Text :=  'Done';
end;

procedure TfrmBrowser.brBrowserDownloadBegin(Sender: TObject);
begin
   Animate1.Active := True;
   StatusBar.Panels.Items[1].Text := 'Opening page  ' + dfAddress.Text;
   barProgress.Position := 0;
end;

procedure TfrmBrowser.brBrowserProgressChange(Sender: TObject; Progress,
  ProgressMax: Integer);
begin
//   if Progress > 0 then
//      barProgress.Position := (Progress * 100)/ProgressMax;
end;

procedure TfrmBrowser.FormCreate(Sender: TObject);
begin
   Animate1.ResName := 'axiomavi';
   if dmAxiom.EmpDefaultURL <> '' then
      dfAddress.Text := dmAxiom.EmpDefaultURL
   else
      dfAddress.Text := dmAxiom.HomePageURL;
   FindAddress;
end;

procedure TfrmBrowser.brBrowserBeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
   StatusBar.Panels.Items[1].Text := 'Opening page  ' + URL;
end;

procedure TfrmBrowser.brBrowserNavigateComplete2(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
   StatusBar.Panels.Items[1].Text :=  'Done';
   barProgress.Position := 0;
end;

procedure TfrmBrowser.dxBarButton8Click(Sender: TObject);
begin
   frmBrowserProps := TfrmBrowserProps.Create(frmBrowser);
   frmBrowserProps.CurrentURL := dfAddress.Text;
   if frmBrowserProps.ShowModal = mrOK then
   begin
      dfAddress.Text := dmAxiom.EmpDefaultURL;
      FindAddress;
   end;
   frmBrowserProps.Free;
end;

procedure TfrmBrowser.dxBarButton9Click(Sender: TObject);
var
  HTMLDoc: IHTMLDocument2;
  HTMLWnd: IHTMLWindow2;
  HTMLWindow3: IHTMLWindow3;
begin
   HTMLDoc := brBrowser.Document as IHTMLDocument2;
   if HTMLDoc = nil then
      raise Exception.Create('Error whilst trying to print.');
   HTMLWnd := HTMLDoc.parentWindow;
   HTMLWindow3 := HTMLWnd as IHTMLWindow3;
   // Finally, we get to the print method
   HTMLWindow3.print;
end;

procedure TfrmBrowser.FindAddress;
var
  Flags: OLEVariant;
  URL: string;
begin
   Flags := 0;
   try
      Timer1.Enabled := False;
      URL := dfAddress.Text;
      brBrowser.Go(dfAddress.Text, 10);  // WideString(Url));

//      EmbeddedWB1.Navigate(WideString(Url));
//   except
{      E.
      if ((pos('http:',dfAddress.Text) = 0) and
         (pos('https:',dfAddress.Text) = 0)) then
         URL := 'http://'+dfAddress.Text
      else
         URL := dfAddress.Text;
      Flags := 0;
      dfAddress.Text := URL;
      brBrowser.Navigate(WideString(Url));     }
//   end;
   except
     //
   end;
   barProgress.Position := 0;
//   Timer1.Enabled := True;
end;

procedure TfrmBrowser.dxBarButton10Click(Sender: TObject);
begin
   frmFavourites := TfrmFavourites.Create(frmBrowser);
   frmFavourites.LocationName := brBrowser.LocationName;
   frmFavourites.FavouriteURL := brBrowser.LocationURL;
   frmFavourites.ShowModal;
   frmFavourites.Free;
end;

procedure TfrmBrowser.mnuFavouritesPopup(Sender: TObject);
var
  iCtr: integer;
  TotalItems: integer;
  mnuFavouriteButton: TdxBarButton;
  firstTime : boolean;
begin
   firstTime := True;
   TotalItems := mnuFavourites.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 2 do
      mnuFavourites.ItemLinks.Delete(iCtr);

   with qrySettings do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT *  '+
                  ' FROM SETTINGS '+
                  ' WHERE EMP = :P_Author AND OWNER = :P_Type ';
      ParamByName('P_Author').AsString := dmAxiom.UserID;
      ParamByName('P_Type').AsString := 'FAVOURITES';
      Open;

      while not EOF do
      begin
         mnuFavouriteButton := TdxBarButton.Create(nil);
         mnuFavouriteButton.Caption := FieldByName('ITEM').AsString;
         mnuFavouriteButton.Tag := FieldByName('INTVALUE').AsInteger;
         mnuFavouriteButton.GroupIndex := 1;
         mnuFavouriteButton.OnClick := LoadURL;

         with mnuFavourites.ItemLinks.Add do
         begin
            Item := mnuFavouriteButton;
            if firstTime then
            begin
               firstTime := False;
               BeginGroup := True;
            end;
         end;
         Next;
       end;
   end;
end;

procedure TfrmBrowser.LoadURL(Sender: TObject);
begin
   dfAddress.Text := SettingLoadString('FAVOURITES',TdxBarButton(Sender).Tag);
   FindAddress;
end;

procedure TfrmBrowser.dxBarButton12Click(Sender: TObject);
begin
   frmBrowserOrgFavourites := TfrmBrowserOrgFavourites.Create(frmBrowser);
   frmBrowserOrgFavourites.ShowModal;
   frmBrowserOrgFavourites.Free;
end;

procedure TfrmBrowser.Timer1Timer(Sender: TObject);
var
  MousePos: TPoint;
  HtmlElement: IHTMLElement;
  ImgElement: IHTMLIMGElement;
  AnchorElement: IHTMLAnchorElement;
  iHTMLDoc: IHtmlDocument2;
  LinkElement: IHTMLLinkElement;
  varName, varSource: OleVariant;
begin
  if Supports(brBrowser.Document, IHtmlDocument2, iHTMLDoc) then
  begin
    if GetCursorPos(MousePos) then
    begin
      MousePos := brBrowser.ScreenToClient(MousePos);
      HtmlElement := iHTMLDoc.ElementFromPoint(MousePos.X, MousePos.Y);
      if Assigned(HtmlElement) then
      begin
        try
//          edtTag.Text := HtmlElement.tagName;
//          edtId.Text := HtmlElement.id;
//          edtInnerText.Text := HtmlElement.innerText;

//          edtInnerHTML.Text := HtmlElement.innerHTML;
//          edtClassName.Text := HtmlElement.className;
//          HtmlElement.QueryInterface(IHTMLIMGElement, imgElement);

//          edthref.Text := '';
          StatusBar.Panels.Items[1].Text := '';
          if Assigned(imgElement) then
            StatusBar.Panels.Items[1].Text := imgElement.href;

          HtmlElement.QueryInterface(IHTMLAnchorElement, AnchorElement);
          if Assigned(AnchorElement) then
            StatusBar.Panels.Items[1].Text := AnchorElement.href;

          HtmlElement.QueryInterface(IHTMLLinkElement, LinkElement);
          if Assigned(LinkElement) then
            StatusBar.Panels.Items[1].Text := LinkElement.href;

//          varName := HtmlElement.GetAttribute('Name', 0);
//          varSource := HtmlElement.GetAttribute('Source', 0);

//          edtFrame.Text := OleVarToStr(varName) + '  ' + OleVarToStr(varSource);
        except
        end;
      end;
    end;
  end;   
end;

procedure TfrmBrowser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Timer1.Enabled := False;
end;

procedure TfrmBrowser.brBrowserStatusTextChange(ASender: TObject;
  const Text: WideString);
begin
   StatusBar.Panels.Items[1].Text := Text;
end;

procedure TfrmBrowser.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_Return then
      FindAddress;
end;

procedure TfrmBrowser.dfAddressKeyPress(Sender: TObject; var Key: Char);
begin
      if word(Key) = VK_RETURN then
      FindAddress;
end;

procedure TfrmBrowser.dfAddressKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if word(Key) = VK_RETURN then
      FindAddress;
end;

end.
