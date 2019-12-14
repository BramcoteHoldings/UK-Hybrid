object frmDiary: TfrmDiary
  Left = 278
  Top = 176
  Caption = 'Insight Diary'
  ClientHeight = 765
  ClientWidth = 1273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pagDiary: TcxPageControl
    Left = 0
    Top = 28
    Width = 1273
    Height = 737
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabDay
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.Style = 1
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    OnChange = pagDiaryChange
    ClientRectBottom = 733
    ClientRectLeft = 4
    ClientRectRight = 1269
    ClientRectTop = 26
    object tabDay: TcxTabSheet
      Caption = 'Diary'
      ImageIndex = 0
      object DiaryScheduler: TcxScheduler
        Left = 0
        Top = 0
        Width = 1265
        Height = 707
        DateNavigator.ShowDatesContainingHolidaysInColor = True
        DateNavigator.OnCustomDrawDayCaption = DiarySchedulerDateNavigatorCustomDrawDayCaption
        DateNavigator.OnCustomDrawDayNumber = DiarySchedulerDateNavigatorCustomDrawDayNumber
        DateNavigator.OnPeriodChanged = DiarySchedulerDateNavigatorPeriodChanged
        DateNavigator.OnSelectionChanged = DiarySchedulerDateNavigatorSelectionChanged
        ViewAgenda.EventTextMinWidth = 107
        ViewDay.Active = True
        ViewDay.GroupingKind = gkByResource
        ViewDay.TimeRulerMinutes = True
        ViewDay.TimeScale = 6
        ViewGantt.Scales.MajorUnitSeparatorWidth = 4
        ViewGantt.Scales.MinorUnitWidth = 44
        ViewGantt.TreeBrowser.Width = 221
        ViewTimeGrid.Scales.MajorUnitSeparatorWidth = 4
        ViewTimeGrid.Scales.MinorUnitWidth = 88
        ViewTimeGrid.Scales.TimeStep = 6
        ViewTimeGrid.SnapEventsToTimeSlots = False
        ViewWeek.DaysLayout = wdlOneColumn
        Align = alClient
        ContentPopupMenu.PopupMenu = popDayView
        ContentPopupMenu.UseBuiltInPopupMenu = False
        ContentPopupMenu.Items = [cpmiNewEvent, cpmiNewAllDayEvent, cpmiNewReccuringEvent, cpmiGoToDate, cpmiGoToThisDay, cpmiResourcesLayout]
        ControlBox.Control = grdPhoneMessage
        DialogsStyle = 'Ribbon2019'
        EventOperations.DialogEditing = False
        EventOperations.DialogShowing = False
        EventOperations.InplaceEditing = False
        EventPopupMenu.PopupMenu = popDayView
        EventPopupMenu.UseBuiltInPopupMenu = False
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        OptionsCustomize.DynamicSizing = True
        OptionsView.CurrentTimeZoneDaylightSaving = True
        OptionsView.GroupingKind = gkByResource
        OptionsView.GroupSeparatorWidth = 7
        OptionsView.HorzSplitterWidth = 4
        OptionsView.ResourceHeaders.Height = 9
        OptionsView.ResourceHeaders.MultilineCaptions = True
        OptionsView.ResourcesPerPage = 10
        OptionsView.ShowEventsWithoutResource = True
        OptionsView.VertSplitterWidth = 4
        ParentFont = True
        PopupMenu = popDayView
        ResourceNavigator.Visibility = snvAlways
        Storage = SecureSchedulerDBStorage
        TabOrder = 0
        OnDblClick = DiarySchedulerDblClick
        OnDragOver = DiarySchedulerDragOver
        OnEndDrag = DiarySchedulerEndDrag
        OnEventSelectionChanged = DiarySchedulerEventSelectionChanged
        OnKeyDown = DiarySchedulerKeyDown
        Splitters = {
          610400008E000000F0040000920000005D0400000100000061040000C2020000}
        StoredClientBounds = {0100000001000000F0040000C2020000}
        object grdPhoneMessage: TcxGrid
          Left = 0
          Top = 0
          Width = 143
          Height = 560
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvPhoneMessage: TcxGridDBTableView
            PopupMenu = dxBarPopupMenu1
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsPhoneMessage
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 49
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 11
            Preview.Column = tvPhoneMessageMESSAGE
            Preview.LeftIndent = 19
            Preview.MaxLineCount = 5
            Preview.Visible = True
            object tvPhoneMessageCreatedTime: TcxGridDBColumn
              Caption = 'Time'
              DataBinding.FieldName = 'CREATED'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.ImmediatePost = True
              Properties.TimeFormat = tfHourMin
              MinWidth = 18
              Width = 94
            end
            object tvPhoneMessageCreatedDate: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'CREATED'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ImmediatePost = True
              Properties.SaveTime = False
              Properties.ShowTime = False
              MinWidth = 18
              Width = 156
            end
            object tvPhoneMessageMESSAGE: TcxGridDBColumn
              Caption = 'Message'
              DataBinding.FieldName = 'MESSAGE'
              MinWidth = 18
              Width = 154
            end
          end
          object grdPhoneMessageLevel1: TcxGridLevel
            GridView = tvPhoneMessage
          end
        end
      end
    end
    object tabCalendar: TcxTabSheet
      Caption = 'Calendar'
      ImageIndex = 3
      DesignSize = (
        1265
        707)
      object cxDateNavigator1: TcxDateNavigator
        Left = 0
        Top = 26
        Width = 1266
        Height = 682
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        LookAndFeel.NativeStyle = True
        Scheduler = DiaryScheduler
        ShowDatesContainingHolidaysInColor = True
        Storage = SchedulerDBStorage
        TabOrder = 0
        OnCustomDrawDayCaption = DiarySchedulerDateNavigatorCustomDrawDayCaption
        OnCustomDrawDayNumber = DiarySchedulerDateNavigatorCustomDrawDayNumber
        OnPeriodChanged = DiarySchedulerDateNavigatorPeriodChanged
        OnDblClick = cxDateNavigator1DblClick
      end
    end
    object tabGrid: TcxTabSheet
      Caption = 'List'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdDiary: TcxGrid
        Left = 0
        Top = 58
        Width = 1265
        Height = 649
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvDiary: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsDiaryList
          DataController.KeyFieldNames = 'NDIARY'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 49
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          object tvDiarySTART_DT: TcxGridDBColumn
            Caption = 'Start'
            DataBinding.FieldName = 'START_DT'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Properties.AssignedValues.EditFormat = True
            Properties.InputKind = ikRegExpr
            Properties.ReadOnly = False
            Properties.SaveTime = False
            MinWidth = 18
            Options.Editing = False
            Options.Focusing = False
          end
          object tvDiaryEND_DT: TcxGridDBColumn
            Caption = 'End'
            DataBinding.FieldName = 'END_DT'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.InputKind = ikStandard
            Properties.SaveTime = False
            MinWidth = 18
          end
          object tvDiaryINT_EXT: TcxGridDBColumn
            Caption = 'Where'
            DataBinding.FieldName = 'INT_EXT'
            MinWidth = 18
          end
          object tvDiaryREMINDER_FOR: TcxGridDBColumn
            Caption = 'Person'
            DataBinding.FieldName = 'REMINDER_FOR'
            MinWidth = 18
            Width = 67
          end
          object tvDiaryENTERED_BY: TcxGridDBColumn
            Caption = 'Entered by'
            DataBinding.FieldName = 'ENTERED_BY'
            MinWidth = 18
            Width = 77
          end
          object tvDiaryCAPTION: TcxGridDBColumn
            Caption = 'Subject'
            DataBinding.FieldName = 'CAPTION1'
          end
          object tvDiaryDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR1'
            MinWidth = 18
            Width = 176
          end
          object tvDiarySEARCH_KEY: TcxGridDBColumn
            Caption = 'With'
            DataBinding.FieldName = 'SEARCH_KEY'
            MinWidth = 18
            Width = 111
          end
          object tvDiaryFILEID: TcxGridDBColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
            MinWidth = 18
          end
          object tvDiarySHORTDESCR: TcxGridDBColumn
            Caption = 'Matter Description'
            DataBinding.FieldName = 'GRID_SHORTDESCR'
            MinWidth = 18
            Width = 225
          end
          object tvDiaryPRIORITY: TcxGridDBColumn
            Caption = 'Priority'
            DataBinding.FieldName = 'PRIORITY'
            Visible = False
            MinWidth = 18
            VisibleForCustomization = False
            Width = 34
          end
          object tvDiaryTASK: TcxGridDBColumn
            Caption = 'Task'
            DataBinding.FieldName = 'TASK'
            Visible = False
            MinWidth = 18
            VisibleForCustomization = False
          end
          object tvDiaryTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            Visible = False
            MinWidth = 18
            Width = 37
          end
          object tvDiaryLOCATION: TcxGridDBColumn
            Caption = 'Location'
            DataBinding.FieldName = 'LOCATION'
            MinWidth = 18
            Width = 172
          end
          object tvDiaryEVENT: TcxGridDBColumn
            Caption = 'Event'
            DataBinding.FieldName = 'EVENT'
            MinWidth = 18
          end
          object tvDiaryDATAFORMFIELD: TcxGridDBColumn
            DataBinding.FieldName = 'DATAFORMFIELD'
            Visible = False
            MinWidth = 18
          end
          object tvDiaryEVENTPRINTDESCR: TcxGridDBColumn
            DataBinding.FieldName = 'EVENTPRINTDESCR'
            Visible = False
            MinWidth = 18
            Width = 94
          end
          object tvDiaryCLIENTNAME: TcxGridDBColumn
            Caption = 'Client'
            DataBinding.FieldName = 'CLIENTNAME'
            Visible = False
            MinWidth = 18
            VisibleForCustomization = False
            Width = 176
          end
          object tvDiaryNDIARY: TcxGridDBColumn
            DataBinding.FieldName = 'NDIARY'
            Visible = False
            VisibleForEditForm = bFalse
          end
        end
        object grdDiaryLevel1: TcxGridLevel
          GridView = tvDiary
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1265
        Height = 58
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 9
          Top = 9
          Width = 55
          Height = 15
          Caption = 'Date From'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 34
          Width = 39
          Height = 15
          Caption = 'Date To'
          Transparent = True
        end
        object dtpDateTo: TcxDateEdit
          Left = 75
          Top = 30
          Properties.OnChange = dtpDateToPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 130
        end
        object dtpDateFrom: TcxDateEdit
          Left = 75
          Top = 4
          Properties.OnChange = dtpDateFromPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 130
        end
        object dcToday: TcxDateChangeButton
          Left = 223
          Top = 4
          Width = 87
          Height = 23
          Caption = 'Today'
          LookAndFeel.NativeStyle = True
          TabOrder = 2
          TabStop = False
          ChangeType = ctToday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object cxDateChangeButton2: TcxDateChangeButton
          Left = 223
          Top = 30
          Width = 87
          Height = 23
          Caption = 'Yesterday'
          LookAndFeel.NativeStyle = True
          TabOrder = 3
          TabStop = False
          ChangeType = ctYesterday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object cxDateChangeButton3: TcxDateChangeButton
          Left = 315
          Top = 4
          Width = 86
          Height = 23
          Caption = 'This Week'
          LookAndFeel.NativeStyle = True
          TabOrder = 4
          TabStop = False
          ChangeType = ctThisWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object cxDateChangeButton4: TcxDateChangeButton
          Left = 315
          Top = 30
          Width = 86
          Height = 23
          Caption = 'Last Week'
          LookAndFeel.NativeStyle = True
          TabOrder = 5
          TabStop = False
          ChangeType = ctLastWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object cxDateChangeButton5: TcxDateChangeButton
          Left = 408
          Top = 4
          Width = 86
          Height = 23
          Caption = 'This Month'
          LookAndFeel.NativeStyle = True
          TabOrder = 6
          TabStop = False
          ChangeType = ctThisMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object cxDateChangeButton6: TcxDateChangeButton
          Left = 408
          Top = 30
          Width = 86
          Height = 23
          Caption = 'Last Month'
          LookAndFeel.NativeStyle = True
          TabOrder = 7
          TabStop = False
          ChangeType = ctLastMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object cxDateChangeButton7: TcxDateChangeButton
          Left = 501
          Top = 4
          Width = 85
          Height = 23
          Caption = 'Year To Date'
          LookAndFeel.NativeStyle = True
          TabOrder = 8
          TabStop = False
          ChangeType = ctYearToDate
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object cxDateChangeButton8: TcxDateChangeButton
          Left = 501
          Top = 30
          Width = 85
          Height = 23
          Caption = 'Last Year'
          LookAndFeel.NativeStyle = True
          TabOrder = 9
          TabStop = False
          ChangeType = ctLastYear
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter/Options'
      ImageIndex = 3
      object Label4: TLabel
        Left = 34
        Top = 275
        Width = 114
        Height = 15
        Caption = 'List Refresh (seconds)'
        Transparent = True
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 1265
        Height = 707
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        Properties.Options = [pcoTopToBottomText]
        Properties.Style = 9
        Properties.TabPosition = tpRight
        LookAndFeel.NativeStyle = True
        ClientRectBottom = 707
        ClientRectRight = 1265
        ClientRectTop = 0
      end
      object cxGroupBox1: TcxGroupBox
        Left = 8
        Top = 4
        Caption = ' Diary appointment filter fields '
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Transparent = True
        Height = 250
        Width = 737
        object lblAuthor: TLabel
          Left = 9
          Top = 26
          Width = 71
          Height = 15
          Caption = 'Reminder For'
          Transparent = True
        end
        object Label3: TLabel
          Left = 10
          Top = 56
          Width = 35
          Height = 15
          Caption = 'Matter'
          Transparent = True
        end
        object Label8: TLabel
          Left = 9
          Top = 85
          Width = 46
          Height = 15
          Caption = 'Location'
          Transparent = True
        end
        object Label10: TLabel
          Left = 9
          Top = 109
          Width = 60
          Height = 15
          Caption = 'Jurisdiction'
          Transparent = True
        end
        object Label11: TLabel
          Left = 9
          Top = 138
          Width = 51
          Height = 15
          Caption = 'Key Event'
          Transparent = True
        end
        object Label7: TLabel
          Left = 9
          Top = 168
          Width = 24
          Height = 15
          Caption = 'Type'
          Transparent = True
        end
        object Label5: TLabel
          Left = 9
          Top = 194
          Width = 63
          Height = 15
          Caption = 'Department'
          Transparent = True
        end
        object Label16: TLabel
          Left = 9
          Top = 220
          Width = 60
          Height = 15
          Caption = 'Description'
          Transparent = True
        end
        object tbMatter: TcxButtonEdit
          Left = 98
          Top = 49
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
          Properties.OnButtonClick = tbMatterPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 162
        end
        object edDescr: TcxTextEdit
          Left = 98
          Top = 218
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 289
        end
        object tbType: TcxTextEdit
          Left = 98
          Top = 164
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 129
        end
        object cbLocation: TcxLookupComboBox
          Left = 98
          Top = 80
          Properties.KeyFieldNames = 'LOCATION'
          Properties.ListColumns = <
            item
              FieldName = 'LOCATION'
            end>
          Properties.ListSource = dsDiaryLoc
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 289
        end
        object cbJurisdiction: TcxLookupComboBox
          Left = 98
          Top = 108
          Properties.KeyFieldNames = 'JURISDICTION'
          Properties.ListColumns = <
            item
              FieldName = 'JURISDICTION'
            end>
          Properties.ListSource = dsDiaryJur
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 289
        end
        object cbEvent: TcxLookupComboBox
          Left = 98
          Top = 136
          Properties.KeyFieldNames = 'EVENT'
          Properties.ListColumns = <
            item
              FieldName = 'EVENT'
            end>
          Properties.ListSource = dsDiaryEvent
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 289
        end
        object cxGroupBox2: TcxGroupBox
          Left = 416
          Top = 21
          Caption = 'Matter Filter'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Transparent = True
          Height = 103
          Width = 310
          object Label17: TLabel
            Left = 9
            Top = 23
            Width = 38
            Height = 15
            Caption = 'Partner'
            Transparent = True
          end
          object Label18: TLabel
            Left = 9
            Top = 49
            Width = 53
            Height = 15
            Caption = 'Controller'
            Transparent = True
          end
          object Label19: TLabel
            Left = 9
            Top = 76
            Width = 37
            Height = 15
            Caption = 'Author'
            Transparent = True
          end
          object cmbPartner: TcxLookupComboBox
            Left = 123
            Top = 18
            Properties.DropDownAutoSize = True
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end
              item
                FieldName = 'CODE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPartner
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 178
          end
          object cmbController: TcxLookupComboBox
            Left = 123
            Top = 45
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end
              item
                FieldName = 'CODE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsController
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Width = 178
          end
          object cmbAuthor: TcxLookupComboBox
            Left = 123
            Top = 72
            Properties.DropDownAutoSize = True
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end
              item
                FieldName = 'CODE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsAuthor
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            Width = 178
          end
        end
        object cmbReminderFor: TcxLookupComboBox
          Left = 98
          Top = 21
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end
            item
              FieldName = 'CODE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsController
          Properties.OnChange = cmbReminderForClick
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          OnClick = cmbReminderForClick
          Width = 162
        end
        object cbDept: TcxLookupComboBox
          Left = 98
          Top = 191
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListSource = dsEmpDept
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 289
        end
      end
      object neListRefresh: TcxSpinEdit
        Left = 158
        Top = 264
        Properties.Alignment.Horz = taRightJustify
        Properties.OnChange = cxSpinEdit1PropertiesChange
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Value = 5
        Width = 64
      end
      object cxLabel1: TcxLabel
        Left = 12
        Top = 267
        Caption = 'List Refresh (milliseconds)'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
    end
  end
  object qryPhoneMessage: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT PM.*, PM.ROWID FROM PHONEMESSAGE PM'
      'WHERE PM.EMPCODEFOR = :EMPCODE')
    Left = 729
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPCODE'
        Value = nil
      end>
    object qryPhoneMessageEMPCODEFOR: TStringField
      FieldName = 'EMPCODEFOR'
      Size = 3
    end
    object qryPhoneMessageCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryPhoneMessageMESSAGE: TStringField
      FieldName = 'MESSAGE'
      Size = 2000
    end
    object qryPhoneMessageEMPCODEBY: TStringField
      FieldName = 'EMPCODEBY'
      Size = 3
    end
    object qryPhoneMessageROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object dsPhoneMessage: TUniDataSource
    DataSet = qryPhoneMessage
    Left = 816
    Top = 188
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Phone Messages'
      'OutlookSync'
      'File'
      'Menus'
      'Day'
      'Default'
      'Calendar')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = imgGlyph
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone, dsTop]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 330
    Top = 460
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 247
      FloatTop = 199
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'siFile'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'siView'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'pbAppointment'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'pbDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'btnTimeGrid'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkViewAllEntries'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end>
      NotDocking = [dsNone]
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Add Phone Message'
      Category = 0
      Hint = 'Add Phone Message'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = dxBarButton1Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Delete Phone Message'
      Category = 0
      Hint = 'Delete Phone Message'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton7Click
    end
    object dxBarButton9: TdxBarButton
      Action = actOutlookSync
      Category = 1
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF90A9ADFF99CCFFFF99CCFFFF99CCFFFF66CC
        CCFF66CCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3399CCFF3399CCFF3399
        CCFF3399CCFF669999FF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF66CC
        FFFF66CCFFFF66CCCCFFFFFFFFFFFFFFFFFFFFFFFFFF3399CCFFF8F8F8FFE3E3
        E3FF6699CCFFCCFFFFFFCCFFFFFFC6D6EFFF99CCFFFF99CCFFFF99CCFFFF99CC
        FFFF66CCFFFF66CCFFFF66CCCCFFFFFFFFFFFFFFFFFF3399CCFFF0FBFFFF6699
        CCFF99CCCCFFCCFFFFFFCCFFFFFFCCFFFFFFC6D6EFFF99CCFFFF99CCFFFF99CC
        FFFF99CCFFFF66CCFFFF66CCFFFF90A9ADFFFFFFFFFF3399CCFFF1F1F1FF3366
        CCFFCCFFFFFFCCFFFFFFCCFFFFFFCCFFFFFF66CCCCFF0066CCFF3399CCFF99CC
        FFFF99CCFFFF99CCFFFF66CCFFFF90A9ADFFFFFFFFFF3399CCFFF1F1F1FF3366
        CCFFF0FBFFFFCCFFFFFFCCFFFFFF99CCCCFF0066CCFF3399CCFF3399CCFF0099
        CCFF99CCFFFF99CCFFFF99CCFFFF99CCCCFFFFFFFFFF3399CCFFF8F8F8FF3366
        CCFFC6D6EFFFF0FBFFFF99CCCCFF006699FF3399CCFFCCFFFFFFCCFFFFFF3399
        CCFF0099CCFF66CCFFFF99CCFFFF99CCFFFFFFFFFFFF3399CCFFF0FBFFFF3366
        CCFFC6D6EFFFF0FBFFFF006699FF3399CCFFCCFFFFFFCCFFFFFFCCFFFFFFCCFF
        FFFF6699CCFF66CCCCFF99CCFFFF99CCFFFFFFFFFFFF3399CCFFF0FBFFFF6699
        CCFF9999CCFFF0FBFFFFC6D6EFFFCCFFFFFFCCFFFFFFCCFFFFFFCCFFFFFFCCFF
        FFFFCCFFFFFFC6D6EFFF99CCFFFFB2B2B2FFFFFFFFFF3399CCFFF0FBFFFF99CC
        FFFF6699CCFFC6D6EFFFF0FBFFFFF0FBFFFFF0FBFFFFCCFFFFFFCCFFFFFFCCFF
        FFFFCCFFFFFFCCFFFFFFC6D6EFFFFFFFFFFFFFFFFFFF3399FFFFF0FBFFFF99CC
        FFFF99CCFFFF99CCCCFFC6D6EFFFF0FBFFFFF0FBFFFFF0FBFFFFCCFFFFFFCCFF
        FFFFCCFFFFFFCCFFFFFF6699CCFFFFFFFFFFFFFFFFFF3399CCFF99CCFFFFFFFF
        FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFFC6D6EFFFCCFFFFFFD6E7
        E7FFC6D6EFFF99CCFFFF3399FFFFFFFFFFFFFFFFFFFFFFFFFFFF3399CCFFCCFF
        FFFFFFFFFFFFC6D6EFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CC
        FFFF99CCFFFF99CCFFFF3399FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3399
        CCFF99CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF3399FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF3399CCFF3399CCFF3399FFFF3399FFFF3399FFFF3399FFFF3399FFFF3399
        FFFF3399FFFF3399FFFF3399FFFFFFFFFFFFFFFFFFFF}
    end
    object pbAppointment: TdxBarButton
      Action = actNewDiaryEntry
      Category = 2
      Hint = 'Create New Diary Entry'
    end
    object siNew: TdxBarSubItem
      Caption = 'New'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'pbAppointment'
        end
        item
          Visible = True
          ItemName = 'btnFee'
        end>
    end
    object siOpen: TdxBarSubItem
      Caption = 'Open'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'pbSelected'
        end>
    end
    object pbSelected: TdxBarButton
      Caption = 'Selected Items'
      Category = 2
      Hint = 'Selected Items'
      Visible = ivAlways
      ShortCut = 16463
    end
    object pbExit: TdxBarButton
      Caption = 'E&xit'
      Category = 2
      Hint = 'Exit'
      Visible = ivAlways
    end
    object pbDelete: TdxBarButton
      Caption = 'Delete'
      Category = 2
      Hint = 'Delete'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = pbDeleteClick
    end
    object btnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 2
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 14
      OnClick = btnRefreshClick
    end
    object btnPrint: TdxBarButton
      Caption = 'Print'
      Category = 2
      Enabled = False
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 15
      OnClick = btnPrintClick
    end
    object siFile: TdxBarSubItem
      Caption = 'File'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'siNew'
        end
        item
          Visible = True
          ItemName = 'siOpen'
        end>
    end
    object siView: TdxBarSubItem
      Caption = 'View'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Phone Messages'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxBarButton2: TdxBarButton
      Caption = 'T&oday'
      Category = 4
      Visible = ivAlways
      UnclickAfterDoing = False
      OnClick = dxBarButton2Click
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Matter'
      Category = 5
      Hint = 'Matter'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = dxBarButton8Click
    end
    object btnFee: TdxBarButton
      Caption = 'Fee'
      Category = 5
      Hint = 'New Fee'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btnFeeClick
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Convert to Fee'
      Category = 5
      Hint = 'Convert all events on selected date to fees'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 5
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton11Click
    end
    object dxbtnConvertSelEntry: TdxBarButton
      Caption = 'Convert To Fee'
      Category = 5
      Hint = 'Convert To Fee'
      Visible = ivAlways
      ImageIndex = 12
    end
    object chkViewAllEntries: TcxBarEditItem
      Caption = 'View all entries '
      Category = 5
      Hint = 'View all entries '
      Visible = ivAlways
      OnChange = chkViewAllEntriesChange
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chkViewAllEntriesPropertiesChange
      InternalEditValue = False
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Da&y'
      Category = 6
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      UnclickAfterDoing = False
      OnClick = ViewModeClick
    end
    object dxBarButton4: TdxBarButton
      Tag = 1
      Caption = 'Wo&rk Week'
      Category = 6
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      UnclickAfterDoing = False
      OnClick = ViewModeClick
    end
    object dxBarButton5: TdxBarButton
      Tag = 2
      Caption = '&Week'
      Category = 6
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      UnclickAfterDoing = False
      OnClick = ViewModeClick
    end
    object dxBarButton6: TdxBarButton
      Tag = 3
      Caption = '&Month'
      Category = 6
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      UnclickAfterDoing = False
      OnClick = ViewModeClick
    end
    object btnTimeGrid: TdxBarButton
      Tag = 4
      Caption = 'Time Grid'
      Category = 6
      Hint = 'Time Grid'
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
      OnClick = ViewModeClick
    end
  end
  object imgGlyph: TImageList
    Left = 429
    Top = 237
    Bitmap = {
      494C010112001500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000000000000000
      0000000000000000000090A9AD0099CCFF0099CCFF0099CCFF0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060003399CC003399CC003399CC003399
      CC006699990099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0066CCFF0066CC
      FF0066CCCC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF003399CC00F8F8F800E3E3E3006699
      CC00CCFFFF00CCFFFF00C6D6EF0099CCFF0099CCFF0099CCFF0099CCFF0066CC
      FF0066CCFF0066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080003399CC00F0FBFF006699CC0099CC
      CC00CCFFFF00CCFFFF00CCFFFF00C6D6EF0099CCFF0099CCFF0099CCFF0099CC
      FF0066CCFF0066CCFF0090A9AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080003399CC00F1F1F1003366CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0066CCCC000066CC003399CC0099CCFF0099CC
      FF0099CCFF0066CCFF0090A9AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060003399CC00F1F1F1003366CC00F0FB
      FF00CCFFFF00CCFFFF0099CCCC000066CC003399CC003399CC000099CC0099CC
      FF0099CCFF0099CCFF0099CCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000806060003399CC00F8F8F8003366CC00C6D6
      EF00F0FBFF0099CCCC00006699003399CC00CCFFFF00CCFFFF003399CC000099
      CC0066CCFF0099CCFF0099CCFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C00080606000000000003399CC00F0FBFF003366CC00C6D6
      EF00F0FBFF00006699003399CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF006699
      CC0066CCCC0099CCFF0099CCFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      8000806060008060600000000000000000003399CC00F0FBFF006699CC009999
      CC00F0FBFF00C6D6EF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00C6D6EF0099CCFF00B2B2B200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000003399CC00F0FBFF0099CCFF006699
      CC00C6D6EF00F0FBFF00F0FBFF00F0FBFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00C6D6EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000003399FF00F0FBFF0099CCFF0099CC
      FF0099CCCC00C6D6EF00F0FBFF00F0FBFF00F0FBFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF006699CC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000003399CC0099CCFF000000000099CC
      FF0099CCFF0099CCFF0099CCFF0099CCFF00C6D6EF00CCFFFF00D6E7E700C6D6
      EF0099CCFF003399FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF000000
      0000C6D6EF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CC
      FF0099CCFF003399FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC0099CC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000003399FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003399
      CC003399CC003399FF003399FF003399FF003399FF003399FF003399FF003399
      FF003399FF003399FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      708FB2B2B24D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A00000010000000110000
      0011000000110000001200000012000000120000001200000012000000120000
      001300000013000000120000000C000000030000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000099
      00FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCCCC330000
      00000000000000000000000000000000000081594CC2B47C69FFB37B69FFB37B
      68FFB37A68FFB37A68FFB27A68FFB27A68FFB37968FFB27968FFB27967FFB278
      67FFB17867FFB17866FF7F5649C30000000B0000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B33CC8080
      807F00000000000000000000000000000000B77F6EFFFBF8F5FFF8EEE9FFF8EE
      E9FFF7EFE8FFF7EEE8FFF7EEE8FFF7EEE8FFF7EDE7FFF7EDE6FFF6EDE6FFF6EC
      E6FFF6ECE6FFF6ECE5FFB47B69FF000000110000000000000000000000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF009900FF009900FF009900FF007C00FF333B
      33CCA5A5A55A000000000000000000000000B98472FFFBF8F6FFEDDFDAFFEDDF
      DAFFEDDFDAFFEDDFDAFFEDDFDAFFEDDFDAFFEDDFDAFFEDDFDAFFEDDFDAFFEDDF
      DAFFEDDFDAFFF7EDE7FFB77F6EFF000000110000000000000000840000008400
      000000FFFF008484840000FFFF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF109F10EF40B240BF20A520DF009900FF0073
      00FF404040BFF2F2F20D0000000000000000BC8978FFFCFAF8FFEDE0DAFF3995
      77FFEDE0DAFF402F26FF402F26FF402F26FF402F26FF402F26FF402F26FF402F
      26FFEDE0DAFFF8EEE9FFB98472FF0000001000000000840000008484840000FF
      FF0000FFFF00FFFFFF0000FFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20000000009FD89F60109F
      10EF335933CCB2B2B24D0000000000000000C08E7DFFFCFAF9FFEEE1DBFFEEE1
      DBFFEEE1DBFFEEE1DBFFEEE1DBFFEEE1DBFFEEE1DBFFEEE1DBFFEEE1DBFFEEE1
      DBFFEEE1DBFFF8F1EBFFBC8977FF00000010840000008400000000FFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000FFFFFF00000000000000000000000000000000008080
      800000FFFF000000000000FFFF000000000000FFFF00C0C0C00000FFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF005600FF454545BA0000000000000000BFE5
      BF40006900FF7373738C0000000000000000C39482FFFCFAFAFFEEE1DDFF3995
      77FFEEE1DDFF402F26FF402F26FF402F26FF402F26FF402F26FF402F26FF402F
      26FFEEE1DDFFF9F2EEFFC08E7CFF0000000F8400000000FFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00008080800000FFFF000000000000FFFF00C0C0C00000FFFF00C0C0C0000000
      00000000000000000000000000000000000000000000B2B2B24D000000000099
      00FF009900FF009900FF009900FF009900FF009900FF303030CF000000000000
      000060BF609F666D66990000000000000000C79887FFFDFBFAFFEFE2DEFFEFE2
      DEFFEFE2DEFFEFE2DEFFEFE2DEFFEFE2DEFFEFE2DEFFEFE2DEFFEFE2DEFFEFE2
      DEFFEFE2DEFFFAF4F0FFC49381FF0000000E8400000084848400FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00848484000000FF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000808080000000000000FFFF000000000000FFFF00C0C0C00000FFFF000000
      00000000000000000000000000000000000000000000334A33CCB2B2B24D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF20A5C3A55A0000000000000000C99D8CFFFDFCFCFFEFE3DEFF3995
      77FFEFE3DEFF402F26FF402F26FF402F26FF402F26FF402F26FF402F26FF402F
      26FFEFE3DEFFFAF6F2FFC69886FF0000000D8400000000FFFF0000FFFF00FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF0000FFFF0000FFFF0084000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008080800080808000000000000000
      00008080800000FFFF000000000000FFFF0000FFFF0000FFFF00C0C0C0000000
      00000000000000000000808080008080800000000000107810EF404040BFF2F2
      F20D0000000000000000378937C8136313EC114B11EE114311EE113411EE2435
      24DB00000000000000000000000000000000CDA190FFFEFCFCFFEFE3DFFFEFE3
      DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3
      DFFFEFE3DFFFFBF7F5FFC99D8BFF0000000D840000008400000000FFFF0000FF
      FF00FFFFFF000000FF00FFFFFF0000FFFF0000FFFF008400000084000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000808080000000000000FFFF000000000000FFFF00C0C0C00000FFFF000000
      0000000000000000000000000000000000000000000060BF609F004300FF5959
      59A6E5E5E51A00000000E5F4E51A109F10EF009900FF009900FF009900FF1847
      18E700000000000000000000000000000000CFA594FFFEFCFCFFFDF9F9FFFDF9
      F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9F7FFFCF9F7FFFDF8
      F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C00000000840000008484840000FF
      FF0000FFFF000000FF0000FFFF0000FFFF008484840084000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000BFE5BF40009900FF004D
      00FF404040BF8080807F99999966105210EF009900FF009900FF009900FF1545
      15EA000000000000000000000000000000004B53C3FF8D9EECFF687CE3FF6678
      E2FF6476E1FF6172E0FF5F70DFFF5F70DFFF5D6CDEFF5B69DCFF5966DBFF5664
      DAFF5462D9FF616DDCFF3337AAFF0000000B8400000084000000840000008400
      000000FFFF008484840000FFFF0084000000840000008400000084000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000008080800000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000000000000000000050B950AF0099
      00FF008600FF004D00FF005600FF008F00FF009900FF009900FF009900FF1444
      14EB000000000000000000000000000000004C55C4FF93A4EEFF6C80E6FF6A7E
      E4FF687BE4FF6678E2FF6375E1FF6375E1FF6172E0FF5E6FDEFF5C6CDDFF5A69
      DCFF5766DAFF6472DDFF3538ABFF0000000A8484840084000000000000008400
      000084000000840000008400000084000000FFFFFF008400000084848400FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF8EF1030AC
      30CF009900FF009900FF009900FF009900FF009900FF009900FF009900FF1645
      16E9000000000000000000000000000000004D56C6FF96A7EFFF95A6EFFF93A4
      EDFF90A2EDFF8F9FEDFF8B9BEBFF8B9BEBFF8898EAFF8595EAFF8291E7FF7F8D
      E7FF7D89E5FF7987E5FF3539ACFF000000090000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF8
      EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F80009900FF1947
      19E6000000000000000000000000000000003A4093C14D55C5FF4B53C3FF4A51
      C1FF484FBFFF464DBEFF444BBBFF444BBBFF4249B9FF4046B7FF3E44B4FF3C41
      B3FF3A3EB0FF393CAEFF282B80C2000000060000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F703D74
      3DC2000000000000000000000000000000000000000400000006000000060000
      0006000000070000000700000007000000070000000700000007000000070000
      0008000000080000000700000005000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D6000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C00010152007171710000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF0000000000000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E45000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF008400000084000000FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D0000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF0000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B8001111780000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF0084000000FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000000000000000000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B900000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      000000000000000000000000000000000000000000020000000A000000100000
      0011000000110000001100000012000000120000001200000012000000120000
      001300000013000000120000000C000000030000000000000000000000020000
      000A170D0738542D1894814626D193502AEA924F2AE87F4525D0522C17931209
      0530000000090000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A81594CC2B47C69FFB37B
      69FFB37B68FFB37A68FFB37A68FFB27A68FFB37968FFB27968FFB27967FFB278
      67FFB17867FFB17866FF7F5649C30000000B0000000000000003020101115931
      1B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A46BFFC58956FFA461
      37F53C2112730000000F00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000EB77F6EFFFBF8F5FFF8EE
      E9FFF8EEE8FFF7EFE8FFF7EEE8FFF7EEE8FFF7EDE7FFF7EDE6FFF6EDE6FFF6EC
      E6FFF6ECE6FFF6ECE5FFB47B69FF000000110000000202010110744226B9BC7C
      4DFFDDAE77FFDEB076FFDEAF75FFDEAF75FFDEB074FFDDAF75FFDEAF74FFDBAB
      72FFBD7E4EFF6F3E24B500000010000000020000000000000000000000000000
      00000000000084840000FFFF0000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000FFFF0000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000EB98472FFFBF8F6FFF8F0
      EAFFF7EFE9FFF8EFE9FF96837AFF533A30FF533A30FF7E6A61FFF7EDE7FFF7EC
      E7FFF6ECE6FFF7EDE7FFB77F6EFF00000011000000085C362095BE8053FFE0B3
      7CFFDFB076FFDEB177FFDFB279FFE0B379FFE0B27AFFE0B279FFDFB279FFDFB2
      77FFDEB077FFC08253FF55321D920000000A0000000000000000000000008484
      0000FFFF0000FFFF0000FFFF0000848400008484000084840000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      0000FFFF0000FFFF0000FFFF0000848400008484000084840000000000000000
      0000000000000000000000000000000000000000000EBC8978FFFCFAF8FFF9F1
      EDFFF8F0ECFFEDE4DFFF553D31FFD8CCC5FFE2D7D1FF6B544AFFAB9B93FFF8EE
      E9FFF7EEE8FFF8EEE9FFB98472FF00000010190F0932B07047FADFB27DFFDFB2
      7AFFE0B37BFFE0B57DFFE1B67EFFE2B67FFFE2B77FFFE2B77FFFE2B67EFFE0B4
      7CFFE0B47BFFDEB079FFB3734AFB130B072F8484000084840000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00C6C6C6008484000084840000848400008484
      0000000000000000000000000000000000008484000084840000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00C6C6C6008484000084840000848400008484
      0000000000000000000000000000000000000000000DC08E7DFFFCFAF9FFFAF3
      EFFFF9F2EEFFF9F2EEFFF9F2EDFFF9F1EDFFF9F2ECFF98867CFF826D63FFF9F0
      EBFFF8EFEAFFF8F1EBFFBC8977FF00000010613C2795CD9B6FFFE2B780FFE5BD
      89FFE7C291FFE8C393FFE8C494FFE8C594FFE8C495FFE8C495FFE8C494FFE8C3
      93FFE5BF8CFFE1B77FFFD09C6EFF5434218B84840000FFFF0000FFFF0000FFFF
      0000FFFFFF00FFFFFF00C6C6C600FFFF0000C6C6C60084840000848400008484
      00000000000000000000000000000000000084840000FFFF0000FFFF0000FFFF
      0000FFFFFF00FFFFFF00C6C6C600FFFF0000C6C6C60084840000848400008484
      0000000000000000000000000000000000000000000CC39482FFFCFAFAFFFBF5
      F2FFFBF4F1FFFAF4F1FFFAF3F0FFFAF3F0FFEFE7E3FF6F584DFFA4938AFFF9F2
      EDFFF9F2EDFFF9F2EEFFC08E7CFF0000000F935E3DD2DCB383FFE3B781FFBA86
      59FFA97043FFAB7245FFAC7346FFB0794AFFAB7245FFAD7547FFB0784AFFB17A
      4BFFC29162FFE4B983FFDEB17EFF8E5B3BD084840000FFFF0000FFFFFF00FFFF
      FF00C6C6C6008484000084840000C6C6C600FFFF0000C6C6C600848400000000
      0000FFFF0000C6C6C600848400000000000084840000FFFF0000FFFFFF00FFFF
      FF00C6C6C6008484000084840000C6C6C600FFFF0000C6C6C600848400000000
      0000FFFF0000C6C6C60084840000000000000000000BC79887FFFDFBFAFFFBF7
      F4FFFBF6F4FFFBF6F2FFA7968EFF5C4235FF5C4335FF7C665BFFE5DCD8FFFAF3
      F0FFFAF3F0FFFAF4F0FFC49381FF0000000EB0744CF2E3BF8FFFE4BB84FFA56B
      3FFFF5EEE9FFFAF6F3FFFAF7F3FFFBF7F4FFFBF7F5FFFAF7F4FFFAF7F3FFFAF6
      F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEE0000000084840000FFFF0000C6C6
      C60084840000C6C6C6008484000084840000C6C6C600FFFF0000C6C6C6000000
      0000FFFFFF00FFFF000084840000000000000000000084840000FFFF0000C6C6
      C60084840000C6C6C6008484000084840000C6C6C600FFFF0000C6C6C6000000
      0000FFFFFF00FFFF000084840000000000000000000BC99D8CFFFDFCFCFFFCF8
      F6FFFCF7F5FFFCF7F5FFB2A49CFFC7BBB5FFFBF6F3FFFBF6F3FFFBF6F2FFFBF6
      F2FFFAF5F2FFFAF6F2FFC69886FF0000000DAE764FECE9C9A0FFE5BE89FFA56B
      3FFFE6D9D2FFE7DBD4FFE9DED7FFEAE0D9FFEAE0DAFFEBE1DBFFEBE0DBFFEEE5
      E1FFAA7144FFE7C08CFFEACA9DFFAE764FEE000000000000000084840000FFFF
      0000C6C6C60084840000C6C6C60084840000C6C6C600FFFF0000C6C6C600C6C6
      C600FFFF0000C6C6C6008484000000000000000000000000000084840000FFFF
      0000C6C6C60084840000C6C6C60084840000C6C6C600FFFF0000C6C6C600C6C6
      C600FFFF0000C6C6C60084840000000000000000000ACDA190FFFEFCFCFFFCF9
      F8FFFCF8F7FFFCF9F7FFC8BDB8FF614639FF614639FF614639FFB3A49DFFFCF7
      F5FFFBF6F5FFFBF7F5FFC99D8BFF0000000D9A6A49D0E9CDACFFEAC796FFB784
      56FFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B
      3FFFB78457FFEACA99FFEBD1ADFF996A49D40000000000000000000000008484
      0000FFFF0000C6C6C600C6C6C600FFFF0000FFFF0000FFFFFF00000000000000
      0000C6C6C600FFFF0000C6C6C600848400000000000000000000000000008484
      0000FFFF0000C6C6C600C6C6C600FFFF0000FFFF00000000FF000000FF000000
      0000C6C6C600FFFF0000C6C6C6008484000000000009CFA594FFFEFCFCFFFDFA
      F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9F7FFFCF9F7FFFDF8
      F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C6E4E3697DDBB9DFFEED3A9FFEECF
      A2FFEED2A5FFF0D6A9FFF1D7ABFFF1D8ADFFF1D8ADFFF1D8ADFFF1D6AAFFF0D5
      A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F0000000000000000000000008484
      000084840000FFFFFF00FFFF0000FFFFFF00000000008484840000000000FFFF
      FF0000FF000000FF000084840000000000000000000000000000000000008484
      000084840000FFFFFF00FFFF0000FFFFFF00000000000000FF000000FF00FFFF
      FF00FFFF0000C6C6C600848400000000FF00000000084B53C3FF8D9EECFF687C
      E3FF6678E2FF6476E1FF6172E0FF5F70DFFF5D6CDEFF5B69DCFF5966DBFF5664
      DAFF5462D9FF616DDCFF3337AAFF0000000B1C140E2BC7946CFCF5E8CCFFEFD6
      ABFFF1D8AEFFF2DAB0FFF3DCB3FFF3DEB4FFF3DEB4FFF3DEB4FFF3DCB2FFF1DB
      B0FFF1D8ADFFF7EACDFFC69470FA1A120D2E0000000000000000848400000000
      00008484000000000000C6C6C600000000008484840084848400FFFF0000FFFF
      000000FF000000FF000000000000000000000000000000000000848400000000
      00008484000000000000C6C6C6000000000084848400848484000000FF000000
      FF00C6C6C600848400000000FF000000FF00000000084C55C4FF93A4EEFF6C80
      E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6172E0FF5E6FDEFF5C6CDDFF5A69
      DCFF5766DAFF6472DDFF3538ABFF0000000A000000036F523C92D7B08CFFF8EF
      D3FFF3E0B9FFF3DFB7FFF4E1B9FFF5E3BBFFF5E2BBFFF5E2BBFFF4E1B9FFF4E2
      BDFFFAF1D5FFD9B390FF664B368C00000006000000000000000084840000C6C6
      C600FFFF0000848484008484840000000000FFFF0000FFFF000000FF000000FF
      000000FF000000FF000000FF000000FF0000000000000000000084840000C6C6
      C600FFFF0000848484008484840000000000FFFF0000FFFF0000C6C6C6000000
      FF000000FF000000FF000000FF0000000000000000074D56C6FF96A7EFFF95A6
      EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8898EAFF8595EAFF8291E7FF7F8D
      E7FF7D89E5FF7987E5FF3539ACFF000000090000000102020107906C4EB8D9B3
      8FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7ECCAFFF8EED0FFF4E8
      CDFFD7AF8BFF88664AB30202010B000000010000000000000000000000008484
      0000C6C6C600FFFF0000FFFFFF00FFFF0000C6C6C6008484000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000008484
      0000C6C6C600FFFF0000FFFFFF00FFFF0000C6C6C600848400000000FF000000
      FF000000FF000000FF000000000000000000000000043A4093C14D55C5FF4B53
      C3FF4A51C1FF484FBFFF464DBEFF444BBBFF4249B9FF4046B7FF3E44B4FF3C41
      B3FF3A3EB0FF393CAEFF282B80C2000000060000000000000001020201077054
      3F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8B9FFE3C5A3FFC599
      73F24C392A670000000600000001000000000000000000000000000000000000
      0000848400008484000084840000848400008484000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      000084840000848400008484000084840000848400000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000100000004000000060000
      0006000000060000000700000007000000070000000700000007000000070000
      0008000000080000000700000005000000010000000000000000000000010000
      00022019122C6C543E89A47E5FCCC59770F1C19570EEA47E60CD6C543F8B1611
      0D22000000030000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      000000000000000000000000FF000000FF00765448BEA67565FFA57465FFA574
      64FFA57464FFA47463FFA47464FFA47363FFA47364FFA47363FFA47362FFA373
      62FF755247BF000000070000000000000000000000020000000A000000100000
      0011000000110000001100000012000000120000001200000012000000120000
      001300000013000000120000000C00000003000000020000000A000000100000
      0011000000110000001100000012000000120000001200000012000000120000
      001300000013000000120000000C00000003000000020000000A000000100000
      0011000000110000001100000012000000120000001200000012000000120000
      001300000013000000120000000C00000003A77767FFF7F2EBFFF7F2ECFFF7F3
      EBFFCEB4A8FFF7F2EBFFF7F2EBFFF7F2EBFFCEB3A8FFF7F2EBFFF7F2EBFFF7F2
      EBFFA57364FF0000000A00000000000000000000000A81594CC2B47C69FFB37B
      69FFB37B68FFB37A68FFB37A68FFB27A68FFB37968FFB27968FFB27967FFB278
      67FFB17867FFB17866FF7F5649C30000000B0000000A81594CC2B47C69FFB37B
      69FFB37B68FFB37A68FFB37A68FFB27A68FFB37968FFB27968FFB27967FFB278
      67FFB17867FFB17866FF7F5649C30000000B0000000A81594CC2B47C69FFB37B
      69FFB37B68FFB37A68FFB37A68FFB27A68FFB37968FFB27968FFB27967FFB278
      67FFB17867FFB17866FF7F5649C30000000BA87969FFF8F3ECFFF7F2ECFFFAF6
      F2FFDECDC5FFFAF6F2FFFAF6F1FFFAF6F2FFDECDC5FFFAF6F1FFF7F2ECFFF8F2
      EBFFA67665FF0000000B00000000000000000000000EB77F6EFFFBF7F4FFF8EE
      E9FFF8EEE8FFF7EFE8FFFAF4F0FFFBF7F4FFFBF6F3FFFAF4EFFFF6EDE6FFF6EC
      E6FFF6ECE6FFF6ECE5FFB47B69FF000000110000000EB77F6EFFFBF7F4FFF9F0
      EBFFFBF5F1FFFBF7F4FFFBF7F4FFF9F3EEFFF7EDE7FFFAF4EFFFFBF6F3FFFBF6
      F3FFF9F3EFFFF6ECE5FFB47B69FF000000110000000EB77F6EFFFBF7F4FFF8EE
      E9FFF8EEE8FFF7EFE8FFFBF6F3FFFBF6F3FFF7EDE7FFF7EDE6FFF6EDE6FFF6EC
      E6FFF6ECE6FFF6ECE5FFB47B69FF00000011AB7B6BFFD1B7ACFFD1B7ACFFE0CE
      C6FF32835DFF31825DFF31815CFF31815CFF2F7F59FFDFCDC5FFD0B5AAFFD0B5
      A9FFA77768FF0000000A00000000000000000000000EB98472FFFBF8F5FFF8F0
      EAFFF7EFE9FFF8EFE9FF806B62FF543B31FF543B30FF7F6A61FFF7EDE7FFF7EC
      E7FFF6ECE6FFF7EDE7FFB77F6EFF000000110000000EB98472FFFBF8F5FFDAD0
      C9FF776258FF563D32FF553D32FFA3948DFFF8F1ECFF806B62FF543B31FF543B
      30FF7E6961FFF7EDE7FFB77F6EFF000000110000000EB98472FFFBF8F5FFF8F0
      EAFFF7EFE9FFF8EFE9FF96847BFF998982FFF8EFEAFFF8EEE8FFF7EDE7FFF7EC
      E7FFF6ECE6FFF7EDE7FFB77F6EFF00000011AD7E6EFFF8F3EEFFF8F4EEFFFAF8
      F3FF338761FF57DDB7FF43DAAEFF42D9AEFF32835EFFFAF7F3FFF8F4EDFFF8F3
      EDFFAA7A69FF0000000900000000000000000000000EBC8978FFFCF9F7FFF9F1
      EDFFF8F0ECFFF8F0EBFFF9F0EBFF98877EFF816E64FFF8EFEAFFF7EFE9FFF8EE
      E9FFF7EEE8FFF8EEE9FFB98472FF000000100000000EBC8978FFFCF9F7FFAF9F
      97FF8F7B71FFF8F0EBFFD9CDC7FF573F33FFC3B5AFFFF8EFEAFF97867EFF816E
      64FFF7EEE8FFF8EEE9FFB98472FF000000100000000EBC8978FFFCF9F7FFF9F1
      EDFFF8F0ECFFF8F0EBFFF9F0EBFF6A5249FFEAE3E0FFF8EFEAFFF7EFE9FFF8EE
      E9FFF7EEE8FFF8EEE9FFB98472FF00000010AF8070FFF9F5F0FFF9F4EFFFFBF8
      F4FF358B65FF5CE0BBFF45DBB1FF44DBB0FF348861FFFAF8F3FFF9F4EFFFF9F4
      EFFFAB7C6CFF0000000900000000000000000000000DC08E7DFFFCFAF8FFFAF3
      EFFFF9F2EEFFF9F2EEFFF9F2EDFF9A887FFF837066FFF9F1ECFFF8F1EBFFF9F0
      EBFFF8EFEAFFF8F1EBFFBC8977FF000000100000000DC08E7DFFFCFAF8FFFAF3
      EFFFF9F2EEFFFCF9F7FFE7E0DBFF5A4034FFCEC3BBFFF9F1ECFF99887FFF8370
      66FFF8EFEAFFF8F1EBFFBC8977FF000000100000000DC08E7DFFFCFAF8FFFAF3
      EFFFF9F2EEFFF9F2EEFFF9F2EDFFA6948CFF9B8C85FFF9F2EDFFF8F1EBFFF9F0
      EBFFF8EFEAFFF8F1EBFFBC8977FF00000010B18373FFD5BCB1FFD5BCB1FFE2D2
      CAFF39916BFF63E2BEFF47DDB3FF46DDB2FF368D67FFE1D0C9FFD4BBB0FFD3BA
      AFFFAD7E6EFF0000000800000000000000000000000CC39482FFFCFBF9FFFBF5
      F2FFFBF4F1FFFAF4F1FFFAF3F0FF9B8981FF847268FFFAF2EEFFF9F2EEFFF9F2
      EDFFF9F2EDFFF9F2EEFFC08E7CFF0000000F0000000CC39482FFFCFBF9FFFBF5
      F2FFFBF4F1FF5D4336FF725A4FFFB2A39CFFFAF3EFFFFAF2EEFF9B8980FF8472
      68FFF9F2EDFFF9F2EEFFC08E7CFF0000000F0000000CC39482FFFCFBF9FFFBF5
      F2FFFBF4F1FFFAF4F1FFFAF3F0FFFAF3F0FF6E574CFFECE6E3FFF9F2EEFFF9F2
      EDFFF9F2EDFFF9F2EEFFC08E7CFF0000000FB48675FFFAF6F2FFFAF6F2FFFCF9
      F6FF3B966FFF67E3C2FF49DEB6FF49DEB5FF39916BFFFBF9F6FFFCF9F5FFF9F6
      F1FFAF8171FF0000000800000000000000000000000BC79887FFFDFCFAFFFBF7
      F4FFFBF6F4FFFBF6F2FFFCF9F7FF9D8C84FF877368FFFAF5F1FFFAF4F1FFFAF3
      F0FFFAF3F0FFFAF4F0FFC49381FF0000000E0000000BC79887FFFDFCFAFFFCF8
      F5FFFDFAF9FFFBF6F2FFBDB0A9FF7F685EFFFAF4F1FFFCF9F6FF9D8C84FF8772
      68FFFAF3F0FFFAF4F0FFC49381FF0000000E0000000BC79887FFFDFCFAFFFBF7
      F4FFFBF6F4FFFBF6F2FFFDFBFAFFFBF5F2FFA99990FF9F8F87FFFBF5F3FFFAF3
      F0FFFAF3F0FFFAF4F0FFC49381FF0000000EB68979FFFAF7F3FFFBF7F2FFFCF9
      F7FF3E9A75FF6DE6C5FF6DE5C4FF6CE5C4FF3C9770FFFCFAF6FFFCFAF8FFFCFA
      F7FFB89081FF0000000700000000000000000000000BC99D8CFFFDFCFBFFFCF8
      F6FFFCF7F5FFFCF7F5FF89746AFF5F4538FF88746AFFFBF6F3FFFBF6F2FFFBF6
      F2FFFAF5F2FFFAF6F2FFC69886FF0000000D0000000BC99D8CFFFDFCFBFFD3C9
      C4FF6D5346FFFEFBFAFFBFB3ADFF614639FFF1EAE7FF89746AFF5F4538FF8874
      6AFFFAF5F2FFFAF6F2FFC69886FF0000000D0000000BC99D8CFFFDFCFBFFFCF8
      F6FFFCF7F5FFFCF7F5FF8F7B72FFFFFFFFFFFFFFFFFF7C655AFFDFD8D5FFFBF6
      F2FFFAF5F2FFFAF6F2FFC69886FF0000000DB88C7BFFD9C1B7FFD9C1B7FFE5D4
      CEFF41A079FF3F9E78FF3E9E76FF3E9C76FF3E9B75FFE5D4CDFFEADDD8FF7A9F
      C9FFDAC3BBFF103B679000000000000000000000000ACDA190FFFEFDFCFFFCF9
      F8FFFCF8F7FFFCF9F7FFFCF8F7FFBEB1AAFF8B756BFFFCF7F6FFFCF7F6FFFCF7
      F5FFFBF6F5FFFBF7F5FFC99D8BFF0000000D0000000ACDA190FFFEFDFCFFFCF9
      F8FF8C786DFF65493AFF63483BFFA18E85FFFCF7F6FFFCF7F6FFBEB1AAFF8B75
      6AFFFBF6F5FFFBF7F5FFC99D8BFF0000000D0000000ACDA190FFFEFDFCFFFCF9
      F8FFFCF8F7FFFCF9F7FF664B3CFF654A3CFF65493BFF64483BFF8E796EFFFCF7
      F5FFFBF6F5FFFBF7F5FFC99D8BFF0000000DBB8F7EFFFBF8F5FFFBF8F5FFFCFA
      F8FFE6D6CFFFFDFBF8FFFCFAF8FFFDFCFBFFF2EAE7FFFEFDFCFFFDFCFAFF206F
      C1FF3A7ABFFF1F6DBDFC000000000000000000000009CFA594FFFEFDFDFFFDFA
      F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9F7FFFCF9F7FFFDF8
      F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C00000009CFA594FFFEFDFDFFFDFA
      F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9F7FFFCF9F7FFFDF8
      F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C00000009CFA594FFFEFDFDFFFDFA
      F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9F7FFFCF9F7FFFDF8
      F7FFFCF9F7FFFCF9F7FFCCA290FF0000000CBD9281FFFCF9F5FFFCF9F6FFFCF8
      F6FFDBC4BAFFFCF9F5FFFBF9F5FFFCF8F5FFE9DBD5FF8EB7E0FF2476C5FF5D9F
      D7FF87C2EAFF539BD7FF2271C2FF113A6484000000084B53C3FF8D9EECFF687C
      E3FF6678E2FF6476E1FF6172E0FF5F70DFFF5D6CDEFF5B69DCFF5966DBFF5664
      DAFF5462D9FF616DDCFF3337AAFF0000000B000000084B53C3FF8D9EECFF687C
      E3FF6678E2FF6476E1FF6172E0FF5F70DFFF5D6CDEFF5B69DCFF5966DBFF5664
      DAFF5462D9FF616DDCFF3337AAFF0000000B000000084B53C3FF8D9EECFF687C
      E3FF6678E2FF6476E1FF6172E0FF5F70DFFF5D6CDEFF5B69DCFF5966DBFF5664
      DAFF5462D9FF616DDCFF3337AAFF0000000B957669C0C89F8EFFC89E8EFFC79E
      8DFFC79E8CFFC79D8CFFC69C8CFFC59C8BFFCBA596FFE0CCC4FF4187C8FF93C7
      EBFFC2EDFDFF83C0EAFF1D5E9FCC00000000000000084C55C4FF93A4EEFF6C80
      E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6172E0FF5E6FDEFF5C6CDDFF5A69
      DCFF5766DAFF6472DDFF3538ABFF0000000A000000084C55C4FF93A4EEFF6C80
      E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6172E0FF5E6FDEFF5C6CDDFF5A69
      DCFF5766DAFF6472DDFF3538ABFF0000000A000000084C55C4FF93A4EEFF6C80
      E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6172E0FF5E6FDEFF5C6CDDFF5A69
      DCFF5766DAFF6472DDFF3538ABFF0000000A0000000200000004000000040000
      00040000000400000004000000040000000400000004194D7A982B81CEFF61A6
      DEFF90C6EAFF60A4DCFF277DCAFF14426A87000000074D56C6FF96A7EFFF95A6
      EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8898EAFF8595EAFF8291E7FF7F8D
      E7FF7D89E5FF7987E5FF3539ACFF00000009000000074D56C6FF96A7EFFF95A6
      EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8898EAFF8595EAFF8291E7FF7F8D
      E7FF7D89E5FF7987E5FF3539ACFF00000009000000074D56C6FF96A7EFFF95A6
      EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8898EAFF8595EAFF8291E7FF7F8D
      E7FF7D89E5FF7987E5FF3539ACFF000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D86
      D1FF236AA6CC2B83D0FF0000000000000000000000043A4093C14D55C5FF4B53
      C3FF4A51C1FF484FBFFF464DBEFF444BBBFF4249B9FF4046B7FF3E44B4FF3C41
      B3FF3A3EB0FF393CAEFF282B80C200000006000000043A4093C14D55C5FF4B53
      C3FF4A51C1FF484FBFFF464DBEFF444BBBFF4249B9FF4046B7FF3E44B4FF3C41
      B3FF3A3EB0FF393CAEFF282B80C200000006000000043A4093C14D55C5FF4B53
      C3FF4A51C1FF484FBFFF464DBEFF444BBBFF4249B9FF4046B7FF3E44B4FF3C41
      B3FF3A3EB0FF393CAEFF282B80C2000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001844
      697E000000001949728A00000000000000000000000100000004000000060000
      0006000000060000000700000007000000070000000700000007000000070000
      0008000000080000000700000005000000010000000100000004000000060000
      0006000000060000000700000007000000070000000700000007000000070000
      0008000000080000000700000005000000010000000100000004000000060000
      0006000000060000000700000007000000070000000700000007000000070000
      000800000008000000070000000500000001424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00F03FFFFF00000000E007FC0F00000000
      C000000700000000800000030000000000000001000000000000000100000000
      00000001000000008000000100000000E001000100000000F003000100000000
      F01F000300000000E03F000300000000E03F200300000000C03F900300000000
      C07FCFFB00000000F8FFE00300000000F000FFFFE7FF0000F000DFFBE01F0000
      F000EFF7E00F0000E000F7EFE0070000C000FE7FE00300008000C003E0430000
      0000E507E06300000000F20FA03300000000F50F9FF30000000012088C0F0000
      0000F50F840F00008000FA1F800F00000000FD3FC00F00002001F66FC00F0000
      F003EE77E00F0000F007DFFBFFCF0000FFFF8003FFFFF80FFFFF8003FFFFE007
      FFFF8003FFFFC003E0078003FFFF8001C0078003C00F8001C007800380070001
      C007800380030001C007800380010001C007800380010001C0078003800F0001
      C00F8003800F0001E07F8003801F0001E07F8003C0FF8003FFFF8007C0FFC003
      FFFF800FFFFFE00FFFFF801FFFFFF01F00000000FFFFFFFF00000000F8FFF8FF
      00000000E03FE03F00000000800F800F00000000000300030000000000010001
      0000000000000000000000008000800000000000C000C00000000000E000E000
      00000000E001E00000000000C003C00000000000C000C00100000000E000E003
      00000000F073F01100000000FFF3FFBC00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object amPhoneMessages: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Action = Action7
            Caption = '&Add Phone Message'
            ImageIndex = 10
          end
          item
            Action = Action8
            Caption = 'D&elete Phone Message'
            ImageIndex = 9
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Caption = '-'
              end
              item
                Caption = '&Print'
              end
              item
                Caption = '-'
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Caption = '&View Interval'
                UsageCount = 1
              end
              item
                Caption = 'V&iew Cell Height'
                UsageCount = 1
              end>
            Caption = '&View'
          end
          item
            Caption = '&Help'
          end>
      end
      item
      end>
    Images = imgGlyph
    Left = 490
    Top = 588
    StyleName = 'XP Style'
    object Action7: TAction
      Category = 'Phone Message'
      Caption = 'Add Phone Message'
      Hint = 'Add Phone Message'
      ImageIndex = 6
    end
    object Action8: TAction
      Category = 'Phone Message'
      Caption = 'Delete Phone Message'
      Hint = 'Delete Phone Message'
      ImageIndex = 7
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
      end>
    Images = imgGlyph
    Left = 179
    Top = 442
    StyleName = 'XP Style'
    object aWeek: TAction
      Caption = '&Week'
      ImageIndex = 3
    end
    object aMonth: TAction
      Caption = '&Month'
      ImageIndex = 2
    end
    object aDay: TAction
      Caption = 'Da&y'
      ImageIndex = 1
    end
    object aToday: TAction
      Caption = 'T&oday'
    end
    object aWorkWeek: TAction
      Caption = 'Wo&rk Week'
      ImageIndex = 4
    end
    object actNewDiaryEntry: TAction
      Caption = 'Diary Entry'
      ImageIndex = 0
      OnExecute = actNewDiaryEntryExecute
    end
    object actOutlookSync: TAction
      Category = 'Outlook Sync'
      Caption = 'Outlook Sync'
      ImageIndex = 17
      OnExecute = actOutlookSyncExecute
      OnUpdate = actOutlookSyncUpdate
    end
  end
  object dsDiary: TUniDataSource
    AutoEdit = False
    DataSet = qryDiary
    Left = 616
    Top = 342
  end
  object qryEvents: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT TRUNC(D.START_DT) AS GroupField'
      ' , UPPER(D.LOCATION || '#39' '#39' || D.JURISDICTION) AS JurLoc'
      ' , D.START_DT, D.FILEID, M.LONGDESCR AS MatterDescr, D.EVENT'
      ' , m.controller || '#39':'#39' || D.ENTERED_BY as People, M.shortdescr'
      ' , D.SEARCH_KEY, D.DESCR, D.EVENTPRINTDESCR, d.reminder_for'
      'FROM DIARY D, ALLMATTERS M'
      'WHERE D.START_DT >= :P_DateFrom'
      '  AND D.START_DT < :P_DateTo'
      '  AND D.FILEID = M.FILEID(+)'
      'ORDER BY 1, 2, 3')
    Left = 528
    Top = 290
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
    object qryEventsGROUPFIELD: TDateTimeField
      FieldName = 'GROUPFIELD'
    end
    object qryEventsJURLOC: TStringField
      FieldName = 'JURLOC'
      Size = 101
    end
    object qryEventsSTART_DT: TDateTimeField
      FieldName = 'START_DT'
    end
    object qryEventsFILEID: TStringField
      FieldName = 'FILEID'
      Size = 12
    end
    object qryEventsMATTERDESCR: TStringField
      FieldName = 'MATTERDESCR'
      Size = 400
    end
    object qryEventsEVENT: TStringField
      FieldName = 'EVENT'
    end
    object qryEventsPEOPLE: TStringField
      FieldName = 'PEOPLE'
      Size = 7
    end
    object qryEventsSEARCH_KEY: TStringField
      FieldName = 'SEARCH_KEY'
      Size = 35
    end
    object qryEventsDESCR: TStringField
      FieldName = 'DESCR'
      Size = 500
    end
    object qryEventsEVENTPRINTDESCR: TStringField
      FieldName = 'EVENTPRINTDESCR'
      Size = 1
    end
    object qryEventsEventDescr: TStringField
      FieldKind = fkCalculated
      FieldName = 'EventDescr'
      Size = 1000
      Calculated = True
    end
    object qryEventsREMINDER_FOR: TStringField
      FieldName = 'REMINDER_FOR'
      Size = 3
    end
  end
  object tmrQuery: TTimer
    Enabled = False
    Interval = 800
    OnTimer = tmrQueryTimer
    Left = 71
    Top = 499
  end
  object SchedulerDBStorage: TcxSchedulerDBStorage
    Reminders.TimeZoneDaylightSaving = True
    Reminders.UseReminderWindow = False
    Resources.Items = <>
    Resources.DataSource = dsEmployee
    Resources.ResourceID = 'NEMPLOYEE'
    Resources.ResourceName = 'NAME'
    SmartRefresh = True
    CustomFields = <
      item
        FieldName = 'NNAME'
      end
      item
        FieldName = 'ENTRYID'
      end
      item
        FieldName = 'MODIFIED'
      end
      item
        FieldName = 'PRIVATE'
      end
      item
        FieldName = 'EVENT_TYPE'
      end>
    Holidays = cxSchedulerHolidays1
    DataSource = dsDiary
    FieldNames.Caption = 'CAPTION'
    FieldNames.EventType = 'EVENTTYPE'
    FieldNames.Finish = 'END_DT'
    FieldNames.ID = 'NDIARY'
    FieldNames.LabelColor = 'LABELCOLOUR'
    FieldNames.Location = 'LOCATION'
    FieldNames.Message = 'DESCR'
    FieldNames.Options = 'OPTIONS'
    FieldNames.RecurrenceIndex = 'RECURRENCEINDEX'
    FieldNames.RecurrenceInfo = 'RECURRENCEINFO'
    FieldNames.ReminderMinutesBeforeStart = 'NOTIFY_MINS'
    FieldNames.ResourceID = 'RESOURCEID'
    FieldNames.Start = 'START_DT'
    FieldNames.State = 'STATE'
    Left = 379
    Top = 372
  end
  object qryTime: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT D.REMINDER_FOR, D.START_DT, D.END_DT, D.SEARCH_KEY, D.DES' +
        'CR, D.NDIARY, D.FILEID, D.NOTIFY, D.NFEE,'
      '  NULL AS CLIENTNAME, NULL AS SHORTDESCR, D.NMATTER'
      'FROM DIARY D'
      'WHERE D.REMINDER_FOR = :REMINDER_FOR'
      '  AND D.START_DT >= :START_DT'
      '  AND D.NMATTER IS NULL'
      '  AND D.NFEE IS NULL'
      'UNION'
      
        'SELECT D.REMINDER_FOR, D.START_DT, D.END_DT, D.SEARCH_KEY, D.DES' +
        'CR, D.NDIARY, D.FILEID, D.NOTIFY, D.NFEE,'
      '  P.SEARCH AS CLIENTNAME, M.SHORTDESCR, D.NMATTER'
      'FROM DIARY D, MATTER M, PHONEBOOK P'
      'WHERE D.REMINDER_FOR = :REMINDER_FOR'
      '  AND D.START_DT >= :START_DT'
      '  AND D.NMATTER IS NOT NULL AND D.NMATTER = M.NMATTER'
      '  AND M.NCLIENT = P.NCLIENT'
      '  AND D.NFEE IS NULL'
      'ORDER BY 1, 2'
      ' ')
    Left = 535
    Top = 378
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REMINDER_FOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'START_DT'
        Value = nil
      end>
  end
  object qryUpdateNFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE diary SET nfee = :p_nfee where ndiary = :p_ndiary')
    Left = 259
    Top = 582
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nfee'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_ndiary'
        Value = nil
      end>
  end
  object qryFeeInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO FEE'
      '    (CREATED, AMOUNT, AUTHOR, PARTNER, BANK_ACCT, BILLED,'
      
        '     DEPT, EMP_TYPE, DESCR, FILEID, NMATTER, NCLIENT, NMEMO, NFE' +
        'E)'
      'VALUES'
      '    (:CREATED, :AMOUNT, :AUTHOR, :PARTNER, :BANK_ACCT, '#39'N'#39','
      
        '     :DEPT, :EMP_TYPE, :DESCR, :FILEID, :NMATTER, :NCLIENT, 0, :' +
        'NFEE)'
      '')
    Left = 611
    Top = 536
    ParamData = <
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
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
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
        Name = 'NFEE'
        Value = nil
      end>
  end
  object qrySundryInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRY'
      '    (CREATED, AMOUNT, ACCT, BILLED,'
      '     TYPE, DESCR, FILEID, NMATTER, NCLIENT, NMEMO, NSUNDRY)'
      'VALUES'
      '    (:CREATED, :AMOUNT, :ACCT, '#39'N'#39','
      '     :TYPE, :DESCR, :FILEID, :NMATTER, :NCLIENT, 0, :NSUNDRY)')
    Left = 387
    Top = 558
    ParamData = <
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
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
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
        Name = 'NSUNDRY'
        Value = nil
      end>
  end
  object qryDiary: TUniQuery
    UpdatingTable = 'DIARY'
    KeyFields = 'ndiary'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   d.start_dt, d.end_dt, d.reminder_for, d.entered_by, d.n' +
        'diary,'
      
        '         d.descr || '#39' - '#39'|| p.search as caption1, '#39'Appointment -' +
        ' '#39'|| d.descr as descr1,'
      
        '         p.search, d.priority, d.fileid, d.task, d.TYPE, d.LOCAT' +
        'ION,'
      
        '         d.jurisdiction, d.event, d.dataformfield, d.eventprintd' +
        'escr, d.nname,'
      
        '         d.options, d.labelcolour, d.state, d.resourceid, d.recu' +
        'rrenceindex,'
      
        '         d.options, d.reminder, d.caption, d.ROWID, NULL AS shor' +
        'tdescr,'
      
        '         NULL AS clientname, d.event_type, d.entryid, d.descr, d' +
        '.notify_mins, D.MODIFIED, d.private, d.eventtype, D.RECURRENCEIN' +
        'FO'
      
        '    FROM diary d LEFT OUTER JOIN phonebook p ON (d.nname = p.nna' +
        'me)'
      
        '   WHERE (d.reminder_for = :reminder_for AND d.fileid IS NULL)  ' +
        ' '
      'UNION ALL'
      
        'SELECT   d.start_dt, d.end_dt, d.reminder_for, d.entered_by, d.n' +
        'diary,'
      
        '         d.descr|| '#39' - '#39'|| p.search as caption1, '#39'Appointment - ' +
        #39'|| d.descr as descr1, '
      
        '         d.search_key, d.priority, d.fileid, d.task, d.TYPE, d.L' +
        'OCATION, '
      
        '         d.jurisdiction, d.event, d.dataformfield, d.eventprintd' +
        'escr, d.nmatter,'
      
        '         d.options, d.labelcolour, d.state, d.resourceid, d.recu' +
        'rrenceindex, '
      
        '         d.options, d.reminder, d.caption, d.ROWID, m.shortdescr' +
        ', '
      
        '         p.search as clientname, d.event_type, d.entryid, d.desc' +
        'r, d.notify_mins, D.MODIFIED, d.private, d.eventtype, D.RECURREN' +
        'CEINFO'
      '    FROM matter m JOIN phonebook p ON (m.nclient = p.nclient)'
      '         JOIN diary d ON (d.fileid = m.fileid)'
      '   WHERE (    d.reminder_for = :reminder_for'
      '          AND m.nclient = p.nclient'
      '          AND d.fileid IS NOT NULL'
      '          AND d.fileid = m.fileid'
      '         )'
      'ORDER BY 1'
      ''
      ''
      ''
      ''
      '/*'
      'SELECT   /*+ FIRST_ROWS */'
      
        '/*         d.start_dt, d.end_dt, d.reminder_for, d.entered_by, d' +
        '.ndiary,'
      
        '         d.descr, d.search_key, d.priority, d.fileid, d.task, d.' +
        'TYPE,'
      '         d.LOCATION, d.jurisdiction, d.event, d.dataformfield,'
      
        '         d.eventprintdescr, NULL AS shortdescr, NULL AS clientna' +
        'me, d.nmatter,'
      
        '         d.options, d.labelcolour, d.state, d.resourceid, d.recu' +
        'rrenceindex,'
      
        '         d.options, d.reminder, d.caption, d.ROWID, NULL AS shor' +
        'tdescr,'
      '         NULL AS clientname, d.event_type, d.entryid'
      '    FROM diary d'
      '   WHERE d.fileid IS NULL AND d.reminder_for = :reminder_for'
      'UNION ALL'
      'SELECT   /*+ FIRST_ROWS */'
      
        '/*         d.start_dt, d.end_dt, d.reminder_for, d.entered_by, d' +
        '.ndiary,'
      
        '         d.descr, d.search_key, d.priority, d.fileid, d.task, d.' +
        'TYPE,'
      '         d.LOCATION, d.jurisdiction, d.event, d.dataformfield,'
      
        '         d.eventprintdescr, NULL AS shortdescr, NULL AS clientna' +
        'me, d.nmatter,'
      
        '         d.options, d.labelcolour, d.state, d.resourceid, d.recu' +
        'rrenceindex,'
      
        '         d.options, d.reminder, d.caption, d.ROWID, m.shortdescr' +
        ','
      '         p.search AS clientname, d.event_type, d.entryid'
      '    FROM diary d, matter m, phonebook p'
      '   WHERE m.nclient = p.nclient'
      '     AND d.fileid IS NOT NULL'
      '     AND d.fileid = m.fileid'
      '     AND d.reminder_for = :reminder_for'
      'ORDER BY 1'
      '*/'
      ''
      '/*'
      'SELECT'
      
        'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY, D.' +
        'DESCR, D.SEARCH_KEY, D.PRIORITY, D.FILEID, D.TASK, D.TYPE, D.LOC' +
        'ATION, D.JURISDICTION, '
      
        'D.EVENT, D.DATAFORMFIELD, D.EVENTPRINTDESCR, NULL AS SHORTDESCR,' +
        ' NULL AS CLIENTNAME, D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D.STAT' +
        'E, D.RESOURCEID,'
      'D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.ROWID'
      'FROM DIARY D'
      'WHERE '
      '--  D.START_DT >= :DateFrom'
      '--  AND D.START_DT < :DateTo AND'
      '  D.NMATTER IS NULL'
      ' AND D.REMINDER_FOR = :Author'
      'UNION'
      'SELECT'
      
        'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY, D.' +
        'DESCR, D.SEARCH_KEY, D.PRIORITY, D.FILEID, D.TASK, D.TYPE, D.LOC' +
        'ATION, D.JURISDICTION, '
      
        'D.EVENT, D.DATAFORMFIELD, D.EVENTPRINTDESCR, M.SHORTDESCR, P.SEA' +
        'RCH AS CLIENTNAME, D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D.STATE,' +
        ' D.RESOURCEID,'
      'D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.ROWID'
      'FROM MATTER M, PHONEBOOK P, DIARY D'
      'WHERE '
      '--  D.START_DT >= :DateFrom'
      '--  AND D.START_DT < :DateTo AND'
      '  D.NMATTER IS NOT NULL AND D.NMATTER = M.NMATTER'
      '  AND D.REMINDER_FOR = :Author'
      '  AND M.NCLIENT = P.NCLIENT'
      'ORDER BY 1'
      '*/')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    OnNewRecord = qryDiaryNewRecord
    Left = 529
    Top = 335
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'reminder_for'
        Value = nil
      end>
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE'
      'WHERE ACTIVE = '#39'Y'#39)
    Left = 539
    Top = 473
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 615
    Top = 469
  end
  object popDayView: TPopupMenu
    Images = imgGlyph
    OnPopup = popDayViewPopup
    Left = 331
    Top = 189
    object N5Minutes1: TMenuItem
      Action = actNewDiaryEntry
      Caption = 'New Diary Entry'
    end
    object E1: TMenuItem
      Caption = 'Edit Diary Entry'
      ImageIndex = 0
      OnClick = DiarySchedulerDblClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ViewContactdetails1: TMenuItem
      Caption = 'View Contact details'
      OnClick = ViewContactdetails1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ConverttoFee1: TMenuItem
      Caption = 'Convert to Fee'
      ImageIndex = 12
      OnClick = ConverttoFee1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DeleteEntry1: TMenuItem
      Caption = 'Delete Entry'
      ImageIndex = 5
      OnClick = pbDeleteClick
    end
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM DIARYLOC')
    Left = 620
    Top = 292
  end
  object qryFeeEarner: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME FROM EMPLOYEE'
      'WHERE ACTIVE = '#39'Y'#39
      'AND ISFEEEARNER = '#39'Y'#39
      'AND CODE = :p_code')
    Left = 728
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_code'
        Value = nil
      end>
  end
  object qryPartner: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code, name'
      'from'
      'employee'
      'where active = '#39'Y'#39
      'and ispartner = '#39'Y'#39
      'order by name')
    Left = 727
    Top = 292
  end
  object qryAuthor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code, name'
      'from'
      'employee'
      'where active = '#39'Y'#39
      'and isauthor = '#39'Y'#39
      'order by name')
    Left = 729
    Top = 336
  end
  object qryController: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE = '#39'Y'#39' ORDER BY NAME')
    Left = 727
    Top = 377
  end
  object dsPartner: TUniDataSource
    DataSet = qryPartner
    Left = 797
    Top = 291
  end
  object dsAuthor: TUniDataSource
    DataSet = qryAuthor
    Left = 802
    Top = 339
  end
  object dsController: TUniDataSource
    DataSet = qryController
    Left = 799
    Top = 380
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end>
    UseOwnFont = False
    Left = 429
    Top = 312
    PixelsPerInch = 96
  end
  object dsDiaryList: TUniDataSource
    AutoEdit = False
    DataSet = qryDiaryList
    Left = 805
    Top = 569
  end
  object ppDiaryList: TppReport
    AutoStop = False
    DataPipeline = plDiaryListRpt
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 610
    Top = 184
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'plDiaryListRpt'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Diary'
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
        mmLeft = 122983
        mmTop = 1058
        mmWidth = 10499
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 1058
        mmWidth = 33147
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 250126
        mmTop = 1058
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 22490
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 123602
        mmTop = 6879
        mmWidth = 9610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Author'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 0
        mmTop = 12965
        mmWidth = 10372
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 13758
        mmTop = 13229
        mmWidth = 6900
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 13758
        mmTop = 18521
        mmWidth = 9567
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Contact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 32735
        mmTop = 18521
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Location'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 47625
        mmTop = 14288
        mmWidth = 13293
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
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
        mmHeight = 3810
        mmLeft = 120650
        mmTop = 18521
        mmWidth = 17526
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 193411
        mmTop = 14288
        mmWidth = 7027
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'REMINDER_FOR'
        DataPipeline = plDiaryListRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 3969
        mmLeft = 529
        mmTop = 529
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'SHORTDESCR'
        DataPipeline = plDiaryListRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 3969
        mmLeft = 120650
        mmTop = 4233
        mmWidth = 79640
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plDiaryListRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 3969
        mmLeft = 13758
        mmTop = 4233
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'JURISDICTION'
        DataPipeline = plDiaryListRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 3969
        mmLeft = 120915
        mmTop = 0
        mmWidth = 65881
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'START_DT'
        DataPipeline = plDiaryListRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 3969
        mmLeft = 14023
        mmTop = 0
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'LOCATION'
        DataPipeline = plDiaryListRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 0
        mmWidth = 70379
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'TYPE'
        DataPipeline = plDiaryListRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 3969
        mmLeft = 193675
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'CLIENTNAME'
        DataPipeline = plDiaryListRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 3969
        mmLeft = 32808
        mmTop = 4233
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'START_DT'
        DataPipeline = plDiaryListRpt
        DisplayFormat = 'm/d/yy h:nn AM/PM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10319
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'END_DT'
        DataPipeline = plDiaryListRpt
        DisplayFormat = 'm/d/yy h:nn AM/PM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiaryListRpt'
        mmHeight = 4233
        mmLeft = 20371
        mmTop = 10318
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
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
    end
  end
  object plDiaryListRpt: TppDBPipeline
    DataSource = dsDiaryListRpt
    UserName = 'plDiaryListRpt'
    Left = 536
    Top = 185
  end
  object dsDiaryListRpt: TUniDataSource
    DataSet = qryDiaryListRpt
    Left = 622
    Top = 423
  end
  object qryDiaryList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY, D.' +
        'DESCR, D.DESCR AS DESCR1, D.SEARCH_KEY, D.PRIORITY, D.FILEID, D.' +
        'TASK, D.TYPE, D.LOCATION, D.JURISDICTION, '
      
        'D.EVENT, D.DATAFORMFIELD, D.EVENTPRINTDESCR, NULL AS grid_shortd' +
        'escr, NULL AS CLIENTNAME, D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D' +
        '.STATE, D.RESOURCEID,'
      
        'D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.CAPTION A' +
        'S CAPTION1, DECODE( D.INT_EXT, '#39'I'#39', '#39'Internal'#39', '#39'E'#39', '#39'External'#39')' +
        ' as int_ext , D.ROWID'
      'FROM DIARY D'
      'WHERE '
      '--  D.START_DT >= :DateFrom'
      '--  AND D.START_DT < :DateTo AND'
      '  D.NMATTER IS NULL'
      ' AND D.REMINDER_FOR = :Author'
      'UNION'
      'SELECT'
      
        'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY, D.' +
        'DESCR, D.DESCR AS DESCR1, D.SEARCH_KEY, D.PRIORITY, D.FILEID, D.' +
        'TASK, D.TYPE, D.LOCATION, D.JURISDICTION, '
      
        'D.EVENT, D.DATAFORMFIELD, D.EVENTPRINTDESCR, M.SHORTDESCR as gri' +
        'd_shortdescr, P.SEARCH AS CLIENTNAME, D.NMATTER, D.OPTIONS, D.LA' +
        'BELCOLOUR, D.STATE, D.RESOURCEID,'
      
        'D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.CAPTION A' +
        'S CAPTION1, DECODE( D.INT_EXT, '#39'I'#39', '#39'Internal'#39', '#39'E'#39', '#39'External'#39')' +
        ' as int_ext, D.ROWID'
      'FROM MATTER M, PHONEBOOK P, DIARY D'
      'WHERE '
      '--  D.START_DT >= :DateFrom'
      '--  AND D.START_DT < :DateTo AND'
      '  D.NMATTER IS NOT NULL AND D.NMATTER = M.NMATTER'
      '  AND D.REMINDER_FOR = :Author'
      '  AND M.NCLIENT = P.NCLIENT'
      'ORDER BY 1')
    Left = 730
    Top = 570
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Author'
        Value = nil
      end>
  end
  object qryDiaryListRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY, D.' +
        'DESCR, D.SEARCH_KEY, D.PRIORITY, D.FILEID, D.TASK, D.TYPE, D.LOC' +
        'ATION, D.JURISDICTION, '
      
        'D.EVENT, D.DATAFORMFIELD, D.EVENTPRINTDESCR, NULL AS SHORTDESCR,' +
        ' NULL AS CLIENTNAME, D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D.STAT' +
        'E, D.RESOURCEID,'
      'D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.ROWID'
      'FROM DIARY D'
      'WHERE '
      '--  D.START_DT >= :DateFrom'
      '--  AND D.START_DT < :DateTo AND'
      '  D.NMATTER IS NULL'
      ' AND D.REMINDER_FOR = :Author'
      'UNION'
      'SELECT'
      
        'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY, D.' +
        'DESCR, D.SEARCH_KEY, D.PRIORITY, D.FILEID, D.TASK, D.TYPE, D.LOC' +
        'ATION, D.JURISDICTION, '
      
        'D.EVENT, D.DATAFORMFIELD, D.EVENTPRINTDESCR, M.SHORTDESCR, P.SEA' +
        'RCH AS CLIENTNAME, D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D.STATE,' +
        ' D.RESOURCEID,'
      'D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.ROWID'
      'FROM MATTER M, PHONEBOOK P, DIARY D'
      'WHERE '
      '--  D.START_DT >= :DateFrom'
      '--  AND D.START_DT < :DateTo AND'
      '  D.NMATTER IS NOT NULL AND D.NMATTER = M.NMATTER'
      '  AND D.REMINDER_FOR = :Author'
      '  AND M.NCLIENT = P.NCLIENT'
      'ORDER BY 1')
    Options.SetFieldsReadOnly = False
    SpecificOptions.Strings = (
      'Oracle.ExtendedFieldsInfo=False')
    Left = 539
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Author'
        Value = nil
      end>
  end
  object cxSchedulerHolidays1: TcxSchedulerHolidays
    Locations = <
      item
        Name = 'NSW'
      end
      item
        Name = 'QLD'
      end
      item
        Name = 'SA'
      end
      item
        Name = 'Victoria'
        Visible = True
        Holidays = <
          item
            Date = 41302.000000000000000000
            Name = 'Australia Day'
          end
          item
            Date = 41275.000000000000000000
            Name = 'New Year'
          end>
      end
      item
        Name = 'WA'
      end>
    Left = 588
    Top = 229
  end
  object qryEvent: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.*, D.ROWID FROM DIARY D WHERE D.NDIARY = :NDIARY')
    Options.RequiredFields = False
    Left = 535
    Top = 524
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NDIARY'
        Value = nil
      end>
  end
  object cxSchedulerGridConnection1: TcxSchedulerGridConnection
    Left = 437
    Top = 452
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 602
    Top = 609
    PixelsPerInch = 96
    object dxComponentPrinterLink1: TdxGridReportLink
      Active = True
      Component = grdDiary
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.Font.Charset = ANSI_CHARSET
      PrinterPage.PageFooter.Font.Color = clBlack
      PrinterPage.PageFooter.Font.Height = -12
      PrinterPage.PageFooter.Font.Name = 'Arial Narrow'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = ANSI_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -12
      PrinterPage.PageHeader.Font.Name = 'Arial Narrow'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Diary'
      ReportDocument.CreationDate = 43813.354690659730000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      OptionsExpanding.ExpandGroupRows = True
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object SecureSchedulerDBStorage: TcxSchedulerDBStorage
    Reminders.TimeZoneDaylightSaving = True
    Reminders.UseReminderWindow = False
    Resources.Items = <>
    Resources.DataSource = dsEmployee
    Resources.ResourceID = 'NEMPLOYEE'
    Resources.ResourceName = 'NAME'
    SmartRefresh = True
    CustomFields = <
      item
        FieldName = 'NNAME'
      end
      item
        FieldName = 'ENTRYID'
      end
      item
        FieldName = 'MODIFIED'
      end
      item
        FieldName = 'PRIVATE'
      end
      item
        FieldName = 'EVENT_TYPE'
      end>
    Holidays = cxSchedulerHolidays1
    DataSource = dsDiary
    FieldNames.Caption = 'CAPTION1'
    FieldNames.EventType = 'EVENT_TYPE'
    FieldNames.Finish = 'END_DT'
    FieldNames.ID = 'NDIARY'
    FieldNames.LabelColor = 'LABELCOLOUR'
    FieldNames.Location = 'LOCATION'
    FieldNames.Message = 'DESCR1'
    FieldNames.Options = 'OPTIONS'
    FieldNames.RecurrenceIndex = 'RECURRENCEINDEX'
    FieldNames.RecurrenceInfo = 'RECURRENCEINFO'
    FieldNames.ReminderMinutesBeforeStart = 'NOTIFY_MINS'
    FieldNames.ResourceID = 'RESOURCEID'
    FieldNames.Start = 'START_DT'
    FieldNames.State = 'STATE'
    Left = 184
    Top = 384
  end
  object dsDiaryLoc: TUniDataSource
    DataSet = dmAxiom.qryDiaryLoc
    Left = 800
    Top = 424
  end
  object qryDiaryJur: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from diaryjur')
    Left = 728
    Top = 472
  end
  object dsDiaryJur: TUniDataSource
    DataSet = qryDiaryJur
    Left = 800
    Top = 472
  end
  object qryDiaryEvent: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from diaryevt')
    Left = 728
    Top = 520
  end
  object dsDiaryEvent: TUniDataSource
    DataSet = qryDiaryEvent
    Left = 800
    Top = 520
  end
  object qryEmpDept: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from empdept')
    Left = 736
    Top = 616
  end
  object dsEmpDept: TUniDataSource
    DataSet = qryEmpDept
    Left = 808
    Top = 616
  end
end
