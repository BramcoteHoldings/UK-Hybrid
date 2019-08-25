object frmWriteOff: TfrmWriteOff
  Left = 568
  Top = 155
  Caption = 'Write Off'
  ClientHeight = 526
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object rgledgertype: TRadioGroup
    Left = 734
    Top = 273
    Width = 126
    Height = 65
    Caption = 'Disb Chart Type'
    ItemIndex = 0
    Items.Strings = (
      'Disb W/O'
      'Unrecovered Disb')
    TabOrder = 0
    Visible = False
    OnClick = rgledgertypeClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 507
    Width = 614
    Height = 19
    Panels = <>
    ParentShowHint = False
    ShowHint = True
    SimplePanel = True
    ExplicitWidth = 546
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 24
    Width = 614
    Height = 483
    Align = alClient
    ParentBackground = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Transparent = True
    AutoSize = True
    ExplicitWidth = 546
    DesignSize = (
      614
      483)
    object lblClient: TLabel
      Left = 196
      Top = 12
      Width = 147
      Height = 24
      AutoSize = False
      ShowAccelChar = False
      WordWrap = True
    end
    object lblMatterDesc: TLabel
      Left = 12
      Top = 44
      Width = 587
      Height = 17
      AutoSize = False
      ShowAccelChar = False
    end
    object lblAuthor: TLabel
      Left = 175
      Top = 322
      Width = 69
      Height = 15
      Caption = '                       '
      ShowAccelChar = False
    end
    object lblDept: TLabel
      Left = 175
      Top = 352
      Width = 69
      Height = 15
      Caption = '                       '
      ShowAccelChar = False
    end
    object Label10: TLabel
      Left = 119
      Top = 102
      Width = 52
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Amount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 178
      Top = 102
      Width = 61
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tax'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 332
      Top = 102
      Width = 95
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'W/O CR Chart'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 434
      Top = 102
      Width = 91
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'W/O DR Chart'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblfileid: TLabel
      Left = 499
      Top = 12
      Width = 100
      Height = 25
      AutoSize = False
    end
    object Label16: TLabel
      Left = 246
      Top = 102
      Width = 79
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Totals'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDispatched: TLabel
      Left = 350
      Top = 12
      Width = 142
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      ShowAccelChar = False
    end
    object mmoDesc: TMemo
      Left = 109
      Top = 380
      Width = 197
      Height = 54
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 35
    end
    object cbAuthor: TComboBox
      Left = 107
      Top = 318
      Width = 61
      Height = 23
      Style = csDropDownList
      Sorted = True
      TabOrder = 32
      OnClick = cbAuthorClick
    end
    object cbDept: TComboBox
      Left = 107
      Top = 348
      Width = 61
      Height = 23
      Sorted = True
      TabOrder = 33
      OnClick = cbDeptClick
    end
    object chkPrivate: TCheckBox
      Left = 315
      Top = 388
      Width = 143
      Height = 16
      Caption = 'Private?'
      Checked = True
      State = cbChecked
      TabOrder = 36
    end
    object neFees: TNumberEdit
      Left = 109
      Top = 130
      Width = 61
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 3
      OnChange = neFeesChange
      OnExit = neEditableAmountsExit
    end
    object neDisb: TNumberEdit
      Left = 109
      Top = 162
      Width = 61
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 8
      OnExit = neEditableAmountsExit
    end
    object neSund: TNumberEdit
      Left = 109
      Top = 258
      Width = 61
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 23
      OnChange = neSundChange
      OnExit = neEditableAmountsExit
    end
    object neAntD: TNumberEdit
      Left = 109
      Top = 226
      Width = 61
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 18
      OnExit = neEditableAmountsExit
    end
    object neFeesTax: TNumberEdit
      Left = 181
      Top = 130
      Width = 60
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 4
      OnExit = neEditableAmountsExit
    end
    object neDisbTax: TNumberEdit
      Left = 181
      Top = 162
      Width = 60
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 9
      OnExit = neEditableAmountsExit
    end
    object neSundTax: TNumberEdit
      Left = 181
      Top = 258
      Width = 60
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 24
      OnExit = neEditableAmountsExit
    end
    object neAntdTax: TNumberEdit
      Left = 181
      Top = 226
      Width = 60
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 19
      OnExit = neEditableAmountsExit
    end
    object neUpCred: TNumberEdit
      Left = 109
      Top = 194
      Width = 61
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 13
      OnExit = neEditableAmountsExit
    end
    object neUpCredTax: TNumberEdit
      Left = 181
      Top = 194
      Width = 60
      Height = 21
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
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
      FontBetween.Height = -13
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = True
      TabOrder = 14
      OnExit = neEditableAmountsExit
    end
    object edAdjust: TEdit
      Left = 317
      Top = 350
      Width = 90
      Height = 19
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 34
    end
    object edDisbWOCR: TEdit
      Left = 335
      Top = 162
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 11
    end
    object edUpCredWOCR: TEdit
      Left = 335
      Top = 194
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 16
    end
    object edAntdWOCR: TEdit
      Left = 335
      Top = 226
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 21
    end
    object edSundWOCR: TEdit
      Left = 335
      Top = 258
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 26
    end
    object edFeeWOCR: TEdit
      Left = 335
      Top = 130
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 6
    end
    object edSundWODR: TEdit
      Left = 436
      Top = 258
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 27
    end
    object edAntdWODR: TEdit
      Left = 436
      Top = 226
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 22
    end
    object edUpCredWODR: TEdit
      Left = 436
      Top = 194
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 17
    end
    object edDisbWODR: TEdit
      Left = 436
      Top = 162
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 12
    end
    object edFeeWODR: TEdit
      Left = 436
      Top = 130
      Width = 90
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 7
    end
    object neTotalFees: TNumberEdit
      Left = 252
      Top = 130
      Width = 72
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      Color = clBtnFace
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -12
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = [fsBold]
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
      NoZero = True
      TabOrder = 5
      OnExit = neEditableAmountsExit
    end
    object neTotalDisbs: TNumberEdit
      Left = 252
      Top = 162
      Width = 72
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      Color = clBtnFace
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -12
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = [fsBold]
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
      NoZero = True
      TabOrder = 10
      OnExit = neEditableAmountsExit
    end
    object neTotalSundries: TNumberEdit
      Left = 252
      Top = 258
      Width = 72
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      Color = clBtnFace
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -12
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = [fsBold]
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
      NoZero = True
      TabOrder = 25
      OnExit = neEditableAmountsExit
    end
    object neTotalAntDisbs: TNumberEdit
      Left = 252
      Top = 226
      Width = 72
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      Color = clBtnFace
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -12
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = [fsBold]
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
      NoZero = True
      TabOrder = 20
      OnExit = neEditableAmountsExit
    end
    object neTotalUPCreds: TNumberEdit
      Left = 252
      Top = 194
      Width = 72
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      Color = clBtnFace
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -12
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = [fsBold]
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
      NoZero = True
      TabOrder = 15
      OnExit = neEditableAmountsExit
    end
    object neTotalofTotals: TNumberEdit
      Left = 251
      Top = 290
      Width = 74
      Height = 17
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      Color = clBtnFace
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -12
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = [fsBold]
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
      NoZero = True
      TabOrder = 29
      OnExit = neEditableAmountsExit
    end
    object cxDBLSubBill: TcxLookupComboBox
      Left = 107
      Top = 68
      AutoSize = False
      Properties.KeyFieldNames = 'NSUBBILL'
      Properties.ListColumns = <
        item
          FieldName = 'DEBTOR_NAME'
        end>
      Properties.ListSource = dsSubBill
      Properties.OnChange = cxDBLSubBillPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 1
      Height = 23
      Width = 142
    end
    object chkNoExit: TcxCheckBox
      Left = 12
      Top = 443
      Anchors = [akLeft, akBottom]
      Caption = '&Keep form open after posting?'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 38
      Transparent = True
    end
    object beBillNo: TcxButtonEdit
      Left = 107
      Top = 12
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
            FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Properties.OnValidate = cxButtonEdit1PropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 82
    end
    object dtpCreated: TEnforceCustomDateEdit
      Left = 107
      Top = 288
      AutoSize = False
      EditValue = 43702.3841928819d
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 28
      DataSet = dmAxiom.qryEntity
      Field = 'LOCKDATE'
      Height = 23
      Width = 135
    end
    object cbNoDistribute: TCheckBox
      Left = 315
      Top = 411
      Width = 143
      Height = 15
      Hint = 
        'Selecting this means that the Fee write-off will be based on the' +
        ' distribution at time of billing.'
      Caption = 'Do NOT distribute fees.'
      TabOrder = 37
    end
    object chkBadDebtWO: TcxCheckBox
      Left = 12
      Top = 98
      Caption = 'Bad Debt W/O'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
    end
    object edBadDebtWOCR: TcxTextEdit
      Left = 334
      Top = 288
      AutoSize = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 30
      Height = 23
      Width = 92
    end
    object edBadDebtWODR: TcxTextEdit
      Left = 433
      Top = 288
      AutoSize = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 31
      Height = 23
      Width = 93
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Bill'
      Control = beBillNo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblClient
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblDispatched
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 142
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblMatterDesc
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 516
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Subbill'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Width = 237
      Control = cxDBLSubBill
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Fees'
      Control = neFees
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neFeesTax
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neTotalFees
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edFeeWOCR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edFeeWODR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 4
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      AllowRemove = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Locked = True
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Label10
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Label11
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Label16
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Label13
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Label15
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Disbursements'
      Control = neDisb
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neDisbTax
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neTotalDisbs
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edDisbWOCR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 3
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edDisbWODR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 4
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Unpaid Creditors'
      Control = neUpCred
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neUpCredTax
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neTotalUPCreds
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      Index = 2
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      CaptionOptions.WordWrap = True
      Control = edUpCredWOCR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 3
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edUpCredWODR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 4
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Hint = 'Make Cheque Req payable once bill is written off.'
      CaptionOptions.Text = 'Cheq Reqs'
      Control = neAntD
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      Index = 0
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neAntdTax
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      Index = 1
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neTotalAntDisbs
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      Index = 2
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edAntdWOCR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 3
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edAntdWODR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 4
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Sundries'
      Control = neSund
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      Index = 0
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neSundTax
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      Index = 1
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neTotalSundries
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      Index = 2
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edSundWOCR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 3
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edSundWODR
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 4
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblfileid
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Date'
      Control = dtpCreated
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neTotalofTotals
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 74
      Index = 1
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Author'
      Control = cbAuthor
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblAuthor
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'Department'
      Control = cbDept
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblDept
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = mmoDesc
      ControlOptions.OriginalHeight = 54
      ControlOptions.OriginalWidth = 197
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 12
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkPrivate
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbNoDistribute
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'GST Adjust'
      Control = edAdjust
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      Index = 2
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkNoExit
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 184
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkBadDebtWO
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem49: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edBadDebtWOCR
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edBadDebtWODR
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object qryFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO FEE (CREATED, DESCR, MINS, AUTHOR, PARTNER, RATE,'
      '  AMOUNT, NMATTER, BILLED, BANK_ACCT,'
      
        '  DEPT, EMP_TYPE, UNITS, INVOICEDATE, NCLIENT, FILEID, TAX, TAXC' +
        'ODE,'
      '  PRIVATE, TYPE, NMEMO, EXCL_FROM_BILL)'
      'VALUES'
      '  (:CREATED, :DESCR, 0, :AUTHOR, :PARTNER, 0,'
      '  :AMOUNT, :NMATTER, '#39'Y'#39', :BANK_ACCT,'
      
        '  :DEPT, :EMP_TYPE, 0, :INVOICEDATE, :NCLIENT, :FILEID, :TAX, :T' +
        'AXCODE,'
      '  :PRIVATE, '#39'wo'#39', :NMEMO, '#39'Y'#39')')
    Left = 8
    Top = 372
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
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
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK_ACCT'
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
        Name = 'INVOICEDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIVATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NMATTER, FILEID, TITLE, SHORTDESCR, NCLIENT, PARTNER, ROW' +
        'ID,AUTHOR FROM MATTER WHERE FILEID = :FILEID')
    Left = 74
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryAlloc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (AMOUNT, DESCR, NCHEQUE, APPROVAL, NRECEIPT,'
      '  CREATED, ACCT, NMATTER, REFNO, TYPE, NCLIENT, NJOURNAL,'
      '  PAYER, TRUST, BILLED, FILEID, NALLOC, NMEMO,'
      '  CLIENT_NAME, SYSTEM_DATE, MATTER_DESC, PRIVATE,'
      '  FEE, OUTLAY, SUNDRY, TAX, TAXCODE, DISB, UPCRED, ANTD)'
      'VALUES'
      '  (:AMOUNT, :DESCR, null, :APPROVAL, null,'
      '  :CREATED, :ACCT, :NMATTER, :REFNO, :TYPE, :NCLIENT, :NJOURNAL,'
      '  :PAYER, '#39'G'#39', '#39'Y'#39', :FILEID, :NALLOC, :NMEMO,'
      '  :CLIENT_NAME, SysDate, :MATTER_DESC, :PRIVATE,'
      '  :FEE, :OUTLAY, :SUNDRY, :TAX, :TAXCODE, :DISB, :UPCRED, :ANTD)')
    Left = 40
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APPROVAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLIENT_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATTER_DESC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIVATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OUTLAY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD'
        Value = nil
      end>
  end
  object qryJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO JOURNAL'
      '  (CREATED, ACCT, AMOUNT, NJOURNAL,'
      '  REASON, TYPE, TRUST, SYSTEM_DATE, NMEMO, REFNO, ENTITY)'
      'VALUES'
      '  (:CREATED, :ACCT, :AMOUNT, :NJOURNAL,'
      '  :REASON, :TYPE, '#39'G'#39', SysDate, :NMEMO, :REFNO, :ENTITY)')
    Left = 80
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REASON'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object qrySundry: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRY'
      ' (ACCT, CREATED, AMOUNT, BILLED, DESCR, NMATTER, NCLIENT,'
      '  TYPE, PRIVATE, FILEID, TAX, TAXCODE, NMEMO)'
      'VALUES'
      ' (:ACCT, :CREATED, :AMOUNT, '#39'Y'#39', :DESCR, :NMATTER, :NCLIENT,'
      '  '#39'wo'#39', :PRIVATE, :FILEID, :TAX, :TAXCODE, :NMEMO)')
    Left = 112
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIVATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM NMEMO WHERE NMEMO = :NMEMO')
    ReadOnly = True
    Left = 393
    Top = 71
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryBillUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO SET'
      '  FEES_WOFF=FEES_WOFF+:FEES_WOFF,'
      '  DISB_WOFF=DISB_WOFF+:DISB_WOFF,'
      '  ANTD_WOFF=ANTD_WOFF+:ANTD_WOFF,'
      '  UPCRED_WOFF=UPCRED_WOFF+:UPCRED_WOFF,'
      '  SUND_WOFF=SUND_WOFF+:SUND_WOFF,'
      '  FEESTAX_WOFF=FEESTAX_WOFF+:FEESTAX_WOFF,'
      '  DISBTAX_WOFF=DISBTAX_WOFF+:DISBTAX_WOFF,'
      '  UPCREDTAX_WOFF=UPCREDTAX_WOFF+:UPCREDTAX_WOFF,'
      '  ANTDTAX_WOFF=ANTDTAX_WOFF+:ANTDTAX_WOFF,'
      '  SUNDTAX_WOFF=SUNDTAX_WOFF+:SUNDTAX_WOFF,'
      
        '  TAX_WOFF=TAX_WOFF+:FEESTAX_WOFF+:DISBTAX_WOFF+:UPCREDTAX_WOFF+' +
        ':ANTDTAX_WOFF+:SUNDTAX_WOFF'
      'WHERE NMEMO = :NMEMO')
    Left = 20
    Top = 332
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FEES_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEESTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISBTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCREDTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTDTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryCheqReqInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO CHEQREQ'
      '  (FILEID, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK,'
      '   HELD, GROUPABLE, ANTICIPATED, BILLED, NCHEQREQ,'
      '   CONVERTED, TRUST, PRIVATE, NMATTER)'
      'VALUES'
      '  (:FILEID, :PAYEE, :DESCR, :AMOUNT, :AUTHOR, :REQDATE, :BANK,'
      '   '#39'N'#39', '#39'N'#39', '#39'Y'#39', '#39'Y'#39', :NCHEQREQ,'
      '   '#39'Y'#39', '#39'G'#39', '#39'N'#39', :NMATTER)')
    Left = 554
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REQDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
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
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 323
    Top = 371
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      24
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 72
      FloatClientHeight = 44
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Write Off'
      Category = 0
      Hint = 'Write Off'
      Visible = ivAlways
      ImageIndex = 12
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C650054726173683B649A356D0000
        058249444154785EB5575D6C1455143EBB33BBB3DDD9DDB285EEB65BA4144BCA
        4F15A595A0183118230F18F0A5D13749247DF13721461E08C11049F0C1C4F862
        4479F241A209C460484589BE1848891149ACB6C5D2A6DBDA6E7FF6A7BB3B33F7
        C773EFCE74BAB4DD2EAD9EE624F7E4DC7CF3CD77CE9CD3F5C012C6392F8B3D68
        CE51C47D7D7D7A7D7DBD677A7ADA686D6DB530C1EC7BF0A0B68840474707F4F6
        F68A604912C7DF3BF782A6F93FD7B440C2B22C608CA10BC27C8C527AF4DC07C7
        7B1083C33276EBD6ADB2D80B551A4713F71555FD6C77C7AE44E7EE9DD0D9D12E
        7DCF138F40FBA33B1ABD8AF742D598D513701578FDEDD30782BABEF1DED0305C
        FCEAC291B3674EECED7EED95C7DE7AA3FBD93BBFF7418DAE37E29DE7F02D3DFF
        350179171F7E6AD7AE1DE0F7FB61DFBE67D2C78E1D1BD9BF7FFF50EDBAE85DC6
        28D4C7E3A0056A4E3E08AE7A7F229D4E97D5FD9D77CF3EAF28CA8553673E49EC
        7EBC1D620DF540B0F6C3C323D7D3E9023CBCED49D8D2B617628D718837C4209F
        CD3E7DFCC487C4EE89573F3A77E27BA727107B6502838383F729E439BFF7A93D
        89E64D1BC1E75364A279F32688373640D1B0C022143867E8206DDBCEEDD22727
        261A6FFF7AFB3C00B460535309E6F5AEF815C87B2F76BDF9755322F652DBD6CD
        108FD541580F42281404EC7E09601826E47279C8CD15C0304DA0541058BAF1B3
        78EFCFFE21184D4E7CF3EDC58FBB30C12A12F0A31D3CDC6D1C3A720882410DEA
        6A43B03E1A81485810F049C68410281896246259142873311907A08442D1B420
        9F2F420EDDC0BB572E5F81AB973FD54CB48A25C0B2AB1C01A7663290C92990CD
        96DE747D1D92402514C523A5CFCE1530578042D100935020E894525484806959
        5295858698121B83CA045455551867089E030FD62C939D433269F08DA8A02AA5
        1A1204B72C02263A2554CACFA1B221A6C4360CA3721362A37804DBDF6EDE003C
        62E3F92010D020A0F90500805D8222CA5FC4B72F4D43BE4C0F2CC65EF12B40A3
        3F5FFB723BB642DBC123472FB56DDB0A89F87A59FBB97C49BD75B541AC6F0126
        A63252FA0D75614964269D97F9D886DA529CC9C340FF5DB87AE98BC394D2BFB0
        0474450278C944A9C6D02DCD178470380ACDCD2D0868C2F83FD3206CE34309EC
        8B39285849A946CB96162814F240EE8D8B34C65BE663CD1F04B43BA8E4149230
        579C84B1588C689A96C3E13385835FF64130A8A307C1A328D29D187332D6F510
        E09414E745B1D7AB0835A604A6C0AEA6047C6C6C8C363434582549BCA0FA5460
        9C0A799C46152E731C38E67DA05A3E3CC9FCA2389FCF5B89448256318A5D4305
        B85CB594CF0F0CCE164E0F8FC84977CC3DBBB1C040E355EF82818101178031F9
        6DDB08F6D981E33276F2E0E6CB62C47071AB57C025402873E8CF0F176E3BE65C
        026EBE2C1618B63D3801CE283074E020870D59F8865C102C1FC394397937E66E
        7E950A547800E6CA08B86737666B25C0C8028989047346AFCC315776F7ECC66B
        2740A89CF5D229256ED22E0925159B706D0428151273E77960952B2073D4DD01
        CEDDB278D50492C924E78CD9DBCE6E428BD804240B9963AC7209F8DA14287539
        B7FF2C5B6219D94D46E9FFD8845C0270C0D12CEAED3C0CE371B98A9D353C9A4C
        82699ACE4A2E8BD7A6006319542172EDFA0D50550542E15A39867FFCE9A65CC3
        5A8D2EE77DCF0FBF48003D14C1BC1B0702418131BD5A02DC2C16BE4BA7522F47
        6331B11B80D923D01FD041A1542E230F30A8D1C3F6DE92CB753E4EA726C1340A
        3D026B3504E8C8F01FEF2BAAD2399B9A685514AFF36FB5ACAB33669D4F742923
        C4EAFF7BF0F66981B52A023353C3C313E3830770F7AF8B46A3FE40202019148B
        4586BF8CC9ECEC2CC35DCFB1DE4B31A0E819F4994A042AFE3CEFEAEA52262727
        7D9148C4D7D4D4A42211C5DEEF746868888E8E8ED2542AC5C527BB9C8AE8047D
        D94EFC17078485CF67E8554F0000000049454E44AE426082}
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
    end
    object dxBarButton2: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = btnCancelClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object SmartQuery1: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 488
    Top = 396
  end
  object qrySubBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where nmemo = :nmemo')
    Left = 24
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object dsSubBill: TUniDataSource
    DataSet = qrySubBill
    Left = 72
    Top = 428
  end
  object qrySubBillUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE SUBBILLS SET'
      '  FEES_WOFF=FEES_WOFF+:FEES_WOFF,'
      '  DISB_WOFF=DISB_WOFF+:DISB_WOFF,'
      '  ANTD_WOFF=ANTD_WOFF+:ANTD_WOFF,'
      '  UPCRED_WOFF=UPCRED_WOFF+:UPCRED_WOFF,'
      '  SUND_WOFF=SUND_WOFF+:SUND_WOFF,'
      '  FEESTAX_WOFF=FEESTAX_WOFF+:FEESTAX_WOFF,'
      '  DISBTAX_WOFF=DISBTAX_WOFF+:DISBTAX_WOFF,'
      '  UPCREDTAX_WOFF=UPCREDTAX_WOFF+:UPCREDTAX_WOFF,'
      '  ANTDTAX_WOFF=ANTDTAX_WOFF+:ANTDTAX_WOFF,'
      '  SUNDTAX_WOFF=SUNDTAX_WOFF+:SUNDTAX_WOFF,'
      
        '  TAX_WOFF=TAX_WOFF+:FEESTAX_WOFF+:DISBTAX_WOFF+:UPCREDTAX_WOFF+' +
        ':ANTDTAX_WOFF+:SUNDTAX_WOFF'
      'WHERE NMEMO = :NMEMO'
      'AND NSUBBILL = :NSUBBILL')
    Left = 128
    Top = 425
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FEES_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEESTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISBTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCREDTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTDTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDTAX_WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NSUBBILL'
        Value = nil
      end>
  end
  object qrySubBillDisplay: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where nmemo = :nmemo'
      'and nsubbill = :nsubbill')
    Left = 168
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nsubbill'
        Value = nil
      end>
  end
  object qryGetBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nmemo, fileid'
      'from'
      '  nmemo'
      'where'
      '  refno = :refno')
    Left = 366
    Top = 378
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'refno'
        Value = nil
      end>
  end
  object OraQuery1: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO feedist'
      '                  (NMEMO,  AUTHOR, NAME,  FEE_AMT, FEE_PC,'
      
        '  '#9#9#9#9'  ALLOC_AMT, ALLOC_PC, FEE_TAX, ALLOC_TAX, NMATTER, DEPT, ' +
        'UNITS, CREATED_DATE )'
      '         SELECT NMEMO,  AUTHOR, NAME,  0 - FEE_AMT, FEE_PC,'
      
        '  '#9#9#9#9'  0 - ALLOC_AMT, ALLOC_PC, 0 - FEE_TAX, 0 - ALLOC_TAX, NMA' +
        'TTER, DEPT, UNITS, p_rvdate'
      '           FROM feedist'
      '          WHERE nmemo = p_nmemo;')
    Left = 430
    Top = 386
  end
  object qryFeeDist: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from feeDIST'
      'where nmemo = :nmemo'
      'and alloc_amt > 0')
    Left = 221
    Top = 387
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryFeeDistInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'insert into feedist (nmemo, author, nmatter, dept, matter_dept, ' +
        'writeoff_amt, name, created_date)'
      'values'
      
        '(:nmemo, :author, :nmatter, :dept, :matter_dept, :writeoff_amt, ' +
        ':name, sysdate)')
    Left = 216
    Top = 447
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'matter_dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'writeoff_amt'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
  end
  object procBillDiscReverse: TUniStoredProc
    StoredProcName = 'bill_discount_reverse'
    Connection = dmAxiom.uniInsight
    Left = 648
    Top = 160
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
  object qryFeeAlloc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   CASE'
      '            WHEN (SELECT SUM (amount)'
      '                    FROM fee'
      '                   WHERE TYPE IN ('#39'N'#39', '#39'D'#39')'
      '                     AND PRIVATE = '#39'N'#39
      '                     AND nmemo = :nmemo) <> 0'
      '               THEN ROUND (  SUM (amount)'
      '                           / (SELECT SUM (amount)'
      '                                FROM fee'
      '                               WHERE TYPE IN ('#39'N'#39', '#39'D'#39')'
      '                                 AND PRIVATE = '#39'N'#39
      '                                 AND nmemo = :nmemo),'
      '                           6'
      '                          )'
      '            ELSE 1'
      '         END AS SPLIT,'
      '         author'
      '    FROM fee'
      
        '   WHERE nmemo = :nmemo AND fee.TYPE IN ('#39'N'#39', '#39'D'#39') AND fee.PRIVA' +
        'TE = '#39'N'#39
      'GROUP BY author'
      ''
      ''
      '/*'
      'SELECT   CASE'
      '            WHEN (SELECT SUM (amount)'
      '                    FROM fee'
      '                   WHERE TYPE IN ('#39'N'#39', '#39'D'#39')'
      '                     AND PRIVATE = '#39'N'#39
      '                     AND nmemo = :nmemo) <> 0'
      '               THEN ROUND (  SUM (amount)'
      '                           / (SELECT SUM (amount)'
      '                                FROM fee'
      '                               WHERE TYPE IN ('#39'N'#39', '#39'D'#39')'
      '                                 AND PRIVATE = '#39'N'#39
      '                                 AND nmemo = :nmemo),'
      '                           2'
      '                          )'
      '            ELSE 1'
      '         END AS SPLIT,'
      '         author'
      '    FROM fee'
      
        '   WHERE nmemo = :nmemo AND fee.TYPE IN ('#39'N'#39', '#39'D'#39') AND fee.PRIVA' +
        'TE = '#39'N'#39
      'GROUP BY author'
      '*/'
      ''
      '/*'
      
        'select round(sum(amount)/(select sum(amount) from fee where type' +
        ' = '#39'N'#39' and private = '#39'N'#39' and nmemo = :nmemo),2) as split, author'
      'from fee'
      'where '
      'nmemo = :NMEMO'
      'and'
      'fee.type = '#39'N'#39
      'and'
      'fee.private = '#39'N'#39
      'group by author'
      '*/')
    Left = 395
    Top = 490
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryCheqReqUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE CHEQREQ SET CONVERTED = '#39'Y'#39' WHERE NMEMO = :NMEMO')
    Left = 336
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryBillTransItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select t.taxcode from transitem t '
      
        'inner join chart c on T.CHART = c.CODE and c.CHARTTYPE = '#39'DEBT'#39' ' +
        'and c.bank = T.ACCT'
      'where t.nowner = :nmemo and t.owner_code = '#39'NMEMO'#39)
    Left = 488
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
end
