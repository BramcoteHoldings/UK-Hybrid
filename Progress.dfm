object frmProgress: TfrmProgress
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Outlook Synchronization Progress'
  ClientHeight = 63
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxProgressBar1: TcxProgressBar
    Left = 12
    Top = 8
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Width = 437
  end
  object lblAppointmentCount: TcxLabel
    Left = 14
    Top = 35
    Caption = 'Preparing sync'
    Transparent = True
  end
end
