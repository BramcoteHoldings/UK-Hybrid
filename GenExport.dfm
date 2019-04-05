object frmExport: TfrmExport
  Left = 813
  Top = 398
  BorderStyle = bsDialog
  Caption = 'Export'
  ClientHeight = 144
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 7
    Top = 8
    Caption = 'Destination'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Transparent = True
    Height = 98
    Width = 355
    object rbClipboard: TcxRadioButton
      Left = 18
      Top = 23
      Width = 88
      Height = 16
      Caption = 'To Clipboard'
      TabOrder = 0
      OnClick = rbClipboardClick
      LookAndFeel.NativeStyle = True
    end
    object rbFile: TcxRadioButton
      Left = 132
      Top = 23
      Width = 56
      Height = 16
      Caption = 'To File'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbClipboardClick
      LookAndFeel.NativeStyle = True
    end
    object edFileName: TcxTextEdit
      Left = 14
      Top = 70
      Style.Color = clWindow
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.Color = 15790320
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 296
    end
    object btnFileSelect: TcxButton
      Left = 311
      Top = 70
      Width = 24
      Height = 21
      Caption = '...'
      LookAndFeel.NativeStyle = True
      TabOrder = 3
      OnClick = btnFileSelectClick
    end
    object cxLabel1: TcxLabel
      Left = 14
      Top = 50
      Caption = 'Filename'
      Transparent = True
    end
  end
  object cxButton2: TcxButton
    Left = 217
    Top = 115
    Width = 70
    Height = 23
    Caption = 'Ok'
    LookAndFeel.Kind = lfStandard
    ModalResult = 1
    TabOrder = 1
  end
  object cxButton3: TcxButton
    Left = 293
    Top = 115
    Width = 69
    Height = 23
    Caption = 'Cancel'
    LookAndFeel.Kind = lfStandard
    ModalResult = 2
    TabOrder = 2
  end
  object JvOpenDialog: TJvOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text(*.txt)|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Height = 458
    Width = 571
    Left = 155
    Top = 104
  end
end
