unit home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Touch.GestureMgr, Vcl.Themes, Vcl.Imaging.jpeg, dxGDIPlusClasses,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFlowPanel = class(Vcl.ExtCtrls.TFlowPanel);
  TScrollBox = class(Vcl.Forms.TScrollBox);
  TfrmHome = class(TForm)
    ScrollBox2: TScrollBox;
    GroupPanel1: TPanel;
    FlowPanel1: TFlowPanel;
    GroupPanel1_1: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    Label3: TLabel;
    GroupPanel1_2: TPanel;
    Image2: TImage;
    Panel6: TPanel;
    Label5: TLabel;
    GroupPanel1_3: TPanel;
    Image3: TImage;
    Panel4: TPanel;
    Clients: TLabel;
    GroupPanel1_5: TPanel;
    Image5: TImage;
    Panel7: TPanel;
    Label10: TLabel;
    GestureManager1: TGestureManager;
    Panel8: TPanel;
    Image8: TImage;
    Panel10: TPanel;
    Label6: TLabel;
    GroupPanel1_4: TPanel;
    Panel2_1: TPanel;
    Image4: TImage;
    Panel3: TPanel;
    Label2: TLabel;
    Panel2_2: TPanel;
    Image7: TImage;
    Panel9: TPanel;
    Label4: TLabel;
    Panel1: TPanel;
    Image6: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure Button1Click(Sender: TObject);
    procedure GroupPanel1_1MouseEnter(Sender: TObject);
    procedure GroupPanel1_1MouseLeave(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}
uses
   Matters, msearch, miscfunc, axiomdata, citfunc, Clients, Desktop, Vcl.Styles,
  Vcl.Styles.FormStyleHooks, Phonebook, TimeSht, WorkflowToDo, DocSearch,
  TimeDiary, Dashboard_Ind;

procedure TfrmHome.Button1Click(Sender: TObject);
var
   LfrmClients: TfrmClients;
begin
//   ShowWindows;
   LfrmClients := TfrmClients.Create(Self);
   LfrmClients.Parent := frmDesktop;
   LfrmClients.Tag := imgCLIENT;
   LfrmClients.ChooseClient;
end;

procedure TfrmHome.GroupPanel1_1MouseEnter(Sender: TObject);
begin
//   TPanel(Sender).BevelOuter := bvRaised;
end;

procedure TfrmHome.GroupPanel1_1MouseLeave(Sender: TObject);
begin
//   TPanel(Sender).BevelOuter := bvNone;
end;

procedure TfrmHome.Image1Click(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if dmAxiom.WANEnabled then
   begin
      if frmMatterSearch.ShowModal = mrOk then
      begin
         Application.CreateForm(TfrmMatters, frmMatters);
//          LfrmMatters := TfrmMatters.Create(Self);
         frmMatters.Tag := 63;
         frmMatters.DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
         frmMatters.Visible := True;
      end;
   end
   else
   begin
      if frmMatterSearch.ShowModal = mrOk then
      begin
         frmDesktop.LoadMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
//      Application.CreateForm(TfrmMatters, frmMatters);
 //     frmMatters := TfrmMatters.Create(Self);
//      frmMatters.Tag := 63;
//      frmMatters.ChooseMatter;
      end;
   end;
end;

procedure TfrmHome.Image1MouseEnter(Sender: TObject);
var
   AParent: TWincontrol;
begin
    AParent := TImage(Sender).Parent;
    TPanel(AParent).BevelOuter := bvRaised;
end;

procedure TfrmHome.Image1MouseLeave(Sender: TObject);
var
   AParent: TWincontrol;
begin
    AParent := TImage(Sender).Parent;
    TPanel(AParent).BevelOuter := bvNone;
end;

procedure TfrmHome.Image2Click(Sender: TObject);
begin
   if ((dmAxiom.DfltTimeRecordMeth = '') or
      (dmAxiom.DfltTimeRecordMeth = 'Time Sheet')) then
      FindorCreate(TfrmTimeSheet, IDXTIMESHEET).Show
   else
   begin
      if dmAxiom.FeeEarner = 'Y' then
         FindorCreate(TfrmTimeDiary, IDXTIMEDIARY).Show
      else
         MsgInfo('This functionality is only available for Fee Earners.');
   end;
end;

procedure TfrmHome.Image3Click(Sender: TObject);
var
   LfrmClients: TfrmClients;
begin
   LfrmClients := TfrmClients.Create(Self);
   LfrmClients.Tag := imgCLIENT;
   LfrmClients.ChooseClient;
end;

procedure TfrmHome.Image4Click(Sender: TObject);
begin
   FindorCreate(TfmWorkFlowToDo, IDXWORKFLOWTODO).Show;
end;

procedure TfrmHome.Image5Click(Sender: TObject);
var
  LfrmPhoneBook: TfrmPhoneBook;
begin
  LfrmPhoneBook := TfrmPhoneBook.Create(Self);
  LfrmPhoneBook.Tag := imgPHONEBOOK;
  LfrmPhoneBook.ChoosePhonebook;
end;

procedure TfrmHome.Image6Click(Sender: TObject);
begin
   FindorCreate(TfrmDocSearch, IDXDOCSEARCH).Show;
end;

procedure TfrmHome.Image8Click(Sender: TObject);
begin
  FindorCreate(TfrmDashboard_Ind, 0).show
end;

procedure TfrmHome.Label1MouseEnter(Sender: TObject);
begin
   TPanel(Sender).BevelOuter := bvRaised;
end;

procedure TfrmHome.Label1MouseLeave(Sender: TObject);
begin
   TPanel(Sender).BevelOuter := bvNone;
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmHome, TStyleHook);

end.
