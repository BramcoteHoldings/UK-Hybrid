object frmGenericFileName: TfrmGenericFileName
  Left = 306
  Top = 314
  BorderStyle = bsDialog
  Caption = 'File Name Selection...'
  ClientHeight = 186
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 106
  TextHeight = 15
  object cxLabel1: TcxLabel
    Left = 17
    Top = 9
    Caption = 'Select Path...'
  end
  object eFileName: TcxTextEdit
    Left = 17
    Top = 99
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 351
  end
  object cxLabel2: TcxLabel
    Left = 17
    Top = 80
    Caption = 'Enter File Name for export File'
  end
  object cxButton1: TcxButton
    Left = 180
    Top = 143
    Width = 87
    Height = 29
    Caption = 'Ok'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Spacing = 5
    TabOrder = 3
  end
  object cxButton2: TcxButton
    Left = 280
    Top = 143
    Width = 87
    Height = 29
    Cancel = True
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Spacing = 5
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object edFilePath: TJvDirectoryEdit
    Left = 17
    Top = 34
    Width = 350
    Height = 23
    DialogKind = dkWin32
    TabOrder = 5
    Text = ''
  end
end
