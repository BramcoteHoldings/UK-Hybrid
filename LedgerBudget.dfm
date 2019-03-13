object frmLedgerBudget: TfrmLedgerBudget
  Left = 345
  Top = 204
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Budget'
  ClientHeight = 444
  ClientWidth = 404
  Color = clBtnFace
  Constraints.MinHeight = 482
  Constraints.MinWidth = 420
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 38
    Width = 46
    Height = 26
    Caption = 'Financial Year'
    WordWrap = True
  end
  object Label14: TLabel
    Left = 8
    Top = 19
    Width = 28
    Height = 13
    Caption = 'Chart'
  end
  object cxcpBudgetAmount: TcxGroupBox
    Left = 9
    Top = 67
    Caption = 'Budget Amounts'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Transparent = True
    Height = 318
    Width = 173
    object Label2: TLabel
      Left = 19
      Top = 23
      Width = 14
      Height = 13
      Caption = 'Jul'
    end
    object Label3: TLabel
      Tag = 1
      Left = 12
      Top = 49
      Width = 21
      Height = 13
      Caption = 'Aug'
    end
    object Label4: TLabel
      Tag = 2
      Left = 14
      Top = 73
      Width = 19
      Height = 13
      Caption = 'Sep'
    end
    object Label5: TLabel
      Tag = 3
      Left = 15
      Top = 98
      Width = 18
      Height = 13
      Caption = 'Oct'
    end
    object Label6: TLabel
      Tag = 4
      Left = 13
      Top = 123
      Width = 20
      Height = 13
      Caption = 'Nov'
    end
    object Label7: TLabel
      Tag = 5
      Left = 14
      Top = 147
      Width = 19
      Height = 13
      Caption = 'Dec'
    end
    object Label8: TLabel
      Tag = 6
      Left = 16
      Top = 172
      Width = 17
      Height = 13
      Caption = 'Jan'
    end
    object Label9: TLabel
      Tag = 7
      Left = 14
      Top = 196
      Width = 19
      Height = 13
      Caption = 'Feb'
    end
    object Label10: TLabel
      Tag = 8
      Left = 13
      Top = 221
      Width = 20
      Height = 13
      Caption = 'Mar'
    end
    object Label11: TLabel
      Tag = 9
      Left = 15
      Top = 246
      Width = 18
      Height = 13
      Caption = 'Apr'
    end
    object Label12: TLabel
      Tag = 10
      Left = 12
      Top = 270
      Width = 21
      Height = 13
      Caption = 'May'
    end
    object Label13: TLabel
      Tag = 11
      Left = 15
      Top = 295
      Width = 18
      Height = 13
      Caption = 'Jun'
    end
    object edtJul: TNumberEdit
      Left = 41
      Top = 19
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 0
    end
    object edtAug: TNumberEdit
      Left = 41
      Top = 45
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 1
    end
    object edtSep: TNumberEdit
      Left = 41
      Top = 69
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 2
    end
    object edtOct: TNumberEdit
      Left = 41
      Top = 94
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 3
    end
    object edtNov: TNumberEdit
      Left = 41
      Top = 119
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 4
    end
    object edtDec: TNumberEdit
      Left = 41
      Top = 143
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 5
    end
    object edtJan: TNumberEdit
      Left = 41
      Top = 168
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 6
    end
    object edtFeb: TNumberEdit
      Left = 41
      Top = 192
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 7
    end
    object edtMar: TNumberEdit
      Left = 41
      Top = 217
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 8
    end
    object edtApr: TNumberEdit
      Left = 41
      Top = 242
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 9
    end
    object edtMay: TNumberEdit
      Left = 41
      Top = 266
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 10
    end
    object edtJun: TNumberEdit
      Left = 41
      Top = 290
      Width = 120
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 11
    end
  end
  object cxcpBalanceAmount: TcxGroupBox
    Left = 192
    Top = 67
    Caption = 'Balance Amounts'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Transparent = True
    Height = 318
    Width = 208
    object Label26: TLabel
      Left = 17
      Top = 23
      Width = 14
      Height = 13
      Caption = 'Jul'
    end
    object Label25: TLabel
      Tag = 1
      Left = 10
      Top = 49
      Width = 21
      Height = 13
      Caption = 'Aug'
    end
    object Label24: TLabel
      Tag = 2
      Left = 12
      Top = 73
      Width = 19
      Height = 13
      Caption = 'Sep'
    end
    object Label23: TLabel
      Tag = 3
      Left = 13
      Top = 98
      Width = 18
      Height = 13
      Caption = 'Oct'
    end
    object Label22: TLabel
      Tag = 4
      Left = 11
      Top = 123
      Width = 20
      Height = 13
      Caption = 'Nov'
    end
    object Label21: TLabel
      Tag = 5
      Left = 12
      Top = 147
      Width = 19
      Height = 13
      Caption = 'Dec'
    end
    object Label20: TLabel
      Tag = 6
      Left = 14
      Top = 172
      Width = 17
      Height = 13
      Caption = 'Jan'
    end
    object Label19: TLabel
      Tag = 7
      Left = 12
      Top = 196
      Width = 19
      Height = 13
      Caption = 'Feb'
    end
    object Label18: TLabel
      Tag = 8
      Left = 11
      Top = 221
      Width = 20
      Height = 13
      Caption = 'Mar'
    end
    object Label17: TLabel
      Tag = 9
      Left = 13
      Top = 246
      Width = 18
      Height = 13
      Caption = 'Apr'
    end
    object Label16: TLabel
      Tag = 10
      Left = 10
      Top = 270
      Width = 21
      Height = 13
      Caption = 'May'
    end
    object Label15: TLabel
      Tag = 11
      Left = 13
      Top = 295
      Width = 18
      Height = 13
      Caption = 'Jun'
    end
    object lblJulBal: TcxLabel
      Left = 39
      Top = 22
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblAugBal: TcxLabel
      Left = 39
      Top = 47
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblSepBal: TcxLabel
      Left = 39
      Top = 71
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblOctBal: TcxLabel
      Left = 39
      Top = 96
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblNovBal: TcxLabel
      Left = 39
      Top = 121
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblDecBal: TcxLabel
      Left = 39
      Top = 145
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblJanBal: TcxLabel
      Left = 39
      Top = 170
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblFebBal: TcxLabel
      Left = 39
      Top = 194
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblMarBal: TcxLabel
      Left = 39
      Top = 219
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblAprBal: TcxLabel
      Left = 39
      Top = 244
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblMayBal: TcxLabel
      Left = 39
      Top = 268
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblJunBal: TcxLabel
      Left = 39
      Top = 293
      AutoSize = False
      Caption = '$'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 91
      AnchorX = 130
    end
    object lblVarJul: TcxLabel
      Left = 141
      Top = 22
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarAug: TcxLabel
      Left = 141
      Top = 47
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarSep: TcxLabel
      Left = 141
      Top = 71
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarOct: TcxLabel
      Left = 141
      Top = 96
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarNov: TcxLabel
      Left = 141
      Top = 121
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarDec: TcxLabel
      Left = 141
      Top = 145
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarJan: TcxLabel
      Left = 141
      Top = 170
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarFeb: TcxLabel
      Left = 141
      Top = 194
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarMar: TcxLabel
      Left = 141
      Top = 219
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarApr: TcxLabel
      Left = 141
      Top = 244
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarMay: TcxLabel
      Left = 141
      Top = 268
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
    object lblVarJun: TcxLabel
      Left = 141
      Top = 293
      AutoSize = False
      Caption = '%'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 60
      AnchorX = 201
    end
  end
  object cmbYear: TcxComboBox
    Left = 62
    Top = 39
    Properties.OnChange = cmbYearChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Text = 'cmbYear'
    Width = 117
  end
  object cxGroupBox3: TcxGroupBox
    Left = 9
    Top = 392
    Caption = 'Set Year Total'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Transparent = True
    Height = 50
    Width = 173
    object btnApply: TcxButton
      Left = 108
      Top = 19
      Width = 55
      Height = 22
      Caption = 'Apply'
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = btnApplyClick
    end
    object neYearTotal: TcxCurrencyEdit
      Left = 6
      Top = 19
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = False
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 95
    end
  end
  object lblChart: TcxLabel
    Left = 62
    Top = 15
    AutoSize = False
    Caption = 'lblChart'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 116
    AnchorX = 178
  end
  object btnOK: TcxButton
    Left = 238
    Top = 414
    Width = 75
    Height = 25
    Caption = '&OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333377F3333333333000033334224333333333333
      337337F3333333330000333422224333333333333733337F3333333300003342
      222224333333333373333337F3333333000034222A22224333333337F337F333
      7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
      33333337F73337F337F33333000033A33333A222433333337333337F337F3333
      0000333333333A222433333333333337F337F33300003333333333A222433333
      333333337F337F33000033333333333A222433333333333337F337F300003333
      33333333A222433333333333337F337F00003333333333333A22433333333333
      3337F37F000033333333333333A223333333333333337F730000333333333333
      333A333333333333333337330000333333333333333333333333333333333333
      0000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 5
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton
    Left = 323
    Top = 414
    Width = 75
    Height = 25
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033337733333333333333333F333333333333
      0000333911733333973333333377F333333F3333000033391117333911733333
      37F37F333F77F33300003339111173911117333337F337F3F7337F3300003333
      911117111117333337F3337F733337F3000033333911111111733333337F3337
      3333F7330000333333911111173333333337F333333F73330000333333311111
      7333333333337F3333373333000033333339111173333333333337F333733333
      00003333339111117333333333333733337F3333000033333911171117333333
      33337333337F333300003333911173911173333333373337F337F33300003333
      9117333911173333337F33737F337F33000033333913333391113333337FF733
      37F337F300003333333333333919333333377333337FFF730000333333333333
      3333333333333333333777330000333333333333333333333333333333333333
      0000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 6
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      'NBUDGET,'
      'ENTITY,'
      'CREATED,'
      'PERIOD,'
      'CALENDAR_YEAR,'
      'EMPLOYEE,'
      'DEPARTMENT,'
      'ACCOUNTCODE,'
      'ACCOUNTVALUE,'
      'BILLEDFEES,'
      'WIP,'
      'TIME,'
      'MONTH,'
      'FINANCIAL_YEAR,'
      'ROWID'
      'FROM BUDGET'
      'WHERE ACCOUNTCODE = :CODE'
      'AND ENTITY = :ENTITY'
      'AND FINANCIAL_YEAR = :YEAR'
      'ORDER BY to_number(PERIOD)')
    CachedUpdates = True
    Options.RequiredFields = False
    OnCalcFields = qryLedgerCalcFields
    Left = 351
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'YEAR'
        Value = nil
      end>
  end
  object qryThisYear: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(MAX(to_number(FINANCIAL_YEAR)),to_char(add_months(sys' +
        'date,6),'#39'YYYY'#39')) as Year'
      'FROM BUDGET'
      'WHERE accountcode = :CODE'
      'AND ENTITY = :ENTITY')
    Left = 256
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object qryAllYears: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct to_number(FINANCIAL_YEAR) as year'
      'from budget'
      'where accountcode = :CODE'
      'and ENTITY = :ENTITY'
      'UNION'
      
        'select nvl(max(to_number(FINANCIAL_YEAR)+1),to_char(sysdate,'#39'YYY' +
        'Y'#39')) as year'
      'from budget'
      'where accountcode = :CODE'
      'and ENTITY = :ENTITY')
    Left = 276
    Top = 382
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object qryTrans: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select sum(amount)amount ,to_number(to_char(add_months(created,-' +
        '6),'#39'MM'#39')) as Month from transitem'
      
        'where created between to_date('#39'01/07/'#39'|| to_char(to_number(:YEAR' +
        ') -1),'#39'DD/MM/YYYY'#39')'
      'and to_date('#39'30/06/'#39' || :YEAR,'#39'DD/MM/YYYY'#39')'
      'and chart = :CHART'
      'and ACCT = :ENTITY'
      'group by to_number(to_char(add_months(created,-6),'#39'MM'#39'))')
    Left = 292
    Top = 7
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'YEAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
end
