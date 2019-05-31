object frmLedgerNew: TfrmLedgerNew
  Left = 743
  Top = 158
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Account Ledger Code Creation'
  ClientHeight = 572
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblAddTo: TLabel
    Left = 218
    Top = 348
    Width = 118
    Height = 12
    AutoSize = False
    ShowAccelChar = False
  end
  object Label9: TLabel
    Left = 6
    Top = 468
    Width = 71
    Height = 13
    Caption = 'GST Category:'
    Visible = False
  end
  object Label10: TLabel
    Left = 6
    Top = 490
    Width = 105
    Height = 13
    Caption = 'Creditable Purchase:'
    Visible = False
  end
  object lblTypeDesc: TLabel
    Left = 0
    Top = 0
    Width = 3
    Height = 13
  end
  object neGSTCategory: TNumberEdit
    Left = 105
    Top = 464
    Width = 31
    Height = 21
    Alignment = taLeftJustify
    DecimalPlaces = 0
    DisplayFormat = dfInteger
    EditText = '0'
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
    Text = '0'
    Visible = False
  end
  object neCreditablePurchase: TNumberEdit
    Left = 105
    Top = 487
    Width = 31
    Height = 21
    Alignment = taLeftJustify
    DecimalPlaces = 0
    DisplayFormat = dfInteger
    EditText = '0'
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
    Text = '0'
    Visible = False
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 357
    Height = 572
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = True
    ParentFont = False
    TabOrder = 2
    Transparent = True
    AutoSize = True
    ExplicitWidth = 336
    ExplicitHeight = 508
    DesignSize = (
      357
      572)
    object lblEntityName: TLabel
      Left = 116
      Top = 12
      Width = 224
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object lblGlHeader: TLabel
      Left = 114
      Top = 88
      Width = 226
      Height = 15
      AutoSize = False
    end
    object lblLedgerKey: TLabel
      Left = 116
      Top = 38
      Width = 3
      Height = 16
    end
    object btnSave: TBitBtn
      Left = 102
      Top = 530
      Width = 69
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&Save'
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
      TabOrder = 20
      OnClick = btnSaveClick
    end
    object btnCancel: TBitBtn
      Left = 178
      Top = 530
      Width = 71
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&Cancel'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 21
      OnClick = btnCancelClick
    end
    object neColumn: TNumberEdit
      Left = 118
      Top = 226
      Width = 31
      Height = 17
      Alignment = taLeftJustify
      BorderStyle = bsNone
      DecimalPlaces = 0
      DisplayFormat = dfInteger
      EditText = '0'
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
      Text = '0'
    end
    object cbBASGroup: TComboBox
      Left = 116
      Top = 282
      Width = 224
      Height = 23
      Style = csDropDownList
      Sorted = True
      TabOrder = 9
      Items.Strings = (
        'Default'
        'G10'
        'G11')
    end
    object cbDefaultTaxCode: TComboBox
      Left = 116
      Top = 312
      Width = 224
      Height = 23
      Style = csDropDownList
      Sorted = True
      TabOrder = 10
    end
    object chkActive: TCheckBox
      Left = 12
      Top = 462
      Width = 53
      Height = 16
      Caption = 'Active'
      TabOrder = 15
    end
    object chkJournalSplit: TCheckBox
      Left = 72
      Top = 462
      Width = 120
      Height = 16
      Caption = 'Journal Split Enabled'
      TabOrder = 16
    end
    object chkAllowDirectPosting: TCheckBox
      Left = 199
      Top = 462
      Width = 123
      Height = 16
      Caption = 'Allow Direct Posting'
      TabOrder = 17
    end
    object cbDefaultOIFCode: TComboBox
      Left = 116
      Top = 342
      Width = 224
      Height = 23
      Style = csDropDownList
      TabOrder = 11
      Items.Strings = (
        ''
        'Operating'
        'Investing'
        'Financing')
    end
    object cbChartType: TComboBox
      Left = 116
      Top = 402
      Width = 224
      Height = 23
      Style = csDropDownList
      TabOrder = 13
      Items.Strings = (
        ''
        'Operating'
        'Investing'
        'Financing')
    end
    object cbAllEntity: TCheckBox
      Left = 12
      Top = 485
      Width = 328
      Height = 15
      Caption = 'Apply to all entities '
      TabOrder = 18
    end
    object cbMulti: TCheckBox
      Left = 12
      Top = 507
      Width = 328
      Height = 16
      Caption = 'Multi Post'
      TabOrder = 19
      OnClick = cbMultiClick
    end
    object cbMaster: TCheckBox
      Left = 12
      Top = 65
      Width = 56
      Height = 16
      Caption = 'Master'
      TabOrder = 1
    end
    object cbPrivate: TCheckBox
      Left = 75
      Top = 65
      Width = 56
      Height = 16
      Caption = 'Private'
      TabOrder = 2
    end
    object cbType: TcxComboBox
      Left = 158
      Top = 35
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 0
      Width = 151
    end
    object cmbGLReportGroup: TcxLookupComboBox
      Left = 116
      Top = 432
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 20
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsGLReportType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 14
      Width = 224
    end
    object cbAddTo: TcxLookupComboBox
      Left = 116
      Top = 252
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 20
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'COMPONENT_CODE_DISPLAY'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsAddTos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 8
      Width = 224
    end
    object neReportLevel: TNumberEdit
      Left = 231
      Top = 226
      Width = 29
      Height = 17
      Alignment = taLeftJustify
      BorderStyle = bsNone
      DecimalPlaces = 0
      DisplayFormat = dfInteger
      EditText = '0'
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
      TabOrder = 7
      Text = '0'
    end
    object tbFMRCCode: TcxTextEdit
      Left = 116
      Top = 372
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      OnEnter = tbRptDescEnter
      OnExit = tbRptDescExit
      OnKeyPress = tbRptDescKeyPress
      Width = 224
    end
    object tbRptDesc: TcxTextEdit
      Left = 116
      Top = 194
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      OnEnter = tbRptDescExit
      OnExit = tbRptDescExit
      OnKeyPress = tbRptDescKeyPress
      Width = 224
    end
    object tbAccountCode: TcxTextEdit
      Left = 116
      Top = 110
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      OnExit = tbAccountCodeExit
      Width = 224
    end
    object mmoDescr: TcxMemo
      Left = 116
      Top = 140
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      OnExit = mmoDescrExit
      OnKeyPress = mmoDescrKeyPress
      Height = 47
      Width = 224
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Entity'
      Control = lblEntityName
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avCenter
      CaptionOptions.Text = 'Type'
      Control = cbType
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avCenter
      CaptionOptions.Text = 'Ledger Key'
      Control = lblLedgerKey
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbMaster
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbPrivate
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Column'
      Control = neColumn
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 31
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Report Level'
      Control = neReportLevel
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 29
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Add-To Ledger'
      Control = cbAddTo
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Bas Group'
      Control = cbBASGroup
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 224
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Default Tax Code'
      Control = cbDefaultTaxCode
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 224
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Default OIF Code'
      Control = cbDefaultOIFCode
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 224
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Chart Type'
      Control = cbChartType
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 224
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'GL Report Group'
      Control = cmbGLReportGroup
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 215
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 15
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkActive
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkJournalSplit
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkAllowDirectPosting
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbAllEntity
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 16
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbMulti
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 17
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Width = 226
      Control = lblGlHeader
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 226
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 18
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'FMRC Code'
      Control = tbFMRCCode
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Report Description'
      Control = tbRptDesc
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Account Code'
      Control = tbAccountCode
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = mmoDescr
      ControlOptions.OriginalHeight = 47
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID '
      'FROM CHART C '
      'WHERE C.BANK = '#39#39)
    CachedUpdates = True
    Left = 419
    Top = 253
  end
  object qryAddTos: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      'CODE, REPORT_DESC, COMPONENT_CODE_DISPLAY '
      'FROM '
      'CHART '
      'WHERE BANK = :P_Entity'
      ' ')
    Left = 419
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Entity'
        Value = nil
      end>
  end
  object qryTaxCodes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT DISTINCT CODE FROM TAXTYPE'
      ' ')
    Left = 253
    Top = 65530
  end
  object qryChartTypes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT DISTINCT CODE FROM CHARTTYPE WHERE DESCR = :DESCR'
      ' ')
    Left = 422
    Top = 298
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end>
  end
  object prcChangeLedger: TUniStoredProc
    StoredProcName = 'axiom.RENAME_CHART'
    Connection = dmAxiom.uniInsight
    Left = 418
    Top = 170
  end
  object qryChartTypeDescriptions: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT DISTINCT DESCR FROM CHARTTYPE WHERE CODE = :CODE'
      ' ')
    Left = 361
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object qryEntity: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 299
    Top = 3
  end
  object qryCheckGlCode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select count(*) as cnt from chart'
      'where component_code_display = :DISPLAY'
      'and BANK = :BANK'
      'and (code <> :code or :code is null)')
    Left = 421
    Top = 196
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DISPLAY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object qryGLReportType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from gl_reportgroup')
    Left = 312
    Top = 211
  end
  object dsGLReportType: TUniDataSource
    DataSet = qryGLReportType
    Left = 309
    Top = 256
  end
  object dsAddTos: TUniDataSource
    DataSet = qryAddTos
    Left = 430
    Top = 117
  end
end
