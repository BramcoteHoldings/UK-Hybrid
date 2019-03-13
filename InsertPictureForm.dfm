object frmInsertPicture: TfrmInsertPicture
  Left = 442
  Top = 237
  Width = 524
  Height = 293
  BorderStyle = bsDialog
  Caption = 'Insert Picture'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    508
    255)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 72
    Height = 13
    Caption = 'Picture source:'
  end
  object Label2: TLabel
    Left = 8
    Top = 47
    Width = 74
    Height = 13
    Caption = 'Alternate Text:'
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 84
    Width = 117
    Height = 85
    Caption = 'Layout'
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Alignment:'
    end
    object cbAlignment: TComboBox
      Left = 16
      Top = 40
      Width = 89
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbAlignmentChange
      Items.Strings = (
        'Left'
        'Right'
        'Middle')
    end
  end
  object GroupBox2: TGroupBox
    Left = 138
    Top = 84
    Width = 144
    Height = 109
    Caption = 'Size'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 20
      Width = 32
      Height = 13
      Caption = 'Width:'
    end
    object Label5: TLabel
      Left = 16
      Top = 44
      Width = 35
      Height = 13
      Caption = 'Height:'
    end
    object edtWidth: TEdit
      Left = 56
      Top = 16
      Width = 61
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = edtWidthChange
    end
    object edtHeight: TEdit
      Left = 56
      Top = 44
      Width = 61
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = edtHeightChange
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 77
      Width = 92
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Aspect ratio'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object UDWidth: TUpDown
      Left = 117
      Top = 16
      Width = 16
      Height = 21
      Associate = edtWidth
      Max = 1000
      Increment = 10
      TabOrder = 3
    end
    object UDHeight: TUpDown
      Left = 117
      Top = 44
      Width = 16
      Height = 21
      Associate = edtHeight
      Max = 1000
      Increment = 10
      TabOrder = 4
    end
  end
  object edtPictureSource: TEdit
    Left = 92
    Top = 12
    Width = 243
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
  object Button1: TButton
    Left = 346
    Top = 10
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Browse'
    TabOrder = 3
    OnClick = Button1Click
  end
  object edtAlternateText: TEdit
    Left = 92
    Top = 43
    Width = 327
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
  end
  object btnOk: TButton
    Left = 430
    Top = 10
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 5
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 430
    Top = 41
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 292
    Top = 85
    Width = 211
    Height = 150
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 7
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 209
      Height = 148
      Align = alClient
      Center = True
      ParentShowHint = False
      ShowHint = False
      Stretch = True
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 236
    Width = 508
    Height = 19
    Panels = <>
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 25
    Top = 179
  end
end
