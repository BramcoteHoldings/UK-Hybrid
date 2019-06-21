object frmInvoice: TfrmInvoice
  Left = 563
  Top = 66
  Caption = 'Bill Creation'
  ClientHeight = 693
  ClientWidth = 887
  Color = clBtnFace
  Constraints.MinHeight = 572
  Constraints.MinWidth = 663
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    887
    693)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 6
    Top = 106
    Width = 63
    Height = 15
    Caption = 'Fees - Items'
  end
  object Label2: TLabel
    Left = 121
    Top = 69
    Width = 48
    Height = 15
    Caption = 'Available'
    Visible = False
  end
  object lblFeesAvail: TLabel
    Left = 102
    Top = 87
    Width = 79
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Visible = False
  end
  object Label3: TLabel
    Left = 254
    Top = 69
    Width = 16
    Height = 15
    Alignment = taRightJustify
    Caption = 'Bill'
  end
  object Label5: TLabel
    Left = 4
    Top = 124
    Width = 78
    Height = 15
    Caption = 'Disbursements'
  end
  object lblDisbAvail: TLabel
    Left = 108
    Top = 124
    Width = 73
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Visible = False
  end
  object Label7: TLabel
    Left = 6
    Top = 146
    Width = 90
    Height = 15
    Caption = 'Anticipated Disb.'
  end
  object lblAntdAvail: TLabel
    Left = 108
    Top = 150
    Width = 73
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Visible = False
  end
  object Label9: TLabel
    Left = 6
    Top = 198
    Width = 45
    Height = 15
    Caption = 'Sundries'
  end
  object lblSundAvail: TLabel
    Left = 108
    Top = 201
    Width = 73
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Visible = False
  end
  object lblBillToCaption: TLabel
    Left = 6
    Top = 362
    Width = 30
    Height = 15
    Caption = '&Bill to'
    FocusControl = btnBillTo
  end
  object lblBillTo: TLabel
    Left = 94
    Top = 362
    Width = 340
    Height = 14
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object Label10: TLabel
    Left = 6
    Top = 35
    Width = 36
    Height = 15
    Caption = 'Bill Ref'
  end
  object lblDispatchMsg: TLabel
    Left = 309
    Top = 36
    Width = 55
    Height = 15
    Caption = 'Posted On'
  end
  object Label11: TLabel
    Left = 6
    Top = 389
    Width = 49
    Height = 15
    Caption = '&Template'
  end
  object lblLessTrust: TLabel
    Left = 6
    Top = 227
    Width = 91
    Height = 15
    Caption = 'Less Client Funds'
  end
  object Label13: TLabel
    Left = 590
    Top = 68
    Width = 48
    Height = 15
    Alignment = taRightJustify
    Caption = 'Net Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 6
    Top = 254
    Width = 97
    Height = 15
    Caption = 'Bill to &interim date'
    FocusControl = dtpInterim
  end
  object lblBillTemplate: TLabel
    Left = 94
    Top = 389
    Width = 129
    Height = 14
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object Label15: TLabel
    Left = 6
    Top = 57
    Width = 38
    Height = 15
    Caption = 'Bill Key'
  end
  object Label16: TLabel
    Left = 6
    Top = 172
    Width = 48
    Height = 15
    Caption = 'Creditors'
  end
  object lblUnPaidAvail: TLabel
    Left = 108
    Top = 176
    Width = 73
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Visible = False
  end
  object nlTrustAvail: TLabel
    Left = 108
    Top = 227
    Width = 73
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
  end
  object lblGst: TLabel
    Left = 339
    Top = 69
    Width = 17
    Height = 15
    Caption = 'Tax'
  end
  object DBText1: TDBText
    Left = 375
    Top = 278
    Width = 27
    Height = 13
    DataField = 'ACCT'
    DataSource = dsMatter
    Visible = False
  end
  object lblEntity: TLabel
    Left = 280
    Top = 228
    Width = 43
    Height = 15
    Caption = 'lblEntity'
  end
  object Label18: TLabel
    Left = 416
    Top = 69
    Width = 42
    Height = 15
    Alignment = taRightJustify
    Caption = 'Tax Free'
  end
  object Label8: TLabel
    Left = 6
    Top = 280
    Width = 97
    Height = 15
    Caption = 'Expected Payment'
  end
  object Label14: TLabel
    Left = 515
    Top = 36
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object lblDiscountCaption: TLabel
    Left = 6
    Top = 299
    Width = 174
    Height = 28
    Hint = 'Discount (% or $ amount. eg 5% or 200)'
    AutoSize = False
    Caption = 'Discount (% or $ amount. eg 5% or 200)'
    ParentShowHint = False
    ShowHint = True
    WordWrap = True
  end
  object Label19: TLabel
    Left = 309
    Top = 304
    Width = 17
    Height = 15
    Hint = 'Discount (% or $ amount. eg 5% or 200)'
    Caption = 'Tax'
    ParentShowHint = False
    ShowHint = True
    WordWrap = True
  end
  object lblUnitFeesAvail: TLabel
    Left = 108
    Top = 106
    Width = 73
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
  end
  object Label20: TLabel
    Left = 6
    Top = 87
    Width = 61
    Height = 15
    Caption = 'Fees - Time'
  end
  object Label6: TLabel
    Left = 6
    Top = 334
    Width = 42
    Height = 15
    Caption = 'Bill date'
    FocusControl = dtpInterim
  end
  object lblAuthorisedBy: TLabel
    Left = 675
    Top = 56
    Width = 77
    Height = 15
    Caption = 'Authorised By:'
    ParentShowHint = False
    ShowHint = True
    Visible = False
  end
  object lblCreatedBy: TLabel
    Left = 675
    Top = 35
    Width = 60
    Height = 15
    Caption = 'Created By:'
    ParentShowHint = False
    ShowHint = True
  end
  object lblPostedBy: TLabel
    Left = 675
    Top = 79
    Width = 55
    Height = 15
    Caption = 'Posted By:'
    ParentShowHint = False
    ShowHint = True
    Visible = False
  end
  object btnFeesRebuild: TBitBtn
    Left = 468
    Top = 94
    Width = 81
    Height = 25
    Caption = 'Rebuild'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      003337777777777777F330FFFFFFFFFFF03337F333FFFFF337F330FFFECCCEFF
      F03337F33777773F37F330FFCEFFFECFF03337F373333373F7F330FEEFFFFFEE
      F03337F7F3333337F7F330FCFFFFFFFCF03337F7F333FFF7F7F330FCFFF944FC
      F03337F7F3377737F7F330FCFFF4FFFCF03337F7F337F337F7F330FEEFF4FFEE
      F03337F73F37F33737F330FFCEF4FECFF03337F373F7FF7337F330FFFECCCEFF
      F03337F33777773FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
      F03337FFFFFFFF7F373330EEEEEEEE0F033337777777777F733330FFFFFFFF00
      333337FFFFFFFF77333330000000000333333777777777733333}
    NumGlyphs = 2
    TabOrder = 1
    TabStop = False
    OnClick = btnFeesRebuildClick
  end
  object btnDisbRebuild: TBitBtn
    Left = 468
    Top = 120
    Width = 81
    Height = 25
    Caption = 'Rebuild'
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      0800000000000002000000000000000000000001000000010000000000008080
      8000000080000080800000800000808000008000000080008000408080004040
      0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
      FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
      80008000FF004080FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303030303
      030300131313131313000303030303030303010E0E0E0E0E0E01030303030303
      0303000000000000000003030303030303030101010101010101030303030303
      030300110E110E110E000303030303030303010E030303030301030303030303
      0300110E110E110E110003030303030303010E030E0303030301030303030303
      03000E000E110E110E0003030303030303010E010E0303030301030303030303
      03001100110E110E0010030303030303030103010E030E03010E030303030303
      030300000E000E001400030303030303030301010E010E010E01030303030303
      03030300110000140000030E0E0E0E0E0E0E0E010E01010E0101000000000000
      000000000E0014000000010101010101010101010E010E0101010E0E0E0E0E0E
      0E0E0E001100000E0E00030303030303030303010E01010303010E0E0E0E0E0E
      0E0E0E000E000E0E0E00030E0E0E0E0E0E0E0E010E010E0E0301131313131313
      13130014001313130E000303030303030303010E0103030303010E0E0E0E0E0E
      0E0E14000E0E0E0E0E00030E0E0E0E0E0E0E0E010E0E0E0E0301131313131313
      13001313131313130E00030303030303030103030303030303010E0E0E0E0E0E
      0E0E0E0E0E0E0E0E0E00030E0E0E0E0E0E0E0E0E0E0E0E0E0E01000000000000
      0000000000000000000001010101010101010101010101010101}
    NumGlyphs = 2
    TabOrder = 3
    TabStop = False
    OnClick = btnDisbRebuildClick
  end
  object btnAntdRebuild: TBitBtn
    Left = 468
    Top = 146
    Width = 81
    Height = 24
    Caption = 'Rebuild'
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      0800000000000002000000000000000000000001000000010000000000008080
      8000000080000080800000800000808000008000000080008000408080004040
      0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
      FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
      80008000FF004080FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303030303
      030300121212121212000303030303030303010E0E0E0E0E0E01030303030303
      0303000000000000000003030303030303030101010101010101030303030303
      030300110E110E110E000303030303030303010E030303030301030303030303
      0300110E110E110E110003030303030303010E030E0303030301030303030303
      03000E000E110E110E0003030303030303010E010E0303030301030303030303
      03001100110E110E0015030303030303030103010E030E03010E030303030303
      030300000E000E001200030303030303030301010E010E010E01030303030303
      03030300110000120000030E0E0E0E0E0E0E0E010E01010E0101000000000000
      000000000E0012000000010101010101010101010E010E0101010E0E0E0E0E0E
      0E0E0E001100000E0E00030303030303030303010E01010303010E0E0E0E0E0E
      0E0E0E000E000E0E0E00030E0E0E0E0E0E0E0E010E010E0E0301111111111111
      11110012001111110E000303030303030303010E0103030303010E0E0E0E0E0E
      0E0E12000E0E0E0E0E00030E0E0E0E0E0E0E0E010E0E0E0E0301111111111111
      11001111111111110E00030303030303030103030303030303010E0E0E0E0E0E
      0E0E0E0E0E0E0E0E0E00030E0E0E0E0E0E0E0E0E0E0E0E0E0E01000000000000
      0000000000000000000001010101010101010101010101010101}
    NumGlyphs = 2
    TabOrder = 5
    TabStop = False
    OnClick = btnAntdRebuildClick
  end
  object btnSundRebuild: TBitBtn
    Left = 468
    Top = 197
    Width = 81
    Height = 25
    Caption = 'Rebuild'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      003337777777777777F330FFFFFFFFFFF03337F33333333337F330FFFFCFFFFF
      F03337F3338F333337F330FFFCCCFFFFF03337F33888F33337F330FFCFCFCFFF
      F03337F38F8F8F3337F330FFFFCFCFFFF03337F3338F8F3337F330FFFCCCFFFF
      F03337F33888F33337F330FFCFCFFFFFF03337F38F8F333337F330FFCFCFCFFF
      F03337F38F8F8F3337F330FFFCCCFFFFF03337F33888F33337F330FFFFCFFFFF
      F03337F3338F333FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
      F03337FFFFFFFF7F373330EEEEEEEE0F033337777777777F733330FFFFFFFF00
      333337FFFFFFFF77333330000000000333333777777777733333}
    NumGlyphs = 2
    TabOrder = 7
    TabStop = False
    OnClick = btnSundRebuildClick
  end
  object neDisb: TNumberEdit
    Left = 185
    Top = 120
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 2
    Text = '0.00'
    OnExitChanged = neDisbExitChanged
  end
  object neFees: TNumberEdit
    Left = 185
    Top = 94
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 0
    Text = '0.00'
    OnExitChanged = neFeesExitChanged
    OnKeyUp = neFeesKeyUp
  end
  object neAntd: TNumberEdit
    Left = 184
    Top = 146
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 4
    Text = '0.00'
    OnExitChanged = neAntdExitChanged
  end
  object neSund: TNumberEdit
    Left = 185
    Top = 197
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 6
    Text = '0.00'
    OnExitChanged = neSundExitChanged
  end
  object btnBillTo: TBitBtn
    Left = 63
    Top = 359
    Width = 27
    Height = 23
    Hint = 'Search PhoneBook for Address'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = btnBillToClick
  end
  object neTrust: TNumberEdit
    Left = 185
    Top = 223
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 8
    Text = '0.00'
    OnExitChanged = neTrustExitChanged
  end
  object dtpInterim: TDateTimePicker
    Left = 185
    Top = 249
    Width = 114
    Height = 23
    CalAlignment = dtaRight
    Date = 36493.664751342600000000
    Time = 36493.664751342600000000
    ShowCheckbox = True
    Checked = False
    TabOrder = 9
    OnClick = dtpInterimClick
    OnChange = dtpInterimChange
  end
  object btnBillTemplate: TBitBtn
    Left = 63
    Top = 385
    Width = 27
    Height = 22
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 11
    OnClick = btnBillTemplateClick
  end
  object neUpCred: TNumberEdit
    Left = 185
    Top = 171
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 12
    Text = '0.00'
    OnExitChanged = neUpCredExitChanged
  end
  object btnUpCredRebuild: TBitBtn
    Left = 468
    Top = 171
    Width = 81
    Height = 25
    Caption = 'Rebuild'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
      FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
      990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
      990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
      FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
      00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
      00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
      00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
      03FF33337FFF77777333333300000333333F3333777773333333}
    NumGlyphs = 2
    TabOrder = 13
    TabStop = False
    OnClick = btnUpCredRebuildClick
  end
  object btnAddTrust: TBitBtn
    Left = 276
    Top = 222
    Width = 113
    Height = 22
    Caption = 'Apply Trust'
    NumGlyphs = 2
    TabOrder = 14
    TabStop = False
    OnClick = btnAddTrustClick
  end
  object neFeesTax: TNumberEdit
    Left = 276
    Top = 94
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 15
    Text = '0.00'
    OnChange = neFeesTaxChange
  end
  object neDisbTax: TNumberEdit
    Left = 276
    Top = 120
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 16
    Text = '0.00'
    OnChange = neDisbTaxChange
  end
  object neAntdTax: TNumberEdit
    Left = 276
    Top = 146
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 17
    Text = '0.00'
    OnChange = neAntdTaxChange
  end
  object neUpCredTax: TNumberEdit
    Left = 276
    Top = 171
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 18
    Text = '0.00'
    OnChange = neUpCredTaxChange
  end
  object BitBtn1: TBitBtn
    Left = 786
    Top = 359
    Width = 80
    Height = 24
    Caption = 'Apply BI Trust'
    NumGlyphs = 2
    TabOrder = 20
    TabStop = False
    Visible = False
    OnClick = BitBtn1Click
  end
  object neSundTaxFree: TNumberEdit
    Left = 375
    Top = 197
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 21
    Text = '0.00'
    OnChange = neSundTax1Change
  end
  object neUpCredTaxFree: TNumberEdit
    Left = 375
    Top = 171
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 22
    Text = '0.00'
    OnChange = neUpCredTaxChange
  end
  object neAntdTaxFree: TNumberEdit
    Left = 376
    Top = 146
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 23
    Text = '0.00'
    OnChange = neAntdTaxChange
  end
  object neDisbTaxFree: TNumberEdit
    Left = 375
    Top = 120
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 24
    Text = '0.00'
    OnChange = neDisbTaxChange
  end
  object neFeesTaxFree: TNumberEdit
    Left = 375
    Top = 94
    Width = 86
    Height = 23
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfFloat
    EditText = '0.00'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 25
    Text = '0.00'
    OnChange = neFeesTaxChange
  end
  object rgFilter: TcxRadioGroup
    Left = 8
    Top = 639
    Anchors = [akLeft, akBottom]
    BiDiMode = bdLeftToRight
    Caption = 'Filter'
    ParentBiDiMode = False
    ParentShowHint = False
    Properties.Columns = 6
    Properties.Items = <
      item
        Caption = 'All'
      end
      item
        Caption = 'Fees'
      end
      item
        Caption = 'Disbursements'
      end
      item
        Caption = 'Anticipated Disbs.'
      end
      item
        Caption = 'Creditors'
      end
      item
        Caption = 'Sundries'
      end>
    Properties.WordWrap = True
    ItemIndex = 0
    ShowHint = True
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 27
    Transparent = True
    OnClick = rgFilterClick
    Height = 47
    Width = 636
  end
  object lblDispatched: TcxLabel
    Left = 380
    Top = 36
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.ShowAccelChar = False
    Height = 19
    Width = 111
  end
  object lblNMemo: TcxLabel
    Left = 53
    Top = 56
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 62
    AnchorX = 115
  end
  object grdBillItems: TcxGrid
    Left = 8
    Top = 413
    Width = 873
    Height = 220
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 30
    LookAndFeel.NativeStyle = True
    RootLevelOptions.DetailTabsPosition = dtpTop
    object tvBillItems: TcxGridDBTableView
      PopupMenu = pmGrid
      OnDblClick = tbtnEditClick
      OnMouseDown = tvBillItemsMouseDown
      Navigator.Buttons.CustomButtons = <>
      OnEditing = tvBillItemsEditing
      OnEditKeyDown = tvBillItemsEditKeyDown
      OnFocusedRecordChanged = tvBillItemsFocusedRecordChanged
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsBillItems
      DataController.DetailKeyFieldNames = 'UNIQUEID'
      DataController.KeyFieldNames = 'UNIQUEID'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvBillItemsAMOUNT
        end
        item
          Format = 'Tx: ##0'
          Kind = skCount
          FieldName = 'UNIQUEID'
          Column = tvBillItemsUNITS
        end
        item
          Format = 'Units: ##0'
          Kind = skSum
          FieldName = 'UNITS'
          Column = tvBillItemsUNITS
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvBillItemsAMOUNT
        end
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'TAX'
          Column = tvBillItemsTAX
        end
        item
          Format = '#0.0'
          Kind = skSum
          Tag = 2
          FieldName = 'UNITS'
          Column = tvBillItemsUNITS
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 49
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.HeaderEndEllipsis = True
      OptionsView.IndicatorWidth = 11
      Preview.LeftIndent = 26
      Styles.OnGetContentStyle = tvBillItemsStylesGetContentStyle
      object tvBillItemsInclude: TcxGridDBColumn
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        MinWidth = 18
        Options.HorzSizing = False
        Options.Moving = False
        Width = 18
        IsCaptionAssigned = True
      end
      object tvBillItemsTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ilstItems
        Properties.Items = <
          item
            Description = 'Fees'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Disbursement'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'Antd Disb'
            ImageIndex = 2
            Value = 2
          end
          item
            Description = 'Sundries'
            ImageIndex = 3
            Value = 3
          end
          item
            Description = 'Creditors'
            ImageIndex = 4
            Value = 4
          end>
        Properties.ShowDescriptions = False
        MinWidth = 22
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.HorzSizing = False
        Width = 22
        IsCaptionAssigned = True
      end
      object tvBillItemsCREATED: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'CREATED'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.InputKind = ikRegExpr
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 56
      end
      object tvBillItemsAUTHOR: TcxGridDBColumn
        Caption = 'Ref.'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 34
      end
      object tvBillItemsPAYEE: TcxGridDBColumn
        Caption = 'Payee/Matter'
        DataBinding.FieldName = 'PAYEE'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 78
      end
      object tvBillItemsDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvBillItemsDESCRPropertiesButtonClick
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 194
      end
      object tvBillItemsTAXCODE: TcxGridDBColumn
        Caption = 'Tax Code'
        DataBinding.FieldName = 'TAXCODE'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 52
      end
      object tvBillItemsUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.AssignedValues.EditFormat = True
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 28
      end
      object tvBillItemsAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 52
      end
      object tvBillItemsTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 33
      end
      object tvBillItemsSCALECOST: TcxGridDBColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 31
      end
      object tvBillItemsPRIVATE: TcxGridDBColumn
        DataBinding.FieldName = 'PRIVATE'
        Visible = False
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        VisibleForCustomization = False
        Width = 28
      end
      object tvBillItemsDEBTOR: TcxGridDBColumn
        Caption = 'Debtor'
        Visible = False
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        VisibleForCustomization = False
      end
      object tvBillItemsUNIQUEID: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQUEID'
        Visible = False
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        VisibleForCustomization = False
      end
      object tvBillItemsUNBILLED: TcxGridDBColumn
        DataBinding.FieldName = 'UNBILLED'
        Visible = False
        MinWidth = 18
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
      end
    end
    object grdBillItemsDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsBillItems
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.NavigatorOffset = 49
      OptionsView.ColumnAutoWidth = True
      OptionsView.IndicatorWidth = 11
      OptionsView.BandHeaders = False
      Preview.LeftIndent = 19
      Bands = <
        item
        end
        item
          Options.Moving = False
        end>
      object grdBillItemsDBBandedTableView1Column1: TcxGridDBBandedColumn
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        MinWidth = 18
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 18
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1TYPE: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ilstItems
        Properties.Items = <
          item
            ImageIndex = 0
            Value = 0
          end
          item
            ImageIndex = 1
            Value = 1
          end
          item
            ImageIndex = 2
            Value = 2
          end
          item
            ImageIndex = 3
            Value = 3
          end
          item
            ImageIndex = 4
            Value = 4
          end>
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1CREATED: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1AUTHOR: TcxGridDBBandedColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1PAYEE: TcxGridDBBandedColumn
        Caption = 'Payee'
        DataBinding.FieldName = 'PAYEE'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1DESCR: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        PropertiesClassName = 'TcxPopupEditProperties'
        Properties.PopupHeight = 195
        Properties.PopupMinHeight = 97
        Properties.PopupMinWidth = 97
        Properties.PopupWidth = 244
        MinWidth = 18
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1TAXCODE: TcxGridDBBandedColumn
        Caption = 'Tax Code'
        DataBinding.FieldName = 'TAXCODE'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 49
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1UNITS: TcxGridDBBandedColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1AMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 54
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1TAX: TcxGridDBBandedColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 32
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1TASK: TcxGridDBBandedColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 33
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1UNIQUEID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNIQUEID'
        Visible = False
        MinWidth = 18
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1PRIVATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRIVATE'
        Visible = False
        MinWidth = 18
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdBillItemsDBBandedTableView1UNIQUEID_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNIQUEID_1'
        Visible = False
        MinWidth = 18
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object tvBillItems2: TcxGridTableView
      PopupMenu = pmGrid
      OnDblClick = tbtnEditClick
      Navigator.Buttons.CustomButtons = <>
      OnEditing = tvBillItemsEditing
      OnEditKeyDown = tvBillItemsEditKeyDown
      OnFocusedRecordChanged = tvBillItemsFocusedRecordChanged
      OnInitEdit = tvBillItems2InitEdit
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = tvBillItems2UNITS
        end
        item
          Kind = skSum
          Column = tvBillItems2AMOUNT
        end
        item
          Kind = skSum
          Column = tvBillItems2TAX
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsSelection.MultiSelect = True
      OptionsView.NavigatorOffset = 49
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.IndicatorWidth = 11
      Preview.LeftIndent = 19
      object tvBillItems2Include: TcxGridColumn
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        MinWidth = 18
        Options.Grouping = False
        Options.Moving = False
        Width = 18
      end
      object tvBillItems2TYPE: TcxGridColumn
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ilstItems
        Properties.Items = <
          item
            Description = 'Fees'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Disbursement'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'Antd Disb'
            ImageIndex = 2
            Value = 2
          end
          item
            Description = 'Sundries'
            ImageIndex = 3
            Value = 3
          end
          item
            Description = 'Creditors'
            ImageIndex = 4
            Value = 4
          end>
        Properties.ShowDescriptions = False
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 39
        IsCaptionAssigned = True
      end
      object tvBillItems2CREATED: TcxGridColumn
        Caption = 'Date'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Width = 73
      end
      object tvBillItems2AUTHOR: TcxGridColumn
        Caption = 'Ref'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 74
      end
      object tvBillItems2PAYEE: TcxGridColumn
        Caption = 'Payee'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 72
      end
      object tvBillItems2DESCR: TcxGridColumn
        Caption = 'Description'
        PropertiesClassName = 'TcxRichEditProperties'
        Properties.MemoMode = True
        Properties.WantReturns = False
        MinWidth = 18
        Options.Grouping = False
        Options.Moving = False
        VisibleForCustomization = False
        Width = 229
      end
      object tvBillItems2TAXCODE: TcxGridColumn
        Caption = 'Tax Code'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 49
      end
      object tvBillItems2UNITS: TcxGridColumn
        Caption = 'Units'
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.Alignment.Horz = taRightJustify
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 26
      end
      object tvBillItems2AMOUNT: TcxGridColumn
        Caption = 'Amount'
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 63
      end
      object tvBillItems2TAX: TcxGridColumn
        Caption = 'Tax'
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 36
      end
      object tvBillItems2SCALECOST: TcxGridColumn
        Caption = 'Task'
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 36
      end
      object tvBillItems2PRIVATE: TcxGridColumn
        Visible = False
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        VisibleForCustomization = False
      end
      object tvBillItems2DEBTOR: TcxGridColumn
        Visible = False
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        VisibleForCustomization = False
      end
      object tvBillItems2UNIQUEID: TcxGridColumn
        Visible = False
        MinWidth = 18
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        VisibleForCustomization = False
      end
    end
    object tvBillNotes: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBillNotes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NavigatorOffset = 49
      OptionsView.CellAutoHeight = True
      OptionsView.CellTextMaxLineCount = 2
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 11
      Preview.LeftIndent = 19
      object tvBillNotesCREATED: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 18
        Width = 79
      end
      object tvBillNotesCREATEDBY: TcxGridDBColumn
        Caption = 'Created by'
        DataBinding.FieldName = 'CREATEDBY'
        MinWidth = 18
        Width = 94
      end
      object tvBillNotesNOTE: TcxGridDBColumn
        Caption = 'Note'
        DataBinding.FieldName = 'NOTE'
        MinWidth = 18
        Width = 681
      end
      object tvBillNotesROWID: TcxGridDBColumn
        DataBinding.FieldName = 'ROWID'
        Visible = False
        MinWidth = 18
      end
    end
    object lvBillItems: TcxGridLevel
      Caption = 'Bill Items'
      GridView = tvBillItems
    end
    object grdBillItemsLevel1: TcxGridLevel
      Caption = 'Bill Notes'
      GridView = tvBillNotes
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 416
    Top = 222
    Style.BorderStyle = ebsOffice11
    Style.LookAndFeel.NativeStyle = False
    Style.Shadow = True
    Style.TransparentBorder = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 31
    Transparent = True
    Height = 132
    Width = 227
    object lblTotalGST: TcxLabel
      Left = 104
      Top = 38
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.StyleController = dmAxiom.LabelStyle
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 112
      AnchorX = 216
    end
    object lblTotalExGST: TcxLabel
      Left = 104
      Top = 16
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.StyleController = dmAxiom.LabelStyle
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 112
      AnchorX = 216
    end
    object cxLabel3: TcxLabel
      Left = 59
      Top = 38
      AutoSize = False
      Caption = 'Tax'
      Properties.Alignment.Horz = taRightJustify
      Transparent = True
      Height = 18
      Width = 42
      AnchorX = 101
    end
    object cxLabel4: TcxLabel
      Left = 39
      Top = 17
      Caption = 'Gross Total'
      Properties.Alignment.Horz = taRightJustify
      Transparent = True
      AnchorX = 101
    end
    object lblTotalBill: TcxLabel
      Left = 104
      Top = 103
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.StyleController = dmAxiom.LabelStyle
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 112
      AnchorX = 216
    end
    object cxLabel1: TcxLabel
      Left = 50
      Top = 103
      Caption = 'Total Bill'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Transparent = True
      AnchorX = 101
    end
    object lblTrust: TcxLabel
      Left = 104
      Top = 81
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.StyleController = dmAxiom.LabelStyle
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 19
      Width = 112
      AnchorX = 216
    end
    object cxLabel5: TcxLabel
      Left = 6
      Top = 81
      Caption = 'Less Client Funds'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 50
      Top = 58
      Caption = 'Discount'
      Transparent = True
    end
    object lblDiscount: TcxLabel
      Left = 104
      Top = 59
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.StyleController = dmAxiom.LabelStyle
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 112
      AnchorX = 216
    end
  end
  object btnInterimDate: TBitBtn
    Left = 302
    Top = 249
    Width = 87
    Height = 23
    Caption = 'Apply Interim'
    TabOrder = 32
    OnClick = btnInterimDateClick
  end
  object dtpExpectedPayment: TDateTimePicker
    Left = 185
    Top = 275
    Width = 114
    Height = 23
    Date = 35855.939284826410000000
    Time = 35855.939284826410000000
    TabOrder = 33
  end
  object lblMatter: TcxLabel
    Left = 560
    Top = 36
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Properties.ShowAccelChar = False
    Height = 19
    Width = 83
    AnchorX = 643
  end
  object grpUnprocessed: TGroupBox
    Left = 668
    Top = 106
    Width = 198
    Height = 247
    TabOrder = 35
    Visible = False
    object lblUnProcessedTime: TLabel
      Left = 9
      Top = 6
      Width = 182
      Height = 198
      AutoSize = False
      Caption = 'x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  object pbSpellCheck: TBitBtn
    Left = 666
    Top = 656
    Width = 187
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Spell Check Fee Narrations'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE4D0BDDCC4ABFDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCE4D0BCC09061BF8E5FE5
      D3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FCFAF8DDC5ADBC8958B8814CB8824DC09061E8D7C7FFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F5D8BCA1BB8755B8824DC29569C4986DB8
      824DBF8F60E6D4C3FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3EED2B293
      BA8552B8834EC9A17AF0E6DCF4ECE4C59A71B8814CBF8F60EADBCDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF3EBE2C89F76BA8552D0AC8AF6F0EAFFFFFFFFFFFFED
      E1D5C4976CB7814CC09264E8D9C9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFF6EFE9
      E5D4C2FAF6F3FFFFFFFFFFFFFFFFFFFFFFFFEFE4D8C29366B7814CC29264EFE2
      D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE9D9CAC09263B7814CC29568EBDECFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEADBCCBE8E5EB881
      4CC29468EDE0D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFEFEFDE4D1BEBE8D5CC08F61E7D5C3FFFFFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECDF
      D2ECE1D6FCFCFCFFFFFFC6C6C6C9C9C9FFFFFFFFFFFFCBCBCBC5C5C5D5D5D5A9
      A9A9BABABAB8B8B8E8E8E8F3F3F3B9BABAAFAFB0B8B8B8ACACACDFDFDF959595
      D1D1D1D3D3D3949494DBDBDBC5C5C5A4A4A4ECECECA7A7A7BCBCBCBBBBBB9797
      97EBEBEBF6F6F6E2E2E2FAFAFAB2B2B2A6A6A6AAAAAAA1A1A1F8F8F8C6C6C691
      9191B2B2B29D9D9DE5E5E5AEAEAEA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFDEDEDE
      A0A0A0A0A0A0D6D6D6FFFFFFC4C4C4A4A4A4E4E4E4999999E5E5E5C8C8C89C9C
      9CE7E7E7FBFBFBE6E6E6FFFFFFFBFBFBA1A1A1929292F9F9F9FFFFFFC6C6C689
      89899E9E9E9C9C9CEEEEEEFDFDFDBCBCBC8E8E8EA4A4A48B8B8B}
    TabOrder = 36
    OnClick = pbSpellCheckClick
  end
  object edtDiscountGST: TEdit
    Left = 333
    Top = 301
    Width = 71
    Height = 23
    Hint = 'Discount GST'
    AutoSize = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 37
  end
  object btnNotes: TBitBtn
    Left = 556
    Top = 359
    Width = 87
    Height = 24
    Caption = 'Notes'
    TabOrder = 42
    OnClick = btnNotesClick
  end
  object neSundTax: TcxCurrencyEdit
    Left = 276
    Top = 197
    AutoSize = False
    EditValue = 0.000000000000000000
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.00;-,0.00'
    Properties.Nullable = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 19
    Height = 20
    Width = 86
  end
  object lblDraftBillCaption: TcxLabel
    Left = 131
    Top = 27
    Caption = 'Draft Bill'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
    Visible = False
  end
  object lblTotalFees: TcxLabel
    Left = 556
    Top = 96
    AutoSize = False
    Properties.Alignment.Horz = taRightJustify
    Transparent = True
    Height = 19
    Width = 82
    AnchorX = 638
  end
  object lblDisbTotal: TcxLabel
    Left = 556
    Top = 123
    AutoSize = False
    Properties.Alignment.Horz = taRightJustify
    Transparent = True
    Height = 18
    Width = 82
    AnchorX = 638
  end
  object lblAntdTotal: TcxLabel
    Left = 556
    Top = 148
    AutoSize = False
    Properties.Alignment.Horz = taRightJustify
    Transparent = True
    Height = 19
    Width = 82
    AnchorX = 638
  end
  object lblCredTotal: TcxLabel
    Left = 556
    Top = 174
    AutoSize = False
    Properties.Alignment.Horz = taRightJustify
    Transparent = True
    Height = 18
    Width = 82
    AnchorX = 638
  end
  object lblSundTotal: TcxLabel
    Left = 556
    Top = 199
    AutoSize = False
    Properties.Alignment.Horz = taRightJustify
    Transparent = True
    Height = 19
    Width = 82
    AnchorX = 638
  end
  object chkUnbilledTransactions: TcxCheckBox
    Left = 661
    Top = 634
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = 'Show Unbilled Transactions'
    TabOrder = 45
    Transparent = True
    Visible = False
    OnClick = chkUnbilledTransactionsClick
    Height = 23
    Width = 169
  end
  object lblRecoveryPct: TcxLabel
    Left = 174
    Top = 55
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object edtDiscount: TcxTextEdit
    Left = 185
    Top = 302
    Hint = 
      'Discount (% or $ amount. eg 5% or 200).  If discount is whole do' +
      'llar amount, assumption is that the amount is GST inclusive.'
    Properties.OnChange = edtDiscountPropertiesChange
    TabOrder = 26
    OnKeyPress = edtDiscountKeyPress
    Width = 114
  end
  object dtpBillDate: TcxDateEdit
    Left = 185
    Top = 328
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.UseNullString = True
    TabOrder = 47
    Width = 114
  end
  object lblInvoice: TcxTextEdit
    Left = 53
    Top = 30
    AutoSize = False
    BeepOnEnter = False
    Properties.Alignment.Horz = taRightJustify
    Style.BorderStyle = ebs3D
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 52
    Height = 23
    Width = 62
  end
  object ilstItems: TImageList
    Left = 832
    Top = 57
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FF00FF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF008400000084000000FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000FF0000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FF000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF0084000000FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF0000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0080000000000000008000000000000000
      C000000000000000E000000000000000F000000000000000F800000000000000
      FC00000000000000060000000000000007000000000000000180000000000000
      01800000000000000060000000000000C060000000000000C060000000000000
      F044000000000000F07E0000000000008003FF00FF0080038003FF00FF008003
      8003FF00FF0080038003FE00FE0080038003FE00FE0080038003FE00FE008003
      8003FF00FF0080038003FF80FF80800380030000000080038003000000008003
      8003000000008003800300000000800380030000000080038007000000008007
      800F00000000800F801F00000000801F00000000000000000000000000000000
      000000000000}
  end
  object qryInvoice: TUniQuery
    UpdatingTable = 'NMEMO'
    KeyFields = 'nmemo'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT M.*, M.ROWID '
      'FROM NMEMO M '
      'WHERE M.NMEMO = -1')
    AfterScroll = qryInvoiceAfterScroll
    Left = 707
    Top = 41
  end
  object qryFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 0 AS TYPE, TRUNC (fee.created) created,'
      
        '       DECODE (fee.PRIVATE, '#39'Y'#39', '#39'(P) '#39', '#39#39') || fee.descr AS des' +
        'cr,       '
      '       -- FEE.AMOUNT, -- PRIOR TO HYBRID BILL'
      
        '       CASE WHEN ((NVL(fee.task_amount, 0) > 0) OR (NVL(scalecos' +
        't.defaulttime, 0) > 0))'
      '          THEN fee.task_amount'
      '          ELSE fee.amount'
      
        '       END AS amount,                                    -- HYBR' +
        'ID BILL AMOUNT'
      '       fee.author, fee.nfee AS uniqueid, fee.taxcode,       '
      
        '       -- DECODE(NVL(fee.tax,0), 0, DECODE(fee.billed,'#39'Y'#39',fee.ta' +
        'x, ROUND(fee.amount * ABS(r.rate)) / 100), fee.tax) AS tax,  -- ' +
        'PRIOR TO HYBRID BILL'
      
        '       nvl(DECODE(NVL(fee.tax, 0),0, DECODE(fee.billed,'#39'Y'#39', fee.' +
        'tax,'
      
        '                 ROUND(CASE WHEN ((NVL (fee.task_amount, 0) > 0)' +
        ' OR (NVL (scalecost.defaulttime, 0) > 0))'
      '                         THEN fee.task_amount'
      
        '                         ELSE fee.amount END * ABS (r.rate)) / 1' +
        '00),'
      
        '           CASE WHEN ((NVL(fee.task_amount, 0) > 0) OR (NVL (sca' +
        'lecost.defaulttime, 0) > 0))'
      '              THEN fee.task_tax'
      '              ELSE fee.tax'
      '              END), 0) AS tax,'
      
        '       fee.PRIVATE, fee.fileid AS payee, NULL AS approval, units' +
        ', task,'
      '       nfee AS uniqueid, 0 AS unbilled'
      '  FROM fee, taxrate r, scalecost'
      'WHERE nmemo = :p_invoice'
      '   AND fee.taxcode = r.taxcode(+)'
      '   AND TRUNC (fee.created) >= r.commence'
      '   AND TRUNC (fee.created) <= NVL (r.end_period, SYSDATE + 1000)'
      '   AND fee.billtype = '#39'Billable'#39
      '   AND fee.task = scalecost.code(+)'
      ''
      ''
      ''
      '/*SELECT 0 as type, '
      '        trunc(FEE.CREATED) CREATED, '
      
        '        DECODE(FEE.PRIVATE,'#39'Y'#39','#39'(P) '#39','#39#39') || FEE.DESCR as DESCR,' +
        ' '
      #9'-- FEE.AMOUNT, -- PRIOR TO HYBRID BILL'
      
        #9'CASE WHEN (NVL(fee.task_amount,0) > 0) THEN fee.task_amount ELS' +
        'E fee.amount END AS amount, -- HYBRID BILL AMOUNT'
      #9'FEE.AUTHOR, '
      #9'FEE.NFEE AS UniqueID, '
      #9'FEE.TAXCODE,'
      
        #9'-- DECODE(NVL(fee.tax,0), 0, DECODE(fee.billed,'#39'Y'#39',fee.tax, ROU' +
        'ND(fee.amount * ABS(r.rate)) / 100), fee.tax) AS tax,  -- PRIOR ' +
        'TO HYBRID BILL'
      
        #9'DECODE(NVL(fee.tax,0),0, DECODE(fee.billed, '#39'Y'#39', fee.tax, ROUND' +
        '('
      
        '             CASE WHEN (NVL(fee.task_amount,0) > 0) THEN fee.tas' +
        'k_amount ELSE fee.amount END * ABS (r.rate))/ 100),'
      
        '             CASE WHEN (NVL(fee.task_amount,0) > 0) THEN fee.tas' +
        'k_tax ELSE fee.tax'
      '             END) AS tax,'
      
        #9'FEE.PRIVATE, FEE.FILEID as PAYEE, null as APPROVAL, units,task,' +
        ' nfee as uniqueid, 0 as unbilled'
      'FROM FEE,TAXRATE R '
      'WHERE'
      '-- NMATTER = :P_Matter AND '
      'NMEMO = :P_Invoice'
      'AND FEE.TAXCODE = R.TAXCODE (+)'
      
        'AND TRUNC (created) >= r.commence and TRUNC(created) <= nvl(r.en' +
        'd_period,sysdate + 1000)'
      'AND BILLTYPE = '#39'Billable'#39'*/')
    Options.StrictUpdate = False
    Left = 1017
    Top = 258
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
        Value = nil
      end>
  end
  object qryDisb: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 1 as type, '
      '      ALLOC.CREATED,'#9'  '
      #9'  ALLOC.DESCR,'#9'  '
      #9'  (ALLOC.BILLED_AMOUNT*-1) as AMOUNT,'
      #9'  ALLOC.REFNO as AUTHOR,'
      #9'  ALLOC.NALLOC AS UniqueID,'
      #9'  ALLOC.TAXCODE,'
      'DECODE('
      '  NVL(alloc.BILLED_TAX_AMOUNT,0),'
      '  0,'
      '  DECODE('
      '    alloc.billed,'
      '    '#39'Y'#39','
      '    alloc.BILLED_TAX_AMOUNT,'
      '    DECODE('
      '      (r.rate - r.bill_rate),'
      '      '#39'0'#39','
      '      alloc.BILLED_TAX_AMOUNT,'
      '      ROUND((alloc.BILLED_amount) * ABS(r.rate)) / 100'
      '    )'
      '  ),'
      '  alloc.BILLED_TAX_AMOUNT'
      ') * -1 AS tax,'
      
        'SUBBILLS.DEBTOR_NAME, ALLOC.PAYER AS PAYEE,  ALLOC.APPROVAL, 0 a' +
        's Units, null as Task, nalloc as uniqueid, 0 as unbilled  '
      'FROM ALLOC,TAXRATE R,SUBBILLS'
      'WHERE '
      '--ALLOC.NMATTER = :P_Matter'
      '--AND '
      'ALLOC.NMEMO = :P_Invoice'
      
        'AND (nvl(NRECEIPT,0) = 0 OR (nvl(NRECEIPT,0) > 0 AND TYPE = '#39'DR'#39 +
        '))'
      'AND NINVOICE IS NULL'
      'AND ALLOC.TAXCODE = R.TAXCODE (+)'
      
        'AND  TRUNC (alloc.created) >= r.commence and TRUNC(alloc.created' +
        ') <= nvl(r.end_period,sysdate + 1000)'
      'AND ALLOC.NMEMO = SUBBILLS.NMEMO (+)'
      'AND ALLOC.NSUBBILL = SUBBILLS.NSUBBILL (+)')
    Options.StrictUpdate = False
    Left = 1020
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
        Value = nil
      end>
  end
  object qrySund: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      ' 3 as type,'
      '  CREATED,'
      '  DESCR,'
      '  AMOUNT,'
      '  TYPE AS AUTHOR,'
      '  NSUNDRY  AS UniqueID,'
      '  TAXCODE,'
      '  TAX,'
      '  '#39'N'#39' as Private,'
      '  null AS PAYEE,'
      '  null,'
      '  units,'
      '  null as Task,'
      '  nsundry as uniqueid, 0 as unbilled'
      'FROM SUNDRY '
      'WHERE '
      '--NMATTER = :P_Matter AND '
      'NMEMO = :P_Invoice')
    Options.StrictUpdate = False
    Left = 1017
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
        Value = nil
      end>
  end
  object qryNew: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE FEE SET NMEMO = 1 WHERE NMEMO = 0 AND BILLED = '#39'N'#39)
    Left = 587
    Top = 71
  end
  object ilstToolbar: TImageList
    Left = 785
    Top = 60
    Bitmap = {
      494C010113001500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000055555500000000000000
      000000000000000000000000000000000000868686004D4D4D004D4D4D005555
      55004D4D4D0055555500C0DCC000C0DCC000C0DCC00099CCCC0099CCCC00C0DC
      C000C0DCC00099CCCC00C0DCC000000000000000000000000000000000009999
      6600FFFFCC000000000000000000555555005555550055555500555555005555
      5500555555005555550055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600DDDDDD00555555000000
      0000000000000000000000000000000000004D4D4D00C0DCC000C0DCC000FFCC
      FF0099CCCC00C0DCC00086868600555555004D4D4D004D4D4D00555555004D4D
      4D004D4D4D0086868600C0DCC000000000000000000000000000000000009999
      6600FF996600000000009999660000000000F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA60055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000086868600DDDDDD0066333300663333005555
      550000000000000000000000000000000000555555000000000000000000C0DC
      C00000000000FFECCC004D4D4D00C0DCC000C0DCC000C0DCC000FFCCCC00C0DC
      C000FFCCCC004D4D4D00C0DCC000000000000000000000000000000000000000
      00000000000000000000FFFFCC009999660000000000F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA60055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086868600DDDDDD0066333300C0C0C000C0C0C000C0C0C0008686
      8600555555000000000000000000000000004D4D4D0000000000C0DCC0000000
      0000868686005555550055555500000000000000000000000000000000000000
      0000C0DCC0004D4D4D00C0DCC000000000000000000000000000000000005555
      55000000000000000000FFCCCC00FFFFCC009999660000000000F0CAA600F0CA
      A600F0CAA600F0CAA60055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086868600DDDDDD0066333300C0C0C000C0C0C000C0C0C000868686008686
      8600663333000000000000000000000000005555550000000000000000000000
      00006666330099CCCC004D4D4D00000000000000000000000000000000000000
      0000C0DCC0004D4D4D00C0DCC000000000000000000000000000000000000000
      000000000000F0FBFF0000000000FFCCCC00FFFFCC009999660000000000F0CA
      A600F0CAA600F0CAA60055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDDDD0066333300C0C0C000C0C0C0005555550055555500868686008686
      8600663333000000000000000000000000004D4D4D0000000000868686004D4D
      4D004D4D4D000000000055555500FF999900FF999900FF996600FF669900FF99
      6600FF9999004D4D4D00C0DCC000000000000000000000000000000000000000
      0000F0FBFF00F0CAA600F0FBFF0000000000FFCCCC0099FFCC00FF9966000000
      0000F0CAA600F0CAA60055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      860066333300C0C0C000C0C0C000555555006633330066333300555555008686
      860000000000000000000000000000000000555555000000000055555500C0DC
      C0004D4D4D0000000000868686004D4D4D00555555004D4D4D00555555005555
      55004D4D4D0086868600C0DCC00000000000000000000000000000000000FFFF
      CC00FFCCCC00F0FBFF00F0CAA600F0FBFF0000000000FFCCCC00000000000000
      0000F0CAA600F0CAA60055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005555550086868600DDDD
      DD00C0C0C000C0C0C000C0C0C000555555008686860086868600663333006633
      3300CC9999000000000000000000000000004D4D4D00000000004D4D4D000000
      000055555500FF999900FF996600FF999900FF996600FF999900FF9999004D4D
      4D00FFCCFF00C0DCC00055555500000000000000000099996600FFCCCC000000
      0000FFFFCC0099660000F0FBFF00FFCCCC00FFCCCC0000000000000000000000
      0000FFCCCC00FFCCCC0055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD008686
      8600C0C0C000C0C0C000C0C0C000DDDDDD00C0C0C00086868600555555006633
      3300663333009966660000000000000000005555550000000000555555000000
      000086868600555555004D4D4D00555555004D4D4D004D4D4D00555555008686
      86000000000099CCCC004D4D4D00000000000000000099663300999966000000
      0000000000009999660099660000FFFFCC00FFECCC00FF99660000000000FFEC
      CC00FFCCCC00FFCCCC0055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600C0C0C000C0C0C000C0C0C000C0C0C000DDDDDD0099666600663333009966
      6600996666006633330099666600000000004D4D4D00000000004D4D4D00FF99
      9900FF996600FF669900FF999900FF996600FF99990055555500C0DCC0000000
      0000FFECCC00C0DCC0005555550000000000000000000000000000000000FFFF
      CC0099663300000000009999660099663300FF9966000000000099663300FFEC
      CC00FFECCC00FFECCC0055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000868686009966660099666600CC99
      9900996666009966660066333300000000005555550000000000868686004D4D
      4D004D4D4D00555555004D4D4D004D4D4D004D4D4D008686860000000000FFEC
      CC000000000099CCCC004D4D4D00000000000000000000000000000000000000
      0000FFFFCC0099663300000000009999660000000000FF996600FFECCC00FFEC
      CC00FFECCC00FFECCC0055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860086868600000000000000000099666600CC999900DDDD
      DD00CC9999009966660066333300000000004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000055555500000000000000000000000000000000000000
      000000000000FFCCCC009999660000000000FFECCC00FFECCC00FFECCC00FFEC
      CC00A4A0A000A4A0A00055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC99990099666600FFFF
      CC00CC99990099666600CC999900000000004D4D4D00FF333300FF333300FF33
      3300FF333300FF333300FF333300FF333300FF333300FF333300FF333300FF33
      3300FF333300FF3333004D4D4D00000000000000000000000000000000000000
      00000000000000000000FFCCCC009966330000000000FFECCC00FFECCC00FFEC
      CC0099666600FF99330055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC9999009966
      660099666600CC999900000000000000000055555500FF996600FF999900FF99
      9900FF996600FF999900FF996600FF999900FF996600FF9999004D4D4D00C0DC
      C0004D4D4D00C0DCC00055555500000000000000000000000000000000005555
      5500000000000000000000000000FFFFCC0000000000FFECCC00FFECCC00FFEC
      CC00996633005555550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600555555004D4D4D005555
      55004D4D4D00555555004D4D4D00555555004D4D4D00555555004D4D4D005555
      55004D4D4D005555550086868600000000000000000000000000000000005555
      5500555555000000000000000000000000005555550055555500555555005555
      5500555555000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      86005F5F5F003333660055555500666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000080000000800000FFFF0000000000000080000000
      80000000000000000000000000000000000000000000000000006666CC003333
      FF000033FF000033FF003333FF003333CC00333366005F5F5F00000000000000
      000000000000000000000000000000000000CC330000CC330000CC330000CC33
      0000CC330000CC330000CC330000CC330000CC33000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000008000000080000000000000FFFF000000000000FFFF000000000000FF
      FF0000008000000080000000000000000000000000006666CC000033FF003333
      FF006666CC005050FF003333FF000033FF003333CC004242420099663300CC66
      3300CC993300CC993300CC99660000000000FFFFFF00F8F8F800F1F1F100F1F1
      F100FFECCC00FFECCC00FFECCC00FFECCC00CC33000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000080000000
      800000FFFF000000000000FFFF000000000000FFFF00FF000000FF0000000000
      000000FFFF00000000000000800000008000000000000033FF005050FF00DDDD
      DD00FFECCC00DDDDDD003366CC000033FF000033FF003333990077777700F0CA
      A600FFECCC00F0CAA600CC99330000000000FFFFFF00FFFFFF00F8F8F800F1F1
      F100FFECCC00FFECCC00FFECCC00FFECCC00CC33000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD000000000000000000000000000000000000008000000080000000000000FF
      FF000000000000FFFF0000000000FF000000FF00000000FFFF0000000000FF00
      0000FF00000000FFFF000000000000FFFF003366FF003333CC00CCCCCC00FFEC
      CC00DDDDDD003366CC000033FF005050FF000033FF003333FF0066666600CCCC
      9900FFECCC00FFECCC00CC66330000000000FFFFFF00FFFFFF00F8F8F800F1F1
      F100FFECCC00FFECCC00FFECCC00FFECCC00CC33000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000FFFF000000000000FFFF000000
      000000FFFF00FF000000FF0000000000000000FFFF00FF000000FF0000000000
      000000FFFF000000000000FFFF00000000000033FF003333CC00DDDDDD00EAEA
      EA003366CC000033FF006666FF00E3E3E3005050FF003333FF0077777700CCCC
      CC00FFECCC00FFECCC00CC663300000000008000000080000000800000008000
      000080000000800000008000000080000000800000008000000080000000CC33
      000000000000003300000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF0000000000FF000000FF00000000FFFF0000000000FF00
      0000FF00000000FFFF000000000000FFFF000033FF003333CC00C0C0C0006666
      CC000033FF006666FF00EAEAEA00F1F1F1003333FF003333FF0086868600FFEC
      CC00FFECCC00FFECCC00CC66330000000000FFFFFF00FFFFFF00F8F8F800F1F1
      F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00CC33
      000000000000003300000033000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFF000000000000FFFF00FF000000FF0000000000
      000000FFFF000000000000FFFF00000000006666FF000033FF003333CC000033
      FF006666FF00F1F1F100F1F1F100C6D6EF000033FF003366CC00C0C0C000FFEC
      CC00FFECCC00FFECCC00CC66330000000000FFFFFF00FFFFFF00F8F8F800F8F8
      F800F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00CC33
      000000000000003300008686860000330000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF00000000000033FF000033FF000033
      FF009999CC009999CC006666CC000033FF003333FF00B2B2B200F1F1F100F1F1
      F100F1F1F100F1F1F100CC66330000000000FFFFFF00FFFFFF00F8F8F800F8F8
      F800F1F1F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00CC33
      000000000000003300000033000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080000000000000000000000000000000
      000000FFFF000000000000FFFF000000000000000000996699000033FF000033
      FF000033CC000033CC000033FF003333FF009999CC00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100CC663300000000008000000080000000800000008000
      000080000000800000008000000080000000800000008000000080000000CC33
      000000000000003300000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000008080800080808000808080008080
      80008080800000000000000000000000000000800000008000000000000000FF
      FF000000000000FFFF000000000000FFFF0000000000CC663300CCCCFF009999
      FF005050FF006666FF009999FF00EAEAEA0000000000F8F8F800F8F8F800F8F8
      F800F1F1F100F1F1F100CC66330000000000FFFFFF00FFFFFF00F8F8F800F1F1
      F100FFECCC00FFECCC00FFECCC00FFECCC00CC33000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD00000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000800000008000000000000000000000000000000000
      000000FFFF0000000000000000000000000000000000CC663300FFECCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800FFCCCC00CC66330000000000FFFFFF00FFFFFF00F8F8F800F1F1
      F100F1F1F100FFECCC00FFECCC00FFECCC00CC33000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC66330000000000FFFFFF00FFFFFF00FFFFFF00F8F8
      F800F1F1F100FFECCC00FFECCC00FFECCC00CC33000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF996600FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
      6600FF996600CC663300CC66330000000000CC330000CC330000CC330000CC33
      0000CC330000CC330000CC330000CC330000CC33000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000800000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
      6600FF996600FF663300CC999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FF
      FF0000FFFF0000FFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008463630084636300FF00FF00FF00FF008463630084636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000008463
      6300A5A5A500A5A5A500846363008463630084636300F7FFFF00846363008463
      6300846363000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000008484000084
      840000FFFF0000000000FFFFFF0000000000000000000000000084636300C6DE
      C600A5A5A500A5A5A500A5A5A500424242004242420084636300C6C6C600F7FF
      FF00C6C6C6008463630084636300846363000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000FFFF00008484000084840000FF
      FF0000000000FFFFFF0000000000000000000000000084636300C6DEC600C6C6
      C600A5A5A500A5A5A500A5A5A500424242000000000000000000000000000000
      000084848400C6C6C60084636300FF00FF000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FFFF00008484000084840000FFFF000000
      0000FFFFFF0000FFFF00000000000000000084636300C6C6C600C6C6C600A5A5
      A500C6DEC600C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500426363000000
      0000000000000000000084636300848484000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FFFF0000848400008484000000000000000000FFFF
      FF0000FFFF0000FFFF00000000000000000084636300C6C6C600A5A5A500F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600C6DEC600C6C6C600C6C6C600C6C6
      C600A5A5A5004263630084848400848484000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF00000000FFFF00008484000084840000FFFF000000000000000000FFFF
      FF0000FFFF0000000000000000000000000084636300A5A5A500F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500A5A5A500C6C6C600C6C6C600C6DEC600C6DE
      C600C6C6C600C6C6C600A5A5A500846363000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF008400000084000000FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      000000FFFF00008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FF
      FF0000FFFF00000000000000000000000000000000008463630084636300F7FF
      FF00C6C6C60084848400A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500C6C6C600C6C6C600C6C6C600846363000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000008463
      6300C6A563008463630084636300848484008463630084848400A5A5A500A5A5
      A500C6C6C600C6C6C60084636300000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000FF00000000000000000000000084
      84000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6A56300F7CEA500F7CEA500F7CEA500C6A56300C6A56300C6A563008484
      8400846363008463630000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF0084000000FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000084
      840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000C6A56300F7CEA500F7CEA500F7CEA500F7CEA500F7CEA500C6A563000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000000000C6A5
      6300F7CEA500F7CEA500F7CEA500F7CEA500F7CEA500C6A56300000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000000000C6A5
      6300F7CEA500F7CEA500F7CEA500F7CEA500F7CEA500C6A56300000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C60000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000C6A56300F7FF
      FF00F7FFFF00F7CEA500F7CEA500F7CEA500F7CEA500C6A56300000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000C6A56300C6A5
      6300C6A56300F7FFFF00F7CEA500F7CEA500C6A5630000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C6000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000C6A56300C6A56300C6A563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00848484000000
      000084848400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000000000000000000084848400FFFF
      0000FFFF0000FFFF000000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000084848400848484008484
      8400848484008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000000000000000084848400FFFF
      0000FFFF0000FFFF000000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000848484000000
      000084848400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFE3FF0000FE3F0001C0010000
      FC1F0001C0010000F80F6801E0010000F00751F1E4010000E00771F1EA010000
      C0074401D1010000800F4401A0A100008007500100610000C003500900010000
      E001401100010000F0014029B0010000F9817FFDD8010000FF810001EC010000
      FFC30001E6030000FFFF0001E0070000FFFFFFFFC007FF3FE0FFFFFFC007FC4F
      C03F007FC007F2A38001007FC007C5148001007FC0072A220001007FC0075115
      0001000BC007EA2200010009C007F51500010008C007FEAA80010009C007E015
      8001000BC007040A8081007FC00730379FF1007FC007C0FF8001007FC00703FF
      8001007FC0070FFFC001FFFFC0073FFFFF00FF0080038000FF00FF0080038000
      FF00FF008003C000FE00FE008003E000FE00FE008003F000FE01FE008003F800
      FF00FF008003FC00FF80FF808003060000000000800307000000000080030180
      00000000800301800000000080030060000000008003C060000000008007C060
      00000000800FF04400000000801FF07EFFFFFFFFF03F8003FE7F3FFBE0078003
      FC3F07C1C0008003FC3F030380008003FE7F000300008003FC3F000300008003
      FC3F000700008003FC3F000780008003FC1F000FE0018003F20F000FF0038003
      E1070007F01F8003E1870003E03F8003E0070003E03F8003F00F0003C03F8007
      F81F0001C07F800FFFFF0001F8FF801F8000FFFFFFFFFFFF0000FFFFC007FC7F
      0000FFFFBFEBF83F0000FFFF0005F81F0000FFFF7E31F0070000FFE77E35F003
      0000C1F30006E0030000C3FB7FEAE0030000C7FB8014C0038000CBFBC00AC003
      C000DCF3E001C003F000FF07E007E003FC00FFFFF007F803FC01FFFFF003FC03
      FC03FFFFF803FF83FC07FFFFFFFFFFC300000000000000000000000000000000
      000000000000}
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      'M.subtype, M.substatus, M.nmatter,'
      'M.opened, M.partner, M.author, M.type,'
      'P.SEARCH AS title, M.fileid, M.status, M.narchive,'
      'M.archived, M.acct, M.trustauth,'
      'M.party1, M.party2, M.party3, '
      'M.shortdescr, M.longdescr, M.office, '
      'M.nclient, M.bill_to, M.lasttrans,'
      'M.lasttrust, M.referredby, M.notes,'
      'M.litigation, M.speculation,'
      'M.agency, M.gratis, M.billing_plan, '
      'M.contact, M.prev_ncmaudit,'
      'M.prev_ntraudit, M.task, M.exp_completion,'
      'M.opref, M.task_date, M.refresh, M.controller,'
      'M.feecode, M.completed, M.workflow,'
      'M.labelcode, M.modby, M.archvlocn, M.clientid,'
      'M.nname, M.inttrigdate, M.tcclrdate,'
      'M.lastbilldate, M.lastletter,'
      'M.bfprgdate, M.archivereview, M.archivedest,'
      'M.branch, M.archivenum, M.gstexempt,'
      'M.closed, M.trstmnt, M.trauth, M.sledate,'
      'M.operator, M.jurisdiction, M.feebasis,'
      'M.entity, M.type1, M.type2, M.jurisdiction1,'
      'M.status1, M.debtornote, M.debtordate,'
      ''
      '/* Commented fields are replaced by stored procedures */'
      '/*M.unbill_disb, M.debtors, M.unbill_fees,*/'
      '/*M.bill_fees, M.unbill_sund,*/ M.bill_disb,'
      'M.recvd_fees, M.bill_sund, M.bill_antd,'
      'M.trust_trans, M.spec_purpose,'
      '/*M.unbill_antd,*/ M.expected_value, M.unrec_disb,'
      ''
      'M.period1, M.period1, M.period2, M.period3,'
      'M.antdisbs, M.antdrs, M.feesdrs, M.unbill_units,'
      'M.amt_last_rec, M.disbswoff, M.drswoff, M.wipwoff,'
      'M.disbslim, M.unbill_creq, M.unbill_upcred,'
      'M.bill_creq, M.bill_upcred, M.recvd_disb,'
      'M.recvd_sund, M.recvd_creq, M.recvd_upcred,'
      'M.sundwoff, M.creqwoff, M.upcredwoff, '
      ''
      'M.rate, /*M.trust_bal, M.cl_trust_bal,*/ M.budget_fees,'
      ''
      'M.budget_disb, M.budget_total, M.archivetypecode,'
      'M.trans_from, M.subjurisdiction, M.created,'
      'M.modified, M.debtorstatus,'
      'M.estimatedfee,'
      'M.estimateddisbprinc, M.estimateddisbagent,'
      'M.estimatedcreditors, M.probabilitysuccess,'
      'M.percentcompleted,'
      'M.fee_tax_basis,'
      'M.ROWID,'
      ''
      ' getWIP(M.nmatter) AS unbill_fees,'
      ' getUnbillDisb(M.nmatter) AS unbill_disb,'
      ' getAntDisb(M.nmatter) AS unbill_antd,'
      ' getSundries(M.nmatter) AS unbill_sund,'
      ' getClearedTrustAmount(M.nmatter) AS cl_trust_bal,'
      ' getTrustBalAmount(M.nmatter) AS trust_bal,'
      ' getDebtorsAmount(M.nmatter) AS debtors,'
      ' getBillFees(M.nmatter) AS bill_fees,'
      ' getUnconCheqReq(M.nmatter) AS uncon_cheqreq'
      ''
      'FROM MATTER M, PHONEBOOK P'
      'WHERE M.NMATTER = :P_Matter'
      'AND M.NCLIENT = P.NCLIENT')
    Left = 543
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = Null
      end>
  end
  object qryAntd: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  2 as type,  '
      '  REQDATE,'
      '  DESCR,'
      '  AMOUNT,'
      '  AUTHOR,'
      '  NCHEQREQ AS UniqueID,'
      '  TAXCODE,'
      '  TAX,'
      '  null as private,'
      '  PAYEE,'
      '  null,'
      '  0 as units,'
      '  null as Task,'
      '  ncheqreq as uniqueid, 0 as unbilled'
      'FROM '
      ' CHEQREQ '
      'WHERE '
      '-- NMATTER = :P_Matter '
      '--AND '
      ' NMEMO = :P_Invoice'
      'And Trust <> '#39'T'#39)
    Options.StrictUpdate = False
    Left = 1017
    Top = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
        Value = nil
      end>
  end
  object tmrInterim: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = tmrInterimTimer
    Left = 111
    Top = 372
  end
  object procBillAddFees: TUniStoredProc
    StoredProcName = 'BILL_ADD_FEES'
    SQL.Strings = (
      'begin'
      '  BILL_ADD_FEES(:P_NMEMO, :P_CREATED, :P_MASTER);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 359
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'P_MASTER'
        ParamType = ptInput
        Value = 0
      end>
    CommandStoredProcName = 'BILL_ADD_FEES'
  end
  object procBillAddDisb: TUniStoredProc
    StoredProcName = 'BILL_ADD_DISB'
    Connection = dmAxiom.uniInsight
    Left = 41
    Top = 551
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_DISB'
  end
  object procBillAddSund: TUniStoredProc
    StoredProcName = 'BILL_ADD_SUND'
    SQL.Strings = (
      'begin'
      '  BILL_ADD_SUND(:P_NMEMO, :P_CREATED);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 950
    Top = 455
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_SUND'
  end
  object procBillAddAntd: TUniStoredProc
    StoredProcName = 'BILL_ADD_ANTD'
    Connection = dmAxiom.uniInsight
    Left = 942
    Top = 679
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_ANTD'
  end
  object procBillReverse: TUniStoredProc
    StoredProcName = 'BILL_REVERSE'
    Connection = dmAxiom.uniInsight
    Left = 517
    Top = 560
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_RVDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_WHO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_REVERSE'
  end
  object procBillAddUpCred: TUniStoredProc
    StoredProcName = 'BILL_ADD_UPCRED'
    Connection = dmAxiom.uniInsight
    Left = 937
    Top = 602
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_UPCRED'
  end
  object qryUpCred: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' 4 as type, '
      ' CREATED,'
      ' DESCR,'
      ' AMOUNT*-1 as AMOUNT,'#9' '
      ' REFNO AS AUTHOR,'#9
      ' NALLOC  AS UniqueID,'#9
      ' TAXCODE,'
      ' TAX * -1 as TAX,'
      ' null as private, '
      ' PAYER AS PAYEE,'#9' '
      ' APPROVAL,'
      ' 0 as units,'
      ' null as task,'
      ' nalloc as uniqueid, 0 as unbilled  '
      'FROM ALLOC WHERE '
      '--NMATTER = :P_Matter AND '
      'NMEMO = :P_Invoice'
      'AND NINVOICE IS NOT NULL')
    Options.StrictUpdate = False
    Left = 1015
    Top = 354
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
        Value = nil
      end>
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 570
    Top = 187
  end
  object qryCalcDebtors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO n'
      'SET DEBTORS = (SELECT SUM(AMOUNT) * -1 as amount from '
      
        '         (SELECT (NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)) as AMOUN' +
        'T,NMATTER '
      '          FROM ALLOC '
      
        '          WHERE ALLOC.TRUST <> '#39'T'#39' AND ALLOC.TYPE <> '#39'DR'#39' AND (A' +
        'LLOC.NRECEIPT <> 0 OR ALLOC.TYPE ='#39'J1'#39' OR ALLOC.TYPE = '#39'RF'#39') '
      '          UNION ALL '
      
        '          SELECT (NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0' +
        ')+NVL(TAX,0))*-1 as AMOUNT,NMATTER '
      '          FROM NMEMO  '
      '          WHERE DISPATCHED IS NOT NULL '
      '          AND RV_TYPE <> '#39'D'#39') WHERE NMATTER = n.nmatter)'
      'WHERE NMEMO = :NMEMO')
    Left = 866
    Top = 321
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryFeeInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO FEE (CREATED,DESCR,MINS,AUTHOR,'
      'PARTNER,NMATTER,BILLED,NMEMO,DEPT,EMP_TYPE,'
      'UNITS,NCLIENT,TYPE,TAXCODE,RATE,AMOUNT,TAX,PRIVATE)'
      'VALUES(SYSDATE,:DESCR,0,:AUTHOR,'
      ':PARTNER,:NMATTER,'#39'N'#39',:NMEMO,:DEPT,:EMP_TYPE,'
      '1,:NCLIENT,'#39'ia'#39',:TAXCODE,1,:AMOUNT,:TAX,'#39'N'#39')')
    Left = 721
    Top = 333
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PARTNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMP_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'GridMenu'
      'Bills'
      'Default')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 499
    Top = 382
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 294
      FloatTop = 276
      FloatClientWidth = 38
      FloatClientHeight = 141
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnPost'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnWord'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnDebtorTask'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'barbtnRemoveDiscount'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnBillNotes'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbAuthorise'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbPrivate'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbSplitBill'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbMasterBill'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarBtnCashierNotes'
        end>
      NotDocking = [dsNone]
      OldName = 'toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object tbtnEdit: TdxBarButton
      Caption = '&Edit...'
      Category = 0
      Hint = 'Edit'
      Visible = ivAlways
      OnClick = tbtnEditClick
    end
    object tbtnAddGST: TdxBarButton
      Caption = 'Add GST'
      Category = 0
      Hint = 'Add GST'
      Visible = ivAlways
      OnClick = tbtnAddGSTClick
    end
    object tbtnPrivate: TdxBarButton
      Caption = 'Private'
      Category = 0
      Hint = 'Private'
      Visible = ivAlways
      OnClick = tbtnPrivateClick
    end
    object tbtnRecalculate: TdxBarButton
      Caption = 'Recalculate'
      Category = 0
      Hint = 'Recalculate'
      Visible = ivAlways
      ImageIndex = 14
      OnClick = tbtnRecalculateClick
    end
    object tbtnNewFee: TdxBarButton
      Caption = 'Add Fee...'
      Category = 0
      Hint = 'Add Fee'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = tbtnNewFeeClick
    end
    object tbtnRemove: TdxBarSubItem
      Caption = 'Remove'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnRemoveItems'
        end
        item
          Visible = True
          ItemName = 'tbtnRemoveFees'
        end
        item
          Visible = True
          ItemName = 'tbtnRemoveDisbs'
        end
        item
          Visible = True
          ItemName = 'tbtnRemoveCheqReq'
        end
        item
          Visible = True
          ItemName = 'tbtnRemoveUpCred'
        end
        item
          Visible = True
          ItemName = 'tbtnRemoveSundries'
        end
        item
          Visible = True
          ItemName = 'tbtnRemoveAll'
        end>
      OnPopup = tbtnRemovePopup
    end
    object tbtnRebuildAll: TdxBarButton
      Caption = 'Rebuild All'
      Category = 0
      Hint = 'Rebuild All'
      Visible = ivAlways
      OnClick = tbtnRebuildAllClick
    end
    object tbtnRemoveFees: TdxBarButton
      Caption = 'Remove Fees'
      Category = 0
      Hint = 'Remove Fees'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = popGridRemoveFeesClick
    end
    object tbtnRemoveItems: TdxBarButton
      Caption = 'Remove Selected Item(s)'
      Category = 0
      Hint = 'Remove Selected Item(s)'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = tbtnRemoveItemsClick
    end
    object tbtnCleargroup: TdxBarButton
      Caption = 'Clear Grouping'
      Category = 0
      Hint = 'Clear Grouping'
      Visible = ivAlways
      OnClick = tbtnCleargroupClick
    end
    object tbtnRemoveDisbs: TdxBarButton
      Caption = 'Remove Disbursements'
      Category = 0
      Hint = 'Remove Disbursements'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = tbtnRemoveDisbsClick
    end
    object tbtnRemoveCheqReq: TdxBarButton
      Caption = 'Remove Anticipated Disbursements'
      Category = 0
      Hint = 'Remove Anticipated Disbursements'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = tbtnRemoveCheqReqClick
    end
    object tbtnRemoveUpCred: TdxBarButton
      Caption = 'Remove Unpaid Creditors'
      Category = 0
      Hint = 'Remove Unpaid Creditors'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = tbtnRemoveUpCredClick
    end
    object tbtnRemoveSundries: TdxBarButton
      Caption = 'Remove Sundries'
      Category = 0
      Hint = 'Remove Sundries'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = tbtnRemoveSundriesClick
    end
    object tbtnRemoveAll: TdxBarButton
      Caption = 'Remove All'
      Category = 0
      Hint = 'Remove All'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = tbtnRemoveAllClick
    end
    object tbtnFilter: TdxBarSubItem
      Caption = 'Filter'
      Category = 0
      Visible = ivAlways
      AllowCustomizing = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnRemoveFilter'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnSelectedMonth'
        end>
    end
    object tbtnRemoveFilter: TdxBarButton
      Caption = 'Remove Filter'
      Category = 0
      Hint = 'Remove Filter'
      Visible = ivAlways
      OnClick = tbtnRemoveFilterClick
    end
    object tbtnSelectedMonth: TdxBarButton
      Caption = 'Selected Month'
      Category = 0
      Hint = 'Selected Month'
      Visible = ivAlways
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
      OnClick = tbtnSelectedMonthClick
    end
    object tbtnShowSummary: TdxBarButton
      Caption = 'View Description in Preview'
      Category = 0
      Hint = 'View Description in Preview'
      Visible = ivAlways
      OnClick = tbtnShowSummaryClick
    end
    object tbtnGroupSort: TdxBarButton
      Caption = 'Group when Sorting'
      Category = 0
      Hint = 'Group when Sorting'
      Visible = ivAlways
      OnClick = tbtnGroupSortClick
    end
    object tbtnEditDescription: TdxBarButton
      Caption = 'Edit Description'
      Category = 0
      Hint = 'Edit Description'
      Visible = ivNever
      OnClick = tbtnEditDescriptionClick
    end
    object tbtnAssignToDebtor: TdxBarSubItem
      Caption = 'Assign to Debtor'
      Category = 0
      Visible = ivNever
      ItemLinks = <>
      OnPopup = tbtnAssignToDebtorPopup
    end
    object tbtnUnassignDebtor: TdxBarButton
      Caption = 'Unassign from Debtor'
      Category = 0
      Hint = 'Unassign from Debtor'
      Visible = ivNever
    end
    object bbtnExportToExcel: TdxBarButton
      Caption = 'Export to Excel...'
      Category = 0
      Hint = 'Export data in grid to Excel'
      Visible = ivAlways
      OnClick = bbtnExportToExcelClick
    end
    object btnUplift25: TdxBarButton
      Caption = 'No Win No Fees - Uplift 25%'
      Category = 0
      Hint = 'No Win No Fees - Uplift 25%'
      Visible = ivAlways
      OnClick = nwnfuplift25Click
    end
    object btnUplift10: TdxBarButton
      Caption = 'No Win No Fees - Uplift 10%'
      Category = 0
      Hint = 'No Win No Fees - Uplift 10%'
      Visible = ivAlways
      OnClick = nwnfuplift10Click
    end
    object btnAddSundry: TdxBarButton
      Caption = 'Add Sundry ...'
      Category = 0
      Hint = 'Add Sundry '
      Visible = ivAlways
      ImageIndex = 10
      OnClick = btnAddSundryClick
    end
    object btnShowGroupBox: TdxBarButton
      Caption = 'Show Group Box'
      Category = 0
      Hint = 'Show/Hide Group Box'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 5
      OnClick = btnShowGroupBoxClick
    end
    object btnExpand: TdxBarButton
      Caption = 'Expand All'
      Category = 0
      Hint = 'Expand All'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 6
      OnClick = btnExpandClick
    end
    object tbtnQuickEdit: TdxBarButton
      Caption = 'Fee Quick Edit...'
      Category = 0
      Hint = 'Fee Quick Edit'
      Visible = ivAlways
      OnClick = tbtnQuickEditClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Re Assign selected Fees'
      Category = 0
      Hint = 'Re Assign selected Fees'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBbtnAddExpTemplate: TdxBarButton
      Caption = 'Add Expense Template ...'
      Category = 0
      Hint = 'Add Expense Template '
      Visible = ivAlways
      OnClick = dxBbtnAddExpTemplateClick
    end
    object bbtnShowSingleLine: TdxBarButton
      Caption = 'Show Description on single line'
      Category = 0
      Hint = 'Show Description on single line'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnShowSingleLineClick
    end
    object bbtnAdjDisbTotal: TdxBarButton
      Caption = 'Adjust Disbursement Total'
      Category = 0
      Hint = 'Adjust Disbursement Total'
      Visible = ivAlways
      OnClick = bbtnAdjDisbTotalClick
    end
    object tbtnEditTax: TdxBarButton
      Caption = 'Edit Tax'
      Category = 0
      Hint = 'Edit Tax'
      Visible = ivAlways
      OnClick = tbtnEditTaxClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Draft'
      Category = 1
      Hint = 'Draft'
      Visible = ivAlways
      OnClick = tbtnPrintClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Memo'
      Category = 1
      Hint = 'Memo'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object tbtnPost: TdxBarButton
      Caption = 'Post'
      Category = 2
      Hint = 'Post'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = tbtnPostClick
    end
    object tbtnReverse: TdxBarButton
      Caption = 'Reverse'
      Category = 2
      Hint = 'Reverse'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = tbtnReverseClick
    end
    object tbtnWord: TdxBarButton
      Caption = 'Merge'
      Category = 2
      Hint = 'Merge Into Bill'
      Visible = ivAlways
      ImageIndex = 18
      OnClick = tbtnWordClick
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Help'
      Category = 2
      Hint = 'Help'
      Visible = ivAlways
      ImageIndex = 4
    end
    object tbtnPrint: TdxBarButton
      Caption = 'Bill'
      Category = 2
      Hint = 'Print Bill'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopupMenu1
      ImageIndex = 6
      OnClick = tbtnPrintClick
    end
    object tbtnDebtorTask: TdxBarButton
      Caption = 'Debtor Task'
      Category = 2
      Enabled = False
      Hint = 'Debtor Task'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF00FF00FF0000
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF00FF00FF00FF00FF00FF
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF00FF00FF00FF00FF00FF00FF
        00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000FF00FF00FF00FF000000FF000000FF00FF
        00FF00FF00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
        FF00FFFFFF00000000FF000000FFFFFFFF00000000FF000000FF000000FF0000
        00FF000000FF00FF00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FFFFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000FF00FF00FF00FFFFFFFF00FFFFFF00FFFFFF000000
        00FFFFFFFF00FFFFFF00000000FF000000FF000000FF000000FF00FF00FF0000
        00FF000000FFFFFFFF00FFFFFF00FFFFFF0000FF00FFFFFFFF00000000FF0000
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00000000FF00FF00FF00FF00FF00FF
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFC0C0C0FFC0C0
        C0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF00FF00FF00FF00FF00FF00FF
        00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFC0C0C0FFC0C0
        C0FF000000FFFFFFFF00FFFFFF0000FF00FF00FF00FF000000FF000000FF00FF
        00FF00FF00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00000000FFC0C0C0FFC0C0
        C0FF000000FFFFFFFF00000000FFFFFFFF00000000FF000000FF000000FF0000
        00FF000000FF00FF00FF00FF00FFFFFFFF00FFFFFF00000000FFC0C0C0FFC0C0
        C0FFC0C0C0FF000000FFFFFFFF00FFFFFF00000000FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FFFFFFFF0000FF00FF00FF00FFFFFFFF00FFFFFF00000000FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFC0C0C0FF000000FF0000
        00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF00FFFFFFFF00FFFFFF000000
        00FF000000FF000000FF000000FF000000FF808080FFC0C0C0FFC0C0C0FF0000
        00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000FF808080FF808080FF808080FF808080FF808080FF0000
        00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000FF000000FF000000FF000000FF000000FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = tbtnDebtorTaskClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Narration'
      Category = 2
      Hint = 'Bill Narration'
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton3Click
    end
    object btnMergePrint: TdxBarButton
      Caption = 'Merge & Print'
      Category = 2
      Hint = 'Merge and Print bill'
      Visible = ivAlways
      ImageIndex = 17
      OnClick = btnMergePrintClick
    end
    object barbtnRemoveDiscount: TdxBarButton
      Caption = 'Remove Discount'
      Category = 2
      Hint = 'Remove Discount'
      Visible = ivAlways
      OnClick = barbtnRemoveDiscountClick
    end
    object cbAuthorise: TcxBarEditItem
      Caption = 'Authorise'
      Category = 2
      Hint = 'Authorise'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cxBarEditItem1PropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbPrivate: TcxBarEditItem
      Caption = 'Private '
      Category = 2
      Hint = 'Private '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cbPrivatePropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbSplitBill: TcxBarEditItem
      Caption = 'Split Bill '
      Category = 2
      Hint = 'Split Bill '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = cbSplitBillPropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbAssessed: TcxBarEditItem
      Caption = 'Assessed '
      Category = 2
      Hint = 'Assessed '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cbAssessedPropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbProforma: TcxBarEditItem
      Caption = 'Proforma '
      Category = 2
      Hint = 'Proforma '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = False
    end
    object cbMasterBill: TcxBarEditItem
      Caption = 'Master Bill '
      Category = 2
      Hint = 'Master Bill '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cbMasterBillPropertiesEditValueChanged
      InternalEditValue = False
    end
    object bbtnBillNotes: TdxBarButton
      Caption = 'Debtor Notes'
      Category = 2
      Hint = 'Debtor Notes'
      Visible = ivAlways
      OnClick = bbtnBillNotesClick
    end
    object dxBarBtnCashierNotes: TdxBarButton
      Caption = 'Cashier Notes'
      Category = 2
      Hint = 'Cashier Notes'
      Visible = ivNever
      OnClick = dxBarBtnCashierNotesClick
    end
    object btnAddChequeRequest: TdxBarButton
      Caption = 'Add Anticipated Disbursement...'
      Category = 2
      Hint = 'Add anticipated disbursement to Bill'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = btnAddChequeRequestClick
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 643
    Top = 72
    PixelsPerInch = 96
  end
  object rptSummaryBill: TppReport
    NoDataBehaviors = [ndMessageDialog, ndBlankPage]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010002002020100000000000E80200002600000010101000000000002801
      00000E0300002800000020000000400000000100040000000000800200000000
      0000000000000000000000000000000000000000800000800000008080008000
      0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000888888880000000000
      088888888888888888888880000088888888888888888888887CC88000008888
      88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
      CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
      F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
      000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
      000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
      000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
      001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
      003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
      0000C00000000000000000000000000000000000000000000000000080000080
      00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
      888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
      8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
      7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
      CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
      0000000F00000007000000030000000100000000000000000000000000000003
      0000001F0000001F0000007F0000007F0000FFFF0000}
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 1181
    Top = 35
    Version = '19.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 108479
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 6350
        mmTop = 106363
        mmWidth = 185473
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TAX INVOICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 0
        mmTop = 38909
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plPhonebook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPhonebook'
        mmHeight = 4498
        mmLeft = 25665
        mmTop = 55298
        mmWidth = 793
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ADDRESS'
        DataPipeline = plPhonebook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPhonebook'
        mmHeight = 4498
        mmLeft = 25665
        mmTop = 60854
        mmWidth = 793
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SSP'
        DataPipeline = plPhonebook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPhonebook'
        mmHeight = 4497
        mmLeft = 25665
        mmTop = 66411
        mmWidth = 793
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DisplayFormat = 'd mmmm, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 155046
        mmTop = 68767
        mmWidth = 32030
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MEMORANDUM OF COSTS AND DISBURSEMENTS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 45418
        mmTop = 93413
        mmWidth = 102574
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Our Ref:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4487
        mmLeft = 136261
        mmTop = 62172
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Invoice No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4487
        mmLeft = 131763
        mmTop = 55578
        mmWidth = 19431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4487
        mmLeft = 155046
        mmTop = 55578
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4487
        mmLeft = 155046
        mmTop = 62172
        mmWidth = 13504
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 44465
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        OnGetText = ppDBText1GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'LONGDESCR'
        DataPipeline = ppMatterBill
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppMatterBill'
        mmHeight = 4995
        mmLeft = 265
        mmTop = 100028
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'plSummaryBill'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7938
        mmWidth = 193146
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plSummaryBill
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '19.02'
          mmColumnWidth = 0
          DataPipelineName = 'plSummaryBill'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 9260
            mmPrintPosition = 0
            object ppLabel13: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label13'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'TO OUR PROFESSIONAL COSTS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 12
              Font.Style = [fsBold, fsUnderline]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4995
              mmLeft = 21167
              mmTop = 2910
              mmWidth = 68030
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText19'
              Border.mmPadding = 0
              DataField = 'FEESTAX'
              DataPipeline = plSummaryBill
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plSummaryBill'
              mmHeight = 4498
              mmLeft = 137054
              mmTop = 529
              mmWidth = 23548
              BandType = 7
              LayerName = Foreground2
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText18'
              Border.mmPadding = 0
              DataField = 'FEES'
              DataPipeline = plSummaryBill
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plSummaryBill'
              mmHeight = 4498
              mmLeft = 109799
              mmTop = 529
              mmWidth = 24342
              BandType = 7
              LayerName = Foreground2
            end
            object ppVarTotal: TppVariable
              DesignLayer = ppDesignLayer3
              UserName = 'VarTotal'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 11
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4487
              mmLeft = 163777
              mmTop = 529
              mmWidth = 23548
              BandType = 7
              LayerName = Foreground2
            end
            object rtFees: TppRichText
              DesignLayer = ppDesignLayer3
              UserName = 'rtFees'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 8
              Font.Style = []
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'rtFees'
              ExportRTFAsBitmap = False
              RichText = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang3081{\fonttbl{\f0\fnil\fcha' +
                'rset0 MS Sans Serif Narrow;}{\f1\fnil MS Sans Serif;}}'#13#10'\viewkin' +
                'd4\uc1\pard\f0\fs24 Fees\f1\fs16\par'#13#10'}'#13#10#0
              RemoveEmptyLines = False
              mmHeight = 4763
              mmLeft = 21167
              mmTop = 529
              mmWidth = 86254
              BandType = 7
              LayerName = Foreground2
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeftMargin = 794
            end
          end
          object raCodeModule1: TraCodeModule
            object raProgramInfo1: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'VarTotalOnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure VarTotalOnCalc(var Value: Variant);'#13#10'begin'#13#10'  Value :=' +
                ' plSummaryBill['#39'FEES'#39'] + plSummaryBill['#39'FEESTAX'#39'];'#13#10#13#10'  {Grand T' +
                'otal (Main report)}'#13#10'  gVariable.Value := gVariable.Value + plSu' +
                'mmaryBill['#39'FEES'#39'] + plSummaryBill['#39'FEESTAX'#39'];'#13#10'end;'#13#10
              raProgram.ComponentName = 'VarTotal'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'plSummaryBill'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 13758
        mmWidth = 193146
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = plSummaryBill
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '19.02'
          mmColumnWidth = 0
          DataPipelineName = 'plSummaryBill'
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 9260
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label12'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'DISBURSEMENTS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 12
              Font.Style = [fsBold, fsUnderline]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5027
              mmLeft = 21960
              mmTop = 2910
              mmWidth = 39688
              BandType = 4
              LayerName = Foreground3
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8996
            mmPrintPosition = 0
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText21'
              Border.mmPadding = 0
              DataField = 'DISBTAX'
              DataPipeline = plSummaryBill
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plSummaryBill'
              mmHeight = 4487
              mmLeft = 136525
              mmTop = 1058
              mmWidth = 23548
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText20'
              Border.mmPadding = 0
              DataField = 'DISB'
              DataPipeline = plSummaryBill
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plSummaryBill'
              mmHeight = 4487
              mmLeft = 109802
              mmTop = 1058
              mmWidth = 23548
              BandType = 7
              LayerName = Foreground3
            end
            object ppVarTotalDisb: TppVariable
              DesignLayer = ppDesignLayer4
              UserName = 'VarTotal1'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 11
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4487
              mmLeft = 163777
              mmTop = 1058
              mmWidth = 23548
              BandType = 7
              LayerName = Foreground3
            end
            object rtDisbs: TppRichText
              DesignLayer = ppDesignLayer4
              UserName = 'rtDisbs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 8
              Font.Style = []
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'rtDisbs'
              ExportRTFAsBitmap = False
              RichText = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang3081{\fonttbl{\f0\fnil\fcha' +
                'rset0 MS Sans Serif Narrow;}{\f1\fnil MS Sans Serif;}}'#13#10'\viewkin' +
                'd4\uc1\pard\f0\fs24 Disbursements\f1\fs16\par'#13#10'}'#13#10#0
              RemoveEmptyLines = False
              mmHeight = 4498
              mmLeft = 21960
              mmTop = 1058
              mmWidth = 86254
              BandType = 7
              LayerName = Foreground3
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeftMargin = 794
            end
          end
          object raCodeModule4: TraCodeModule
            object raProgramInfo2: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'VarTotal1OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure VarTotal1OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'    Val' +
                'ue := plSummaryBill['#39'DISB'#39'] + plSummaryBill['#39'DISBTAX'#39'];'#13#10#13#10'  {Gr' +
                'and Total (Main report)}'#13#10'  gVariable.Value := gVariable.Value +' +
                ' plSummaryBill['#39'DISB'#39'] + plSummaryBill['#39'DISBTAX'#39'];'#13#10#13#10'end;'#13#10
              raProgram.ComponentName = 'VarTotal1'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
          end
          object ppDesignLayers4: TppDesignLayers
            object ppDesignLayer4: TppDesignLayer
              UserName = 'Foreground3'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'GST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 136525
        mmTop = 1058
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 163777
        mmTop = 1058
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 109802
        mmTop = 1058
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Brush.Style = bsClear
        Pen.Style = psClear
        ShiftRelativeTo = ppSubReport2
        Transparent = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 19844
        mmWidth = 193146
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          Anchors = [atLeft, atBottom]
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total Costs And Disbursements including GST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 20373
          mmTop = 21167
          mmWidth = 92075
          BandType = 4
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Anchors = [atLeft, atBottom]
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 793
          mmLeft = 151611
          mmTop = 20904
          mmWidth = 35719
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'OWING'
          DataPipeline = plSummaryBill
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plSummaryBill'
          mmHeight = 3969
          mmLeft = 152669
          mmTop = 22492
          mmWidth = 34396
          BandType = 4
          LayerName = Foreground
        end
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 51329
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'With Compliments'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4487
        mmLeft = 25665
        mmTop = 12965
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'per:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4487
        mmLeft = 25665
        mmTop = 25400
        mmWidth = 6731
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'E. & O.E.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4487
        mmLeft = 25665
        mmTop = 38365
        mmWidth = 16298
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        OnGetText = ppLabel15GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label15'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4487
        mmLeft = 25665
        mmTop = 18256
        mmWidth = 13801
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Terms: "Net 14 days"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 25665
        mmTop = 43392
        mmWidth = 36512
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraVarProgram'
        raProgram.ChildType = 17
        raProgram.ProgramName = 'Variables'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variables;'#13#10'var'#13#10'   gVariable: TppVariable;'#13#10#13#10'begin'#13#10 +
          #13#10'end;'#13#10
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraProgram'
        raProgram.ChildType = 19
        raProgram.ProgramName = 'GlobalOnCreate'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure GlobalOnCreate;'#13#10'begin'#13#10'//    gVariable := VarInvoiceT' +
          'otal;'#13#10'end;'#13#10
        raProgram.CaretPos = (
          1
          1)
      end
      object raProgramInfo5: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DetailBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DetailBeforePrint;'#13#10'begin'#13#10'    SubReport2.Visible := (' +
          'plSummaryBill['#39'DISB'#39'] > 0);'#13#10'end;'#13#10
        raProgram.ComponentName = 'Detail'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
        raProgram.CaretPos = (
          1
          2)
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
      object ppParameter1: TppParameter
        AutoSearchSettings.LogicalPrefix = []
        AutoSearchSettings.Mandatory = False
        DataType = dtString
        LookupSettings.DisplayType = dtNameOnly
        LookupSettings.SortOrder = soName
        Value = ''
        UserName = 'nmemo'
        Bindable = False
      end
    end
  end
  object plPhonebook: TppDBPipeline
    DataSource = dsPhonebook
    UserName = 'plPhonebook'
    Left = 810
    Top = 38
    object plPhonebookppField1: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 0
    end
    object plPhonebookppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plPhonebookppField3: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 2
    end
    object plPhonebookppField4: TppField
      FieldAlias = 'SSP'
      FieldName = 'SSP'
      FieldLength = 92
      DisplayWidth = 92
      Position = 3
    end
  end
  object qryPhonebook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT title, name, address, suburb||'#39' '#39'||state||'#39' '#39'||postcode a' +
        's SSP FROM PHONEBOOK'
      ' WHERE nname = :Search')
    Left = 729
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Search'
        Value = nil
      end>
  end
  object dsPhonebook: TUniDataSource
    DataSet = qryPhonebook
    Left = 772
    Top = 41
  end
  object ppMatterBill: TppDBPipeline
    DataSource = dsMatter
    UserName = 'MatterBill'
    Left = 862
    Top = 76
    object ppMatterBillppField1: TppField
      FieldAlias = 'SUBTYPE'
      FieldName = 'SUBTYPE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppMatterBillppField2: TppField
      FieldAlias = 'SUBSTATUS'
      FieldName = 'SUBSTATUS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppMatterBillppField3: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 2
    end
    object ppMatterBillppField4: TppField
      FieldAlias = 'OPENED'
      FieldName = 'OPENED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object ppMatterBillppField5: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppMatterBillppField6: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppMatterBillppField7: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 6
    end
    object ppMatterBillppField8: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 7
    end
    object ppMatterBillppField9: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppMatterBillppField10: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppMatterBillppField11: TppField
      FieldAlias = 'NARCHIVE'
      FieldName = 'NARCHIVE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 10
    end
    object ppMatterBillppField12: TppField
      FieldAlias = 'ARCHIVED'
      FieldName = 'ARCHIVED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object ppMatterBillppField13: TppField
      FieldAlias = 'ACCT'
      FieldName = 'ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object ppMatterBillppField14: TppField
      FieldAlias = 'TRUSTAUTH'
      FieldName = 'TRUSTAUTH'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppMatterBillppField15: TppField
      FieldAlias = 'PARTY1'
      FieldName = 'PARTY1'
      FieldLength = 85
      DisplayWidth = 85
      Position = 14
    end
    object ppMatterBillppField16: TppField
      FieldAlias = 'PARTY2'
      FieldName = 'PARTY2'
      FieldLength = 85
      DisplayWidth = 85
      Position = 15
    end
    object ppMatterBillppField17: TppField
      FieldAlias = 'PARTY3'
      FieldName = 'PARTY3'
      FieldLength = 85
      DisplayWidth = 85
      Position = 16
    end
    object ppMatterBillppField18: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object ppMatterBillppField19: TppField
      FieldAlias = 'LONGDESCR'
      FieldName = 'LONGDESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 18
    end
    object ppMatterBillppField20: TppField
      FieldAlias = 'OFFICE'
      FieldName = 'OFFICE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 19
    end
    object ppMatterBillppField21: TppField
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 20
    end
    object ppMatterBillppField22: TppField
      FieldAlias = 'BILL_TO'
      FieldName = 'BILL_TO'
      FieldLength = 85
      DisplayWidth = 85
      Position = 21
    end
    object ppMatterBillppField23: TppField
      FieldAlias = 'LASTTRANS'
      FieldName = 'LASTTRANS'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 22
    end
    object ppMatterBillppField24: TppField
      FieldAlias = 'LASTTRUST'
      FieldName = 'LASTTRUST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 23
    end
    object ppMatterBillppField25: TppField
      FieldAlias = 'REFERREDBY'
      FieldName = 'REFERREDBY'
      FieldLength = 85
      DisplayWidth = 85
      Position = 24
    end
    object ppMatterBillppField26: TppField
      FieldAlias = 'NOTES'
      FieldName = 'NOTES'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 25
    end
    object ppMatterBillppField27: TppField
      FieldAlias = 'LITIGATION'
      FieldName = 'LITIGATION'
      FieldLength = 1
      DisplayWidth = 1
      Position = 26
    end
    object ppMatterBillppField28: TppField
      FieldAlias = 'SPECULATION'
      FieldName = 'SPECULATION'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppMatterBillppField29: TppField
      FieldAlias = 'AGENCY'
      FieldName = 'AGENCY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppMatterBillppField30: TppField
      FieldAlias = 'GRATIS'
      FieldName = 'GRATIS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 29
    end
    object ppMatterBillppField31: TppField
      FieldAlias = 'BILLING_PLAN'
      FieldName = 'BILLING_PLAN'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object ppMatterBillppField32: TppField
      FieldAlias = 'CONTACT'
      FieldName = 'CONTACT'
      FieldLength = 85
      DisplayWidth = 85
      Position = 31
    end
    object ppMatterBillppField33: TppField
      FieldAlias = 'PREV_NCMAUDIT'
      FieldName = 'PREV_NCMAUDIT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 32
    end
    object ppMatterBillppField34: TppField
      FieldAlias = 'PREV_NTRAUDIT'
      FieldName = 'PREV_NTRAUDIT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 33
    end
    object ppMatterBillppField35: TppField
      FieldAlias = 'TASK'
      FieldName = 'TASK'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppMatterBillppField36: TppField
      FieldAlias = 'EXP_COMPLETION'
      FieldName = 'EXP_COMPLETION'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 35
    end
    object ppMatterBillppField37: TppField
      FieldAlias = 'OPREF'
      FieldName = 'OPREF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 36
    end
    object ppMatterBillppField38: TppField
      FieldAlias = 'TASK_DATE'
      FieldName = 'TASK_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 37
    end
    object ppMatterBillppField39: TppField
      FieldAlias = 'REFRESH'
      FieldName = 'REFRESH'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 38
    end
    object ppMatterBillppField40: TppField
      FieldAlias = 'CONTROLLER'
      FieldName = 'CONTROLLER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 39
    end
    object ppMatterBillppField41: TppField
      FieldAlias = 'FEECODE'
      FieldName = 'FEECODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 40
    end
    object ppMatterBillppField42: TppField
      FieldAlias = 'COMPLETED'
      FieldName = 'COMPLETED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 41
    end
    object ppMatterBillppField43: TppField
      FieldAlias = 'WORKFLOW'
      FieldName = 'WORKFLOW'
      FieldLength = 11
      DisplayWidth = 11
      Position = 42
    end
    object ppMatterBillppField44: TppField
      FieldAlias = 'LABELCODE'
      FieldName = 'LABELCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 43
    end
    object ppMatterBillppField45: TppField
      FieldAlias = 'MODBY'
      FieldName = 'MODBY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 44
    end
    object ppMatterBillppField46: TppField
      FieldAlias = 'ARCHVLOCN'
      FieldName = 'ARCHVLOCN'
      FieldLength = 50
      DisplayWidth = 50
      Position = 45
    end
    object ppMatterBillppField47: TppField
      FieldAlias = 'CLIENTID'
      FieldName = 'CLIENTID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 46
    end
    object ppMatterBillppField48: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 47
    end
    object ppMatterBillppField49: TppField
      FieldAlias = 'INTTRIGDATE'
      FieldName = 'INTTRIGDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 48
    end
    object ppMatterBillppField50: TppField
      FieldAlias = 'TCCLRDATE'
      FieldName = 'TCCLRDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 49
    end
    object ppMatterBillppField51: TppField
      FieldAlias = 'LASTBILLDATE'
      FieldName = 'LASTBILLDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 50
    end
    object ppMatterBillppField52: TppField
      FieldAlias = 'LASTLETTER'
      FieldName = 'LASTLETTER'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppMatterBillppField53: TppField
      FieldAlias = 'BFPRGDATE'
      FieldName = 'BFPRGDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 52
    end
    object ppMatterBillppField54: TppField
      FieldAlias = 'ARCHIVEREVIEW'
      FieldName = 'ARCHIVEREVIEW'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppMatterBillppField55: TppField
      FieldAlias = 'ARCHIVEDEST'
      FieldName = 'ARCHIVEDEST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 54
    end
    object ppMatterBillppField56: TppField
      FieldAlias = 'BRANCH'
      FieldName = 'BRANCH'
      FieldLength = 3
      DisplayWidth = 3
      Position = 55
    end
    object ppMatterBillppField57: TppField
      FieldAlias = 'ARCHIVENUM'
      FieldName = 'ARCHIVENUM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object ppMatterBillppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'GSTEXEMPT'
      FieldName = 'GSTEXEMPT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppMatterBillppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLOSED'
      FieldName = 'CLOSED'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
    object ppMatterBillppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRSTMNT'
      FieldName = 'TRSTMNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 59
    end
    object ppMatterBillppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRAUTH'
      FieldName = 'TRAUTH'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object ppMatterBillppField62: TppField
      FieldAlias = 'SLEDATE'
      FieldName = 'SLEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 61
    end
    object ppMatterBillppField63: TppField
      FieldAlias = 'OPERATOR'
      FieldName = 'OPERATOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 62
    end
    object ppMatterBillppField64: TppField
      FieldAlias = 'JURISDICTION'
      FieldName = 'JURISDICTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 63
    end
    object ppMatterBillppField65: TppField
      FieldAlias = 'FEEBASIS'
      FieldName = 'FEEBASIS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object ppMatterBillppField66: TppField
      FieldAlias = 'ENTITY'
      FieldName = 'ENTITY'
      FieldLength = 2
      DisplayWidth = 2
      Position = 65
    end
    object ppMatterBillppField67: TppField
      FieldAlias = 'TYPE1'
      FieldName = 'TYPE1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 66
    end
    object ppMatterBillppField68: TppField
      FieldAlias = 'TYPE2'
      FieldName = 'TYPE2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 67
    end
    object ppMatterBillppField69: TppField
      FieldAlias = 'JURISDICTION1'
      FieldName = 'JURISDICTION1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 68
    end
    object ppMatterBillppField70: TppField
      FieldAlias = 'STATUS1'
      FieldName = 'STATUS1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 69
    end
    object ppMatterBillppField71: TppField
      FieldAlias = 'DEBTORNOTE'
      FieldName = 'DEBTORNOTE'
      FieldLength = 1500
      DisplayWidth = 1500
      Position = 70
    end
    object ppMatterBillppField72: TppField
      FieldAlias = 'DEBTORDATE'
      FieldName = 'DEBTORDATE'
      FieldLength = 500
      DisplayWidth = 500
      Position = 71
    end
    object ppMatterBillppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'BILL_DISB'
      FieldName = 'BILL_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 72
    end
    object ppMatterBillppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECVD_FEES'
      FieldName = 'RECVD_FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 73
    end
    object ppMatterBillppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'BILL_SUND'
      FieldName = 'BILL_SUND'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 74
    end
    object ppMatterBillppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'BILL_ANTD'
      FieldName = 'BILL_ANTD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 75
    end
    object ppMatterBillppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUST_TRANS'
      FieldName = 'TRUST_TRANS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 76
    end
    object ppMatterBillppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPEC_PURPOSE'
      FieldName = 'SPEC_PURPOSE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 77
    end
    object ppMatterBillppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXPECTED_VALUE'
      FieldName = 'EXPECTED_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 78
    end
    object ppMatterBillppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNREC_DISB'
      FieldName = 'UNREC_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 79
    end
    object ppMatterBillppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD1'
      FieldName = 'PERIOD1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 80
    end
    object ppMatterBillppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD1_1'
      FieldName = 'PERIOD1_1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 81
    end
    object ppMatterBillppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD2'
      FieldName = 'PERIOD2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 82
    end
    object ppMatterBillppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD3'
      FieldName = 'PERIOD3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 83
    end
    object ppMatterBillppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDISBS'
      FieldName = 'ANTDISBS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 84
    end
    object ppMatterBillppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDRS'
      FieldName = 'ANTDRS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 85
    end
    object ppMatterBillppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESDRS'
      FieldName = 'FEESDRS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 86
    end
    object ppMatterBillppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_UNITS'
      FieldName = 'UNBILL_UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 87
    end
    object ppMatterBillppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMT_LAST_REC'
      FieldName = 'AMT_LAST_REC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 88
    end
    object ppMatterBillppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBSWOFF'
      FieldName = 'DISBSWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 89
    end
    object ppMatterBillppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'DRSWOFF'
      FieldName = 'DRSWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 90
    end
    object ppMatterBillppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'WIPWOFF'
      FieldName = 'WIPWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 91
    end
    object ppMatterBillppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBSLIM'
      FieldName = 'DISBSLIM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 92
    end
    object ppMatterBillppField94: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_CREQ'
      FieldName = 'UNBILL_CREQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 93
    end
    object ppMatterBillppField95: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_UPCRED'
      FieldName = 'UNBILL_UPCRED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 94
    end
    object ppMatterBillppField96: TppField
      Alignment = taRightJustify
      FieldAlias = 'BILL_CREQ'
      FieldName = 'BILL_CREQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 95
    end
    object ppMatterBillppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'BILL_UPCRED'
      FieldName = 'BILL_UPCRED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 96
    end
    object ppMatterBillppField98: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECVD_DISB'
      FieldName = 'RECVD_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 97
    end
    object ppMatterBillppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECVD_SUND'
      FieldName = 'RECVD_SUND'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 98
    end
    object ppMatterBillppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECVD_CREQ'
      FieldName = 'RECVD_CREQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 99
    end
    object ppMatterBillppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECVD_UPCRED'
      FieldName = 'RECVD_UPCRED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 100
    end
    object ppMatterBillppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDWOFF'
      FieldName = 'SUNDWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 101
    end
    object ppMatterBillppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREQWOFF'
      FieldName = 'CREQWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 102
    end
    object ppMatterBillppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDWOFF'
      FieldName = 'UPCREDWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 103
    end
    object ppMatterBillppField105: TppField
      Alignment = taRightJustify
      FieldAlias = 'RATE'
      FieldName = 'RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 104
    end
    object ppMatterBillppField106: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUDGET_FEES'
      FieldName = 'BUDGET_FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 105
    end
    object ppMatterBillppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUDGET_DISB'
      FieldName = 'BUDGET_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 106
    end
    object ppMatterBillppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUDGET_TOTAL'
      FieldName = 'BUDGET_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 107
    end
    object ppMatterBillppField109: TppField
      FieldAlias = 'ARCHIVETYPECODE'
      FieldName = 'ARCHIVETYPECODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 108
    end
    object ppMatterBillppField110: TppField
      FieldAlias = 'TRANS_FROM'
      FieldName = 'TRANS_FROM'
      FieldLength = 3
      DisplayWidth = 3
      Position = 109
    end
    object ppMatterBillppField111: TppField
      FieldAlias = 'SUBJURISDICTION'
      FieldName = 'SUBJURISDICTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 110
    end
    object ppMatterBillppField112: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 111
    end
    object ppMatterBillppField113: TppField
      FieldAlias = 'MODIFIED'
      FieldName = 'MODIFIED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 112
    end
    object ppMatterBillppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTORSTATUS'
      FieldName = 'DEBTORSTATUS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 113
    end
    object ppMatterBillppField115: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTIMATEDFEE'
      FieldName = 'ESTIMATEDFEE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 114
    end
    object ppMatterBillppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTIMATEDDISBPRINC'
      FieldName = 'ESTIMATEDDISBPRINC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 115
    end
    object ppMatterBillppField117: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTIMATEDDISBAGENT'
      FieldName = 'ESTIMATEDDISBAGENT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 116
    end
    object ppMatterBillppField118: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTIMATEDCREDITORS'
      FieldName = 'ESTIMATEDCREDITORS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 117
    end
    object ppMatterBillppField119: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROBABILITYSUCCESS'
      FieldName = 'PROBABILITYSUCCESS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 118
    end
    object ppMatterBillppField120: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERCENTCOMPLETED'
      FieldName = 'PERCENTCOMPLETED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 119
    end
    object ppMatterBillppField121: TppField
      FieldAlias = 'FEE_TAX_BASIS'
      FieldName = 'FEE_TAX_BASIS'
      FieldLength = 10
      DisplayWidth = 10
      Position = 120
    end
    object ppMatterBillppField122: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 121
    end
    object ppMatterBillppField123: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_FEES'
      FieldName = 'UNBILL_FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 122
    end
    object ppMatterBillppField124: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_DISB'
      FieldName = 'UNBILL_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 123
    end
    object ppMatterBillppField125: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_ANTD'
      FieldName = 'UNBILL_ANTD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 124
    end
    object ppMatterBillppField126: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_SUND'
      FieldName = 'UNBILL_SUND'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 125
    end
    object ppMatterBillppField127: TppField
      Alignment = taRightJustify
      FieldAlias = 'CL_TRUST_BAL'
      FieldName = 'CL_TRUST_BAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 126
    end
    object ppMatterBillppField128: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUST_BAL'
      FieldName = 'TRUST_BAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 127
    end
    object ppMatterBillppField129: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTORS'
      FieldName = 'DEBTORS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 128
    end
    object ppMatterBillppField130: TppField
      Alignment = taRightJustify
      FieldAlias = 'BILL_FEES'
      FieldName = 'BILL_FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 129
    end
    object ppMatterBillppField131: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNCON_CHEQREQ'
      FieldName = 'UNCON_CHEQREQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 130
    end
  end
  object qryRptFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FEE.CREATED, DECODE(FEE.PRIVATE,'#39'Y'#39','#39'(P) '#39','#39#39') || FEE.DES' +
        'CR as DESCR, FEE.AMOUNT, FEE.AUTHOR, FEE.NFEE, FEE.TAXCODE,'
      '  DECODE('
      '    NVL(fee.tax,0),'
      '    0,'
      '    DECODE('
      '      fee.billed,'#39'Y'#39','
      '      fee.tax,'
      '      ROUND(fee.amount * ABS(r.rate)) / 100'
      '    ),'
      '    fee.tax'
      '  ) AS tax,'
      'FEE.PRIVATE'
      'FROM FEE,TAXRATE R '
      'WHERE NMATTER = :P_Matter AND NMEMO = :P_Invoice'
      'AND FEE.TAXCODE = R.TAXCODE (+)'
      
        'AND TRUNC (created) >= r.commence and TRUNC(created) <= nvl(r.en' +
        'd_period,sysdate + 1000)'
      'AND BILLTYPE = '#39'Billable'#39
      'ORDER BY NFEE, CREATED')
    Left = 754
    Top = 175
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
        Value = nil
      end>
  end
  object qryRptDisb: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  2 AS type,'
      '  created,'
      '  sundrytype AS author,'
      '  descr, '
      '  (0 - amount) AS amount,'
      '    DECODE(alloc.billed,'
      '         '#39'Y'#39','
      '         0 - alloc.tax,'
      '         DECODE((r.rate-r.bill_rate),'
      '                '#39'0'#39','
      '                0 - alloc.tax,'
      '                ROUND((0 - alloc.amount) * ABS(r.rate)) / 100'
      '               )'
      '        ) AS tax'
      'FROM '
      '  alloc,'
      '  taxrate r'
      'WHERE'
      '  fileid = :fileid AND'
      '  nmemo = :nmemo AND'
      '  (ncheque > 0 OR type = '#39'J2'#39' OR type = '#39'DR'#39') AND'
      '  alloc.taxcode = r.taxcode(+) AND'
      
        '  TRUNC (created) >= r.commence and TRUNC(created) <= nvl(r.end_' +
        'period,sysdate + 1000)'
      'UNION ALL'
      'SELECT'
      '  3 AS type,'
      '  reqdate AS created,'
      '  sundrytype AS author,'
      '  descr,'
      '  amount,'
      '  tax'
      'FROM'
      '  cheqreq'
      'WHERE'
      '  fileid = :fileid AND'
      '  nmemo = :nmemo'
      'UNION ALL'
      'SELECT'
      '  4 AS type,'
      '  created,'
      '  type AS author,'
      '  descr,'
      '  amount,'
      '  tax'
      'FROM'
      '  sundry'
      'WHERE'
      '  fileid = :fileid AND'
      '  nmemo = :nmemo'
      'UNION ALL'
      'SELECT'
      '  5 AS type,'
      '  invoice_date AS created,'
      '  m.author AS author,'
      '  c.descr,'
      '  (a.amount * -1) AS amount,'
      '  (a.tax * -1) AS Tax'
      'FROM matter m, alloc a, invoice c'
      'WHERE m.nmatter = a.nmatter'
      'AND   a.ninvoice = c.ninvoice'
      'AND   a.nmemo = :nmemo'
      'AND   m.fileid = :fileid '
      'ORDER BY 1, 2')
    Left = 834
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryItems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  1 AS type,'
      '  created,'
      '  author,'
      '  descr,'
      '  amount,'
      '  tax,'
      '  units'
      'FROM'
      '  fee'
      'WHERE'
      '  nmatter = :nmatter AND'
      '  nmemo = :nmemo AND'
      '  type not in ('#39'wo'#39','#39'ia'#39') AND'
      '  NVL(fee.private,'#39'N'#39') = '#39'N'#39
      'UNION ALL'
      'SELECT'
      '  1 AS type,'
      '  SYSDATE,'
      '  NULL AS author,'
      '  '#39'Fee Adjustment'#39','
      '  MAX(b.fees) - SUM(f.amount),'
      '  (MAX(b.fees) - SUM(f.amount)) / 10,'
      '  0'
      'FROM'
      '  nmemo b,'
      '  fee f'
      'WHERE'
      '  b.nmatter = :nmatter AND'
      '  b.nmemo = :nmemo AND'
      '  f.nmatter = :nmatter AND'
      '  f.nmemo = :nmemo  AND'
      '  type not in ('#39'wo'#39','#39'ia'#39') AND'
      '  NVL(f.private,'#39'N'#39') = '#39'N'#39
      'GROUP BY b.nmemo'
      'HAVING MAX(b.fees) <> SUM(f.amount)'
      'UNION ALL'
      'SELECT '
      '  2 AS type,'
      '  created,'
      '  sundrytype AS author,'
      '  descr, '
      '  (0 - amount) AS amount,'
      '    DECODE(alloc.billed,'
      '         '#39'Y'#39','
      '         0 - alloc.tax,'
      '         DECODE((r.rate-r.bill_rate),'
      '                '#39'0'#39','
      '                0 - alloc.tax,'
      '                ROUND((0 - alloc.amount) * ABS(r.rate)) / 100'
      '               )'
      '        ) AS tax,'
      '  1'
      'FROM '
      '  alloc,'
      '  taxrate r'
      'WHERE'
      '  nmatter = :nmatter AND'
      '  nmemo = :nmemo AND'
      '  (ncheque > 0 OR type = '#39'J2'#39' OR type = '#39'DR'#39') AND'
      '  alloc.taxcode = r.taxcode(+) AND'
      
        '  TRUNC (created) >= r.commence and TRUNC(created) <= nvl(r.end_' +
        'period,sysdate + 1000)'
      'UNION ALL'
      'SELECT'
      '  3 AS type,'
      '  reqdate AS created,'
      '  sundrytype AS author,'
      '  descr,'
      '  amount,'
      '  tax,'
      '  1'
      'FROM'
      '  cheqreq'
      'WHERE'
      '  fileid = :fileid AND'
      '  nmemo = :nmemo'
      'UNION ALL'
      'SELECT'
      '  4 AS type,'
      '  created,'
      '  type AS author,'
      '  descr,'
      '  amount,'
      '  tax,'
      '  units'
      'FROM'
      '  sundry'
      'WHERE'
      '  nmatter = :nmatter AND'
      '  nmemo = :nmemo'
      'UNION ALL'
      'SELECT'
      '  5 AS type,'
      '  invoice_date AS created,'
      '  m.author AS author,'
      '  a.descr,'
      '  (a.amount * -1) AS amount,'
      '  (a.tax * -1) AS Tax, '
      '  1'
      'FROM matter m, alloc a, invoice c'
      'WHERE m.nmatter = a.nmatter'
      'AND   a.ninvoice = c.ninvoice'
      'AND   a.nmemo = :nmemo'
      'AND   m.nmatter = :nmatter '
      'ORDER BY 1, 2')
    Left = 911
    Top = 102
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end>
  end
  object plItems: TppDBPipeline
    DataSource = dsItems
    UserName = 'plItems'
    Left = 997
    Top = 100
    object plItemsppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object plItemsppField2: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plItemsppField3: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object plItemsppField4: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 3
    end
    object plItemsppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plItemsppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plItemsppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNITS'
      FieldName = 'UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
  end
  object dsItems: TUniDataSource
    DataSet = qryItems
    Left = 956
    Top = 104
  end
  object qryInvoiceDraftBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT M.ROWID, M.REFNO, M.NMEMO, M.NMATTER, M.FILEID, m.dispatc' +
        'hed, m.tax'
      'FROM NMEMO M'
      'WHERE M.NMEMO = :NMEMO')
    CachedUpdates = True
    Left = 821
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryMatterDraftBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT BILL_TO, AUTHOR, LONGDESCR, FILEID FROM MATTER WHERE FILE' +
        'ID = :FILEID')
    Left = 840
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qrySubBills: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where nmemo = :nmemo')
    Left = 629
    Top = 255
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryAllocSubBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update alloc'
      'set nsubbill = :nsubbill'
      'where nalloc = :nalloc')
    Left = 689
    Top = 254
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nsubbill'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nalloc'
        Value = nil
      end>
  end
  object qryAllocDescription: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update alloc'
      'set descr = :descr'
      'where nalloc = :nalloc')
    Left = 750
    Top = 226
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descr'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nalloc'
        Value = nil
      end>
  end
  object qryBillItems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   0 AS TYPE, fee.created,'
      
        '         DECODE (fee.PRIVATE, '#39'Y'#39', '#39'(P) '#39', '#39#39') || fee.descr AS d' +
        'escr,'
      
        '         fee.amount, fee.author, fee.nfee AS uniqueid, fee.taxco' +
        'de,'
      '         DECODE (NVL (fee.tax, 0),'
      '                 0, DECODE (fee.billed,'
      '                            '#39'Y'#39', fee.tax,'
      
        '                            ROUND (fee.amount * ABS (r.rate)) / ' +
        '100'
      '                           ),'
      '                 fee.tax'
      '                ) AS tax,'
      
        '         fee.PRIVATE, NULL AS payee, units, task, nfee AS unique' +
        'id, 0 as unbilled'
      '    FROM fee, taxrate r'
      '   WHERE nmatter = :p_matter'
      '     AND nmemo = :p_invoice'
      '     AND fee.taxcode = r.taxcode(+)'
      '     AND TRUNC (created) >= r.commence'
      '     AND TRUNC (created) <= NVL (r.end_period, SYSDATE + 1000)'
      '     AND billtype = '#39'Billable'#39
      'ORDER BY nfee, created')
    RefreshOptions = [roAfterUpdate, roBeforeEdit]
    Options.StrictUpdate = False
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 483
    Top = 434
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_Matter'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'P_Invoice'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsBillItems: TUniDataSource
    DataSet = qryBillItems
    Left = 563
    Top = 433
  end
  object pmGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'tbtnEdit'
      end
      item
        Visible = True
        ItemName = 'tbtnQuickEdit'
      end
      item
        Visible = True
        ItemName = 'tbtnAddGST'
      end
      item
        Visible = True
        ItemName = 'tbtnEditTax'
      end
      item
        Visible = True
        ItemName = 'tbtnPrivate'
      end
      item
        Visible = True
        ItemName = 'tbtnRecalculate'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'bbtnAdjDisbTotal'
      end
      item
        Visible = True
        ItemName = 'tbtnEditDescription'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnNewFee'
      end
      item
        Visible = True
        ItemName = 'btnAddSundry'
      end
      item
        Visible = True
        ItemName = 'btnAddChequeRequest'
      end
      item
        Visible = True
        ItemName = 'dxBbtnAddExpTemplate'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnRemove'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnRebuildAll'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnFilter'
      end
      item
        Visible = True
        ItemName = 'tbtnAssignToDebtor'
      end
      item
        Visible = True
        ItemName = 'tbtnUnassignDebtor'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnUplift10'
      end
      item
        Visible = True
        ItemName = 'btnUplift25'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnShowSummary'
      end
      item
        Visible = True
        ItemName = 'bbtnExportToExcel'
      end
      item
        Visible = True
        ItemName = 'bbtnShowSingleLine'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnExpand'
      end
      item
        Visible = True
        ItemName = 'btnShowGroupBox'
      end
      item
        Visible = True
        ItemName = 'tbtnGroupSort'
      end
      item
        Visible = True
        ItemName = 'tbtnCleargroup'
      end>
    UseOwnFont = False
    OnPopup = pmGridPopup
    Left = 166
    Top = 505
    PixelsPerInch = 96
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdBillItems
    PopupMenus = <
      item
        GridView = tvBillItems
        HitTypes = [gvhtNone, gvhtCell, gvhtRecord, gvhtPreview, gvhtColumnHeader, gvhtFooter, gvhtFooterCell, gvhtGroupFooter, gvhtGroupFooterCell]
        Index = 0
        PopupMenu = pmGrid
      end>
    UseBuiltInPopupMenus = False
    Left = 259
    Top = 477
  end
  object rptDraftBill: TppReport
    AutoStop = False
    DataPipeline = plItems
    NoDataBehaviors = [ndMessageDialog, ndBlankPage]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\clients\knights lawyers\template-std.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010002002020100000000000E80200002600000010101000000000002801
      00000E0300002800000020000000400000000100040000000000800200000000
      0000000000000000000000000000000000000000800000800000008080008000
      0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000888888880000000000
      088888888888888888888880000088888888888888888888887CC88000008888
      88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
      CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
      F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
      000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
      000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
      000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
      001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
      003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
      0000C00000000000000000000000000000000000000000000000000080000080
      00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
      888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
      8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
      7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
      CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
      0000000F00000007000000030000000100000000000000000000000000000003
      0000001F0000001F0000007F0000007F0000FFFF0000}
    LanguageID = 'Default'
    OnPreviewFormCreate = rptDraftBillPreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 1053
    Top = 100
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plItems'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 59796
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plPhonebook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPhonebook'
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 26194
        mmWidth = 793
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ADDRESS'
        DataPipeline = plPhonebook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPhonebook'
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 31750
        mmWidth = 793
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SSP'
        DataPipeline = plPhonebook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPhonebook'
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 37306
        mmWidth = 793
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Author:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 138907
        mmTop = 22225
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Bill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 145521
        mmTop = 14288
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 154252
        mmTop = 14288
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 139436
        mmTop = 7144
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = ppMatterBill
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppMatterBill'
        mmHeight = 4022
        mmLeft = 153194
        mmTop = 7144
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'RE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 46831
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'LONGDESCR'
        DataPipeline = ppMatterBill
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppMatterBill'
        mmHeight = 4022
        mmLeft = 12965
        mmTop = 46831
        mmWidth = 178594
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AUTHOR'
        DataPipeline = ppMatterBill
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppMatterBill'
        mmHeight = 4022
        mmLeft = 153194
        mmTop = 22225
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        OnGetText = ppLabel25GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lblDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 2381
        mmWidth = 9789
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 53975
        mmWidth = 7143
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Auth/Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 26723
        mmTop = 53975
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 45508
        mmTop = 53975
        mmWidth = 16934
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 178859
        mmTop = 53975
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 58208
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 155311
        mmTop = 54504
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region1'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 7000
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText12'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CREATED'
          DataPipeline = plItems
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plItems'
          mmHeight = 4022
          mmLeft = 6609
          mmTop = 1323
          mmWidth = 18521
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText13'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'AUTHOR'
          DataPipeline = plItems
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plItems'
          mmHeight = 4022
          mmLeft = 26718
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText15'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'AMOUNT'
          DataPipeline = plItems
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plItems'
          mmHeight = 4022
          mmLeft = 167482
          mmTop = 1323
          mmWidth = 23548
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText16'
          Border.mmPadding = 0
          DataField = 'UNITS'
          DataPipeline = plItems
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plItems'
          mmHeight = 4022
          mmLeft = 145786
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBMemo1: TppDBMemo
          DesignLayer = ppDesignLayer2
          UserName = 'DBMemo1'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'DESCR'
          DataPipeline = plItems
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plItems'
          mmHeight = 3673
          mmLeft = 45507
          mmTop = 1323
          mmWidth = 97896
          BandType = 4
          LayerName = Foreground1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
      end
    end
    object ppSummaryBand6: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 28575
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 140759
        mmTop = 6350
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plItems
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plItems'
        mmHeight = 4191
        mmLeft = 167484
        mmTop = 6350
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = 'Total GST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 146844
        mmTop = 11377
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground1
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable1'
        AutoSize = False
        Border.BorderPositions = [bpTop]
        Border.Visible = True
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 167484
        mmTop = 17727
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = 'Overall Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 142082
        mmTop = 17727
        mmWidth = 18785
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = plInvoiceDraftBill
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plInvoiceDraftBill'
        mmHeight = 4191
        mmLeft = 167484
        mmTop = 11642
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText11'
      BreakType = btCustomField
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText11'
          OnGetText = ppDBText11GetText
          AutoSize = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'TYPE'
          DataPipeline = plItems
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plItems'
          mmHeight = 4497
          mmLeft = 6615
          mmTop = 1588
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label14'
          OnGetText = ppLabel28GetText
          Anchors = [atLeft, atBottom]
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total Costs And Disbursements including GST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3968
          mmLeft = 16140
          mmTop = 1588
          mmWidth = 66146
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc1'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'AMOUNT'
          DataPipeline = plItems
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plItems'
          mmHeight = 4191
          mmLeft = 167482
          mmTop = 1588
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 265
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc2'
          Border.mmPadding = 0
          DataField = 'UNITS'
          DataPipeline = plItems
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plItems'
          mmHeight = 4191
          mmLeft = 145786
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object raCodeModule3: TraCodeModule
      object raProgramInfo6: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnPrint;'#13#10'begin'#13#10'    Variable1.Value := DBCal' +
          'c3.Value + plInvoiceDraftBill['#39'TAX'#39'];'#13#10'    '#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object procBillAddFee: TUniStoredProc
    StoredProcName = 'BILL_ADD_FEE'
    SQL.Strings = (
      'begin'
      '  BILL_ADD_FEE(:P_NMEMO, :P_NFEE);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 98
    Top = 553
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_NFEE'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_FEE'
  end
  object procBillAddFeesOnly: TUniStoredProc
    StoredProcName = 'BILL_ADD_FEES_ONLY'
    SQL.Strings = (
      'begin'
      '  BILL_ADD_FEES_ONLY(:P_NMEMO);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 173
    Top = 555
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_FEES_ONLY'
  end
  object plInvoiceDraftBill: TppDBPipeline
    DataSource = dsInvoiceDraftBill
    UserName = 'plInvoiceDraftBill'
    Left = 963
    Top = 160
  end
  object dsInvoiceDraftBill: TUniDataSource
    DataSet = qryInvoiceDraftBill
    Left = 897
    Top = 174
  end
  object pmForm: TPopupMenu
    Left = 64
    Top = 169
    object AuthoriseBill1: TMenuItem
      Bitmap.Data = {
        9E050000424D9E05000000000000360400002800000012000000120000000100
        0800000000006801000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A60033000000000033003300330033330000161616001C1C1C00222222002929
        2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
        CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
        00000033330000336600003399000033CC000033FF0000660000006633000066
        6600006699000066CC000066FF00009900000099330000996600009999000099
        CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
        660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
        FF00FF3300003333330033336600333399003333CC003333FF00336600003366
        330033666600336699003366CC003366FF003399000033993300339966003399
        99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
        FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
        6600660099006600CC006600FF00663300006633330066336600663399006633
        CC006633FF00666600006666330066666600666699006666CC00669900006699
        330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
        CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
        000099339900990099009900CC009900000099333300990066009933CC009900
        FF00996600009966330099336600996699009966CC009933FF00999933009999
        6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
        CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
        000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
        9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
        FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
        3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
        9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
        6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF000012FFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFF0000ECF112FFFFFFFFFFFF0000FFFFFFFFFFFF0000ECF1
        666612FFFFFFFFFF0000FFFFFFFFFF0000ECF16607076612FFFFFFFF0000FFFF
        FFFF0000ECF166070707EC6612FFFFFF0000FFFFFF0000ECF166070707ECECEC
        66FFFFFF0000FFFF0000ECF16607071212ECECEC66FFFFFF0000FF0000ECF166
        070712666612EC66FFFFFFFF0000FF12ECF16607070712ECEC6666B5B5FFFFFF
        0000FFFFF1EC07070707F107EC12666666AEFFFF0000FFFFFFEC0707070707F1
        AE66AEAEAE66AEFF0000FFFFFFFFEC07070707ECAEAEB5B5AEAE66FF0000FFFF
        FFFFFFEC0707ECFFAEB5B5B5B5AE66FF0000FFFFFFFFFFFFECECFFFFAEB5F1E2
        B5AE66FF0000FFFFFFFFFFFFFFFFFFFFB5AEE2E2B5AEB5FF0000FFFFFFFFFFFF
        FFFFFFFFFFB5AEAEAEB5FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      Caption = 'Authorise Bill'
      OnClick = AuthoriseBill1Click
    end
  end
  object OpenDialog: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 766
    Top = 279
  end
  object procBillAddSundry: TUniStoredProc
    StoredProcName = 'BILL_ADD_SUNDRY'
    SQL.Strings = (
      'begin'
      '  BILL_ADD_SUNDRY(:P_NMEMO, :P_NSUNDRY, :P_CREATED);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 573
    Top = 556
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_NSUNDRY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_SUNDRY'
  end
  object procBillAddSundryOnly: TUniStoredProc
    StoredProcName = 'BILL_ADD_SUND_ONLY'
    SQL.Strings = (
      'begin'
      '  BILL_ADD_SUND_ONLY(:P_NMEMO);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 811
    Top = 803
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_SUND_ONLY'
  end
  object procBillEditSundPercent: TUniStoredProc
    StoredProcName = 'BILL_EDIT_SUND_PERCENT'
    Connection = dmAxiom.uniInsight
    Left = 937
    Top = 745
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_EDIT_SUND_PERCENT'
  end
  object procbill_add_disb_percent: TUniStoredProc
    StoredProcName = 'bill_add_disb_percent'
    Connection = dmAxiom.uniInsight
    Left = 1057
    Top = 814
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'bill_add_disb_percent'
  end
  object qryFeeAmount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUM(AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.BILL' +
        '_RATE, 0), 0,'
      'NVL(a.tax, 0), NVL(a.amount, 0)),0,0,AMOUNT)) as TAXABLE_AMOUNT,'
      'SUM(NVL(A.TAX,0)) AS ITEMTAX ,'
      
        'SUM( DECODE(NVL(A.TAX,0),0,(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0)' +
        ')/100)), NVL(a.tax, 0)) ) AS TAX'
      'FROM FEE A,TAXRATE R'
      'WHERE'
      'NMATTER = :nmatter'
      'AND NMEMO = :nmemo'
      'AND A.TAXCODE = R.TAXCODE (+)'
      
        'AND TRUNC (created) >= r.commence and TRUNC(created) <= nvl(r.en' +
        'd_period,sysdate + 1000)')
    Left = 573
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object plSummaryBill: TppDBPipeline
    DataSource = dsSummaryBill
    UserName = 'plSummaryBill'
    Left = 1110
    Top = 32
    object plSummaryBillppField1: TppField
      FieldAlias = 'NMEMO'
      FieldName = 'NMEMO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object plSummaryBillppField2: TppField
      FieldAlias = 'NTRANS'
      FieldName = 'NTRANS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plSummaryBillppField3: TppField
      FieldAlias = 'GENERATED'
      FieldName = 'GENERATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plSummaryBillppField4: TppField
      FieldAlias = 'DISPATCHED'
      FieldName = 'DISPATCHED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plSummaryBillppField5: TppField
      FieldAlias = 'INTERIM'
      FieldName = 'INTERIM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plSummaryBillppField6: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
    object plSummaryBillppField7: TppField
      FieldAlias = 'FEES_FLAG'
      FieldName = 'FEES_FLAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object plSummaryBillppField8: TppField
      FieldAlias = 'DISB_FLAG'
      FieldName = 'DISB_FLAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object plSummaryBillppField9: TppField
      FieldAlias = 'ANTD_FLAG'
      FieldName = 'ANTD_FLAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object plSummaryBillppField10: TppField
      FieldAlias = 'SUND_FLAG'
      FieldName = 'SUND_FLAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object plSummaryBillppField11: TppField
      FieldAlias = 'LEGAL_AID_FLAG'
      FieldName = 'LEGAL_AID_FLAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object plSummaryBillppField12: TppField
      FieldAlias = 'ITEM_DATE_FLAG'
      FieldName = 'ITEM_DATE_FLAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object plSummaryBillppField13: TppField
      FieldAlias = 'BANK_ACCT'
      FieldName = 'BANK_ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object plSummaryBillppField14: TppField
      FieldAlias = 'BILL_TO'
      FieldName = 'BILL_TO'
      FieldLength = 85
      DisplayWidth = 85
      Position = 13
    end
    object plSummaryBillppField15: TppField
      FieldAlias = 'FORMAT_FILE'
      FieldName = 'FORMAT_FILE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 14
    end
    object plSummaryBillppField16: TppField
      FieldAlias = 'RV_TYPE'
      FieldName = 'RV_TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object plSummaryBillppField17: TppField
      FieldAlias = 'RV_NMEMO'
      FieldName = 'RV_NMEMO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 16
    end
    object plSummaryBillppField18: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object plSummaryBillppField19: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object plSummaryBillppField20: TppField
      FieldAlias = 'DATE_LAST_RECPT'
      FieldName = 'DATE_LAST_RECPT'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 19
    end
    object plSummaryBillppField21: TppField
      FieldAlias = 'FULLY_PAID'
      FieldName = 'FULLY_PAID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object plSummaryBillppField22: TppField
      FieldAlias = 'INV_NOTE'
      FieldName = 'INV_NOTE'
      FieldLength = 400
      DisplayWidth = 400
      Position = 21
    end
    object plSummaryBillppField23: TppField
      FieldAlias = 'NOWNER'
      FieldName = 'NOWNER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 22
    end
    object plSummaryBillppField24: TppField
      FieldAlias = 'EXPPAYMENT'
      FieldName = 'EXPPAYMENT'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 23
    end
    object plSummaryBillppField25: TppField
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 24
    end
    object plSummaryBillppField26: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 25
    end
    object plSummaryBillppField27: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object plSummaryBillppField28: TppField
      FieldAlias = 'BILLTEMPLATE'
      FieldName = 'BILLTEMPLATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object plSummaryBillppField29: TppField
      FieldAlias = 'CREDITTYPE'
      FieldName = 'CREDITTYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 28
    end
    object plSummaryBillppField30: TppField
      FieldAlias = 'NORECOVERY'
      FieldName = 'NORECOVERY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 29
    end
    object plSummaryBillppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESCALATION'
      FieldName = 'ESCALATION'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object plSummaryBillppField32: TppField
      FieldAlias = 'UPCRED_FLAG'
      FieldName = 'UPCRED_FLAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 31
    end
    object plSummaryBillppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEES'
      FieldName = 'FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object plSummaryBillppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISB'
      FieldName = 'DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object plSummaryBillppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTD'
      FieldName = 'ANTD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object plSummaryBillppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUND'
      FieldName = 'SUND'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object plSummaryBillppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object plSummaryBillppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTORS'
      FieldName = 'DEBTORS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object plSummaryBillppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEES_PAID'
      FieldName = 'FEES_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object plSummaryBillppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISB_PAID'
      FieldName = 'DISB_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object plSummaryBillppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUND_PAID'
      FieldName = 'SUND_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object plSummaryBillppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISB_CRDIT'
      FieldName = 'DISB_CRDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object plSummaryBillppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTD_CRDIT'
      FieldName = 'ANTD_CRDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object plSummaryBillppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object plSummaryBillppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEES_CRDIT'
      FieldName = 'FEES_CRDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object plSummaryBillppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX_PAID'
      FieldName = 'TAX_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object plSummaryBillppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX_CRDIT'
      FieldName = 'TAX_CRDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 46
    end
    object plSummaryBillppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESTAX'
      FieldName = 'FEESTAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object plSummaryBillppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBTAX'
      FieldName = 'DISBTAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
    object plSummaryBillppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDTAX'
      FieldName = 'SUNDTAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 49
    end
    object plSummaryBillppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESTAX_PAID'
      FieldName = 'FEESTAX_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 50
    end
    object plSummaryBillppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBTAX_PAID'
      FieldName = 'DISBTAX_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 51
    end
    object plSummaryBillppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDTAX_PAID'
      FieldName = 'SUNDTAX_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 52
    end
    object plSummaryBillppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTD_PAID'
      FieldName = 'ANTD_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 53
    end
    object plSummaryBillppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDTAX'
      FieldName = 'ANTDTAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 54
    end
    object plSummaryBillppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDTAX_PAID'
      FieldName = 'ANTDTAX_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object plSummaryBillppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCRED'
      FieldName = 'UPCRED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 56
    end
    object plSummaryBillppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCRED_PAID'
      FieldName = 'UPCRED_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 57
    end
    object plSummaryBillppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDTAX'
      FieldName = 'UPCREDTAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 58
    end
    object plSummaryBillppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDTAX_PAID'
      FieldName = 'UPCREDTAX_PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 59
    end
    object plSummaryBillppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISB_WOFF'
      FieldName = 'DISB_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 60
    end
    object plSummaryBillppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTD_WOFF'
      FieldName = 'ANTD_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 61
    end
    object plSummaryBillppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEES_WOFF'
      FieldName = 'FEES_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 62
    end
    object plSummaryBillppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCRED_WOFF'
      FieldName = 'UPCRED_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 63
    end
    object plSummaryBillppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUND_WOFF'
      FieldName = 'SUND_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 64
    end
    object plSummaryBillppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBTAX_WOFF'
      FieldName = 'DISBTAX_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 65
    end
    object plSummaryBillppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDTAX_WOFF'
      FieldName = 'ANTDTAX_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 66
    end
    object plSummaryBillppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'FESSTAX_WOFF'
      FieldName = 'FESSTAX_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 67
    end
    object plSummaryBillppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDTAX_WOFF'
      FieldName = 'UPCREDTAX_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 68
    end
    object plSummaryBillppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDTAX_WOFF'
      FieldName = 'SUNDTAX_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 69
    end
    object plSummaryBillppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX_WOFF'
      FieldName = 'TAX_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 70
    end
    object plSummaryBillppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESTAX_WOFF'
      FieldName = 'FEESTAX_WOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 71
    end
    object plSummaryBillppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESTAXFREE'
      FieldName = 'FEESTAXFREE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 72
    end
    object plSummaryBillppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBTAXFREE'
      FieldName = 'DISBTAXFREE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 73
    end
    object plSummaryBillppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDTAXFREE'
      FieldName = 'SUNDTAXFREE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 74
    end
    object plSummaryBillppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDTAXFREE'
      FieldName = 'ANTDTAXFREE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 75
    end
    object plSummaryBillppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDTAXFREE'
      FieldName = 'UPCREDTAXFREE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 76
    end
    object plSummaryBillppField78: TppField
      FieldAlias = 'MODBY'
      FieldName = 'MODBY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 77
    end
    object plSummaryBillppField79: TppField
      FieldAlias = 'MOD_DATE'
      FieldName = 'MOD_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 78
    end
    object plSummaryBillppField80: TppField
      FieldAlias = 'MOD_DESCR'
      FieldName = 'MOD_DESCR'
      FieldLength = 100
      DisplayWidth = 100
      Position = 79
    end
    object plSummaryBillppField81: TppField
      FieldAlias = 'DRAFT_BILL_NO'
      FieldName = 'DRAFT_BILL_NO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 80
    end
    object plSummaryBillppField82: TppField
      FieldAlias = 'NBILL_TO'
      FieldName = 'NBILL_TO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 81
    end
    object plSummaryBillppField83: TppField
      FieldAlias = 'AUTHORISED'
      FieldName = 'AUTHORISED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 82
    end
    object plSummaryBillppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'OWING'
      FieldName = 'OWING'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 83
    end
    object plSummaryBillppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 84
    end
    object plSummaryBillppField86: TppField
      FieldAlias = 'PRIVATE'
      FieldName = 'PRIVATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 85
    end
    object plSummaryBillppField87: TppField
      FieldAlias = 'SPLIT_BILL'
      FieldName = 'SPLIT_BILL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 86
    end
    object plSummaryBillppField88: TppField
      FieldAlias = 'NMASTER'
      FieldName = 'NMASTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 87
    end
    object plSummaryBillppField89: TppField
      FieldAlias = 'BPAY_REFERENCE'
      FieldName = 'BPAY_REFERENCE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 88
    end
    object plSummaryBillppField90: TppField
      FieldAlias = 'REQUESTED_BY'
      FieldName = 'REQUESTED_BY'
      FieldLength = 3
      DisplayWidth = 3
      Position = 89
    end
    object plSummaryBillppField91: TppField
      FieldAlias = 'SYSTEMDATE'
      FieldName = 'SYSTEMDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 90
    end
    object plSummaryBillppField92: TppField
      FieldAlias = 'ASSESSED_BILL'
      FieldName = 'ASSESSED_BILL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 91
    end
    object plSummaryBillppField93: TppField
      FieldAlias = 'TAKE_ON'
      FieldName = 'TAKE_ON'
      FieldLength = 1
      DisplayWidth = 1
      Position = 92
    end
    object plSummaryBillppField94: TppField
      FieldAlias = 'PROFORMA'
      FieldName = 'PROFORMA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 93
    end
    object plSummaryBillppField95: TppField
      FieldAlias = 'MOD_BY'
      FieldName = 'MOD_BY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 94
    end
    object plSummaryBillppField96: TppField
      FieldAlias = 'INVOICE_COPY'
      FieldName = 'INVOICE_COPY'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object plSummaryBillppField97: TppField
      FieldAlias = 'INVOICE_COPY_EXT'
      FieldName = 'INVOICE_COPY_EXT'
      FieldLength = 5
      DisplayWidth = 5
      Position = 96
    end
    object plSummaryBillppField98: TppField
      FieldAlias = 'DATE_EMAILED'
      FieldName = 'DATE_EMAILED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 97
    end
    object plSummaryBillppField99: TppField
      FieldAlias = 'PATH'
      FieldName = 'PATH'
      FieldLength = 255
      DisplayWidth = 255
      Position = 98
    end
    object plSummaryBillppField100: TppField
      FieldAlias = 'CREATEDBY'
      FieldName = 'CREATEDBY'
      FieldLength = 20
      DisplayWidth = 20
      Position = 99
    end
    object plSummaryBillppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORIGINAL_TOTAL'
      FieldName = 'ORIGINAL_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 100
    end
    object plSummaryBillppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_EXGST'
      FieldName = 'TOTAL_EXGST'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 101
    end
    object plSummaryBillppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISCOUNT'
      FieldName = 'DISCOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 102
    end
    object plSummaryBillppField104: TppField
      FieldAlias = 'REVERSIBLE'
      FieldName = 'REVERSIBLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 103
    end
    object plSummaryBillppField105: TppField
      FieldAlias = 'MASTER_BILL'
      FieldName = 'MASTER_BILL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object plSummaryBillppField106: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISCOUNT_GST'
      FieldName = 'DISCOUNT_GST'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 105
    end
    object plSummaryBillppField107: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 106
    end
  end
  object dsSummaryBill: TUniDataSource
    DataSet = qrySummaryBill
    Left = 1051
    Top = 34
  end
  object procUnprocessedTime: TUniStoredProc
    StoredProcName = 'GETUNPROCESSEDTIME'
    Connection = dmAxiom.uniInsight
    Left = 1082
    Top = 162
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'MATTERNO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'GETUNPROCESSEDTIME'
  end
  object procBillDiscReverse: TUniStoredProc
    StoredProcName = 'bill_discount_reverse'
    Connection = dmAxiom.uniInsight
    Left = 455
    Top = 557
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_RVDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_WHO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'bill_discount_reverse'
  end
  object qryUpdateFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'update fee set nmatter = :nmatter, fileid = :fileid, nclient = :' +
        'nclient, nmemo = null'
      'where'
      'nfee = :nfee')
    Left = 338
    Top = 441
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nfee'
        Value = nil
      end>
  end
  object qryGetBillTemplate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select billtemplate, item_bill'
      'from'
      'matter, billtemplate'
      'where nmatter = :nmatter'
      'and matter.billtemplate = billtemplate.code')
    Left = 102
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object procBillAddItemFees: TUniStoredProc
    StoredProcName = 'BILL_ADD_ITEMFEES'
    SQL.Strings = (
      'begin'
      '  BILL_ADD_ITEMFEES(:P_NMEMO, :P_CREATED, :P_MASTER);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 268
    Top = 550
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_MASTER'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_ITEMFEES'
  end
  object qryFeeItems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 0 as type, '
      '      trunc(FEE.CREATED) CREATED, '
      #9'  DECODE(FEE.PRIVATE,'#39'Y'#39','#39'(P) '#39','#39#39') || FEE.DESCR as DESCR, '
      #9'  FEE.TASK_AMOUNT as amount, '
      #9'  FEE.AUTHOR, '
      #9'  FEE.NFEE AS UniqueID, '
      #9'  FEE.TAXCODE,'
      '  DECODE('
      '    NVL(fee.tax,0),'
      '    0,'
      '    DECODE('
      '      fee.billed,'#39'Y'#39','
      '      fee.task_amount * .1,'
      '      ROUND(fee.task_amount * ABS(r.rate)) / 100'
      '    ),'
      '    fee.task_amount * .1'
      '  ) AS tax,'
      
        'FEE.PRIVATE, FEE.FILEID as PAYEE, null as APPROVAL, units,task, ' +
        'nfee as uniqueid, 0 as unbilled'
      'FROM FEE,TAXRATE R '
      'WHERE'
      'NMEMO = :P_Invoice'
      'AND FEE.TAXCODE = R.TAXCODE (+)'
      
        'AND TRUNC (created) >= r.commence and TRUNC(created) <= nvl(r.en' +
        'd_period,sysdate + 1000)'
      'AND BILLTYPE = '#39'Billable'#39)
    Options.StrictUpdate = False
    Left = 1104
    Top = 279
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
        Value = nil
      end>
  end
  object qrySummaryBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT M.*, M.ROWID '
      'FROM NMEMO M '
      'WHERE M.NMEMO = :NMEMO')
    Left = 967
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object procBillCreate: TUniStoredProc
    StoredProcName = 'BILL_CREATE'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := BILL_CREATE(:P_ENTITY, :P_NMATTER, :P_ADDFEES, :P_A' +
        'DDDISB, :P_ADDANTD, :P_ADDSUND, :P_ADDUPCRED, :P_ADDFEESUNDRIES,' +
        ' :P_ADDDISBSUNDRIES, :P_BILLTEMPLATE, :P_CREATED, :P_ADDSERVICEF' +
        'EE, :P_CREATEDBY);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 967
    Top = 527
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_ENTITY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_NMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDFEES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDDISB'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDANTD'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDSUND'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDUPCRED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDFEESUNDRIES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDDISBSUNDRIES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_BILLTEMPLATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDSERVICEFEE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_CREATEDBY'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_CREATE'
  end
  object procBillAddSingleDisb: TUniStoredProc
    StoredProcName = 'BILL_ADD_DISB_IND'
    SQL.Strings = (
      'begin'
      '  BILL_ADD_DISB_IND(:P_NMEMO, :P_CREATED);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 660
    Top = 693
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_ADD_DISB_IND'
  end
  object sqlUnbilledTransactions: TUniSQL
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 0 AS TYPE, TRUNC (fee.created) created,'
      
        '               DECODE (fee.PRIVATE, '#39'Y'#39', '#39'(P) '#39', '#39#39') || fee.desc' +
        'r AS descr,'
      
        '               fee.amount, fee.author, fee.nfee AS uniqueid, fee' +
        '.taxcode,'
      '               DECODE (NVL (fee.tax, 0),'
      '                       0, DECODE (fee.billed,'
      '                                  '#39'Y'#39', fee.tax,'
      
        '                                  ROUND (fee.amount * ABS (r.rat' +
        'e)) / 100'
      '                                 ),'
      '                       fee.tax'
      '                      ) AS tax,'
      
        '               fee.PRIVATE, fee.fileid AS payee, NULL AS approva' +
        'l, units,'
      '               task, nfee AS uniqueid, 99999 AS unbilled'
      '          FROM fee, taxrate r'
      '         WHERE nmatter = :p_matter'
      '           AND nmemo IS NULL'
      '           AND fee.taxcode = r.taxcode(+)'
      '           AND TRUNC (created) >= r.commence'
      
        '           AND TRUNC (created) <= NVL (r.end_period, SYSDATE + 1' +
        '000)'
      '           AND billtype = '#39'Billable'#39
      '        UNION ALL'
      '        SELECT 1 AS TYPE, alloc.created, alloc.descr,'
      
        '               (alloc.billed_amount * -1) AS amount, alloc.refno' +
        ' AS author,'
      '               alloc.nalloc AS uniqueid, alloc.taxcode,'
      '                 DECODE'
      '                       (NVL (alloc.billed_tax_amount, 0),'
      '                        0, DECODE (alloc.billed,'
      '                                   '#39'Y'#39', alloc.billed_tax_amount,'
      
        '                                   DECODE ((r.rate - r.bill_rate' +
        '),'
      
        '                                           '#39'0'#39', alloc.billed_tax' +
        '_amount,'
      
        '                                             ROUND (  (alloc.bil' +
        'led_amount)'
      
        '                                                    * ABS (r.rat' +
        'e)'
      '                                                   )'
      '                                           / 100'
      '                                          )'
      '                                  ),'
      '                        alloc.billed_tax_amount'
      '                       )'
      '               * -1 AS tax,'
      
        '               subbills.debtor_name, alloc.payer AS payee, alloc' +
        '.approval,'
      '               0 AS units, NULL AS task, nalloc AS uniqueid,'
      '               99999 AS unbilled'
      '          FROM alloc, taxrate r, subbills'
      '         WHERE alloc.nmatter = :p_matter'
      '           AND alloc.nmemo IS NULL'
      '           AND (NVL (nreceipt, 0) = 0'
      '                OR (NVL (nreceipt, 0) > 0 AND TYPE = '#39'DR'#39')'
      '               )'
      '           AND ninvoice IS NULL'
      '           AND alloc.taxcode = r.taxcode(+)'
      '           AND TRUNC (alloc.created) >= r.commence'
      
        '           AND TRUNC (alloc.created) <= NVL (r.end_period, SYSDA' +
        'TE + 1000)'
      '           AND alloc.nmemo = subbills.nmemo(+)'
      '           AND alloc.nsubbill = subbills.nsubbill(+)'
      '        UNION ALL'
      '        SELECT 4 AS TYPE, created, descr, amount * -1 AS amount,'
      
        '               refno AS author, nalloc AS uniqueid, taxcode, tax' +
        ' * -1 AS tax,'
      
        '               NULL AS PRIVATE, payer AS payee, approval, 0 AS u' +
        'nits,'
      
        '               NULL AS task, nalloc AS uniqueid, 99999 AS unbill' +
        'ed'
      '          FROM alloc'
      
        '         WHERE nmatter = :p_matter AND nmemo IS NULL AND ninvoic' +
        'e IS NOT NULL'
      '        UNION ALL'
      '        SELECT 2 AS TYPE, reqdate, descr, amount, author,'
      
        '               ncheqreq AS uniqueid, taxcode, tax, NULL AS PRIVA' +
        'TE, payee,'
      
        '               NULL, 0 AS units, NULL AS task, ncheqreq AS uniqu' +
        'eid,'
      '               99999 AS unbilled'
      '          FROM cheqreq'
      '         WHERE nmatter = :p_matter and nmemo IS NULL'
      '        UNION ALL'
      
        '        SELECT 3 AS TYPE, created, descr, amount, TYPE AS author' +
        ','
      
        '               nsundry AS uniqueid, taxcode, tax, '#39'N'#39' AS PRIVATE' +
        ','
      
        '               NULL AS payee, NULL, units, NULL AS task, nsundry' +
        ' AS uniqueid,'
      '               99999 AS unbilled'
      '          FROM sundry'
      '         WHERE nmatter = :p_matter AND nmemo IS NULL')
    Left = 438
    Top = 674
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_matter'
        Value = nil
      end>
  end
  object qryBillNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select debtornotes.created, debtornotes.createdby, debtornotes.n' +
        'ote, debtornotes.rowid '
      'from '
      ' debtornotes'
      'where'
      ' nmemo = :nmemo')
    Left = 786
    Top = 371
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = Null
      end>
  end
  object dsBillNotes: TUniDataSource
    DataSet = qryBillNotes
    Left = 901
    Top = 375
  end
  object dsInvoice: TUniDataSource
    DataSet = qryInvoice
    Left = 533
    Top = 384
  end
  object qryCheqReqReverse: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '')
    Left = 623
    Top = 136
  end
end
