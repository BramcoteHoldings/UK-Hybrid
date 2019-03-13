object frmEmployeeBudget: TfrmEmployeeBudget
  Left = 556
  Top = 139
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Employee Budget'
  ClientHeight = 508
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    632
    508)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 7
    Top = 38
    Width = 50
    Height = 30
    Caption = 'Financial Year'
    WordWrap = True
  end
  object Label14: TLabel
    Left = 7
    Top = 16
    Width = 52
    Height = 15
    Caption = 'Employee'
  end
  object Label15: TLabel
    Left = 294
    Top = 14
    Width = 36
    Height = 15
    Caption = 'Ledger'
  end
  object cxcpBudgetAmount: TcxGroupBox
    Left = 9
    Top = 67
    Caption = 'Budget Amounts'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Transparent = True
    Height = 371
    Width = 614
    object Label2: TLabel
      Left = 10
      Top = 38
      Width = 14
      Height = 15
      Caption = 'Jul'
    end
    object Label3: TLabel
      Tag = 1
      Left = 10
      Top = 63
      Width = 22
      Height = 15
      Caption = 'Aug'
    end
    object Label4: TLabel
      Tag = 2
      Left = 10
      Top = 88
      Width = 19
      Height = 15
      Caption = 'Sep'
    end
    object Label5: TLabel
      Tag = 3
      Left = 10
      Top = 114
      Width = 19
      Height = 15
      Caption = 'Oct'
    end
    object Label6: TLabel
      Tag = 4
      Left = 10
      Top = 139
      Width = 22
      Height = 15
      Caption = 'Nov'
    end
    object Label7: TLabel
      Tag = 5
      Left = 10
      Top = 163
      Width = 20
      Height = 15
      Caption = 'Dec'
    end
    object Label8: TLabel
      Tag = 6
      Left = 10
      Top = 186
      Width = 17
      Height = 15
      Caption = 'Jan'
    end
    object Label9: TLabel
      Tag = 7
      Left = 10
      Top = 210
      Width = 19
      Height = 15
      Caption = 'Feb'
    end
    object Label10: TLabel
      Tag = 8
      Left = 10
      Top = 235
      Width = 21
      Height = 15
      Caption = 'Mar'
    end
    object Label11: TLabel
      Tag = 9
      Left = 10
      Top = 260
      Width = 19
      Height = 15
      Caption = 'Apr'
    end
    object Label12: TLabel
      Tag = 10
      Left = 10
      Top = 285
      Width = 23
      Height = 15
      Caption = 'May'
    end
    object Label13: TLabel
      Tag = 11
      Left = 10
      Top = 311
      Width = 18
      Height = 15
      Caption = 'Jun'
    end
    object dxBevel1: TdxBevel
      Left = 48
      Top = 334
      Width = 554
      Height = 4
      Shape = dxbsLineTop
      Style = dxbsRaised
    end
    object dfJulTime: TcxSpinEdit
      Tag = 1
      Left = 311
      Top = 35
      Properties.Alignment.Horz = taRightJustify
      Properties.ValueType = vtInt
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 24
      Width = 74
    end
    object dfAugTime: TcxSpinEdit
      Tag = 2
      Left = 311
      Top = 60
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 25
      Width = 74
    end
    object dfSepTime: TcxSpinEdit
      Tag = 3
      Left = 311
      Top = 85
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 26
      Width = 74
    end
    object dfNovTime: TcxSpinEdit
      Tag = 5
      Left = 311
      Top = 134
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 28
      Width = 74
    end
    object dfDecTime: TcxSpinEdit
      Tag = 6
      Left = 311
      Top = 159
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 29
      Width = 74
    end
    object dfJanTime: TcxSpinEdit
      Tag = 7
      Left = 311
      Top = 184
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 30
      Width = 74
    end
    object dfFebTime: TcxSpinEdit
      Tag = 8
      Left = 311
      Top = 209
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 31
      Width = 74
    end
    object dfMarTime: TcxSpinEdit
      Tag = 9
      Left = 311
      Top = 234
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 32
      Width = 74
    end
    object dfAprTime: TcxSpinEdit
      Tag = 10
      Left = 311
      Top = 259
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 33
      Width = 74
    end
    object dfMayTime: TcxSpinEdit
      Tag = 11
      Left = 311
      Top = 284
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 34
      Width = 74
    end
    object dfJunTime: TcxSpinEdit
      Tag = 12
      Left = 311
      Top = 309
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 35
      Width = 74
    end
    object dfOctTime: TcxSpinEdit
      Tag = 4
      Left = 311
      Top = 109
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulTimePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 27
      Width = 74
    end
    object dfJulFee: TcxCurrencyEdit
      Tag = 1
      Left = 180
      Top = 35
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 12
      Width = 121
    end
    object dfAugFee: TcxCurrencyEdit
      Tag = 2
      Left = 180
      Top = 60
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 13
      Width = 121
    end
    object dfSepFee: TcxCurrencyEdit
      Tag = 3
      Left = 180
      Top = 85
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 14
      Width = 121
    end
    object dfOctFee: TcxCurrencyEdit
      Tag = 4
      Left = 180
      Top = 109
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 15
      Width = 121
    end
    object dfNovFee: TcxCurrencyEdit
      Tag = 5
      Left = 180
      Top = 134
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 16
      Width = 121
    end
    object dfDecFee: TcxCurrencyEdit
      Tag = 6
      Left = 180
      Top = 159
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 17
      Width = 121
    end
    object dfJanFee: TcxCurrencyEdit
      Tag = 7
      Left = 180
      Top = 184
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 18
      Width = 121
    end
    object dfFebFee: TcxCurrencyEdit
      Tag = 8
      Left = 180
      Top = 209
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 19
      Width = 121
    end
    object dfMarFee: TcxCurrencyEdit
      Tag = 9
      Left = 180
      Top = 234
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 20
      Width = 121
    end
    object dfAprFee: TcxCurrencyEdit
      Tag = 10
      Left = 180
      Top = 259
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 21
      Width = 121
    end
    object dfMayFee: TcxCurrencyEdit
      Tag = 11
      Left = 180
      Top = 284
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 22
      Width = 121
    end
    object dfJunFee: TcxCurrencyEdit
      Tag = 12
      Left = 180
      Top = 309
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfJulFeePropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 23
      Width = 121
    end
    object edtJul: TcxCurrencyEdit
      Tag = 1
      Left = 48
      Top = 35
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 121
    end
    object edtAug: TcxCurrencyEdit
      Tag = 2
      Left = 48
      Top = 60
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 121
    end
    object edtSep: TcxCurrencyEdit
      Tag = 3
      Left = 48
      Top = 85
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 121
    end
    object edtOct: TcxCurrencyEdit
      Tag = 4
      Left = 48
      Top = 109
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 121
    end
    object edtNov: TcxCurrencyEdit
      Tag = 5
      Left = 48
      Top = 134
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 121
    end
    object edtDec: TcxCurrencyEdit
      Tag = 6
      Left = 48
      Top = 159
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 121
    end
    object edtJan: TcxCurrencyEdit
      Tag = 7
      Left = 48
      Top = 184
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 121
    end
    object edtFeb: TcxCurrencyEdit
      Tag = 8
      Left = 48
      Top = 209
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      Width = 121
    end
    object edtMar: TcxCurrencyEdit
      Tag = 9
      Left = 48
      Top = 234
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Width = 121
    end
    object edtApr: TcxCurrencyEdit
      Tag = 10
      Left = 48
      Top = 259
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 9
      Width = 121
    end
    object edtMay: TcxCurrencyEdit
      Tag = 11
      Left = 48
      Top = 284
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 10
      Width = 121
    end
    object edtJun: TcxCurrencyEdit
      Tag = 12
      Left = 48
      Top = 309
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edtAugPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 91
      Top = 18
      Caption = 'W.I.P.'
      ParentFont = False
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 229
      Top = 18
      Caption = 'Fee'
      ParentFont = False
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 327
      Top = 18
      Caption = 'Time'
      ParentFont = False
      Transparent = True
    end
    object edFessRecFeb: TcxCurrencyEdit
      Tag = 8
      Left = 397
      Top = 209
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 43
      Width = 121
    end
    object edFessRecNov: TcxCurrencyEdit
      Tag = 5
      Left = 397
      Top = 134
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 40
      Width = 121
    end
    object edFessRecJul: TcxCurrencyEdit
      Tag = 1
      Left = 397
      Top = 35
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 36
      Width = 121
    end
    object edFessRecAug: TcxCurrencyEdit
      Tag = 2
      Left = 397
      Top = 60
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 37
      Width = 121
    end
    object edFessRecSep: TcxCurrencyEdit
      Tag = 3
      Left = 397
      Top = 85
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 38
      Width = 121
    end
    object edFessRecOct: TcxCurrencyEdit
      Tag = 4
      Left = 397
      Top = 109
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 39
      Width = 121
    end
    object edFessRecDec: TcxCurrencyEdit
      Tag = 6
      Left = 397
      Top = 159
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 41
      Width = 121
    end
    object edFessRecJan: TcxCurrencyEdit
      Tag = 7
      Left = 397
      Top = 184
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 42
      Width = 121
    end
    object edFessRecMar: TcxCurrencyEdit
      Tag = 9
      Left = 397
      Top = 234
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 44
      Width = 121
    end
    object edFessRecApr: TcxCurrencyEdit
      Tag = 10
      Left = 397
      Top = 259
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 45
      Width = 121
    end
    object edFessRecMay: TcxCurrencyEdit
      Tag = 11
      Left = 397
      Top = 284
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 46
      Width = 121
    end
    object edFessRecJun: TcxCurrencyEdit
      Tag = 12
      Left = 397
      Top = 309
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = edFessRecJulPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 47
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 421
      Top = 17
      Caption = 'Received Fees'
      Transparent = True
    end
    object edtWIPTotal: TcxCurrencyEdit
      Left = 48
      Top = 341
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 52
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 9
      Top = 343
      Caption = 'Total'
      Transparent = True
    end
    object edtFeeTotal: TcxCurrencyEdit
      Left = 180
      Top = 341
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 54
      Width = 121
    end
    object edtFeesRecvdTotal: TcxCurrencyEdit
      Left = 397
      Top = 341
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 55
      Width = 121
    end
    object edtTimeTotal: TcxTextEdit
      Left = 311
      Top = 341
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 56
      Width = 74
    end
    object dfJulDaysperMonth: TcxSpinEdit
      Tag = 1
      Left = 528
      Top = 35
      Properties.Alignment.Horz = taRightJustify
      Properties.ValueType = vtInt
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 57
      Width = 74
    end
    object dfAugDaysperMonth: TcxSpinEdit
      Tag = 2
      Left = 528
      Top = 60
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 58
      Width = 74
    end
    object dfSepDaysperMonth: TcxSpinEdit
      Tag = 3
      Left = 528
      Top = 85
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 59
      Width = 74
    end
    object dfOctDaysperMonth: TcxSpinEdit
      Tag = 4
      Left = 528
      Top = 109
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 60
      Width = 74
    end
    object dfNovDaysperMonth: TcxSpinEdit
      Tag = 5
      Left = 528
      Top = 134
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 61
      Width = 74
    end
    object dfDecDaysperMonth: TcxSpinEdit
      Tag = 6
      Left = 528
      Top = 159
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 62
      Width = 74
    end
    object dfJanDaysperMonth: TcxSpinEdit
      Tag = 7
      Left = 528
      Top = 184
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 63
      Width = 74
    end
    object dfFebDaysperMonth: TcxSpinEdit
      Tag = 8
      Left = 528
      Top = 209
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 64
      Width = 74
    end
    object dfMarDaysperMonth: TcxSpinEdit
      Tag = 9
      Left = 528
      Top = 234
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 65
      Width = 74
    end
    object dfAprDaysperMonth: TcxSpinEdit
      Tag = 10
      Left = 528
      Top = 259
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 66
      Width = 74
    end
    object dfMayDaysperMonth: TcxSpinEdit
      Tag = 11
      Left = 528
      Top = 284
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = dfAugDaysperMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 67
      Width = 74
    end
    object dfJunDaysperMonth: TcxSpinEdit
      Tag = 12
      Left = 528
      Top = 309
      Properties.Alignment.Horz = taRightJustify
      Properties.ValueType = vtFloat
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 68
      Width = 74
    end
    object edtDaysperMonthTotal: TcxTextEdit
      Left = 528
      Top = 341
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 69
      Width = 74
    end
    object cxLabel4: TcxLabel
      Left = 524
      Top = 17
      Caption = 'Days per Month'
      Transparent = True
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
    TabOrder = 0
    Text = 'cmbYear'
    Width = 117
  end
  object cxGroupBox3: TcxGroupBox
    Left = 9
    Top = 446
    Anchors = [akLeft, akBottom]
    Caption = 'Set Year Total'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Transparent = True
    Height = 60
    Width = 292
    object neYearTotal: TcxCurrencyEdit
      Left = 13
      Top = 33
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = False
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 95
    end
    object rbWIP: TcxRadioButton
      Left = 10
      Top = 14
      Width = 55
      Height = 17
      Caption = 'W.I.P.'
      Checked = True
      TabOrder = 1
      TabStop = True
      LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object rbFee: TcxRadioButton
      Left = 76
      Top = 14
      Width = 55
      Height = 17
      Caption = 'Fee'
      TabOrder = 2
      LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object rbTime: TcxRadioButton
      Left = 158
      Top = 14
      Width = 47
      Height = 17
      Caption = 'Time'
      TabOrder = 3
      LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object rbRecFees: TcxRadioButton
      Left = 215
      Top = 14
      Width = 69
      Height = 17
      Caption = 'Rec Fees'
      TabOrder = 4
      LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object btnApply: TButton
      Left = 112
      Top = 33
      Width = 61
      Height = 22
      Caption = 'Apply'
      TabOrder = 5
      OnClick = btnApplyClick
    end
  end
  object lblChart: TcxLabel
    Left = 62
    Top = 14
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
    Left = 459
    Top = 480
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000FFFFFFFF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000800000FF800000FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000800000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FF008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000800000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000800000FF0080
      00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
      00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
      FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000080800000FF00FF0080800000808000008080000080
      80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000FF00FF008000FF0080
      00FF008000FF800000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000080800000FF
      00FF008000FF008000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000FF00FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton
    Left = 544
    Top = 480
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000000FFFF808080FF008080000080800000808000008080000080
      8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000FFFFFFFF00808000008080000080
      8000008080000080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
      80FF008080000080800000808000008080000080800000808000808080FFFFFF
      FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
      80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
      FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
      80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000000
      FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
      8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
      800000808000008080000080800000808000000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
      80FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      800000808000008080000000FFFF000080FF0080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
      8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF0000FFFF0080800000808000008080000080800000808000008080000080
      8000808080FF808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 5
  end
  object cmbLedger: TcxLookupComboBox
    Left = 341
    Top = 11
    Hint = 
      'Use this only if you have a unique ledger code for each fee earn' +
      'er.'
    Properties.DropDownRows = 20
    Properties.DropDownWidth = 300
    Properties.KeyFieldNames = 'KEY'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        Width = 224
        FieldName = 'DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsChart
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 194
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
      'RECEIVEDFEES,'
      'DAYS_PER_MONTH,'
      'ROWID'
      'FROM BUDGET'
      'WHERE EMPLOYEE = :CODE'
      'AND ENTITY = :ENTITY'
      'AND FINANCIAL_YEAR = :YEAR'
      'ORDER BY to_number(PERIOD)')
    CachedUpdates = True
    Options.RequiredFields = False
    OnCalcFields = qryLedgerCalcFields
    Left = 464
    Top = 37
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
      'WHERE employee = :CODE'
      'AND ENTITY = :ENTITY')
    Left = 225
    Top = 65532
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
      'where employee = :CODE'
      'and ENTITY = :ENTITY'
      'UNION'
      
        'select nvl(max(to_number(FINANCIAL_YEAR)+1),to_char(sysdate,'#39'YYY' +
        'Y'#39')) as year'
      'from budget'
      'where employee = :CODE'
      'and ENTITY = :ENTITY')
    Left = 418
    Top = 38
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
    Left = 242
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
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 499
    Top = 38
  end
  object qryChart: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(COMPONENT_CODE_DISPLAY,CODE) as CODE,CODE as KEY, DES' +
        'CR FROM CHART WHERE BANK = :entity ORDER BY 1')
    Left = 341
    Top = 33
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsChart: TUniDataSource
    DataSet = qryChart
    Left = 304
    Top = 20
  end
end
