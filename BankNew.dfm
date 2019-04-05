object frmBankNew: TfrmBankNew
  Left = 643
  Top = 189
  Caption = 'Bank Account Creation'
  ClientHeight = 674
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 665
    Height = 674
    Align = alClient
    TabOrder = 0
    AutoSize = True
    DesignSize = (
      665
      674)
    object Label19: TLabel
      Left = 173
      Top = 469
      Width = 28
      Height = 17
      Caption = 'Days'
    end
    object tbBankName: TEdit
      Left = 130
      Top = 145
      Width = 519
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 5
    end
    object tbName: TEdit
      Left = 130
      Top = 112
      Width = 519
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 4
    end
    object btnCancel: TBitBtn
      Left = 336
      Top = 634
      Width = 75
      Height = 26
      Anchors = [akLeft, akBottom]
      Caption = '&Cancel'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 24
      OnClick = btnCancelClick
    end
    object btnSave: TBitBtn
      Left = 253
      Top = 634
      Width = 75
      Height = 26
      Anchors = [akLeft, akBottom]
      Caption = '&OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 23
      OnClick = btnSaveClick
    end
    object tbCode: TEdit
      Left = 130
      Top = 79
      Width = 71
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 2
    end
    object cbType: TComboBox
      Left = 245
      Top = 77
      Width = 124
      Height = 25
      Style = csDropDownList
      TabOrder = 3
      OnClick = cbTypeClick
      Items.Strings = (
        'Company'
        'General'
        'Trust'
        'Investment')
    end
    object tbAddress: TEdit
      Left = 130
      Top = 244
      Width = 519
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 8
    end
    object tbSuburb: TEdit
      Left = 130
      Top = 277
      Width = 519
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 9
    end
    object tbAccount: TEdit
      Left = 130
      Top = 372
      Width = 519
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 12
    end
    object tbAbbrev: TEdit
      Left = 130
      Top = 178
      Width = 519
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object tbCAB: TEdit
      Left = 130
      Top = 438
      Width = 519
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 14
      OnDblClick = tbCABDblClick
      OnEnter = tbCABEnter
    end
    object tbBranch: TEdit
      Left = 130
      Top = 211
      Width = 519
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 7
    end
    object neClearance: TNumberEdit
      Left = 130
      Top = 471
      Width = 33
      Height = 21
      Alignment = taLeftJustify
      BorderStyle = bsNone
      DecimalPlaces = 0
      DisplayFormat = dfInteger
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
      TabOrder = 15
    end
    object lblEntityName: TcxLabel
      Left = 128
      Top = 13
      AutoSize = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.StyleController = dmAxiom.LabelStyle
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Height = 23
      Width = 523
    end
    object cbEnforceBSBDD: TcxDBCheckBox
      Left = 13
      Top = 601
      Anchors = [akLeft, akBottom]
      Caption = 'Enforce BSB for Direct Debit'
      DataBinding.DataField = 'ENFORCE_BSB_DD'
      DataBinding.DataSource = dsBank
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 22
    end
    object teBSB: TcxMaskEdit
      Left = 128
      Top = 308
      Hint = 'Enter B.S.B.'
      AutoSize = False
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 10
      Height = 21
      Width = 523
    end
    object teABANumber: TcxTextEdit
      Left = 128
      Top = 403
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 13
      Width = 523
    end
    object teRemitter: TcxTextEdit
      Left = 128
      Top = 337
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 11
      Width = 523
    end
    object cmbAcctType: TComboBox
      Left = 128
      Top = 44
      Width = 523
      Height = 25
      Style = csDropDownList
      TabOrder = 1
      OnClick = cbTypeClick
      Items.Strings = (
        'Office'
        'Service')
    end
    object tbBPayCode: TcxTextEdit
      Left = 128
      Top = 502
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 17
      OnKeyPress = tbBPayCodeKeyPress
      Width = 523
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 13
      Top = 568
      Anchors = [akLeft, akBottom]
      Caption = 'Auto Present EFT Payments'
      DataBinding.DataField = 'AUTO_PRESENT_EFT'
      DataBinding.DataSource = dsBank
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 21
    end
    object teSortCode: TcxMaskEdit
      Left = 128
      Top = 535
      Hint = 'Format for Sort Code is xx-xx-xx'
      ParentShowHint = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\-\d\d-\d\d'
      ShowHint = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 155
    end
    object teSWIFTCode: TcxTextEdit
      Left = 367
      Top = 535
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object teIBAN: TcxTextEdit
      Left = 530
      Top = 535
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cmbCurrency: TcxLookupComboBox
      Left = 326
      Top = 469
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText]
      Properties.KeyFieldNames = 'ISO4217_CURRENCY_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'ISO4217_CURRENCY_CODE'
        end
        item
          FieldName = 'MAX(ISO4217_CURRENCY_NAME)'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dmAxiom.dsCurrencyList
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 325
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 382
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      Hidden = True
      ItemIndex = 14
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Acct Type'
      Control = cmbAcctType
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Type'
      Control = cbType
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Control = tbCode
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Control = tbName
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 188
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Name'
      Control = tbBankName
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 188
      Index = 4
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Abbreviation'
      Control = tbAbbrev
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 41
      Index = 5
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Branch'
      Control = tbBranch
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 188
      Index = 6
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Address'
      Control = tbAddress
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 188
      Index = 7
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Town\Suburb'
      Control = tbSuburb
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 188
      Index = 8
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'BSB'
      Control = teBSB
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Remitter'
      Control = teRemitter
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 188
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Number'
      Control = tbAccount
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 188
      Index = 11
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ABA Number:'
      Control = teABANumber
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash at Bank G/L'
      Control = tbCAB
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      Index = 13
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Clearance Time'
      Control = neClearance
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 33
      Index = 0
    end
    object lblBPayCode: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'BPay Code'
      Control = tbBPayCode
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 181
      ControlOptions.ShowBorder = False
      Index = 17
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cbEnforceBSBDD'
      CaptionOptions.Visible = False
      Control = cbEnforceBSBDD
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 187
      ControlOptions.ShowBorder = False
      Index = 18
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'btnSave'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'btnCancel'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Entity'
      Control = lblEntityName
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 188
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 14
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Label19
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 28
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 19
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 16
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SWIFT Code'
      Control = teSWIFTCode
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'IBAN'
      Control = teIBAN
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sort Code'
      Control = teSortCode
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahRight
      CaptionOptions.Text = 'Currency'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 382
      Control = cmbCurrency
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object tbRcptFrom: TEdit
    Left = 42
    Top = 730
    Width = 44
    Height = 21
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    TabOrder = 1
    Visible = False
  end
  object tbRcptTo: TEdit
    Left = 97
    Top = 730
    Width = 44
    Height = 21
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    TabOrder = 2
    Visible = False
  end
  object tbLastRcpt: TEdit
    Left = 152
    Top = 730
    Width = 49
    Height = 21
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    TabOrder = 3
    Visible = False
  end
  object tbChqFrom: TEdit
    Left = 42
    Top = 757
    Width = 44
    Height = 21
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    TabOrder = 4
    Visible = False
  end
  object tbChqTo: TEdit
    Left = 92
    Top = 757
    Width = 44
    Height = 21
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    TabOrder = 5
    Visible = False
  end
  object tbLastChq: TEdit
    Left = 152
    Top = 757
    Width = 49
    Height = 21
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    TabOrder = 6
    Visible = False
  end
  object dsBank: TUniDataSource
    DataSet = qryBank
    Left = 71
    Top = 457
  end
  object qryBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT B.ROWID, B.* FROM BANK B WHERE B.ACCT = :P_Code')
    Left = 269
    Top = 454
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
end
