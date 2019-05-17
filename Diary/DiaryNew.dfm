object frmDiaryNew: TfrmDiaryNew
  Left = 643
  Top = 179
  BorderStyle = bsDialog
  Caption = 'Diary Entry'
  ClientHeight = 646
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 577
    Height = 643
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    AutoSize = True
    DesignSize = (
      577
      643)
    object lblStartDayName: TLabel
      Left = 247
      Top = 64
      Width = 75
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '   '
      Constraints.MinWidth = 75
    end
    object Label6: TLabel
      Left = 172
      Top = 542
      Width = 152
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'minutes before appointment'
    end
    object lblClient: TLabel
      Left = 286
      Top = 199
      Width = 276
      Height = 16
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = False
      ShowAccelChar = False
      OnClick = lblClientClick
      OnMouseEnter = lblClientMouseEnter
      OnMouseLeave = lblClientMouseLeave
    end
    object lblMatterDescr: TLabel
      Left = 12
      Top = 226
      Width = 550
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = False
    end
    object lblReminderForName: TLabel
      Left = 162
      Top = 167
      Width = 364
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = False
      ShowAccelChar = False
    end
    object btnCancel: TBitBtn
      Left = 462
      Top = 600
      Width = 100
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akRight, akBottom]
      Caption = '&Cancel'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 22
      OnClick = btnCancelClick
    end
    object btnSave: TBitBtn
      Left = 355
      Top = 600
      Width = 100
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akRight, akBottom]
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 21
      OnClick = btnSaveClick
    end
    object chkOutlook: TCheckBox
      Left = 12
      Top = 603
      Width = 150
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akBottom]
      Caption = 'Save to Outlook'
      TabOrder = 20
    end
    object dtpActionStartDate: TDateTimePicker
      Left = 87
      Top = 64
      Width = 130
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Date = 0.538159236108185900
      Time = 0.538159236108185900
      TabOrder = 1
      OnClick = dtpActionStartDateChange
      OnChange = dtpActionStartDateChange
    end
    object dtpStartTime: TDateTimePicker
      Left = 385
      Top = 64
      Width = 130
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Date = 36221.764170659700000000
      Time = 36221.764170659700000000
      Kind = dtkTime
      TabOrder = 3
    end
    object dtpEndTime: TDateTimePicker
      Left = 385
      Top = 94
      Width = 130
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Date = 36221.764170659700000000
      Time = 36221.764170659700000000
      Kind = dtkTime
      TabOrder = 4
    end
    object cbReminderFor: TComboBox
      Left = 89
      Top = 166
      Width = 66
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Style = csDropDownList
      Sorted = True
      TabOrder = 5
      OnClick = cbReminderForClick
    end
    object icbShowTimeAs: TcxImageComboBox
      Left = 89
      Top = 253
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      Width = 166
    end
    object icbLabel: TcxImageComboBox
      Left = 354
      Top = 253
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Width = 208
    end
    object cbEvent: TcxLookupComboBox
      Left = 89
      Top = 283
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'EVENT_ID'
      Properties.ListColumns = <
        item
          FieldName = 'EVENT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsDiaryEvents
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 9
      Width = 473
    end
    object chkPrivate: TCheckBox
      Left = 464
      Top = 343
      Width = 98
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Alignment = taLeftJustify
      Caption = 'Private'
      TabOrder = 13
      OnClick = chkNotifyClick
    end
    object chkEventPrintDescr: TCheckBox
      Left = 88
      Top = 505
      Width = 474
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Print description on Event report?'
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
    object neNotify: TNumberEdit
      Left = 119
      Top = 538
      Width = 44
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Alignment = taLeftJustify
      BorderStyle = bsNone
      Ctl3D = False
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
      NoZero = True
      TabOrder = 18
    end
    object chkNotify: TCheckBox
      Left = 12
      Top = 537
      Width = 98
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Alignment = taLeftJustify
      Caption = 'Notify'
      TabOrder = 17
      OnClick = chkNotifyClick
    end
    object cbType: TcxLookupComboBox
      Left = 89
      Top = 570
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsDiaryType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 473
    end
    object cbLocation: TcxLookupComboBox
      Left = 89
      Top = 313
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'LOCATION'
      Properties.ListColumns = <
        item
          FieldName = 'LOCATION'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsDiaryLoc
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 10
      Width = 473
    end
    object tbFile: TcxButtonEdit
      Left = 89
      Top = 196
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = False
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      OnExit = tbFileExit
      Height = 23
      Width = 190
    end
    object tbSearch: TcxButtonEdit
      Left = 89
      Top = 372
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = False
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
      Properties.OnButtonClick = tbSearchPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 14
      Height = 30
      Width = 473
    end
    object chkInternal: TcxRadioButton
      Left = 92
      Top = 343
      Width = 98
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Internal'
      Checked = True
      TabOrder = 11
      TabStop = True
      GroupIndex = 1
    end
    object chkExternal: TcxRadioButton
      Left = 197
      Top = 343
      Width = 98
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'External'
      TabOrder = 12
      GroupIndex = 1
    end
    object dtpActionEndDate: TDateTimePicker
      Left = 87
      Top = 94
      Width = 130
      Height = 23
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 7
      Margins.Bottom = 7
      Date = 0.538159236108185900
      Time = 0.538159236108185900
      TabOrder = 2
      OnClick = dtpActionEndDateChange
      OnChange = dtpActionEndDateChange
    end
    object LblEndDayName: TLabel
      Left = 280
      Top = 102
      Width = 40
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '   '
      Constraints.MinWidth = 40
    end
    object mmoDesc: TcxMemo
      Left = 89
      Top = 409
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      OnExit = cxMemo1Exit
      OnKeyPress = cxMemo1KeyPress
      Height = 89
      Width = 473
    end
    object edtSubject: TcxTextEdit
      Left = 89
      Top = 12
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 473
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Start Date'
      Control = dtpActionStartDate
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 22
      ButtonOptions.DefaultWidth = 22
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Start'
      Control = dtpStartTime
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'End'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      Control = dtpEndTime
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 22
      ButtonOptions.DefaultWidth = 22
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Reminder For'
      Control = cbReminderFor
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReminderForName
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 364
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 22
      ButtonOptions.DefaultWidth = 22
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Matter'
      Control = tbFile
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 190
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblClient
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 276
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblMatterDescr
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 438
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 22
      ButtonOptions.DefaultWidth = 22
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Show time as'
      Control = icbShowTimeAs
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 166
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      CaptionOptions.Text = 'Label'
      Control = icbLabel
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 208
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Event'
      Control = cbEvent
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 450
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Location'
      Control = cbLocation
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 438
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 470
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 22
      ButtonOptions.DefaultWidth = 22
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkInternal
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkPrivate
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'With'
      Control = tbSearch
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 438
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkEventPrintDescr
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 474
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 22
      ButtonOptions.DefaultWidth = 22
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 14
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkNotify
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = neNotify
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 44
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Label6
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 152
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Type'
      Control = cbType
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 308
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 22
      ButtonOptions.DefaultWidth = 22
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 16
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkOutlook
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkExternal
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 22
      ButtonOptions.DefaultWidth = 22
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblStartDayName
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 12
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'End Date'
      Control = dtpActionEndDate
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Label1'
      CaptionOptions.Visible = False
      Control = LblEndDayName
      ControlOptions.AutoColor = True
      ControlOptions.MinWidth = 40
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 12
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup10
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 10
      ButtonOptions.DefaultWidth = 10
      Padding.Bottom = -5
      Padding.Left = -5
      Padding.Right = -5
      Padding.Top = -10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      CaptionOptions.VisibleElements = []
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Padding.Bottom = -5
      Padding.Left = -5
      Padding.Right = -5
      Padding.Top = -10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup10
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Padding.Bottom = -5
      Padding.Top = -10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavTop]
      Index = 1
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup10
      ButtonOptions.Buttons = <>
      Padding.Bottom = -5
      Padding.Top = -10
      Padding.AssignedValues = [lpavBottom, lpavTop]
      Index = 2
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = mmoDesc
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Subject'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Width = 498
      AllowRemove = False
      Control = edtSubject
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object qryDiary: TUniQuery
    UpdatingTable = 'DIARY'
    KeyFields = 'ndiary'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.*, D.ROWID FROM DIARY D WHERE D.NDIARY = :NDIARY')
    Options.RequiredFields = False
    Left = 264
    Top = 430
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NDIARY'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM DIARYLOC')
    Left = 272
    Top = 478
  end
  object qryTaskInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO TASK (CODE, FILEID, DESCR, '
      '  AUTHOR, DAYS, COMMENCE, DUE)'
      'values'
      '    (:CODE, :FILEID, :DESCR, '
      '     :AUTHOR, :DAYS, :COMMENCE, :DUE)'
      ''
      '')
    CachedUpdates = True
    Left = 513
    Top = 542
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
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
        Name = 'DAYS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'COMMENCE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DUE'
        Value = nil
      end>
  end
  object qryDiaryEvents: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from DIARYEVT'
      'order by event')
    Left = 349
    Top = 433
  end
  object dsDiaryEvents: TUniDataSource
    DataSet = qryDiaryEvents
    Left = 534
    Top = 489
  end
  object qryDiaryType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from DIARY_type'
      'order by descr')
    Left = 265
    Top = 370
  end
  object dsDiaryType: TUniDataSource
    DataSet = qryDiaryType
    Left = 346
    Top = 373
  end
  object qryDiaryLoc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from DIARYLOC'
      'order by 1')
    Left = 425
    Top = 426
  end
  object dsDiaryLoc: TUniDataSource
    DataSet = qryDiaryLoc
    Left = 426
    Top = 194
  end
end
