unit CR_Viewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpeClasses, UCrpe32;

type
  TfrmCR_Viewer = class(TForm)
    Crpe1: TCrpe;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCR_Viewer: TfrmCR_Viewer;

implementation

{$R *.dfm}

end.
