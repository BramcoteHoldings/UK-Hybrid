object frmDesktop: TfrmDesktop
  Left = 347
  Top = 226
  Width = 1358
  Height = 788
  AlphaBlend = True
  AutoScroll = True
  Caption = 'Desktop'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object medSoundEffects: TMediaPlayer
    Left = 340
    Top = 126
    Width = 271
    Height = 33
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 722
    Width = 1342
    Height = 27
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
        MinWidth = 106
        Width = 106
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container1
        Width = 240
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
        Width = 106
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 89
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
        Width = 133
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = StatusBarContainer5
        Fixed = False
        MinWidth = 52
        Width = 52
      end
      item
        PanelStyleClassName = 'TdxStatusBarStateIndicatorPanelStyle'
        PanelStyle.Indicators = <
          item
            IndicatorType = sitGreen
          end
          item
          end>
        MinWidth = 48
        Width = 48
      end>
    PaintStyle = stpsUseLookAndFeel
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ParentFont = True
    OnDblClick = sbarStatusDblClick
    object dxStatusBar1Container1: TdxStatusBarContainerControl
      Left = 250
      Top = 2
      Width = 242
      Height = 25
      object beEntity: TcxButtonEdit
        Left = 0
        Top = 0
        Align = alClient
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 242
      end
    end
    object StatusBarContainer5: TdxStatusBarContainerControl
      Left = 1150
      Top = 2
      Width = 124
      Height = 25
      object pnlTimeTrack: TPanel
        Left = 0
        Top = 0
        Width = 124
        Height = 25
        Align = alClient
        ShowCaption = False
        TabOrder = 0
        Visible = False
        object lblTimer: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 116
          Height = 17
          Align = alClient
          Alignment = taCenter
          Caption = '00:00:00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 42
          ExplicitHeight = 13
        end
      end
    end
  end
  object pagMainControl: TcxPageControl
    Left = 0
    Top = 153
    Width = 1342
    Height = 569
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tsAxiomNew
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 565
    ClientRectLeft = 4
    ClientRectRight = 1338
    ClientRectTop = 4
    object tsAxiomNew: TcxTabSheet
      Caption = 'tsAxiomNew'
      ImageIndex = 0
      TabVisible = False
      ExplicitHeight = 592
      DesignSize = (
        1334
        561)
      object dxDockSite1: TdxDockSite
        Left = 0
        Top = 0
        Width = 1334
        Height = 561
        ManagerFont = False
        ParentFont = True
        Align = alClient
        ExplicitHeight = 592
        DockingType = 5
        OriginalWidth = 1334
        OriginalHeight = 561
        object dxLayoutDockSite2: TdxLayoutDockSite
          Left = 0
          Top = 0
          Width = 1276
          Height = 561
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ManagerFont = False
          ParentShowHint = False
          ShowHint = False
          ExplicitHeight = 592
          DockingType = 0
          OriginalWidth = 265
          OriginalHeight = 176
          object dxLayoutDockSite1: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 1276
            Height = 561
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ManagerFont = False
            DockingType = 0
            OriginalWidth = 265
            OriginalHeight = 176
            object dxLayoutDockSite3: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 1276
              Height = 561
              ExplicitHeight = 592
              DockingType = 0
              OriginalWidth = 265
              OriginalHeight = 176
            end
            object dxDockPanel1: TdxDockPanel
              Left = 0
              Top = 0
              Width = 1276
              Height = 561
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ManagerFont = False
              AllowFloating = True
              AutoHide = False
              Caption = 'dxDockPanel1'
              CustomCaptionButtons.Buttons = <>
              ShowCaption = False
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitHeight = 592
              DockingType = 0
              OriginalWidth = 163
              OriginalHeight = 124
              object pnlNewDesktop: TPanel
                Left = 0
                Top = 0
                Width = 1272
                Height = 557
                Align = alClient
                AutoSize = True
                Caption = 'pnlNewDesktop'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitHeight = 588
                object pageForms: TcxPageControl
                  Left = 1
                  Top = 1
                  Width = 1270
                  Height = 555
                  Align = alClient
                  DockSite = True
                  DragKind = dkDock
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  PopupMenu = popCloseTabs
                  TabOrder = 0
                  Properties.CustomButtons.Buttons = <
                    item
                      HeaderImageIndex = 41
                      Position = pcbpTabs
                      TabImageIndex = 41
                      OnClick = pageFormsTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click
                    end>
                  Properties.CustomButtons.HeaderImages = dmAxiom.ilstToolbar
                  Properties.CustomButtons.Mode = cbmEveryTab
                  Properties.CustomButtons.TabImages = dmAxiom.ilstToolbar
                  Properties.MultiLine = True
                  Properties.Style = 9
                  Properties.TabSlants.Kind = skCutCorner
                  LookAndFeel.NativeStyle = True
                  OnChange = pageFormsChange
                  OnDrawTabEx = pageFormsDrawTabEx
                  OnPageChanging = pageFormsPageChanging
                  OnStartDrag = pageFormsStartDrag
                  OnUnDock = pageFormsUnDock
                  ExplicitHeight = 586
                  ClientRectBottom = 555
                  ClientRectRight = 1270
                  ClientRectTop = 0
                end
              end
            end
          end
          object dockpnlTimePlanner: TdxDockPanel
            Left = 0
            Top = 0
            Width = 382
            Height = 124
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ManagerFont = False
            Visible = False
            AllowFloating = False
            AutoHide = True
            Caption = 'Task Planner'
            CaptionButtons = [cbHide]
            CustomCaptionButtons.Buttons = <>
            TabsProperties.CustomButtons.Buttons = <>
            AutoHidePosition = 2
            DockingType = 3
            OriginalWidth = 382
            OriginalHeight = 124
            object Panel2: TPanel
              Left = 0
              Top = -32
              Width = 378
              Height = 32
              Align = alBottom
              BevelKind = bkTile
              TabOrder = 0
              OnEnter = Panel2Enter
              object tbtnNewTask: TBitBtn
                Left = 2
                Top = 0
                Width = 81
                Height = 24
                Caption = 'New Task'
                TabOrder = 0
                OnClick = tbtnNewTaskClick
              end
              object BitBtn1: TBitBtn
                Left = 87
                Top = 0
                Width = 81
                Height = 24
                Caption = 'Refresh'
                TabOrder = 1
                OnClick = BitBtn1Click
              end
              object TaskScheduler: TcxScheduler
                Left = 117
                Top = 3
                Width = 143
                Height = 17
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                ViewAgenda.EventTextMinWidth = 91
                ViewDay.Active = True
                ViewGantt.Scales.MajorUnitSeparatorWidth = 4
                ViewGantt.Scales.MinorUnitWidth = 38
                ViewGantt.TreeBrowser.Width = 188
                ViewTimeGrid.Scales.MajorUnitSeparatorWidth = 4
                ViewTimeGrid.Scales.MinorUnitWidth = 38
                DialogsStyle = 'Standard'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                OptionsView.GroupSeparatorWidth = 8
                OptionsView.HorzSplitterWidth = 4
                OptionsView.VertSplitterWidth = 4
                Storage = DBTaskStorage
                TabOrder = 2
                Visible = False
                OnBeforeEditing = TaskSchedulerBeforeEditing
                Splitters = {
                  180000006E0000008E0000007200000014000000010000001800000010000000}
                StoredClientBounds = {01000000010000008E00000010000000}
              end
            end
            object grdTaskList: TcxGrid
              Left = 0
              Top = 0
              Width = 378
              Height = 481
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object tvTaskList: TcxGridTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.CellHints = True
                OptionsBehavior.ImmediateEditor = False
                OptionsSelection.CellSelect = False
                OptionsView.NavigatorOffset = 49
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Header = False
                OptionsView.Indicator = True
                OptionsView.IndicatorWidth = 11
                Preview.LeftIndent = 19
                Styles.OnGetContentStyle = tvTaskListStylesGetContentStyle
                object tvTaskListcxGridColumn28: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  MinWidth = 31
                  Options.Editing = False
                  VisibleForCustomization = False
                  Width = 31
                end
                object tvTaskListcxGridColumn11: TcxGridColumn
                  Caption = 'Message'
                  PropertiesClassName = 'TcxMemoProperties'
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn45: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn44: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn43: TcxGridColumn
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn7: TcxGridColumn
                  Caption = 'Actual Finish'
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.DisplayFormat = 'dddd dd MMM yyyy'
                  Properties.Kind = ckDateTime
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn8: TcxGridColumn
                  Caption = 'Actual Start'
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.DisplayFormat = 'dddd dd MMM yyyy'
                  Properties.Kind = ckDateTime
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn9: TcxGridColumn
                  Caption = 'Finish'
                  DataBinding.ValueType = 'DateTime'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.DisplayFormat = 'dddd dd MMM yyyy'
                  Properties.Kind = ckDateTime
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                  Width = 19
                end
                object tvTaskListcxGridColumn10: TcxGridColumn
                  Caption = 'Start'
                  DataBinding.ValueType = 'DateTime'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.DisplayFormat = 'dddd dd MMM yyyy'
                  Properties.Kind = ckDateTime
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                  Width = 19
                end
                object tvTaskListcxGridColumn1: TcxGridColumn
                  Caption = 'ID'
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn2: TcxGridColumn
                  Caption = 'ParentID'
                  DataBinding.ValueType = 'LargeInt'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn3: TcxGridColumn
                  Caption = 'GroupID'
                  DataBinding.ValueType = 'Variant'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn4: TcxGridColumn
                  Caption = 'State'
                  DataBinding.ValueType = 'LargeInt'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Free'
                      ImageIndex = 0
                      Value = 0
                    end
                    item
                      Description = 'Tentative'
                      ImageIndex = 1
                      Value = 1
                    end
                    item
                      Description = 'Busy'
                      ImageIndex = 2
                      Value = 2
                    end
                    item
                      Description = 'Out of office'
                      ImageIndex = 3
                      Value = 3
                    end>
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                  Width = 19
                end
                object tvTaskListcxGridColumn5: TcxGridColumn
                  Caption = 'Caption'
                  PropertiesClassName = 'TcxMemoProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                  Width = 19
                end
                object tvTaskListcxGridColumn6: TcxGridColumn
                  Caption = 'Location'
                  PropertiesClassName = 'TcxMemoProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn12: TcxGridColumn
                  Caption = 'Type'
                  DataBinding.ValueType = 'LargeInt'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Recurrence Pattern'
                      ImageIndex = 2
                      Value = 1
                    end
                    item
                      Description = 'Custom Occurrence'
                      ImageIndex = 3
                      Value = 4
                    end>
                  Properties.ShowDescriptions = False
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn13: TcxGridColumn
                  Caption = 'Reminder'
                  DataBinding.ValueType = 'Boolean'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                  Width = 19
                end
                object tvTaskListcxGridColumn14: TcxGridColumn
                  Caption = 'All Day Event'
                  DataBinding.ValueType = 'Boolean'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                  Width = 19
                end
                object tvTaskListcxGridColumn15: TcxGridColumn
                  Caption = 'Enabled'
                  DataBinding.ValueType = 'Boolean'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                  Width = 19
                end
                object tvTaskListcxGridColumn16: TcxGridColumn
                  Caption = 'Label'
                  DataBinding.ValueType = 'LargeInt'
                  PropertiesClassName = 'TcxColorComboBoxProperties'
                  Properties.ColorBoxWidth = 29
                  Properties.CustomColors = <
                    item
                      Color = clNone
                      Description = 'None'
                    end
                    item
                      Color = 8689404
                      Description = 'Important'
                    end
                    item
                      Color = 14982788
                      Description = 'Business'
                    end
                    item
                      Color = 6610596
                      Description = 'Personal'
                    end
                    item
                      Color = 13952740
                      Description = 'Vacation'
                    end
                    item
                      Color = 7649020
                      Description = 'Must Attend'
                    end
                    item
                      Color = 16051844
                      Description = 'Travel Required'
                    end
                    item
                      Color = 8703700
                      Description = 'Needs Preparation'
                    end
                    item
                      Color = 16033476
                      Description = 'Birthday'
                    end
                    item
                      Color = 12897956
                      Description = 'Anniversary'
                    end
                    item
                      Color = 7661308
                      Description = 'Phone Call'
                    end>
                  Properties.DefaultColor = clNone
                  Properties.DefaultColorStyle = cxdcClear
                  Properties.DefaultDescription = 'None'
                  Properties.NamingConvention = cxncNone
                  Properties.PrepareList = cxplNone
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                  Width = 19
                end
                object tvTaskListcxGridColumn17: TcxGridColumn
                  Caption = 'Recurrence Pattern'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn18: TcxGridColumn
                  Caption = 'Recurrence Index'
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn19: TcxGridColumn
                  Caption = 'ReminderDate'
                  DataBinding.ValueType = 'DateTime'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Kind = ckDateTime
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn20: TcxGridColumn
                  Caption = 'Reminder Minutes Before Start'
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn21: TcxGridColumn
                  Caption = 'Resource'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn22: TcxGridColumn
                  Caption = 'Task Complete'
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxProgressBarProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn23: TcxGridColumn
                  Caption = 'Task Links'
                  DataBinding.ValueType = 'Variant'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn24: TcxGridColumn
                  Caption = 'Task Index'
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn25: TcxGridColumn
                  Caption = 'Task Status'
                  DataBinding.ValueType = 'Integer'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Not Started'
                      ImageIndex = 1
                      Value = 0
                    end
                    item
                      Description = 'In Progress'
                      ImageIndex = 2
                      Value = 1
                    end
                    item
                      Description = 'Complete'
                      ImageIndex = 2
                      Value = 2
                    end
                    item
                      Description = 'Waiting'
                      ImageIndex = 4
                      Value = 3
                    end
                    item
                      Description = 'Deferred'
                      ImageIndex = 5
                      Value = 4
                    end>
                  Visible = False
                  MinWidth = 18
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn26: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn27: TcxGridColumn
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn29: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn30: TcxGridColumn
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn31: TcxGridColumn
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn32: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn33: TcxGridColumn
                  Caption = '1'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn34: TcxGridColumn
                  Caption = '2'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn35: TcxGridColumn
                  Caption = '3'
                  DataBinding.ValueType = 'LargeInt'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn36: TcxGridColumn
                  Caption = '4'
                  DataBinding.ValueType = 'LargeInt'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn37: TcxGridColumn
                  DataBinding.ValueType = 'DateTime'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.DisplayFormat = 'dddd dd MMM yyyy'
                  Properties.ShowTime = False
                  Visible = False
                  DateTimeGrouping = dtgByDate
                  GroupIndex = 0
                  HeaderHint = 'Created'
                  MinWidth = 18
                  Options.Editing = False
                  Options.ShowCaption = False
                  VisibleForCustomization = False
                  IsCaptionAssigned = True
                end
                object tvTaskListcxGridColumn38: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn39: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn40: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn41: TcxGridColumn
                  DataBinding.ValueType = 'LargeInt'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn42: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvTaskListcxGridColumn46: TcxGridColumn
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                  IsCaptionAssigned = True
                end
                object tvTaskListcxGridColumn47: TcxGridColumn
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                  IsCaptionAssigned = True
                end
                object tvTaskListcxGridColumn48: TcxGridColumn
                  DataBinding.ValueType = 'LargeInt'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                  IsCaptionAssigned = True
                end
                object tvTaskListcxGridColumn49: TcxGridColumn
                  DataBinding.ValueType = 'DateTime'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  MinWidth = 18
                  Options.Editing = False
                  VisibleForCustomization = False
                end
              end
              object grdTaskListLevel1: TcxGridLevel
                GridView = tvTaskList
              end
            end
          end
        end
        object dpNavBar: TdxDockPanel
          Left = -206
          Top = 0
          Width = 206
          Height = 124
          ManagerFont = False
          ParentFont = True
          Visible = False
          AllowFloating = False
          AutoHide = True
          Caption = 'Navigation'
          CaptionButtons = [cbHide]
          CustomCaptionButtons.Buttons = <>
          ImageIndex = 20
          TabsProperties.CustomButtons.Buttons = <>
          OnAutoHideChanged = dpNavBarAutoHideChanged
          AutoHidePosition = 0
          DockingType = 1
          OriginalWidth = 206
          OriginalHeight = 124
          object nbMain: TdxNavBar
            Left = 0
            Top = 0
            Width = 202
            Height = 0
            Align = alClient
            ActiveGroupIndex = 0
            TabOrder = 0
            View = 12
            OptionsBehavior.Common.ShowGroupsHint = True
            OptionsBehavior.Common.ShowLinksHint = True
            OptionsImage.LargeImages = ilstMatter
            OptionsImage.SmallImages = ilstMatter
            object ngMyFavourites: TdxNavBarGroup
              Caption = 'My Favorites'
              LargeImageIndex = 15
              SelectedLinkIndex = -1
              SmallImageIndex = 15
              TopVisibleLinkIndex = 0
              OptionsGroupControl.ShowControl = True
              OptionsGroupControl.UseControl = True
              Links = <>
            end
            object ngLaunch: TdxNavBarGroup
              Caption = 'Launch'
              LargeImageIndex = 3
              SelectedLinkIndex = -1
              SmallImageIndex = 3
              TopVisibleLinkIndex = 0
              OptionsGroupControl.ShowControl = True
              OptionsGroupControl.UseControl = True
              Links = <>
            end
            object ngSearch: TdxNavBarGroup
              Caption = 'Search'
              LargeImageIndex = 11
              SelectedLinkIndex = -1
              SmallImageIndex = 11
              TopVisibleLinkIndex = 0
              OptionsGroupControl.ShowControl = True
              OptionsGroupControl.UseControl = True
              Links = <>
            end
            object ngSnapshots: TdxNavBarGroup
              Caption = 'Snapshots'
              LargeImageIndex = 16
              SelectedLinkIndex = -1
              SmallImageIndex = 16
              TopVisibleLinkIndex = 0
              OptionsGroupControl.ShowControl = True
              OptionsGroupControl.UseControl = True
              Links = <>
            end
            object ngMyFavouritesControl: TdxNavBarGroupControl
              Left = 11
              Top = 32
              Width = 163
              Height = 201
              Caption = 'ngMyFavouritesControl'
              TabOrder = 0
              GroupIndex = 0
              OriginalHeight = 201
              object lvDesktop: TListView
                Left = 0
                Top = 0
                Width = 163
                Height = 201
                Align = alClient
                Color = clBlue
                Columns = <
                  item
                    Caption = 'Program'
                    Width = 321
                  end>
                ColumnClick = False
                Ctl3D = False
                DragMode = dmAutomatic
                IconOptions.AutoArrange = True
                LargeImages = ilstShortcuts
                ReadOnly = True
                ParentShowHint = False
                PopupMenu = popDesktop
                ShowColumnHeaders = False
                ShowHint = True
                SmallImages = ilstShortcuts
                SortType = stBoth
                TabOrder = 0
                ViewStyle = vsList
                OnDblClick = lvDesktopClick
              end
            end
            object ngLaunchControl: TdxNavBarGroupControl
              Left = 11
              Top = 266
              Width = 163
              Height = 173
              Caption = 'ngLaunchControl'
              TabOrder = 1
              GroupIndex = 1
              OriginalHeight = 173
              object tvLaunch: TcxTreeView
                Left = 0
                Top = 0
                Width = 163
                Height = 173
                Align = alClient
                DragMode = dmAutomatic
                PopupMenu = pmLaunch
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfOffice11
                StyleDisabled.LookAndFeel.Kind = lfOffice11
                StyleFocused.LookAndFeel.Kind = lfOffice11
                StyleHot.LookAndFeel.Kind = lfOffice11
                TabOrder = 0
                OnDblClick = tvLaunchClick
                Images = ilstShortcuts
                ReadOnly = True
                RightClickSelect = True
                RowSelect = True
                StateImages = ilstShortcuts
              end
            end
            object ngSearchControl: TdxNavBarGroupControl
              Left = 11
              Top = 472
              Width = 163
              Height = 125
              Color = clWindow
              TabOrder = 2
              GroupIndex = 2
              OriginalHeight = 125
              object Label1: TLabel
                Left = 8
                Top = 1
                Width = 38
                Height = 13
                Caption = 'Matter:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 8
                Top = 41
                Width = 30
                Height = 13
                Caption = 'Client'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 8
                Top = 83
                Width = 48
                Height = 13
                Caption = 'Contacts:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object cmbMatterFind: TcxLookupComboBox
                Left = 8
                Top = 17
                Properties.ClearKey = 46
                Properties.DropDownAutoSize = True
                Properties.DropDownListStyle = lsEditList
                Properties.DropDownRows = 20
                Properties.DropDownWidth = 441
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'FILEID'
                Properties.ListColumns = <
                  item
                    Width = 62
                    FieldName = 'FILEID'
                  end
                  item
                    Width = 160
                    FieldName = 'SEARCH'
                  end
                  item
                    Caption = 'Description'
                    FieldName = 'SHORTDESCR'
                  end>
                Properties.ListOptions.GridLines = glVertical
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsMRUList
                Properties.OnCloseUp = cmbMatterFindPropertiesCloseUp
                Properties.OnInitPopup = cmbMatterFindPropertiesInitPopup
                Style.LookAndFeel.NativeStyle = True
                Style.TextColor = clGray
                StyleDisabled.LookAndFeel.NativeStyle = True
                StyleFocused.LookAndFeel.NativeStyle = True
                StyleFocused.TextColor = clWindowText
                StyleHot.LookAndFeel.NativeStyle = True
                StyleHot.TextColor = clWindowText
                TabOrder = 0
                OnExit = cmbMatterFindExit
                OnMouseDown = cmbMatterFindMouseDown
                Width = 176
              end
              object cmbClientFind: TcxLookupComboBox
                Left = 8
                Top = 57
                ParentFont = False
                Properties.ClearKey = 46
                Properties.DropDownAutoSize = True
                Properties.DropDownListStyle = lsEditList
                Properties.DropDownRows = 15
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'FILEID'
                Properties.ListColumns = <
                  item
                    FieldName = 'FILEID'
                  end
                  item
                    FieldName = 'SEARCH'
                  end>
                Properties.ListOptions.GridLines = glVertical
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsClientMRU
                Properties.OnCloseUp = cmbClientFindPropertiesCloseUp
                Properties.OnInitPopup = cmbClientFindPropertiesInitPopup
                Style.LookAndFeel.NativeStyle = True
                Style.TextColor = clGray
                StyleDisabled.LookAndFeel.NativeStyle = True
                StyleFocused.LookAndFeel.NativeStyle = True
                StyleFocused.TextColor = clBlack
                StyleHot.LookAndFeel.NativeStyle = True
                StyleHot.TextColor = clBlack
                TabOrder = 1
                OnExit = cmbClientFindExit
                OnKeyDown = cmbClientFindKeyDown
                OnMouseDown = cmbClientFindMouseDown
                Width = 176
              end
              object cmbPhonebookFind: TcxLookupComboBox
                Left = 8
                Top = 98
                ParentFont = False
                Properties.ClearKey = 46
                Properties.DropDownAutoSize = True
                Properties.DropDownListStyle = lsEditList
                Properties.DropDownRows = 15
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'FILEID'
                Properties.ListColumns = <
                  item
                    FieldName = 'FILEID'
                  end
                  item
                    FieldName = 'SEARCH'
                  end>
                Properties.ListOptions.GridLines = glVertical
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsPhonebookMRU
                Properties.OnCloseUp = cmbPhonebookFindPropertiesCloseUp
                Properties.OnInitPopup = cmbPhonebookFindPropertiesInitPopup
                Style.LookAndFeel.NativeStyle = True
                Style.TextColor = clGray
                StyleDisabled.LookAndFeel.NativeStyle = True
                StyleFocused.LookAndFeel.NativeStyle = True
                StyleFocused.TextColor = clBlack
                StyleHot.LookAndFeel.NativeStyle = True
                StyleHot.TextColor = clBlack
                TabOrder = 2
                OnExit = cmbPhonebookFindExit
                OnKeyDown = cmbPhonebookFindKeyDown
                OnMouseDown = cmbPhonebookFindMouseDown
                Width = 176
              end
            end
            object ngSnapshotsControl: TdxNavBarGroupControl
              Left = 11
              Top = 630
              Width = 163
              Height = 107
              Caption = 'ngSnapshotsControl'
              TabOrder = 3
              GroupIndex = 3
              OriginalHeight = 107
              object lvSnapshots: TListView
                Left = 0
                Top = 0
                Width = 163
                Height = 107
                Align = alClient
                Color = clWhite
                Columns = <
                  item
                    Caption = 'Description'
                    Width = 375
                  end>
                Ctl3D = False
                DragMode = dmAutomatic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                IconOptions.AutoArrange = True
                LargeImages = ilstShortcuts
                ReadOnly = True
                ParentFont = False
                ParentShowHint = False
                PopupMenu = popSnapshots
                ShowColumnHeaders = False
                ShowHint = True
                SmallImages = ilstShortcuts
                TabOrder = 0
                ViewStyle = vsReport
                OnDblClick = lvSnapshotsClick
              end
            end
          end
        end
      end
    end
    object tsClassicAxiom: TcxTabSheet
      Caption = 'tsClassicAxiom'
      ImageIndex = 1
      TabVisible = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1334
        Height = 561
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 0
        object lvClassicDesktop: TListView
          Left = 0
          Top = 3
          Width = 1334
          Height = 216
          Align = alTop
          Color = clTeal
          Columns = <
            item
              Caption = 'Program'
              Width = 321
            end
            item
              Caption = 'Description'
              Width = 375
            end>
          Ctl3D = False
          DragMode = dmAutomatic
          HotTrack = True
          HotTrackStyles = [htHandPoint]
          IconOptions.AutoArrange = True
          LargeImages = ilstShortcuts
          ReadOnly = True
          ParentShowHint = False
          PopupMenu = popDesktopClassic
          ShowHint = True
          SmallImages = ilstShortcuts
          TabOrder = 0
          OnClick = lvClassicDesktopClick
          OnInfoTip = lvDesktopInfoTip
          OnMouseDown = lvDesktopMouseDown
          OnMouseMove = lvDesktopMouseMove
          OnMouseUp = lvDesktopMouseUp
        end
        object lvClassicSnapshots: TListView
          Left = 0
          Top = 227
          Width = 1334
          Height = 334
          Align = alClient
          Color = clTeal
          Columns = <
            item
              Caption = 'Description'
              Width = 375
            end
            item
              Caption = 'Action'
              Width = 536
            end>
          Ctl3D = False
          DragMode = dmAutomatic
          HotTrack = True
          HotTrackStyles = [htHandPoint, htUnderlineHot]
          IconOptions.AutoArrange = True
          LargeImages = ilstShortcuts
          ParentShowHint = False
          PopupMenu = popSnapShotsClassic
          ShowHint = True
          SmallImages = ilstShortcuts
          SortType = stText
          TabOrder = 1
          ViewStyle = vsList
          OnClick = lvClassicSnapshotsClick
          OnInfoTip = lvSnapshotsInfoTip
        end
        object cxSplitter1: TcxSplitter
          Left = 0
          Top = 219
          Width = 1334
          Height = 8
          HotZoneClassName = 'TcxXPTaskBarStyle'
          AlignSplitter = salTop
          PositionAfterOpen = 26
          MinSize = 26
          Control = lvClassicDesktop
          ExplicitWidth = 8
        end
        object dxBarDockControl2: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1334
          Align = dalTop
          BarManager = dxBarManager
        end
      end
    end
  end
  object RibbonMain: TdxRibbon
    Left = 0
    Top = 0
    Width = 1342
    Height = 153
    ApplicationButton.Menu = dxBarApplicationMenu
    BarManager = dxBarManager
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Colorful'
    EnableTabAero = False
    Fonts.ApplicationButton.Charset = DEFAULT_CHARSET
    Fonts.ApplicationButton.Color = clWindowText
    Fonts.ApplicationButton.Height = -11
    Fonts.ApplicationButton.Name = 'Segoe UI'
    Fonts.ApplicationButton.Style = []
    Fonts.AssignedFonts = [afTabHeader, afGroup, afGroupHeader, afApplicationButton]
    Fonts.Group.Charset = DEFAULT_CHARSET
    Fonts.Group.Color = 6050636
    Fonts.Group.Height = -11
    Fonts.Group.Name = 'Segoe UI'
    Fonts.Group.Style = []
    Fonts.GroupHeader.Charset = DEFAULT_CHARSET
    Fonts.GroupHeader.Color = 6050636
    Fonts.GroupHeader.Height = -11
    Fonts.GroupHeader.Name = 'Segoe UI'
    Fonts.GroupHeader.Style = [fsBold]
    Fonts.TabHeader.Charset = DEFAULT_CHARSET
    Fonts.TabHeader.Color = clWindowText
    Fonts.TabHeader.Height = -11
    Fonts.TabHeader.Name = 'Segoe UI'
    Fonts.TabHeader.Style = []
    HelpButton.Glyph.SourceDPI = 96
    HelpButton.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF008484FF000000FFFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF008484FF000000FFFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF008484FF000000FFFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF008484FF000000FFFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF008484FF000000FFFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF00FFFFFF008484FF0000
      00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000FF000000FFFF00FF00000000FF00FFFFFF00FFFFFF0084
      84FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000FF00FFFFFF008484FF000000FFFF00FF00000000FF00FFFFFF00FF
      FFFF008484FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000FF00FFFFFF008484FF000000FFFF00FF00FF00FF00000000FF00FF
      FFFF008484FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000FF00FFFFFF00FFFFFF008484FF000000FF000000FF00FFFFFF00FF
      FFFF008484FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084
      84FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF000000FF0000
      00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    PopupMenuItems = [rpmiItems, rpmiMinimizeRibbon]
    QuickAccessToolbar.Toolbar = barQAT
    Contexts = <>
    TabOrder = 3
    TabStop = False
    OnMinimizedChanged = RibbonMainMinimizedChanged
    OnMouseDown = RibbonMainMouseDown
    OnMouseUp = RibbonMainMouseUp
    object RibbonMainTab1: TdxRibbonTab
      Active = True
      Caption = 'Search'
      Groups = <
        item
          ToolbarName = 'barClientsMatters'
        end
        item
          ToolbarName = 'barSearch'
        end
        item
          Caption = 'Document Centre'
          ToolbarName = 'barDocCenter'
        end
        item
        end
        item
          Restriction = rtgrNoCollapse
          CanCollapse = False
          ToolbarName = 'BarConflicts'
        end>
      KeyTip = 'H'
      Index = 0
    end
  end
  object ilstMatter: TImageList
    Left = 574
    Top = 196
    Bitmap = {
      494C010116001900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484009494940084848400D6D6D600CECECE00B5B5
      B50084848400000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840084848400848484008484
      84008484840000000000000000000000000080008000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840084848400848484008484
      8400848484000000000000000000000000008000800080008000800080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484008484840084848400D6D6D600CECECE00B5B5
      B500848484000000000000000000000000008000800080008000800080008000
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840084848400848484008484
      8400848484000000000000000000000000008000800080008000800080008000
      800080008000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008080800080808000808080008080800080808000808080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840084848400848484008484
      8400848484000000000000000000000000008000800080008000800080008000
      8000800080008000800080808000808080008080800080808000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484008484840084848400D6D6D600CECECE00B5B5
      B500848484000000000000000000000000008000800080008000800080008000
      80008000800080008000C0C0C000C0C0C000C0C0C000C0C0C000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840084848400848484008484
      8400848484000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000C0C0C000C0C0C00080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000808080008080800080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400D6D6
      D600CECECE00B5B5B50084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000808080008080800080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000639C9C00639C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00009C9C000000000000000000000000000000
      000000000000639C9C00319CCE0031CECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700FFF7F700FFF7E700FFFFE700F7FFF700FFFFF700FFFFFF00FFFFF700FFFF
      F700FFFFEF008C7B5A00FFFFFF000000000000000000009CCE0031CEFF0031CE
      FF0031CEFF0063CEFF0063CEFF0031CECE00009C9C0000000000000000000000
      0000639C9C00319CCE0031CEFF0063CEFF00000000005A5A5A00636363005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A00636363009494
      9400639C9C005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      000000000000000000000000000000000000000000000000000063392900F7F7
      F700FFFFF700FFFFFF009C6B5200FFFFEF00FFFFF7007B5A3900F7FFF700FFFF
      F700FFFFF700FFFFFF00FFFFFF0000000000009CCE009CFFFF0063CEFF0031CE
      FF0031CEFF0063CEFF0063CEFF0031CEFF00319CCE00009C9C00000000008484
      8400319CCE0031CEFF0063CEFF0000000000319CCE00319CCE00319CCE000063
      CE0000639C0000639C0000639C0000639C0000639C0031639C0094949400319C
      CE00319CCE004A4A4A0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFF7
      F700FFFFFF0000000000FFFFFF0000000000009CCE009CFFFF0063CEFF0031CE
      FF0031CEFF0063CECE00B5B5B500CE9C9C00CE9C9C009494940084848400639C
      9C0063CEFF0063CEFF000000000000000000319CCE00319CCE00CEFFFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF009C9C9C00319CCE0063CE
      FF0000639C003163630073737300000000000000000000000000848484008484
      8400000000000000000084848400848484008484840084848400000000000000
      00008484840084848400000000000000000000000000F7FFFF00FFFFFF00BD00
      2100BD5A6B00D6002100FFF7FF00FFDEEF00FFE7EF00D6001800C6002100FFF7
      FF00FFEFF700CE002100CE002100FFFFFF00009CCE009CFFFF0063CEFF0031CE
      FF0031CEFF009C639C00FFEFCE00FFEFCE00F7F7F700FFEFCE00CECE9C009494
      940063CEFF00000000000000000000000000319CCE00319CCE00CEFFFF009CFF
      FF009CCECE00CECECE00C6C6C600B5B5B50094ADAD00639CCE0063CEFF0063CE
      FF0000639C0000639C005A5A5A00000000000000000000000000848484008484
      8400000000008484840084848400848484008484840084848400848484000000
      00008484840084848400000000000000000000000000FFFFFF00C6636B00B500
      2100C6395200D600210000000000C6082900FFFFFF009C213900D6002100CE00
      2100FFF7FF00D6082900A5213900FFFFFF00009CCE009CFFFF00CEFFFF00CEFF
      FF00B5B5B500FFEFCE00F7F7F700FFEFCE00F7F7F700FFEFCE00FFEFCE00CE9C
      9C0000000000000000000000000000000000319CCE00319CCE009CCEFF00CECE
      CE00EFEFEF00FFFFFF00FFFFCE00FFEFCE00CECE9C009CCECE0063CEFF009CFF
      FF00319CCE00319C9C0052525200000000000000000000000000848484008484
      8400000000008484840000000000848484008484840084848400848484000000
      00008484840084848400000000000000000000000000FFFFFF00B50821009408
      2100AD636B00AD0821000000000094102100FFFFFF00F7FFFF00C6002100FFFF
      FF00F7FFFF00FFFFFF00F7FFFF00FFFFFF00009CCE00CEFFFF0031CECE00319C
      CE0084848400F7F7F700FFEFCE00FFEFCE00F7F7F700FFEFCE00F7CEA500F7CE
      A5009C639C00000000000000000000000000319CCE0031CECE00319CCE00F7CE
      A5000000000000000000F7F7F700FFEFCE00FFEFCE00C6C6C6009CFFFF009CFF
      FF0063CEFF0000639C0031636300737373000000000000000000848484008484
      84000000000084848400FFFFFF00000000008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000FFFFFF00FFFF
      FF00F7F7F700CECECE00CECECE00D6CECE00D6CECE00CED6D600FFFFFF00FFFF
      FF0000000000000000000000000000000000009CCE0031CEFF0063CEFF0031CE
      FF00B5B5B500F7F7F700FFEFCE00F7F7F700F7F7F700F7CEA500F7CEA500F7CE
      A5009C639C00000000000000000000000000319CCE0063CEFF00319CCE00F7CE
      A500F7F7F700FFFFFF00FFFFCE00FFEFCE00FFEFCE00CECECE009CFFFF009CFF
      FF0063CEFF00319CCE0000639C004A4A4A000000000000000000FFFFFF00FFFF
      FF00000000000000000084848400848484008484840084848400000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000CECECE00CECE
      CE00D6CECE00D6CECE00EF949C00C6002100DE001800AD002100DE948C000000
      000000000000000000000000000000000000009CCE009CFFFF0063CEFF0031CE
      FF0084848400FFEFCE00FFEFCE00FFEFCE00F7CEA500F7CEA500FFEFCE00F7CE
      A5009C639C00000000000000000000000000319CCE0063CEFF00319CCE00F7CE
      A500FFFFCE00FFFFCE00FFEFCE00FFEFCE00FFEFCE00FFCECE00000000000000
      00009CCEFF0063CEFF0000639C005A5A5A000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000CE08
      2900A5213900FFF7F700FFFFFF00C6425200C60021009C081800FFF7F700FFF7
      EF00FFFFFF00000000000000000000000000009CCE009CFFFF0063CEFF0031CE
      FF00319CCE00CECE9C00FFEFCE00F7CEA500F7CEA500F7F7F700F7F7F7009C63
      9C0000000000000000000000000000000000319CCE009CFFFF0063CEFF008484
      8400FFEFCE00FFEFCE00FFEFCE00FFFFFF00DEDEDE00639CCE00319CCE00319C
      CE00319CCE00319CCE0000639C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00DE002100AD001800FFF7FF00FFFFFF00B5737B00FFE7DE00EF635200FFF7
      F70000000000000000000000000000000000009CCE009CFFFF0063CEFF0031CE
      FF0031CEFF00B5B5B500CE9C9C00F7CEA500F7CEA500F7CEA5009C639C009C63
      9C0000000000000000000000000000000000319CCE009CFFFF009CFFFF009CFF
      FF00C6C6C600F7CEA500F7CEA500CECECE00E7E7E70000000000000000000000
      000000639C007373730000000000000000000000000000000000000000000000
      0000000000008484840000000000FFFFFF00FFFFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00DE002100BD002100FFF7FF00FFFFFF00FFF7F700FFFFFF00F7FF
      FF0000000000000000000000000000000000009CCE009CFFFF009CFFFF0063CE
      FF0063CEFF009CFFFF009CCECE00848484008484840084848400000000000000
      000000000000000000000000000000000000319CCE00000000009CFFFF009CFF
      FF009CFFFF009CFFFF0000000000319CCE00319CCE00319CCE00319CCE00319C
      CE000063CE000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7FFFF00FFFFFF00CE0018009C102900FFF7FF00FFF7EF00000000000000
      000000000000000000000000000000000000009CCE00F7F7F700F7F7F700CEFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF0063CEFF00009C9C00000000000000
      00000000000000000000000000000000000000000000319CCE00000000000000
      00000000000000000000319CCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009CCE00F7F7F700D6E7
      E700CEFFFF009CFFFF009CFFFF009CFFFF00009C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000319CCE00319C
      CE00319CCE00319CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000000000FFFF
      FF00000000008484840000000000FFFFFF00FFFFFF0000000000848484000000
      0000FFFFFF000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C60000000000FFFFFF00FFFFFF00C6C6C6008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000084848400FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF00FFFFFF008484840000000000FFFFFF0000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000008484
      8400FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF00848484000000000000000000FFFFFF000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      00008484840000000000FFFFFF00FFFFFF00C6C6C60084848400000000008484
      840000000000FFFFFF0000000000FFFFFF00000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF00000000000000000000000000000000000000000000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C6000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00C6C6C60000FFFF00C6C6C60000FFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00C6C6C60000FFFF00C6C6C6000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000C6C6C6000000
      0000FFFFFF0000000000FF000000FF000000FF0000008400000000000000FFFF
      FF0000000000C6C6C60000000000FFFFFF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FF000000FF0000008484840000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FF00000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000000000000000000000000000000000BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF0000000000000000000000000000000000BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000000000000000000000000000000000FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF0000000000000000000000000000000000BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF0000000000000000000000000000000000FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00BDBDBD00FFFFFF00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B0000FFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF0000000000000000007B7B7B0000FFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
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
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C60000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C60000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00000000007B7B7B0000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
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
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C60000000000FFFFFF00FFFFFF00C6C6C6008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF008484840000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000084848400FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF00FFFFFF0084848400000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000008484
      8400FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF0084848400000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000084000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF000000
      00008484840000000000FFFFFF00FFFFFF00C6C6C60084848400000000008484
      840000000000FFFFFF00000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000FF00000084000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000FF00000084000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000008400
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF00000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000084000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000C6C6C6000000
      00000000000000000000FF000000FF000000FF00000084000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000084000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FF000000FF00000084848400000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000084000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000084000000FF00000000000000000000000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F707FFFF00000000
      F007000000000000F707000000000000F7FF000000000000F707000000000000
      F007000000000000F707000000000000F7FF000000000000F707000000000000
      F007000000000000F707000000000000C1FF000000000000C1FF000000000000
      C1FF018000000000FFFF018000000000FFFFFFFFFFFCFFFFFFFFFFF3C0F8FFF3
      FFFFC00180708003FC3FC0010021000380018125000300018001800000070001
      80018200000F00018201820000070C008101C00F000700008001C01F00070030
      8001E007000F00018001E00F000F0073C813F00F003F4207FC3FF03F003FBDFF
      FFFFFFFF807FC3FFFFFFFFFFC0FFFFFFAA55FFFFFF00FFFF4422FFFFFF008001
      B81DFFFFFF00BFFD0000FFFFFE00B8FD8001C00FFE00B1FD00008007FE00A3FD
      00008003C000A1FD000080018001B0ED081080018003B84D1428800F8007BC0D
      1428800F800FBE0D1428801F800FBC0D542AC0FF800FB80D2244C0FF801FBFFD
      0240FFFFC0FF80010180FFFFC0FFFFFFFFFFFFFFFE7FFFFF0000FFFFFE1FFFFF
      0000FFFFFC0707C10000E007FC0107C10000C007F80007C10000C007F8000101
      0000C007000000010000C007000002010000C007000102010000C00700328003
      0000C00F003EC1070000E07F003EC1070000E07F003EE38F0000FFFF001DE38F
      0000FFFF0023E38F0000FFFF003FFFFFFC1FFFFFFFFFFFFFF007FF80C007FE7F
      E003FF808003FC3FC001FF800001FC3FC001F0000001FE7FC001F0000001FC3F
      C001F0000000FC3FC001F0000000FC3FE00380078000FC1FFFC78007C000F20F
      F1C78007E001E107F1C78007E007E187F1C78007F007E007F00780FFF003F00F
      F80F80FFF803F81FFC1FFFFFFFFFFFFFFFFFFFFFFFE31188FFFFFDFFFC41B81D
      FFFFF8FF88000000E007F07F00000000C007E03F00000000C007C01F00008001
      C007800F00008001C007000700008001C007000300008001C007800100008811
      C00FC00300008811E07FE00F00008811E07FF00F00018811FFFFF81F0001DC3B
      FFFFFC7F000DFC3FFFFFFFFFD553FE7F00000000000000000000000000000000
      000000000000}
  end
  object popSnapshots: TPopupMenu
    OnPopup = popSnapshotsPopup
    Left = 95
    Top = 544
    object popSnapshotsOpen: TMenuItem
      Caption = '&Open'
      Default = True
      OnClick = popSnapshotsOpenClick
    end
    object popSnapshotsAddHint: TMenuItem
      Caption = 'Edit &Reminder'
      OnClick = popSnapshotsAddHintClick
    end
    object popSnapshotsDelete: TMenuItem
      Caption = '&Delete'
      OnClick = popSnapshotsDeleteClick
    end
    object popSnapshotsClearAll: TMenuItem
      Caption = 'Clear &All'
      OnClick = popSnapshotsClearAllClick
    end
    object popListLine1: TMenuItem
      Caption = '-'
    end
    object popSnapshotsColour: TMenuItem
      Caption = '&Colour'
      OnClick = popSnapshotsColourClick
    end
    object popListLine2: TMenuItem
      Caption = '-'
    end
    object popSnapshotsLarge: TMenuItem
      Caption = 'Large &Icons'
      GroupIndex = 1
      RadioItem = True
      OnClick = popSnapshotsLargeClick
    end
    object popSnapshotsSmall: TMenuItem
      Caption = '&Small Icons'
      GroupIndex = 1
      RadioItem = True
      OnClick = popSnapshotsSmallClick
    end
    object popSnapshotsList: TMenuItem
      Caption = '&List'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = popSnapshotsListClick
    end
    object popSnapshotsDetail: TMenuItem
      Caption = 'D&etail'
      GroupIndex = 1
      RadioItem = True
      OnClick = popSnapshotsDetailClick
    end
  end
  object ilstMatterHot: TImageList
    Left = 518
    Top = 190
    Bitmap = {
      494C01010B000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00000000007B7B7B007B7B7B000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000007B7B
      7B007B7B7B0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000007B7B7B000000000000000000FFFFFF00FFFFFF000000
      0000000000007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00000000007B7B7B007B7B7B0000000000FFFF
      FF000000000000000000000000007B7B7B000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF007B7B7B00FF000000FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B000000
      000000000000FFFFFF00000000007B7B7B000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00FF000000FF00
      0000FF000000FFFFFF00FF000000FF000000FF0000007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000FFFFFF00FFFFFF000000
      00007B7B7B0000000000000000007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B00FF00
      0000FF000000FF000000FF000000FF0000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF0000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FF000000FF000000FF000000FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF007B7B7B000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000007B7B7B00FFFFFF007B7B7B007B7B
      7B007B7B7B00000000000000000000000000000000007B7B7B00FFFFFF000000
      00007B7B7B007B7B7B00000000007B7B7B000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FF000000FF00
      0000FF0000007B7B7B00FF000000FF000000FF0000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B00FFFFFF00000000007B7B
      7B0000000000000000000000000000000000FFFFFF007B7B7B00FFFFFF000000
      00000000000000000000000000007B7B7B00000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF007B7B7B00FF000000FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000007B7B7B00FFFFFF007B7B7B00FFFFFF000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      000000000000000000007B7B7B0000FFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B
      7B00FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF00FFFF
      FF000000000000000000000000007B7B7B00000000000000FF000000FF000000
      FF00000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B00FFFFFF0000000000000000007B7B7B00000000007B7B7B007B7B7B000000
      0000FFFFFF00FFFFFF007B7B7B0000000000000000000000FF000000FF000000
      FF0000000000000000007B7B7B0000FFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF0000007B7B7B007B7B7B007B7B7B007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
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
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C6000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C60000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C60000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
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
      000000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000FF00000000000000000000000000000000000000FF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000FF0000FFFF000000FF000000
      00000000FF0000FFFF000000FF0000000000000000000000FF0000FFFF000000
      FF00000000000000FF0000FFFF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF00000000000000FF0000FFFF000000FF000000
      00000000FF0000FFFF000000FF0000000000000000000000FF0000FFFF000000
      FF00000000000000FF0000FFFF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      00000000000000000000848484000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF000000000000000000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF00000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C60000000000FFFFFF00FFFFFF00C6C6C6008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF008484840000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000084848400FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF00FFFFFF008484840000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000008484
      8400FFFFFF0000000000FFFFFF00FFFFFF00C6C6C6008484840000000000FFFF
      FF0084848400000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF000000
      00008484840000000000FFFFFF00FFFFFF00C6C6C60084848400000000008484
      840000000000FFFFFF00000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      000000000000FFFFFF00000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C60084848400000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      00000000000000000000FF000000FF000000FF00000084000000000000000000
      000000000000C6C6C6000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFE4FFE7F00000000FE93FE1F0000
      0000FCE4FC0700000000FD99FC0100000000F92EF80000000000805AF8000000
      0000009600000000000001060000000000000389000100000000079200320000
      00002F1E003E00000000061E003E00000000040E003E000000000691001D0000
      00000003002300000000003F003F0000FC1FFFFFFFFFFFFFF007FF80C007FE7F
      E003FF808003FC3FC001FF800001FC3FC001F0000001FE7FC001F0000001FC3F
      C001F0000000FC3FC001F0000000FC3FE00380078000FC1FF1C78007C000F20F
      F1C78007E001E107F1C78007E007E187F0078007F007E007F80F80FFF003F00F
      FC1F80FFF803F81FFFFFFFFFFFFFFFFFFFFFFFFFFFE3BBDDFFFFFE3FFC411188
      FFFFF81F88001188FFFFF40F00001188C00FE00700001188800780030000B81D
      800340010000000080010000000000008001000000000000800F800100008001
      800FC00300008001801FE00F00008001C0FFF07F00018001C0FFF8FF00018811
      FFFFFFFF000D8811FFFFFFFFD553881100000000000000000000000000000000
      000000000000}
  end
  object cdlgColour: TColorDialog
    Left = 600
    Top = 153
  end
  object qryEmps: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME, REOPENLENGTH, RATE, REFRESH '
      'FROM EMPLOYEE WHERE CODE = :code')
    Left = 656
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object qryDesktop: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.*, D.ROWID FROM DESKTOP D'
      '')
    Left = 715
    Top = 312
  end
  object ilstShortcuts: TImageList
    Left = 572
    Top = 243
    Bitmap = {
      494C0101CC00D100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004003000001002000000000000040
      0300000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B8E0F60087CBEF0068AA
      D1004683AA00527A990065839B00A5BBCC00F2F6F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000845D37B7B8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF845D37B70000
      00000000000000000000000000000000000000000000000000080000001E0000
      002700000028000000290000002A0000002B0000002C0000002C0000002D0000
      002E0000002F000000250000000A0000000060B5E4005EBBEC007ECFF1005BBE
      F1002D96D4000F62930015618E002C6E9B00427FAB0072B6E400588EBB002B5D
      89004C6B8B00617D9800A5BBCC00F2F6F90000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFD4B494FFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
      000000000000000000000000000000000000000000000000001BB1713EFFB372
      3FFFB37340FFB47441FFB57643FFB67744FFB77846FFB87947FFB87B49FFBA7C
      49FFBB7E4CFFBC7F4DFF000000240000000055B0E20074D3FE00C2F1FC00CDFA
      FF00BDF6FF00B7F4FF0091CFE30044A5D6003676A60047A1DB002F83C400165C
      9E0008417200125685002C6E9B00427FAB0000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C0000000000000000000B8824DFFFFFFFFFFD4B494FFB882
      4DFFD4B494FFFFFFFFFFD4B494FFB8824DFFD4B494FFFFFFFFFFB8824DFF0000
      0000000000000000000000000000000000000000000000000020B47441FFF7E7
      D7FFF7E7D8FFF7E8D9FFF8E8DAFFF8E9DBFFF8EADCFFF8EADDFFF9EBDEFFF9EC
      DFFFF9EDE0FFBE8351FF0000002D0000000053ADE00093E4FB008BDBF60074C9
      EF0065AFD4004683AA00578AA6004D7D9B00356F9B006AB6E0006AACD0005B97
      BE0065A3C70076B6D30044A5D6003676A6000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C0C0C000C0C0C00000000000B8824DFFD4B494FFFFFFFFFFD4B4
      94FFFFFFFFFFD4B494FFFFFFFFFFD4B494FFFFFFFFFFD4B494FFB8824DFF0000
      000000000000000000000000000000000000000000000000001DB67744FFF9EB
      DDFFF9EBDDFFF9ECDEFFFAEDE0FFFAEDE0FFFAEEE1FFFBEFE2FFFBEFE4FFFBF1
      E5FFFCF1E6FFC18756FF0000002B0000000076B9E00054AFE1005EBBEC007ECF
      F1005BBEF1002D96D4000F62930015618E002C6E9B00387AA900377CB1002251
      7F00305C8200437291006AAFCC00397EAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000C0C0C00000000000B8824DFFB8824DFFD4B494FFFFFF
      FFFFD4B494FFB8824DFFD4B494FFFFFFFFFFD4B494FFB8824DFFB8824DFF0000
      000000000000000000000000000000000000000000000000001BB87B48FFFBEE
      E1FFFBEEE2FFFCF0E3FFFCF0E5FFFCF1E6FFFDF2E7FFFDF2E9FFFDF3E9FFFDF4
      EBFFFEF4EBFFC48A5AFF00000029000000000000000058B4E6005EBDEE0061AD
      D5005890B5005384A60049799B00538DB1003C9DD0003676A6002F83C400165C
      9E0008417200135E8B002C6E9B003779A80000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000C0C0C00000000000B8824DFFD4B494FFFFFFFFFFD4B4
      94FFB8824DFFB8824DFFB8824DFFD4B494FFFFFFFFFFD4B494FFB8824DFF0000
      0000000000000000000000000000000000000000000000000018BB7E4BFFFCEF
      E3FFFDF3E8FFFEF3E9FFFEF5EAFFFEF5ECFFFEF6ECFFFEF7EEFFFFF7EFFFFFF7
      F0FFFFF9F2FFC78F5EFF000000260000000060B5E4005EBBEC007ECFF1005BBE
      F1002D96D4000F62930015618E002C6E9B00387BAB00397EAE006AACD0005B97
      BE0069A7CA0091CFE30044A5D6003676A6000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C00000000000B8824DFFFFFFFFFFD4B494FFB882
      4DFFB8824DFFB8824DFFB8824DFFB8824DFFD4B494FFFFFFFFFFB8824DFF0000
      0000000000000000000000000000000000000000000000000015BE814FFFFBEF
      E3FFFDF3E9FFFFF6EEFFFFF7EFFFFFF8F0FFFFF8F1FFFFF9F1FFFFF9F2FFFFF9
      F3FFFFFAF4FFCA9362FF000000240000000055B0E20074D3FE00C2F1FC00CDFA
      FF00BDF6FF00B7F4FF0091CFE30044A5D6003676A600439CD300377CB1002F62
      8E003E6D90005A8AA3006AAFCC00397EAE000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C00000000000886039BDB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF845D37B70000
      0000000000000000000000000000000000000000000000000012C18554FFFAED
      E0FFFCF1E6FFFEF5ECFFFFF9F1FFFFF9F2FFFFF9F3FFFFFAF3FFFFFAF4FFFFFA
      F5FFFFFAF6FFCD9667FF000000220000000053AEE10098E8FC00A7F3FF00A7F3
      FF00A7F3FF00A7F3FF00A7F3FF00A2EEFF00397EAE0047A1DB002F83C400165C
      9E000C57880015618E002C6E9B00397EAD00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000FC38958FFF7E8
      D9FFFAEDE1FFFCF2E8FFFEF7F0FFFFF9F3FFFFFAF5FFFFFAF4FFFFFAF5FFFFFB
      F6FFFFFBF6FFCF9B6CFF0000001F0000000076B9E00055B0DD006FCCEE007CDE
      FB007CE1FF0081E6FF008EDCF5006CBBE5004FABDE006DBCE5006AACD0005B97
      BE00B3EFFB0091CFE30044A5D6003676A600000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF000000000000000000000000000000000097A7
      76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
      76FF97A776FF97A776FF97A776FF97A776FF000000000000000DC78D5CFFF5E2
      D1FFF7E8DBFFFAEFE3FFFCF3EBFFFEF7F1FFFFFBF6FFE6E2DFFFCFCCC9FFE6E2
      E0FFFFFCF8FFD29F70FF0000001C00000000FFFFFF00DDEDF700A3D0EA00A3D0
      EA00A3D0EA00A3D0EA009DCEEA00379ADF004DB5F100449FDA003C83B6004B87
      AD00578AA6005A8AA3006AAFCC00397EAE00000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF000000000000000000000000000000000097A7
      76FFFFFFFFFF97A776FF97A776FF97A776FFFFFFFFFFFFFFFFFFBBC6A6FF97A7
      76FFFFFFFFFF97A776FF97A776FF97A776FF000000000000000AC99161FFF0DA
      C6FFF4E1D0FFF6E7DAFFFAEFE4FFFCF4ECFFAC9788FF553624FF9D8D83FFD0CE
      CBFFFFFDFAFFD5A375FF0000001A00000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0045A4E0004EAFEA0074C5EC005BBEF1002D96
      D4000F62930015618E002C6E9B00397EAD00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000000000000000000097A7
      76FFFFFFFFFF97A776FF97A776FF97A776FFFFFFFFFF97A776FFFFFFFFFF97A7
      76FFFFFFFFFF97A776FF97A776FF97A776FF0000000000000005CC9565FFCE97
      68FFCF9869FFD09A6BFFF7EBDFFFFAF0E7FF6B472EFFC0B9B4FF593B29FFCFCD
      CCFFFFFDFBFFD9A77AFF0000001700000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0055B0E20074D3FE00C2F1FC00CDFAFF00BDF6
      FF00B7F4FF0091CFE30044A5D6003676A600000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000000000000000000097A7
      76FFFFFFFFFFFFFFFFFFBBC6A6FF97A776FFFFFFFFFF97A776FFFFFFFFFF97A7
      76FFFFFFFFFFFFFFFFFF97A776FF97A776FF0000000000000001130F0C1EB08B
      6BD9FFFCF9FFD29E6FFFF5E6D8FFF7EADFFF734C2DFFCDC8C3FF644027FFFFFE
      FBFFFFFEFDFFDBAB7FFF0000001400000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0053AEE10098E8FC00A7F3FF00A7F3FF00A7F3
      FF00A7F3FF00A7F3FF00A2EEFF00397EAE00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000000097A7
      76FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A7
      76FFFFFFFFFF97A776FF97A776FF97A776FF000000000000000000000001130F
      0C1CB08A6CD8D5A274FFF2E0D0FFF4E5D7FF805431FFCCC5BFFFF4EFE9FFFEFB
      F8FFFFFEFCFFDDAF83FF0000001100000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0076B9E00055B0DD006FCCEE007CDEFB007CE1
      FF0081E6FF008EDCF5006CBBE50076B9E000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000097A7
      76FFFFFFFFFFFFFFFFFFBBC6A6FF97A776FFFFFFFFFFFFFFFFFFBBC6A6FF97A7
      76FFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF0000000000000000000000000000
      0001130F0C1CD8A679FFD8A87BFFDAAA7DFF8E6238FFBB9168FFB38D6AFFC99F
      76FFDFB185FFE0B387FF0000000B00000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDEDF700A3D0EA00A3D0EA00A3D0
      EA00A3D0EA00A3D0EA00DDEDF700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000097A7
      76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
      76FF97A776FF97A776FF97A776FF97A776FF0000000000000000000000000000
      0000000000000000000200000003000000044F361D86966739FF4C351D870000
      0008000000090000000800000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000088551390A466
      17AD985E15A0985E15A0985E15A0985E15A0985E15A0985E15A0985E15A0985E
      15A0985E15A0A36516AB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8E0F60087CBEF0068AA
      D1004683AA00527A990065839B00A5BBCC00F2F6F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000C47A1BCF2E1C
      0630000000000000000000000000000000000000000000000000000000000000
      00000000000091591498000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000060B5E4005EBBEC007ECFF1005BBE
      F1002D96D4000F62930015618E002C6E9B00427FAB0072B6E400588EBB002B5D
      89004C6B8B00617D9800A5BBCC00F2F6F9000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000800000008000000000000000000000000000000000000000C47A1BCF2E1C
      0630000000000000000000000000000000000000000000000000000000000000
      0000000000009159149800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000055B0E20074D3FE00C2F1FC00CDFA
      FF00BDF6FF00B7F4FF0091CFE30044A5D6003676A60047A1DB002F83C400165C
      9E0008417200125685002C6E9B00427FAB0000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000008000
      0000800000000000000000000000000000000000000000000000C47A1BCF2E1C
      0630000000000000000000000000000000000000000000000000000000000000
      00000000000091591498000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000053ADE00093E4FB008BDBF60074C9
      EF0065AFD4004683AA00578AA6004D7D9B00356F9B006AB6E0006AACD0005B97
      BE0065A3C70076B6D30044A5D6003676A6000000000000000000000080000000
      8000000080000000800000008000000080000000800000008000800000008000
      0000000080000000000000000000000000000000000000000000CD7E1CD72E1C
      06303B25083E4C2F0B504C2F0B504C2F0B504C2F0B504C2F0B504C2F0B503621
      083800000000955B159C000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000076B9E00054AFE1005EBBEC007ECF
      F1005BBEF1002D96D4000F62930015618E002C6E9B00387AA900377CB1002251
      7F00305C8200437291006AAFCC00397EAE000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000080000000800000000000000000000000000000000000D5821DDF2E1C
      0630221505243D2508403D2508403D2508403D2508403D2508403D2508402315
      052400000000985D15A0000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000058B4E6005EBDEE0061AD
      D5005890B5005384A60049799B00538DB1003C9DD0003676A6002F83C400165C
      9E0008417200135E8B002C6E9B003779A8000000000000000000808080000000
      00000000FF00FFFFFF00FFFFFF00FFFFFF00800000008000000000000000FFFF
      FF00000000000000800000008000000000000000000000000000CD7E1CD72E1C
      0630352107384C2F0B504C2F0B504C2F0B504C2F0B504C2F0B504C2F0B50331F
      073500000000955B159C000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000060B5E4005EBBEC007ECFF1005BBE
      F1002D96D4000F62930015618E002C6E9B00387BAB00397EAE006AACD0005B97
      BE0069A7CA0091CFE30044A5D6003676A600000000000000FF00000000000000
      000000FF0000FFFFFF00FFFFFF008000000080000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000008000000000000000000000000000D5821DDF2E1C
      0630221505243D2508403D2508403D2508403D2508403D2508403D2508402416
      052600000000985D15A0000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000C0C0C000C0C0C0000000000055B0E20074D3FE00C2F1FC00CDFA
      FF00BDF6FF00B7F4FF0091CFE30044A5D6003676A600439CD300377CB1002F62
      8E003E6D90005A8AA3006AAFCC00397EAE0000FFFF00000000000000000000FF
      FF00FFFFFF00FFFFFF008000000080000000000000000000000000000000C0C0
      C000C0C0C000FFFFFF0000000000000000000000000000000000CD7E1CD72E1C
      0630352107384C2F0B504C2F0B504C2F0B504C2F0B504C2F0B504C2F0B50331F
      073500000000955B159C00000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C0000000000053AEE10098E8FC00A7F3FF00A7F3
      FF00A7F3FF00A7F3FF00A7F3FF00A2EEFF00397EAE0047A1DB002F83C400165C
      9E000C57880015618E002C6E9B00397EAD0000000000FF000000000000000000
      0000000000008000000080000000C0C0C000C0C0C00000FFFF00C0C0C000C0C0
      C000C0C0C000FFFFFF0000000000000000000000000000000000D5821DDF2E1C
      0630311E07345B380C605B380C605B380C605B380C605B380C605B380C603320
      073600000000985D15A00000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C0000000000076B9E00055B0DD006FCCEE007CDE
      FB007CE1FF0081E6FF008EDCF5006CBBE5004FABDE006DBCE5006AACD0005B97
      BE00B3EFFB0091CFE30044A5D6003676A600000000000000000000FF00000000
      000080000000800000000000FF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000CD7E1CD72E1C
      06302A1A062C3D2608403D2608403D2608403D2608403D2608403D2608402819
      062A00000000955B159C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00DDEDF700A3D0EA00A3D0
      EA00A3D0EA00A3D0EA009DCEEA00379ADF004DB5F100449FDA003C83B6004B87
      AD00578AA6005A8AA3006AAFCC00397EAE000000000000FFFF00000000008000
      00008000000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000D5821DDF2E1C
      06303923083C5B380C605B380C605B380C605B380C605B380C605B380C603923
      083C00000000985D15A00000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0045A4E0004EAFEA0074C5EC005BBEF1002D96
      D4000F62930015618E002C6E9B00397EAD000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000D5821DDF2E1C
      06300000000000000000000000000000000000000000000000001F130420975D
      159F8E581396C3781BCC0000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0055B0E20074D3FE00C2F1FC00CDFAFF00BDF6
      FF00B7F4FF0091CFE30044A5D6003676A600000000000000FF000000000000FF
      FF000000000000000000FFFFFF00FFFFFF0000FF0000FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000D5821DDF2E1C
      06300000000000000000000000000000000000000000000000003D2508407F4F
      1186BA7318C36C430F7200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0053AEE10098E8FC00A7F3FF00A7F3FF00A7F3
      FF00A7F3FF00A7F3FF00A2EEFF00397EAE0000FFFF0000000000FF0000000000
      0000000000000000FF00FF000000FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000CA7B1CD3482C
      0A4B1F1304201F1304201F1304201F1304201F1304201F13042054340B58DA87
      1EE5784A117E060401060000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0076B9E00055B0DD006FCCEE007CDEFB007CE1
      FF0081E6FF008EDCF5006CBBE50076B9E00000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000442A0948E48C
      1FEFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF8150
      1288000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDEDF700A3D0EA00A3D0EA00A3D0
      EA00A3D0EA00A3D0EA00DDEDF700FFFFFF0000000000B8E0F60087CBEF0068AA
      D1004683AA00527A990065839B00A5BBCC00F2F6F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060B5E4005EBBEC007ECFF1005BBE
      F1002D96D4000F62930015618E002C6E9B00427FAB0072B6E400588EBB002B5D
      89004C6B8B00617D9800A5BBCC00F2F6F9000000800000008000C0C0C000C0C0
      C000C0C0C000C0C0C00000008000000080000000800000008000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000055B0E20074D3FE00C2F1FC00CDFA
      FF00BDF6FF00B7F4FF0091CFE30044A5D6003676A60047A1DB002F83C400165C
      9E0008417200125685002C6E9B00427FAB000000800000008000C0C0C000C0C0
      C000C0C0C000C0C0C0000000800000008000000080000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000053ADE00093E4FB008BDBF60074C9
      EF0065AFD4004683AA00578AA6004D7D9B00356F9B006AB6E0006AACD0005B97
      BE0065A3C70076B6D30044A5D6003676A600C0C0C00000008000C0C0C000C0C0
      C000C0C0C000C0C0C00000008000C0C0C000C0C0C00000008000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000076B9E00054AFE1005EBBEC007ECF
      F1005BBEF1002D96D4000F62930015618E002C6E9B00387AA900377CB1002251
      7F00305C8200437291006AAFCC00397EAE00C0C0C00000008000C0C0C000C0C0
      C000C0C0C000C0C0C00000008000C0C0C000C0C0C0000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000058B4E6005EBDEE0061AD
      D5005890B5005384A60049799B00538DB1003C9DD0003676A6002F83C400165C
      9E0008417200135E8B002C6E9B003779A8000000800000008000C0C0C000C0C0
      C000C0C0C000C0C0C00000008000000080000000800000008000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000060B5E4005EBBEC007ECFF1005BBE
      F1002D96D4000F62930015618E002C6E9B00387BAB00397EAE006AACD0005B97
      BE0069A7CA0091CFE30044A5D6003676A6000000800000008000000080000000
      800000008000000080000000800000008000000080000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000055B0E20074D3FE00C2F1FC00CDFA
      FF00BDF6FF00B7F4FF0091CFE30044A5D6003676A600439CD300377CB1002F62
      8E003E6D90005A8AA3006AAFCC00397EAE00C0C0C0000000800000008000C0C0
      C000C0C0C0000000800000008000C0C0C000C0C0C00000008000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000C0C0C000C0C0C0000000000053AEE10098E8FC00A7F3FF00A7F3
      FF00A7F3FF00A7F3FF00A7F3FF00A2EEFF00397EAE0047A1DB002F83C400165C
      9E000C57880015618E002C6E9B00397EAD00C0C0C0000000800000008000C0C0
      C000C0C0C0000000800000008000C0C0C000C0C0C0000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C0000000000076B9E00055B0DD006FCCEE007CDE
      FB007CE1FF0081E6FF008EDCF5006CBBE5004FABDE006DBCE5006AACD0005B97
      BE00B3EFFB0091CFE30044A5D6003676A6000000800000008000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C00000000000FFFFFF00DDEDF700A3D0EA00A3D0
      EA00A3D0EA00A3D0EA009DCEEA00379ADF004DB5F100449FDA003C83B6004B87
      AD00578AA6005A8AA3006AAFCC00397EAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0045A4E0004EAFEA0074C5EC005BBEF1002D96
      D4000F62930015618E002C6E9B00397EAD000080800000808000008080000080
      800000808000008080000080800000808000008080000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0055B0E20074D3FE00C2F1FC00CDFAFF00BDF6
      FF00B7F4FF0091CFE30044A5D6003676A6000000000000808000008080000080
      80000080800000808000008080000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0053AEE10098E8FC00A7F3FF00A7F3FF00A7F3
      FF00A7F3FF00A7F3FF00A2EEFF00397EAE008000800000000000000000000080
      800000808000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0076B9E00055B0DD006FCCEE007CDEFB007CE1
      FF0081E6FF008EDCF5006CBBE50076B9E0008000800080008000800080000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000008000800080008000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDEDF700A3D0EA00A3D0EA00A3D0
      EA00A3D0EA00A3D0EA00DDEDF700FFFFFF008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000C7E8FF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0097D5FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000C0C0C000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000018A2FE0080CCFF000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FF000000FF00
      0000FF00000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      00008080800000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000008080
      8000FF000000C0C0C000FFFFFF00808080008000000080000000C0C0C0000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FF00000000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0008000000080808000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000FFFFFF00FFFF
      FF008080800080808000808080008080000080000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C00000000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF000000000000FFFF000000
      000000000000000000000000FF00000000000098FF000000000068C1FE0040B2
      FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2
      FE0040B2FE0040B2FE0018A2FE0050B8FE000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF008000000080808000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000FF00000000000098FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000060BFFE00BFE5FF000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000C0C0C00080000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00000000000000FFFF
      FF0000000000FFFFFF0000000000000000000098FF0000000000000000000000
      0000C7E8FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF002CAAFE00CFEBFF00000000000000000000000000C0C0
      C000C0C0C000C0C0C0008080000080000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FF00000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000098FF0000000000000000000000
      00003CAFFE008BD0FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8
      FF009FD8FF009FD8FF00B7E2FF00000000000000000000000000000000008080
      8000C0C0C000C0C0C0008000000080800000FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000098FF0080CCFF0080CCFF007CCA
      FE0024A7FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008080800080808000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097D5FF0080CCFF0080CCFF0080CC
      FF00C7E8FF000000000000000000000000000000000000000000000000000000
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
      0000000000000000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080000000808080008080000080000000800000008000
      0000008080000000000000000000000000000000000000000000000000000000
      0000000000008080000080000000808080008080000080000000800000008000
      0000008080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000800000000000
      0000800000000000000080000000800000008000000080808000000000008000
      0000000000008000000000000000000000000000000000000000000000000000
      0000808000008080000080800000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000FF0000008000000000000000000000000000000000000000000000000000
      0000808000008080000080800000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000FF00000080000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000800000000000
      0000800000000000000000000000800000000000000080000000000000008000
      0000000000008000000000000000000000000000000000000000000000008080
      000080800000808000008080000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000008080
      000080800000808000008080000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000800000008080
      8000800000000000000000000000000000000000000080000000000000008000
      0000808080008000000000000000000000000000000000000000808000008080
      000080800000808000008080000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000808000008080
      000080800000808000008080000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000080808000800000008000
      0000800000008080800000000000000000000000000080000000808080008000
      0000800000008000000080808000000000000000000000000000808000008080
      0000808000008080000080000000000000000000000080808000C0C0C0008080
      8000C0C0C000C0C0C00000000000000000000000000000000000808000008080
      0000808000008080000080000000000000000000000080808000C0C0C0008080
      8000C0C0C000C0C0C000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000800000008000
      0000800000008000000080000000000000000000000000000000808000008080
      00008080000080800000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000808000008080
      00008080000080800000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000C0C0C000C0C0C000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000800000008000
      0000800000008000000080000000000000000000000000000000808000008080
      0000808000008080000080808000C0C0C00080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000808000008080
      0000808000008080000080808000C0C0C00080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000800000008000
      0000800000008000000080000000000000000000000000000000808000008080
      0000808000008080800000000000C0C0C000C0C0C000C0C0C000808080008000
      0000800000008080000000000000000000000000000000000000808000008080
      0000808000008080800000000000C0C0C000C0C0C000C0C0C000808080008000
      000080000000808000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000000000000000000000000000800000008000
      0000800000000000000080000000000000000000000000000000000000008000
      0000800000008000000000000000000000000000000000000000808000008080
      000080800000808000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008000000000000000000000000000000000000000808000008080
      000080800000808000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      00008080000080800000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0
      C000808080008000000000000000000000000000000000000000808000008080
      00008080000080800000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0
      C00080808000800000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000808080008000
      0000808080000000000080000000000000000000000000000000000000008080
      8000800000008080800000000000000000000000000000000000808080008080
      00008080000080800000C0C0C00000000000C0C0C0008080800000808000C0C0
      C000808080008000000000000000000000000000000000000000808080008080
      00008080000080800000C0C0C00000000000C0C0C0008080800000808000C0C0
      C00080808000800000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000800000008000
      0000800000000000000080000000000000008000000000000000000000008000
      000080000000800000000000000000000000000000000000000080808000FFFF
      00008080000080800000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000800000000000000000000000000000000000000080808000FFFF
      00008080000080800000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008000
      0000808080000000000080808000800000008000000080000000000000008080
      8000800000008080800000000000000000000000000000000000808080008080
      8000FFFF000080800000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008080000000000000000000000000000000000000808080008080
      8000FFFF000080800000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000808000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      8000808080000000000000000000000000000000000000000000808080008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF00000000000000000000000000B8E0F60087CBEF0068AA
      D1004683AA00527A990065839B00A5BBCC00F2F6F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000008000800000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000800080000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF00000000000080800060B5E4005EBBEC007ECFF1005BBE
      F1002D96D4000F62930015618E002C6E9B00427FAB0072B6E400588EBB002B5D
      89004C6B8B00617D9800A5BBCC00F2F6F9000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000008000800000000000000080000000
      8000000080000000FF0000000000000000000000000000000000000080000000
      8000000080000000800000000000800080008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000080800055B0E20074D3FE00C2F1FC00CDFA
      FF00BDF6FF00B7F4FF0091CFE30044A5D6003676A60047A1DB002F83C400165C
      9E0008417200125685002C6E9B00427FAB000000000000000000FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000008000800000000000000080000000
      80000000FF000000FF000000FF00000000000000000000000000000080000000
      80000000800000008000000000008000800000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000080800053ADE00093E4FB008BDBF60074C9
      EF0065AFD4004683AA00578AA6004D7D9B00356F9B006AB6E0006AACD0005B97
      BE0065A3C70076B6D30044A5D6003676A600000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000008000800000000000000080000000
      00000000FF000000FF000000FF00000000000000000000000000000080000000
      0000000000000000800000000000800080000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000000000076B9E00054AFE1005EBBEC007ECF
      F1005BBEF1002D96D4000F62930015618E002C6E9B00387AA900377CB1002251
      7F00305C8200437291006AAFCC00397EAE00000000000000000080808000FFFF
      FF00FFFFFF000000000000000000FFFFFF00808080000000000080808000FFFF
      FF0000000000FFFFFF00FFFFFF00000000008000800000000000000080000000
      FF000000FF000000FF000000FF000000FF000000000000000000000080000000
      0000000000000000800000000000800080000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000058B4E6005EBDEE0061AD
      D5005890B5005384A60049799B00538DB1003C9DD0003676A6002F83C400165C
      9E0008417200135E8B002C6E9B003779A800000000000000000080808000FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF008080800000000000FFFFFF008080
      800000000000FFFFFF00FFFFFF000000000080008000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000080000000
      8000000080000000800000000000800080000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      80000000800000008000000080000000000060B5E4005EBBEC007ECFF1005BBE
      F1002D96D4000F62930015618E002C6E9B00387BAB00397EAE006AACD0005B97
      BE0069A7CA0091CFE30044A5D6003676A6000000000000000000FFFFFF008080
      8000FFFFFF000000FF00FFFFFF0080808000FFFFFF0000000000FFFFFF008080
      80000000000080808000FFFFFF000000000080008000808080000000FF000000
      FF0000000000000080000000FF000000FF000000FF0000000000000080000000
      8000000080000000800000000000800080000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      80000000000000000000000000000000000055B0E20074D3FE00C2F1FC00CDFA
      FF00BDF6FF00B7F4FF0091CFE30044A5D6003676A600439CD300377CB1002F62
      8E003E6D90005A8AA3006AAFCC00397EAE000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000FFFFFF008080
      800000000000FFFFFF008080800000000000808080000000FF00000000000000
      00000000000000008000000080000000FF000000FF0000000000000080000000
      0000000000000000800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      00000000000000000000000000000000000053AEE10098E8FC00A7F3FF00A7F3
      FF00A7F3FF00A7F3FF00A7F3FF00A2EEFF00397EAE0047A1DB002F83C400165C
      9E000C57880015618E002C6E9B00397EAD000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFF
      FF0000000000FFFFFF0080808000000000008000800000000000000080000000
      00000000000000008000000080000000FF000000FF000000FF00000000000000
      0000000000000000800000000000800080000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      00000000000000000000000000000000000076B9E00055B0DD006FCCEE007CDE
      FB007CE1FF0081E6FF008EDCF5006CBBE5004FABDE006DBCE5006AACD0005B97
      BE00B3EFFB0091CFE30044A5D6003676A60000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0080808000000000008000800000000000000080000000
      8000000080000000800000008000000080000000FF000000FF00000000000000
      8000000080000000800000000000800080000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      000000000000000000000000000000000000FFFFFF00DDEDF700A3D0EA00A3D0
      EA00A3D0EA00A3D0EA009DCEEA00379ADF004DB5F100449FDA003C83B6004B87
      AD00578AA6005A8AA3006AAFCC00397EAE000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0045A4E0004EAFEA0074C5EC005BBEF1002D96
      D4000F62930015618E002C6E9B00397EAD000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008000800000000000000000000080
      8000008080000080800000808000008080000080800000808000808080000000
      FF00000000000000000000000000800080000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      800000000000808080000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0055B0E20074D3FE00C2F1FC00CDFAFF00BDF6
      FF00B7F4FF0091CFE30044A5D6003676A6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000008000800080008000800080000000
      0000000000000080800000808000008080000080800000808000008080008080
      80000000FF000000000080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000808080000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0053AEE10098E8FC00A7F3FF00A7F3FF00A7F3
      FF00A7F3FF00A7F3FF00A2EEFF00397EAE000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000008000800080008000800080008000
      8000800080000000000000000000008080000080800000000000000000008000
      8000800080000000FF000000FF00000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      800000000000808080000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0076B9E00055B0DD006FCCEE007CDEFB007CE1
      FF0081E6FF008EDCF5006CBBE50076B9E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDEDF700A3D0EA00A3D0EA00A3D0
      EA00A3D0EA00A3D0EA00DDEDF700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1941F00F1941F00F194
      1F00F1941F00F1941F00F1941F00F1941F00F1941F00F1941F00F1941F00F194
      1F00F1941F00F1941F00F1941F00000000000000000080808000808080008080
      8000808080008080800080808000808080000080800000808000008080000080
      8000808080000000000000000000000000000000000000000000000000000000
      0000808080000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000000000000000000096FE000098FE000098FE000098
      FE000098FE000098FE000098FE000098FE000098FE000098FE000098FE000098
      FE000098FE000098FE000098FE000098FE00F2952100F3962100F3962100F396
      2100F3962100F3962100F3962100F3962100F3962100F3962100F3962100F396
      2100F3962100F3962100F3962100F39621008080800080808000808080008080
      80008080800080808000808080008080800080808000C0C0C000808080008080
      8000008080008080800000000000000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000FF
      FF0000FFFF0000FFFF0000000000000000000098FE000098FE000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00F3952000F3962100F3962100F396
      2100F3962100F3962100F2962100F3962000F3962100F3962000F3962100F396
      2100F3962100F3962100F3962100F395200080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C0000080800080808000000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF000080800000FFFF000080
      80000080800000FFFF0000FFFF00000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00F2992600F2962000F3962100F396
      2100F3962100F3962100F1961F00F2952100F3962100F1941F00F3962100F396
      2100F3962100F3962100F3952000F4941F008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C000C0C0C00000000000000000000000000000000000808080008080
      80000000000000FFFF000080800000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000FFFF00000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF0000000000EF971F00F3962100F396
      2100F3962100F2962100FF9F1F00F4952100F4952100FF7F0000F3962000F396
      2100F3962100F3962100F3962200000000008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C00080808000808080000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF0000FFFF00000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00000000000000000000000000F094
      230000000000F0941F0000000000000000000000000000000000F3931F00F194
      1F00F2921F000000000000000000000000008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      00000000000000000000F0962100F2952100F2952100F0941F00000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000C0C0C000C0C0C000C0C0C000000000000000000080808000000000000080
      8000C0C0C00080808000C0C0C000808080000000000080808000000000000000
      0000808080000000000000FFFF0000FFFF0000FFFF00008080000080800000FF
      FF0000FFFF0000FFFF0000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      000000000000F4941F00F3962100F3962100F3962100F2962000F29422000000
      0000000000000000000000000000000000008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000808080008080
      8000C0C0C000C0C0C00080808000808080000000000000000000808080008080
      8000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      0000FF993300F2962100F3962100F3962100F3962100F3962100F3962000F291
      2400000000000000000000000000000000008080800000000000000000000000
      0000C0C0C000C0C0C000C0C0C000000000000000000000000000000000008080
      8000C0C0C0008080800080808000000000000000000080808000000000000000
      0000808080008080800080808000808080008080800000000000000000008080
      8000000000000000000080808000000000000098FF00000000000097FE000098
      FE000098FE000098FE000098FE000098FE000098FE000098FE000098FE000098
      FE000098FE000098FE000098FE000097FE000000000000000000000000000000
      0000F1941F00F3962100F3962100F3962100F3962100F3962100F3962100F395
      210000000000000000000000000000000000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0C00000000000C0C0
      C000C0C0C0008080800000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000098FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000098FE000097FF000000000000000000000000000000
      0000F3962100F3962100F3962100F3962100F3962100F3962100F3962100F396
      200000000000000000000000000000000000C0C0C00000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      00000080800000FFFF0000FFFF0000FFFF0000FFFF000080800000FFFF0000FF
      FF00000000000000000000000000000000000098FF0000000000000000000000
      00000096FE000098FE000098FE000098FE000098FE000098FE000098FE000098
      FE000098FE000098FE000098FE000094FF000000000000000000000000000000
      0000F3972100F3962100F3962100F3962100F3962100F3962100F3962100F396
      210000000000000000000000000000000000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      800000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF0000000000000000000098FF0000000000000000000000
      00000097FE000097FE000097FF000097FF000097FF000097FF000097FF000097
      FF000097FF000097FF000098FE00000000000000000000000000000000000000
      0000F2942100F3962100F3962100F3962100F3962100F3962100F3962100F297
      200000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000098FF000098FE000098FE000097
      FE000098FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0942300F2952000F3962100F3962100F3962100F3962100F3952100F596
      230000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000C0C0C00080800000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000098FE000098FE000098FE000098
      FE000096FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0941F00F3952000F3962100F3962100F3962000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E9941500F0941F00F2951F00F2992600000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000C0C0C000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000C0C0C000FF000000FF000000000000000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0008080
      800080808000C0C0C000C0C0C0008080800080808000C0C0C000C0C0C0008080
      800080808000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF000000000000000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      800080808000C0C0C000C0C0C0008080800080808000C0C0C000C0C0C0008080
      800080808000C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C000FF00
      0000FF000000FF0000000000000000000000000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000C0C0C0008080
      800080808000C0C0C000C0C0C0008080800080808000C0C0C000C0C0C0008080
      800080808000C0C0C00000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FF000000FF00
      0000FF0000000000000000000000000000000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000000000000000000000000000C0C0C0008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      800080808000C0C0C00000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000808080000000000000000000000000000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000000000000000000000000000C0C0C0008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      800080808000C0C0C00000000000000000000000000000000000000000008080
      8000FF000000C0C0C000FFFFFF00808080008000000080000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FF000000C0C0C000FFFFFF00808080008000000080000000C0C0C0000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      800080808000C0C0C00000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0008000000080808000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0008000000080808000FFFFFF00FFFF
      FF000000000000000000000000000000000080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000FFFFFF00FFFF
      FF008080800080808000808080008080000080000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF008080800080808000808080008080000080000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF008000000080808000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF008000000080808000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000C0C0C00080000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000C0C0C00080000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0008080000080000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0008080000080000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C0008000000080800000FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C0008000000080800000FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008080800080808000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008080800080808000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000C0C0C000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000C0C0C000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000C0C0C000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000C0C0C000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000FF000000C0C0C000FFFFFF00808080008000000080000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FF000000C0C0C000FFFFFF00808080008000000080000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FF000000C0C0C000FFFFFF00808080008000000080000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FF000000C0C0C000FFFFFF00808080008000000080000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0008000000080808000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0008000000080808000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0008000000080808000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0008000000080808000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF008080800080808000808080008080000080000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF008080800080808000808080008080000080000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF008080800080808000808080008080000080000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF008080800080808000808080008080000080000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF008000000080808000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF008000000080808000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF008000000080808000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF008000000080808000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000C0C0C00080000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000C0C0C00080000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000C0C0C00080000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000C0C0C00080000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0008080000080000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0008080000080000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0008080000080000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0008080000080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C0008000000080800000FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C0008000000080800000FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C0008000000080800000FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C0008000000080800000FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008080800080808000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008080800080808000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008080800080808000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008080800080808000FFFFFF0000000000000000000000
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
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000FFFFFF000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000FFFFFF000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000FFFFFF000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000FFFFFF00000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000FFFFFF00000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000FFFFFF00000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000FFFFFF00000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000FFFFFF000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000FFFFFF000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000FFFFFF000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000FFFFFF000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000FFFFFF000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000FFFFFF000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000FFFFFF000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000FFFFFF000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000FFFFFF00FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000FFFFFF00FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000FFFFFF00FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000FFFFFF00FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000FFFFFF00FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000FFFFFF00FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000FFFFFF00FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000FFFFFF00FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000FFFFFF0000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000FFFFFF0000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000FFFFFF0000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000FFFFFF0000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000FFFFFF000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000FFFFFF000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000FFFFFF000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000FFFFFF000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000FFFFFF000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000FFFFFF000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000FFFFFF000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000FFFFFF000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000FFFFFF000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000FFFFFF000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000FFFFFF000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000FFFFFF000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000808080008080800080808000000000008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000080800000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF0000000000000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      000080000000000000000000000000000000000000000000FF000000FF000000
      FF00000000008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF000080800000808000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF0000000000FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      800000008000000080000000800000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF000000000080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF000000000080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF0000000000FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      80000000000080808000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000000000000000000000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      800000000000808080000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000C0C0C000C0C0C000C0C0C000C0C0C000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
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
      000000000000800000008000000000000000C7E8FF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0097D5FF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00008000000080000000000000000000000018A2FE0080CCFF000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000008000
      0000800000000000000000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      FF000000FF0000FFFF008080800000FFFF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000008000000080000000800000008000800000008000
      0000000080000000000000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF0000000000FFFFFF000000FF008080
      800000FFFF0000FFFF00FFFFFF0000FFFF0000FFFF00808080000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000080000000800000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00000000000000FF000000FF0000FF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000808080000000
      00000000FF00FFFFFF00FFFFFF00FFFFFF00800000008000000000000000FFFF
      FF00000000000000800000008000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00000000000000FF0000FFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF000000
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008080
      800000000000000000000000000000000000000000000000FF00000000000000
      000000FF0000FFFFFF00FFFFFF008000000080000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000008000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00000000000000FF0080808000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00808080000000
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00C0C0
      C0000000000000000000000000000000000000FFFF00000000000000000000FF
      FF00FFFFFF00FFFFFF008000000080000000000000000000000000000000C0C0
      C000C0C0C000FFFFFF0000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00000000000000FF0000FFFF0000FF
      FF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF0000FFFF0000FFFF000000
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF008080800000000000000000000000000000000000FF000000000000000000
      0000000000008000000080000000C0C0C000C0C0C00000FFFF00C0C0C000C0C0
      C000C0C0C000FFFFFF0000000000000000000098FF000000000068C1FE0040B2
      FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2
      FE0040B2FE0040B2FE0018A2FE0050B8FE00000000000000FF000000FF0000FF
      FF0000FFFF00FFFFFF00FF00FF00FFFFFF0000FFFF0000FFFF000000FF000000
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000000000000000000000000000000000FF
      FF00C0C0C000000000000000000000000000000000000000000000FF00000000
      000080000000800000000000FF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000098FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000060BFFE00BFE5FF0000000000FFFFFF000000FF008080
      800000FFFF0000FFFF00FF00FF0000FFFF0000FFFF00808080000000FF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF008080800000000000000000000000000000FFFF00000000008000
      00008000000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000098FF0000000000000000000000
      0000C7E8FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF002CAAFE00CFEBFF0000000000FFFFFF00000000000000
      FF000000FF0000FFFF008080800000FFFF000000FF000000FF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000098FF0000000000000000000000
      00003CAFFE008BD0FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8
      FF009FD8FF009FD8FF00B7E2FF000000000000000000FFFFFF0000000000FFFF
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000080000000FF00000000000000
      0000000000000000FF000000800000000000000000000000FF000000000000FF
      FF000000000000000000FFFFFF00FFFFFF0000FF0000FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000098FF0080CCFF0080CCFF007CCA
      FE0024A7FE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000008000000000000000
      00000000800000008000000000000000000000FFFF0000000000FF0000000000
      0000000000000000FF00FF000000FFFFFF008080800000000000000000000000
      00000000000000000000000000000000000097D5FF0080CCFF0080CCFF0080CC
      FF00C7E8FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000808080000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000000000000000C7E8FF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0097D5FF008080800080808000808080000080
      8000808080000080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000000000000000000018A2FE0080CCFF000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF008080000080800000800000000080
      800000FFFF008080800080000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C0C0C000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF008080000080800000808000008080
      00008080800000FFFF0080808000008080008080800080808000808080008080
      8000808080000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000C0C0C00000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF008080000080800000808080008080
      8000808000008080800000FFFF00808080008000000000808000808080008080
      8000808080008080800000000000000000000000000080808000000000008080
      8000C0C0C000C0C0C000C0C0C000800000000000000000000000C0C0C000C0C0
      C000C0C0C00000000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000080800000808080008080
      8000808080008080800080808000C0C0C000C0C0C000C0C0C000000000000000
      0000C0C0C0000080800080808000000000000000000080808000000000008080
      8000000000008000000080000000000000000000000000000000000000000000
      0000C0C0C0000000000080800000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000808000000080
      8000000080000000800000000000C0C0C000C0C0C00000000000000000000000
      000000000000C0C0C00000000000808080000000000080808000000000008080
      8000000000000000000000000000000000000000000080000000000000000000
      0000C0C0C0000000000000FFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      0000000080000000800000808000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000080808000808080000000000080808000000000008080
      8000000000000000000000000000800000000000000000000000800000008000
      0000C0C0C000000000000080800000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      FF000000FF000000800080808000C0C0C000C0C0C000C0C0C000000000000000
      00000000000000000000C0C0C000808080000000000080808000000000008080
      8000000000008000000080000000000000000000000080000000000000000000
      0000C0C0C000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000098FF000000000068C1FE0040B2
      FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2
      FE0040B2FE0040B2FE0018A2FE0050B8FE000000000000000000000080000080
      8000008080000080800080808000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000080808000808080000000000080808000000000008080
      8000000000000000000000000000800000000000000000000000800000008000
      0000C0C0C00000000000C0C0C00000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000098FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000060BFFE00BFE5FF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000808000C0C0C0000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000808080000000000080808000000000008080
      8000000000008000000080000000000000000000000000000000000000000000
      0000C0C0C000000000000000FF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000098FF0000000000000000000000
      0000C7E8FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF002CAAFE00CFEBFF000000000000000000000000000000
      800000FFFF0000FFFF0000FFFF0000008000C0C0C00000000000C0C0C000C0C0
      C000C0C0C0008080800080808000000000000000000080808000808080008080
      8000000000000000000000000000808080000000000080808000000000000000
      0000C0C0C000000000000000800000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000098FF0000000000000000000000
      00003CAFFE008BD0FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8
      FF009FD8FF009FD8FF00B7E2FF00000000008080800000000000000000008080
      8000808080000000800000008000000000008080800080808000C0C0C000C0C0
      C000008080008080800000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000808080008080
      800080808000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000098FF0080CCFF0080CCFF007CCA
      FE0024A7FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080008080
      8000C0C0C000C0C0C00000808000808080000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097D5FF0080CCFF0080CCFF0080CC
      FF00C7E8FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080000080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000C0C0C000FF000000FF00000000000000000000000080800000FFFF000000
      000000FFFF000000000000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000000000000000000000008000000080000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000808000008080000080800000808000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF000000000000000000000000FFFF000080800000FF
      FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000808000808080000080
      800000808000008080000080800000808000008080000080800080808000C0C0
      C000808080000080800000000000000000000000800000008000000080000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000000000008080
      0000808000008080000080800000808000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C000FF00
      0000FF000000FF0000000000000000000000000000000080800000FFFF000000
      000000FFFF000000000000808000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000C0C0C0000080
      8000008080000000000000000000000000000000800000008000000080000000
      8000000080000000000000FFFF0000FFFF000000000080800000808000008080
      0000808000008080000080800000808000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FF000000FF00
      0000FF0000000000000000000000000000000000000000FFFF000080800000FF
      FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00000000FF00000000000000000000000000008080000080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000808000C0C0
      C000008080000080800080808000000000000000800000008000000080000000
      80000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000808000008080
      0000808000008080000080800000808000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      000080808000000000000000000000000000000000000080800000FFFF000000
      000000FFFF00808080000000000000000000C0C0C00000000000000000000000
      FF0000000000000000000000000000000000008080000080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000008080000080800000808000000000000000800000008000000080000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000008080
      0000808000008080000080800000808000000000000000000000000000008080
      8000FF000000C0C0C000FFFFFF00808080008000000080000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C00000000000C0C0C000000000000000
      0000000000000000000000000000000000000080800000808000C0C0C000C0C0
      C000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000008080000080800000808000000000000000800000008000000080000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000008080
      0000808000008080000080800000808000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0008000000080808000FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF0080808000C0C0C00000000000C0C0C00000000000C0C0C0000000
      0000000000008080800080808000808080000080800000FFFF0000808000C0C0
      C000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000080800000808000808080000000800000008000000080000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000008080
      0000808000008080000080800000000000000000000000000000FFFFFF00FFFF
      FF008080800080808000808080008080000080000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF000000000000FF
      FF00000000008080800000000000C0C0C00000000000C0C0C00000000000C0C0
      C00000000000FFFF0000FFFF00008080800000808000C0C0C00000808000C0C0
      C000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000080800000808000000000000000000000000000000080000000
      80000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      0000808000008080000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF008000000080808000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000000000000000000000000000C0C0C0000000
      000000000000FFFF0000FFFF00008080800000808000C0C0C00000808000C0C0
      C0000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000C0C0C000C0C0C00000808000008080000000000000000000000000000000
      8000000080000000000000000000000000000000000000000000000000008080
      0000808000008080000080800000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0080808000C0C0C00080000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000080808000FFFF
      0000FFFF00000000000080808000C0C0C00000000000C0C0C000000000000000
      0000FFFF0000FFFF0000FFFF00008080800000808000C0C0C000C0C0C0008080
      8000C0C0C000C0C0C000C0C0C00000000000C0C0C00080808000008080000080
      8000008080000080800000808000000000000000000000000000000080000000
      8000000080000000800000000000000000000000000000000000808000008080
      000080800000808000008080000080800000000000000000000000000000C0C0
      C000C0C0C000C0C0C0008080000080000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C0000000000080808000808080008080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C0008080800000808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000008080008080800000000000000000000000000000008000000080000000
      8000000080000000800000008000000000000000000000000000808000008080
      0000808000008080000080800000808000000000000000000000000000008080
      8000C0C0C000C0C0C0008000000080800000FFFFFF00FFFFFF00808080000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      0000FFFF0000FFFF0000C0C0C000FFFF0000FFFF0000FFFF0000C0C0C000FFFF
      0000FFFF0000FFFF0000FFFF0000808080000080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000000000000000000000000808000008080
      0000808000008080000080800000808000000000000000000000000000000000
      000000000000FFFFFF008080800080808000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      0000FFFF0000FFFF0000C0C0C000FFFF0000FFFF0000FFFF0000C0C0C000FFFF
      0000FFFF0000FFFF0000FFFF0000808080000000000000808000000000000000
      0000000000000000000000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000000000000000000000000000000008080
      0000808000008080000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008000
      0000000000008000000000000000808080000000000000000000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF000000000000000000000000008080800000000000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000080808000C0C0C0000000
      0000C0C0C00000000000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF000080800000808000000000008080800000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000080800000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000080808000C0C0C0000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000C0C0C000000000000000000000000000000000000000000000000000C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF000080800000000000000000008080800000000000C0C0
      C000808080000000000000008000000000000000000000000000000000000000
      0000C0C0C000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00000000000000000000000000000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000080808000808080008080
      8000808080000000000000000000000080000000000000008000000000000000
      0000C0C0C000000000000000000000000000000000000000000000000000C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000000000000000
      000080808000000000000000000000000000000080000000FF00000000000000
      0000C0C0C000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000080000000FF0000008000000000000000
      0000C0C0C000000000000000000000000000000000000000000000000000C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000008080
      80000000000000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080000000
      000000FFFF000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000FFFF000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000008080800000000000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0000000
      0000C0C0C00000000000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000080808000C0C0C0000000
      0000C0C0C00000000000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      800000000000000000000000000000000000000000008080800000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000000000000000000000000000000000008080800000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000080808000C0C0C0000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000080808000C0C0C0000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000008000000000000000
      0000C0C0C000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C000000000000000000000808000000000000000000000008000000000000000
      0000C0C0C000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000000000000000000080800000000000000000008080800000000000C0C0
      C000808080000000000000008000000000000000000000000000000000000000
      0000C0C0C000000000000000000000000000000000008080800000000000C0C0
      C000808080000000000000008000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000008080000080
      800000808000C0C0C000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF0000000000000000000000000000000000008080000080
      800000808000C0C0C000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF0000000000000000000000000080808000808080008080
      8000808080000000000000000000000080000000000000008000000000000000
      0000C0C0C0000000000000000000000000000000000080808000808080008080
      8000808080000000000000000000000080000000000000008000000000000000
      0000C0C0C0000000000000000000000000000000000000808000000080000080
      8000000080000080800000808000C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00000000000000000000808000000080000080
      8000000080000080800000808000C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00000000000000000000000000000000000000
      000080808000000000000000000000000000000080000000FF00000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000000080000000FF00000000000000
      0000C0C0C0000000000000000000000000000080800000008000008080000000
      800000808000000080000080800000808000C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C000000000000080800000008000008080000000
      800000808000000080000080800000808000C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C000000000000000000000000000000000000000
      0000808080000000000000000000000080000000FF0000008000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000080000000FF0000008000000000000000
      0000C0C0C0000000000000000000000000000080800000808000008080000080
      80000080800000808000008080000080800000808000C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00000000000080800000808000008080000080
      80000080800000808000008080000080800000808000C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C000000000000080800000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000FFFF00000000000000000000000000000000000080800000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C0000080800000000000000000000080800000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000808000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000008080
      80000000000000FFFF0000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000008080
      80000000000000FFFF0000000000000000000000000000000000008080000080
      8000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00008080000080800000000000000000000000000000000000008080000080
      8000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00008080000080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000FFFF000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000FFFF000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      00008080800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00080808000000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800080808000C0C0C0000000FF0000008000C0C0C00080808000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF0000000000C0C0C0000000
      0000C0C0C00080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0008080800000000000FFFFFF008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000808080008080
      80008080800080808000C0C0C0000000FF0000008000C0C0C00080808000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF000000000000000000C0C0
      C000000000008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0008080800000000000FFFFFF0080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000808080008080
      8000808080008080800080808000C0C0C000C0C0C00080808000808080008080
      800080808000808080008080800000000000FFFFFF00FFFFFF00000000000000
      0000FFFFFF00000000008080800080808000FFFFFF00FFFFFF00FFFFFF00C0C0
      C0008080800000000000FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000080800000FFFF00000000000080
      8000000000000000000000000000000000000000000000008000000000000000
      0000C0C0C000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C000000000000000000000808000000000000000000000000000808080000000
      00000000000000000000C0C0C0000000FF0000008000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008080800000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000808080008080800080808000808080008080
      800000000000FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      000000000000000000000000000000000000000000000080800000FFFF000000
      0000008080008080800000000000000000000000000000000000008080000080
      800000808000C0C0C000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF0000000000000000000000000000000000808080008080
      80008080800080808000C0C0C0000000FF0000008000C0C0C000808080008080
      800080808000808080008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080800000FF
      FF00008080000000000000000000000000000000000000808000000080000080
      8000000080000080800000808000C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00000000000000000000000000808080000000
      00000000000080808000C0C0C0000000FF0000008000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000000000000000000000000000800000000080800000008000008080000000
      800000808000000080000080800000808000C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C000000000000000000000000000808080008080
      80008080800080808000C0C0C0000000FF000000FF0000008000C0C0C0008080
      800080808000808080008080800000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000C0C0C000000000008080800080808000808080008080
      800000000000FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0000000000000000000FF000000800000000080800000808000008080000080
      80000080800000808000008080000080800000808000C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00000000000000000000000000808080000000
      0000C0C0C000C0C0C00000000000C0C0C0000000FF000000FF0000008000C0C0
      C000FFFFFF00FFFFFF008080800000000000FFFFFF00FFFFFF0000000000C0C0
      C00000000000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0C0008080
      80008080800000000000FFFFFF00FFFFFF0080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000008000000000000000FF0000000080800000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C00000000000000000000000000080808000C0C0
      C0000000FF0000008000C0C0C00080808000C0C0C0000000FF000000FF000000
      8000C0C0C000808080008080800000000000FFFFFF00FFFFFF00000000000000
      0000FFFFFF000000000000000000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
      C0008080800000000000FFFFFF00FFFFFF008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0000000000080000000FF00000000000000000000000080800000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C0000080800000000000000000000000000080808000C0C0
      C0000000FF0000008000C0C0C0008080800080808000C0C0C0000000FF000000
      8000C0C0C000FFFFFF008080800000000000FFFFFF00FFFFFF0000000000C0C0
      C00000000000FFFFFF0000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C0008080800000000000FFFFFF00FFFFFF008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000080000000FF0000000000000000000000008080000080
      8000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF0000808000008080000000000000000000000000000000000080808000C0C0
      C0000000FF000000FF0000008000C0C0C000C0C0C0000000FF000000FF000000
      8000C0C0C000808080008080800000000000FFFFFF00FFFFFF00000000000000
      0000FFFFFF000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C0008080800000000000FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000800000008000
      0000C0C0C0000000FF000000FF000000FF000000FF000000FF0000008000C0C0
      C00080000000800000008000000000000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00C0C0C0008080
      800000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000008080
      8000000000008080800000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008000
      000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008000
      0000C0C0C00080000000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808000008080000080800000800000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      8000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF0000000000000000000000FF000000FF
      000000FF00000000000000000000000000008080800000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000808080008080000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000000000C0C0C00080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000080800080800000808000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      000000000000000000000000000000FF000000000000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000FFFF00008080008080
      8000808080008080800080800000800000000000000000FF00000000000000FF
      00000000000000FF00000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000000000FF
      00000000000000FF00000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF00000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000FFFF00008080000080
      8000008080008080800080808000808000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000FF0000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      00000000000000000000000000000000000000000000C0C0C000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000008080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      0000000000000000000000FF000000FF0000000000000000000000FF000000FF
      000000FF000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0000080800000808000008080008080800000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF00000000000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF00000000000000FF
      00000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF0000000000000000000000000000C0C0C000C0C0C0000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800000808000008080000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
      00000000000000FF000000FF0000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000808000008080000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      00000000000000FF000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000C0C0C00000000000000000000000
      000000000000000000000000000000FF0000000000000000000000000000C0C0
      C000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C00000000000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000000000
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
      000000000000000000000000000000000000000000008080800080C0E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF00000080000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000008080800000C0C0000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000FF000000FF00000080000000000000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF0000000000000000000000000000008080800080C0E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000008080
      0000808000008080000080800000808000008080000080800000808000008080
      000000000000FF0000000000000000000000000000008080800000C0C0000000
      0000000000000000000040404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF0000000000000000000000000000008080800080C0E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000000
      0000800000008000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF0000000000000000000000000000008080800000C0C0000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000800000008000000080
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000C0C0C000C0C0C000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      000000000000FF0000000000000000000000000000008080800080C0E0000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000000000000000000000000000000000000080000000FF00000080
      0000008000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008080
      80000000000000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000FF0000000000000000000000000000008080800000C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000FF000000FF00000080
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00C0C0
      C0000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000FF0000000000000000000000000000008080800080C0E0000000
      0000000000000000000040404000000000004040400000000000000000000000
      000000000000000000000000000000000000808080000080000000800000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF008080800000000000000000000000000000000000C0C0C000C0C0C0000000
      00000000000000000000000000000000000000000000C0C0C000000000008080
      000000000000FF0000000000000000000000000000008080800000C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000C0C0C0000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000000000000000000000000000000000FF
      FF00C0C0C00000000000000000000000000000000000C0C0C000C0C0C0000000
      000000000000000000000000000000000000C0C0C000C0C0C000000000000000
      000000000000FF0000000000000000000000000000008080800080C0E0000000
      0000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000000000000000000080808000FF000000FF0000000080
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0080808000000000000000000000000000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
      000000000000FF0000000000000000000000000000008080800000C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080000080000000FF
      00000080000000800000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000C0C0C00000000000000000000000
      000000000000FF0000000000000000000000000000008080800080C0E00000C0
      C00080C0E00000C0C00080C0E00000C0C00080C0E00000C0C00080C0E00000C0
      C00080C0E00000C0C00000000000000000000000000080808000C0C0C00000FF
      000000FF0000008000000080000000800000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000080000000FF00000000000000
      0000000000000000FF00000080000000000000000000FF000000000000000000
      000000000000000000000000000080808000C0C0C000C0C0C00000000000FF00
      0000FF000000FF00000000000000000000000000000080808000C0A00000C0A0
      0000C0A00000C0A00000C0A00000C0A00000C0A00000C0A00000C0A00000C0A0
      0000C0A00000C0A0000000000000000000000000000000000000808080008080
      8000C0C0C00000FF000000800000008000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000008000000000000000
      00000000800000008000000000000000000000000000FF000000FF000000FF00
      000000000000808080008080800080808000808080008080800000000000FF00
      0000FF000000FF00000000000000000000000000000080808000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000808080000000FF000000FF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000808080000000FF000000FF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080000000808080008080000080000000800000008000
      000000808000000000000000000000000000C0C0C00080800000808000008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FF000000FF000000FF00
      0000808080000000FF000000FF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808000008080000080800000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000FF000000800000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00080000000FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000FFFF0000000000FF000000FF000000FF000000FF000000FF00
      0000808080000000FF000000FF00808080000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000008080
      000080800000808000008080000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000C0C0C00000000000C0C0C0000080
      8000008080000000800000008000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00080000000FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF000000FF00
      0000808080000000FF000000FF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      000080800000808000008080000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000C0C0C0000000000000808000C0C0
      C00000808000000080000080800000008000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00080000000FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000808080008080
      80000000FF000000FF000000FF00808080000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000808000008080
      0000808000008080000080000000000000000000000080808000C0C0C0008080
      8000C0C0C000C0C0C0000000000000000000C0C0C0000000000000808000C0C0
      C0000080800000808000008080000080800000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00080000000FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000808080000000FF000000
      FF000000FF000000FF000000FF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      00008080000080800000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000C0C0C00000000000C0C0C0000000
      8000C0C0C000C0C0C00000008000C0C0C00000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00080000000FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000808080000000
      FF000000FF000000FF000000FF00808080000000000000000000000000000000
      0000808000008080000000000000FF000000FF00000000000000008080000080
      8000000000000000000000000000000000000000000000000000808000008080
      0000808000008080000080808000C0C0C00080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000C0C0C00000000000808080000000
      0000C0C0C0008080800080808000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C00080000000FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF0000008080
      80000000FF008080800080808000FFFFFF000000000000000000000000000000
      0000808000008080000000000000FF000000FF00000000000000008080000080
      8000000000000000000000000000000000000000000000000000808000008080
      0000808000008080800000000000C0C0C000C0C0C000C0C0C000808080008000
      000080000000808000000000000000000000C0C0C00000000000000000000000
      000000000000C0C0C00080808000C0C0C00000000000C0C0C000C0C0C000C0C0
      C0008080800080808000C0C0C00080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000FF000000FF000000FF000000FF0000008080
      800080808000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000808000008080000000000000FF000000FF00000000000000008080000080
      8000000000000000000000000000000000000000000000000000808000008080
      000080800000808000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000800000000000000000000000C0C0C00000000000808080008080
      8000C0C0C000C0C0C00080808000C0C0C0000000000000000000000000000000
      00000000000000000000C0C0C00080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FF000000FF000000FF000000FF000000FF000000FF0000008080
      80000000FF0080808000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      00008080000080800000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0
      C00080808000800000000000000000000000C0C0C00000000000000000008080
      80008080800080808000C0C0C000000000000000000000000000000000000000
      00000000000000000000C0C0C00080800000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FF000000FF000000FF000000FF000000808080000000
      FF000000FF000000FF0080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000808080008080
      00008080000080800000C0C0C00000000000C0C0C0008080800000808000C0C0
      C00080808000800000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080800000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080008080800080808000808080000000FF000000
      FF000000FF000000FF0080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000000000000000000080808000FFFF
      00008080000080800000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000800000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080000000FF000000FF000000FF000000
      FF000000FF000000FF0080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000FFFF000080800000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000FF000000FF000000
      FF000000FF0080808000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
      8000808080008080800080808000808080000080800000808000008080000080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000FF00FF00FF00FF008080800080808000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800080808000808080008080800080808000C0C0C000808080008080
      8000008080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C00080808000808080008080800000000000808080008080
      80008080800000000000000000000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C0000080800080808000000000008000000080000000800000008000
      00008000000080000000800000008000000080000000000000000000FF000000
      FF000000FF000000FF000000FF000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000080808000C0C0C0000000
      0000C0C0C0008080800080808000808080008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C000C0C0C0000000000000000000800000000000000000000000C0C0
      C0000000000000000000C0C0C00000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      000080808000C0C0C00080808000FF00FF008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C0008080800080808000800000000000000000000000C0C0
      C0000000000000000000C0C0C0000000000000000000C0C0C0000000FF000000
      FF000000FF000000FF000000FF000000FF008080800000000000808080008080
      8000000000000000000080808000000000008080800080808000808080008080
      80008080800080808000000000000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000008080000000
      0000000000000000000080808000808080008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0008080800080000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080000000000000000000
      FF000000FF00000000000000FF000000FF0080808000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000080800080808000808080008080800000000000000000000000
      0000C0C0C000C0C0C000C0C0C000000000000000000080808000000000000080
      8000C0C0C00080808000C0C0C00080808000800000000000000000000000C0C0
      C0000000000000000000C0C0C000000000000000000080000000000000000000
      00000000FF0000000000000000000000FF0080808000C0C0C000000000000000
      0000000000000000000000000000808080000000000080808000000000008080
      80008080800080808000000000000000000080808000C0C0C000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000808080008080
      8000C0C0C000C0C0C0008080800080808000800000000000000000000000C0C0
      C0000000000000000000C0C0C000000000000000000080000000800000008000
      000000000000000000000000FF000000FF008080800000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800000000000000000000000
      0000C0C0C000C0C0C000C0C0C000000000000000000000000000000000008080
      8000C0C0C0008080800080808000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000000000000000
      0000800000000000FF000000FF000000FF0000000000C0C0C000C0C0C0000000
      000000000000000000000000000000000000C0C0C00000000000808080008080
      8000808080008080800000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0C00000000000C0C0
      C000C0C0C0008080800000000000000000008000000080000000800000008000
      00008000000080000000FFFF000080000000FFFF000080000000000000000000
      0000800000000000FF000000FF000000FF0000000000C0C0C000C0C0C0000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C0008080800080808000808080008080
      800080808000808080000000000000000000C0C0C00000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000C0C0C000C0C0
      C000800000000000FF000000FF000000000000000000C0C0C000C0C0C0000000
      000000000000000000000000000000000000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080000000
      000000000000000000000000000000000000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008000
      00000000000000000000C0C0C0000000000000000000C0C0C000000000000000
      00008000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008000
      00000000000000000000C0C0C0000000000000000000C0C0C000000000000000
      0000800000000000000000000000000000008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000C0C0C00000000000000000008080
      8000808080008080800080808000000000000000000000000000000000008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000C0C0C00080800000808000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000080800000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      00008000000080000000800000008000000080000000FFFF000080000000FFFF
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000C0C0C000C0C0C0008080800000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000008080
      8000808080000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000800000000000000080000000800000008000000080808000000000008000
      0000000000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      000080808000808080000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000800000000000
      0000800000000000000000000000800000000000000080000000000000008000
      0000000000008000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000800000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000080808000808080000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000000000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF008080800000000000000000000000000000000000800000008080
      8000800000000000000000000000000000000000000080000000000000008000
      0000808080008000000000000000000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000008000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000080808000808080000000000080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF008080800000000000C0C0C00000FF
      FF00C0C0C0000000000000000000000000000000000000000000C0C0C00000FF
      FF00C0C0C0008080800000000000000000000000000080808000800000008000
      0000800000008080800000000000000000000000000080000000808080008000
      0000800000008000000080808000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000008000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000808080008080800000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00808080000000000000FFFF00C0C0
      C00000FFFF008080800000000000C0C0C000000000000000000000FFFF00C0C0
      C00000FFFF008080800000000000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000008000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000008080800080808000808080008080
      8000808080000000000080808000FFFFFF008080800000000000C0C0C00000FF
      FF00C0C0C00080808000C0C0C00000008000C0C0C00000000000C0C0C00000FF
      FF00C0C0C0008080800000000000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000008000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000808080000000000080808000808080000000000000FFFF00C0C0
      C00000FFFF008080800000000000C0C0C000000000000000000000FFFF00C0C0
      C00000FFFF008080800000000000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000800000008000000000000000800000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00808080000000000000000000000000000000
      0000FFFFFF000000000080808000000000008080800000000000C0C0C00000FF
      FF00C0C0C0008000000080000000800000008000000000000000C0C0C00000FF
      FF00C0C0C0008080800000000000000000000000000000000000800000008000
      0000800000000000000080000000000000000000000000000000000000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00808080000000000080808000FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000808080000000000000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00808080000000000080808000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000808080008000
      0000808080000000000080000000000000000000000000000000000000008080
      8000800000008080800000000000000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000008000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0080808000000000008080800080808000FFFF
      FF00FFFFFF0000000000000000000000000080808000C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C0008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000800000008000
      0000800000000000000080000000000000008000000000000000000000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000800000008000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00808080008080800000000000808080008080
      800080808000FFFFFF0000000000000000000000000080808000C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008000
      0000808080000000000080808000800000008000000080000000000000008080
      8000800000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF008080800080808000000000000000
      00000000000080808000FFFFFF00FFFFFF000000000000000000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000000000000FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF000080800000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF000000000000000000FFFFFF00808080000000000080808000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000080808000FFFF
      FF00FFFFFF000000000000000000FFFFFF00808080000000000080808000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF008080800000000000FFFFFF008080
      800000000000FFFFFF00FFFFFF00000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      800000008000000080000000800000000000000000000000000080808000FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF008080800000000000FFFFFF008080
      800000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF000000FF00FFFFFF0080808000FFFFFF0000000000FFFFFF008080
      80000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF000000FF00FFFFFF0080808000FFFFFF0000000000FFFFFF008080
      80000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000FFFFFF008080
      800000000000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000FFFFFF008080
      800000000000FFFFFF0080808000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF000000000000000000FFFFFF00808080000000000080808000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF008080800000000000FFFFFF008080
      800000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF000000FF00FFFFFF0080808000FFFFFF0000000000FFFFFF008080
      80000000000080808000FFFFFF00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000FFFFFF008080
      800000000000FFFFFF0080808000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000FFFFFF000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000FFFFFF00000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000FFFFFF00000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000FFFFFF000000FF0000000000000000000000
      00000000FF00000000000000000000000000000000000000FF00000000000000
      000000000000000000008080800000000000000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000FFFFFF000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000FFFFFF000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000FFFFFF00000000000000FF00000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      000000000000808080000000FF00000000000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000FFFFFF000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000FFFFFF000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000FFFFFF0000000000808080000000FF008080
      80000000FF000000000000000000000000000000000000000000808080000000
      FF00808080000000FF0000000000000000000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000FFFFFF0000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000FFFFFF0000000000000000000000FF000000
      FF00000000000000FF000000000000000000000000000000FF00000000000000
      FF000000FF0000000000000000000000000080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000FFFFFF00FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000FFFFFF00FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000FFFFFF00000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000FFFFFF0080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000FFFFFF000000FF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF0000000000000000000000000080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000FFFFFF00FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000FFFFFF00FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000FFFFFF000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000FFFFFF0000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000FFFFFF0000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000FFFFFF000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000FFFFFF000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000FFFFFF000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000FFFFFF000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000FFFFFF000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000FFFFFF000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000FFFFFF000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF000000000000808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800080000000000000000000808080008080
      8000808080008080800080808000C0C0C000C0C0C000C0C0C00080808000C0C0
      C000C0C0C000C0C0C00080808000000000008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000080800000FFFF00000000000000000000FF
      FF0000000000000000000000000000FFFF0000FFFF0000FFFF000000000000FF
      FF000000000000FFFF0000000000800080000000000000000000808080008080
      8000808080008080800080808000C0C0C000C0C0C000C0C0C00080808000C0C0
      C000C0C0C000C0C0C000808080000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000080800000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000080800000FFFF000000000000FFFF0000FF
      FF000000000000FFFF000000000000FFFF0000000000000000000000000000FF
      FF000000000000FFFF0000000000800080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000000000000FFFF0000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000FFFF0000000000800080000000000000000000808080000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000FFFF00000000000000000000FF
      FF0000000000000000000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000FFFF0000000000800080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      800000008000000080000000800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800080000000000000000000808080000000
      00000000000080808000808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      800000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800080000000000000000000808080000000
      00000000000000000000000000008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000C0C0C0008080
      8000C0C0C0008080800000000000800080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000FF000000FF
      00000000FF00C0C0C00000000000800080000000000000000000808080000000
      00000000000000000000808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000FF0000FF
      000000FF00008080800000000000800080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      800000000000808080000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00000000FF
      FF00FF000000C0C0C00000000000800080000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000808080000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000C0C0C0008080
      8000C0C0C0008080800000000000800080000000000000000000C0C0C0008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000C0C0C00080000000C0C0C000000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FF00
      0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FFFFFF00000000000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF000080800000FFFF000080
      80000080800000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FFFFFF000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000808080008080
      80000000000000FFFF000080800000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FF000000FF00
      0000FFFFFF000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000000000000000
      0000808080000000000000FFFF0000FFFF0000FFFF00008080000080800000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000FF000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000080808000000000000000
      0000808080008080800080808000808080008080800000000000000000008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000FF0000000000000000000000FF0000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000FF0000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000080800000FFFF0000FFFF0000FFFF0000FFFF000080800000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000FF0000000000000000FFFF00000000000000
      0000FF000000FF000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF000000000000000000000000000000000000000000FF00
      00000000000000000000FF00000000000000FF0000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FF0000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000C0C0C000C0C0C000C0C0C000C0C0C000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      000080808000FFFF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008000800080008000800080000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000808000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000000000000000
      00000000000000000000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808000008080000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008000800080008000800080000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF008000000080000000FFFFFF0000000000FFFF0000FFFF0000000000000000
      00000000000000000000FFFF0000FFFF000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FF00000000000000000000000000000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00008080000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00000000008000800080008000800080000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000808000008080000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0080000000800000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00000000008000800080008000800080000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFF
      FF0000FF00000000000000000000000000000000000000000000000000000000
      0000808000008080000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00008080000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000008000800080008000800080000000000080808000000000000000
      000000000000000000008080800000FF0000FFFFFF0000FF0000FFFFFF0000FF
      0000FFFFFF000000000000000000000000000000000000000000000000008080
      00008080000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00800000008000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000008000000080000000FFFFFF0000000000FFFF
      FF00000000008000800080008000800080000000000000000000000000000000
      000000FF0000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF0000FF0000FFFF
      FF0000FF000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000800000008000000080000000FFFFFF00FFFF
      FF00000000008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFF0000000000000000000000000000000000008080
      00008080000080800000000000008080000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FF000000FF000000FF000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000000080000000FFFF
      FF00000000008000800080008000800080000000000000000000000000000000
      00000000000000FF0000FFFFFF0000FF0000FFFFFF0000000000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000800000008000
      0000000000008000800080008000800080000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000000000000000000000000000000000000000
      0000000000000000000080800000808000008080000000000000808000000000
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008000
      0000800000008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800000008000000080008000800080000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      FF000000FF000000FF000000FF0000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000080800000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF00008080000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000FF000000FF00000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000FF000000FF000000FF000000
      FF0000000000C0C0C0000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      000000000000C0C0C000C0C0C000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      80000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000FF000000FF000000FF000000FF00C0C0C0000000
      0000C0C0C00000000000C0C0C0000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000000000000000C0C0
      C00000000000C0C0C0000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      800000000000808080000000000000000000000000000000FF00000000000000
      0000000000000000FF000000FF0000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000C0C0C000C0C0C000C0C0C000C0C0C000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000808080008080800080808000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00008080800080808000808080000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF0000000000000000000000FF000000FF000000
      FF00000000008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFFFF0000000000000000000000FF000000FF000000
      FF00000000008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFFFF0000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF0000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF0000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF0000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000C0C0C000C0C0C000C0C0C000C0C0C000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000C0C0C000C0C0C000C0C0C000C0C0C000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000080800000808000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000080800000808000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000080800000FFFF00000000000000000000000000000000000000
      00000000000000000000808000008080000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000808000008080000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000FFFF0000000000000000000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000080
      800000FFFF000000000000000000000000000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000080800000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000808000008080000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000808000008080000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000080808000000000000000
      000000000000000000000000000000000000000000000080800000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808000008080000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000808000008080000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000808080000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF000080800000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      00008080000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000008080
      00008080000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000080800000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF000000000000FFFF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      00008080000080800000000000008080000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000000000008080
      00008080000080800000000000008080000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000080800000FFFF0000FFFF000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF0000000000000000000000000000808080008080800000FFFF000000
      0000000000000080800000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000808000008080000000000000808000000000
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FF00000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000080800000808000008080000000000000808000000000
      0000FFFF0000000000000000000000000000000000000000000000FFFF0000FF
      FF00008080000080800000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000008080
      800000FFFF0000FFFF0000FFFF0000FFFF000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF00000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000FF
      FF0000FFFF0000FFFF00000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF000080800000FFFF000080
      80000080800000FFFF0000FFFF00000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C0C0C000C0C0C0000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      80000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      8000000000000000000000000000000000000000000000000000808080008080
      80000000000000FFFF000080800000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      8000000080000000000000000000000000000000000000000000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      8000000080000000000000000000000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000800000008000000000000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000800000008000000000000000000080808000000000000000
      0000808080000000000000FFFF0000FFFF0000FFFF00008080000080800000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000008000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000008000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF008080800000000000000000000000000000000000C0C0
      C000C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF008080800000000000000000000000000000000000C0C0
      C000C0C0C000FFFFFF0000000000000000000000000080808000000000000000
      0000808080008080800080808000808080008080800000000000000000008080
      800000000000000000008080800000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF0000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      000080808000808080000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000080800000FFFF0000FFFF0000FFFF0000FFFF000080800000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008000
      8000000000008080800000000000800080008000800000000000808080000000
      0000800080000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800000000000800080008000
      8000800080000000000000000000000000000000000000000000000000008000
      8000800080008000800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000008000800000000000808080008080
      80008080800080808000000000000000FF000000800000000000808080008080
      8000808080008080800000000000800080000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000808000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000008000800000000000000080000000
      80000000800000008000000000000000FF000000800000000000000080000000
      80000000800000008000000000008000800000000000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000FFFFFF00FFFFFF00C0C0C0008080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      00000000000000000000808000008080000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000008000800000000000000080000000
      8000000080000000800000000000000000000000000000000000000080000000
      8000000080000000800000000000800080000000000080808000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C0008080800000000000FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C000000000008000800000000000000080000000
      00000000000000008000000000000000FF000000800000000000000080000000
      000000000000000080000000000080008000800080000000000080808000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C0008080800000000000FFFF
      FF00FFFFFF008080800000000000800080000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008000800000000000000080000000
      00000000000000008000000000000000FF000000800000000000000080000000
      0000000000000000800000000000800080008000800000000000000000008080
      8000FFFFFF0000000000FFFFFF00FFFFFF00C0C0C0008080800000000000FFFF
      FF00808080000000000000000000800080000000000000000000000000000000
      0000808000008080000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000008000800000000000000080000000
      80000000800000008000000000000000FF000000800000000000000080000000
      8000000080000000800000000000800080008000800000000000FFFFFF000000
      00008080800000000000FFFFFF00FFFFFF00C0C0C00080808000000000008080
      800000000000FFFFFF0000000000800080000000000000000000000000000000
      0000808000008080000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008000800000000000000080000000
      80000000800000008000000000000000FF000000FF0000008000000000000000
      8000000080000000800000000000800080008000800000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00C0C0C00080808000000000000000
      000000000000FFFFFF0000000000800080000000000000000000000000008080
      00008080000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000008000800000000000000080000000
      0000000000000000000000008000000000000000FF000000FF00000080000000
      0000000000000000800000000000800080008000800000000000FFFFFF000000
      00008000800000000000FFFFFF00FFFFFF00C0C0C00080808000000000008000
      800000000000FFFFFF0000000000800080000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800000000000000080000000
      00000000FF00000080000000000000000000000000000000FF000000FF000000
      8000000000000000800000000000800080008000800000000000FFFFFF000000
      00008000800000000000FFFFFF00FFFFFF00C0C0C00080808000000000008000
      800000000000FFFFFF0000000000800080000000000000000000000000008080
      00008080000080800000000000008080000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800000000000000080000000
      00000000FF0000008000000000000000800000008000000000000000FF000000
      8000000000000000800000000000800080008000800000000000C0C0C0000000
      00008000800000000000FF000000FF000000FF00000080000000000000008000
      800000000000C0C0C00000000000800080000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000FFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000800000000000000000000000FF000000FF000000
      8000000000000000000000000000000000008000800000000000FFFFFF000000
      00008000800000000000FFFFFF00FF000000FF00000080808000000000008000
      800000000000FFFFFF0000000000800080000000000000000000000000000000
      0000000000000000000080800000808000008080000000000000808000000000
      0000FFFF0000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000008000800000000000000000000080
      8000000000000000FF000000FF000000FF000000FF000000FF00008080000000
      0000008080000000000000000000800080008000800080008000000000008000
      8000800080008000800000000000FFFFFF00C0C0C00000000000800080008000
      8000800080000000000080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000000000000000FF000000FF000000
      FF0000000000000000008080800000FFFF008080800000000000000000000000
      0000000000000000000000000000000000008000800080008000800080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000800080008000800080008000800080008000
      8000800080008000800000000000FFFFFF00C0C0C00000000000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080000000000000000000008080000080800000000000000000008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      000000000000000000000000000000000000C7E8FF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0097D5FF000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00008080800080808000C0C0C000808080000000000080808000C0C0C0008080
      80008080800000000000000000000000000018A2FE0080CCFF000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      000080808000808080008080800000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFFFF00000000000000000000000000000000008080
      80008080800080808000C0C0C000C0C0C00000000000C0C0C000C0C0C0008080
      8000808080008080800000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000808080008080
      8000808080008080800000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF0000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF0080000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00FF00000080000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000C0C0C0000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000098FF000000000068C1FE0040B2
      FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2
      FE0040B2FE0040B2FE0018A2FE0050B8FE0000000000FF00000080000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000C0C0C0000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000098FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000060BFFE00BFE5FF000000000000000000FF0000008000
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF00000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000C0C0C0000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000098FF0000000000000000000000
      0000C7E8FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF002CAAFE00CFEBFF00000000000000000000000000FF00
      000080000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00008080800080808000C0C0C000000000000000000000000000C0C0C0008080
      8000808080000000000000000000000000000098FF0000000000000000000000
      00003CAFFE008BD0FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8
      FF009FD8FF009FD8FF00B7E2FF00000000000000000000000000000000000000
      0000FF00000080000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000098FF0080CCFF0080CCFF007CCA
      FE0024A7FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097D5FF0080CCFF0080CCFF0080CC
      FF00C7E8FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000080000000FF00000000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
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
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000008000800000000000000080000000
      8000000080000000FF0000000000000000000000000000000000000080000000
      800000008000000080000000000080008000000000000000000000000000C0C0
      C00080808000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0
      C000000000000000000000000000000000008080800000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800000000000000080000000
      80000000FF000000FF000000FF00000000000000000000000000000080000000
      8000000080000000800000000000800080000000000000000000FFFFFF000000
      0000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0C0008080
      8000C0C0C00000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000008000800000000000000080000000
      00000000FF000000FF000000FF00000000000000000000000000000080000000
      0000000000000000800000000000800080000000000000000000C0C0C000FFFF
      FF0000000000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0
      C00080808000C0C0C00000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000008000800000000000000080000000
      FF000000FF000000FF000000FF000000FF000000000000000000000080000000
      0000000000000000800000000000800080000000000000000000FFFFFF00C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF000000000000000000000000000000000080008000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000080000000
      8000000080000000800000000000800080000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C0000000FF00C0C0C000FFFFFF00C0C0C0000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000FFFFFF000000000080808000000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF000000000000000000000000000000000080008000808080000000FF000000
      FF0000000000000080000000FF000000FF000000FF0000000000000080000000
      8000000080000000800000000000800080000000000000000000FFFFFF00C0C0
      C000FFFFFF00C0C0C0000000FF000000FF000000FF00C0C0C000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000000000000000000000000000808080000000FF00000000000000
      00000000000000008000000080000000FF000000FF0000000000000080000000
      0000000000000000800000000000800080000000000000000000C0C0C000FFFF
      FF00C0C0C0000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000008000800000000000000080000000
      00000000000000008000000080000000FF000000FF000000FF00000000000000
      000000000000000080000000000080008000000000000000000000000000C0C0
      C0000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000FF000000FF000000000000008000800000000000000080000000
      8000000080000000800000008000000080000000FF000000FF00000000000000
      8000000080000000800000000000800080000000000000000000808080000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000FF0000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000FF0000008000800000000000000000000080
      8000008080000080800000808000008080000080800000808000808080000000
      FF00000000000000000000000000800080000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000008080
      800000000000808080000000000000000000000000000000000000000000FF00
      0000000000000000000000000000FF0000000000000000FFFF00000000000000
      0000FF000000FF000000FF000000000000008000800080008000800080000000
      0000000000000080800000808000008080000080800000808000008080008080
      80000000FF000000000080008000800080000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000808080000000000000000000000000000000000000000000FF00
      00000000000000000000FF00000000000000FF0000000000000000000000FF00
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080000000000000000000008080000080800000000000000000008000
      8000800080000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FF0000000000000000000000000000000000
      0000FF0000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF000000000000FFFF000000
      000000000000000000000000FF0000000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF000000000000FFFF000000
      000000000000000000000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000FF0000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00000000000000FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FF00000000000000FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FF00000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      000A09070663583F36EC573D35EC1911105A00000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000002000000090000000E0000
      000F0000001000000010000000110000001100000011000000130000001A0E0A
      09745D4C44FEC8A995FFC9A996FF553C34E900000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000008815A4EC0B37E6CFFB37D
      6AFFB37E6CFFB27D6BFFB27C69FFB17D6AFFBE9081FFD1B6ADFF947E77FF6D59
      4FFFD6B6A1FFD4B6A1FFDBC7B9FF584037EC0000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000CB5816FFFFDFBF9FFFBF5
      F2FFF9F4F0FFF5EFEBFFF1EBE7FFEEE7E3FFECE4E0FFADA29DFF79645AFFD8BB
      AAFFD8BBA8FFE6D4C7FF8C766CFE1D15125D0000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000CB88471FFFDFBFAFFF5EB
      E4FFEBE1DAFFA29089FF6A534BFF4B332BFF574239FF856F64FFDCC1B2FFDCC2
      B0FFEAD7CCFF978177FF2219166F0000000800000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000BB88675FFFCFAFAFFEAE1
      DBFF816A61FF937A6FFFBFA99CFFDEC8BAFFC7B0A2FFE0C8B8FFDFC7B7FFE9DA
      CFFF9B857BFFA88F87FF00000018000000010000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000ABA8978FFFAF8F7FFAC9A
      92FFA08A80FFEEE1D9FFF5EDE7FFF0E4DBFFE9D6C8FFE2CCBDFFE2CEBFFFA08A
      80FFBEB1ABFFD6BBB3FF00000011000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FF000000000000000000000080000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000009BD8C7AFFF8F7F6FF8E73
      68FFC8B6ADFFB4A098FF8F766AFFB09C93FFD8C8BFFFE5CEBFFFD1B9ABFF8267
      5DFFEFE9E5FFC4998AFF0000000F00000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF000000000000000000000000000000FF00000080000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000009C08F7FFFF8F7F6FF8C71
      65FFB7A299FFBFAFA7FFEEE6E1FFBBAAA1FFAF9B92FFE6D1C3FFE6D2C7FF7E64
      59FFF2EDE9FFBB8A77FF0000000E00000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF000000000000FFFF000000
      000000000000000000000000FF000000000000000000FF00000080000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000008C39484FFFAFAF9FF9D86
      7BFFC7B8B0FFF6F0EAFFF8F1ECFFEAE1DCFF71574DFFE7D4C6FFD2C0B8FF8C73
      69FFF5F0EDFFBC8D7AFF0000000D00000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000FF0000008000
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000007C59787FFFDFDFCFFF8F3
      EEFFF9F3EFFFFAF4EFFFF7F0ECFFA89791FF937C72FFEEE0D8FFB09C92FFB9A8
      A0FFF9F4F1FFC08F7EFF0000000D00000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00000000000000FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FF00
      000080000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000006C79A8CFFFEFEFEFFFAF6
      F3FFFAF5F3FFF9F4F0FFAB9B93FF8F7A72FFCABAB2FFB6A297FFA38C81FFF4EC
      E8FFFCF8F6FFC39282FF0000000C00000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FF00000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FF00000080000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000000006CA9E8EFFFFFEFEFFFBF7
      F4FFFBF6F4FFF9F4F2FFAC9589FF987D6FFFA58E85FFC6B6AFFFF6EFEAFFF9F4
      EFFFFDFAF8FFC49687FF0000000B00000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF000000000000000000000000000000000000000005CCA391FFFFFEFEFFFCF8
      F7FFFCF8F6FFFCF7F5FFFAF5F3FFF8F3F1FFF8F3F1FFFAF4F1FFFCF6F2FFFBF6
      F1FFFDFBF9FFC79A8BFF0000000A00000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000080000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000004CEA495FFFFFFFEFFFFFF
      FEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFEFDFFFEFDFDFFFEFD
      FDFFFEFDFCFFC99E8EFF00000009000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000029A7B6FC0CFA696FFCFA6
      96FFCEA695FFCEA595FFCEA595FFCFA494FFCDA494FFCEA393FFCCA293FFCDA2
      92FFCBA292FF97776BC200000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000808080000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF00000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF00000000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF0000000000000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF00000000FF
      FF00C0C0C00000FFFF0000000000000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF000080800000FFFF000080
      80000080800000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000808080008080
      80000000000000FFFF000080800000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000C0C0C000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C0000000000000000000000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF0000FFFF00000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF008000000000FFFF00C0C0C00000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000080808000000000000000
      0000808080000000000000FFFF0000FFFF0000FFFF00008080000080800000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFF000000FF
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF0000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF0080000000FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000080808000000000000000
      0000808080008080800080808000808080008080800000000000000000008080
      800000000000000000008080800000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF0000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      000080808000808080000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000FFFF0000FFFF0000FFFF0000FFFF000080800000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
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
      0000000000000000000000000000800080000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800080000000000000808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800080808000C0C0C0000000FF0000008000C0C0C00080808000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000FFFF00000000000000000000FF
      FF0000000000000000000000000000FFFF0000FFFF0000FFFF000000000000FF
      FF000000000000FFFF0000000000800080000000000000808000FFFFFF00FFFF
      FF00C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF0000808000000080000000
      8000000080000000000000000000000000000000000000000000808080008080
      80008080800080808000C0C0C0000000FF0000008000C0C0C00080808000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000FFFF000000000000FFFF0000FF
      FF000000000000FFFF000000000000FFFF0000000000000000000000000000FF
      FF000000000000FFFF0000000000800080000000000000808000FFFFFF00C0C0
      C000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF0000808000FFFFFF00FFFF
      FF00000080000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000C0C0C000C0C0C00080808000808080008080
      8000808080008080800080808000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000000000000000000000
      00000000000000FFFF0000000000800080000000000000808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000808000FFFFFF00FFFF
      FF00000080000000000080000000800000000000000000000000808080000000
      00000000000000000000C0C0C0000000FF0000008000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000FFFF0000000000800080000000000000808000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00C0C0C000008080000000FF00FFFF
      FF0000008000FFFFFF00FFFFFF00800000000000000000000000808080008080
      80008080800080808000C0C0C0000000FF0000008000C0C0C000808080008080
      8000808080008080800080808000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000800080000000000000808000C0C0C000FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF00C0C0C00000808000FFFFFF000000
      FF0000008000FFFFFF00FFFFFF00800000000000000000000000808080000000
      00000000000080808000C0C0C0000000FF0000008000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      000000000000C0C0C0000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF0000000000800080000000000000808000FFFFFF00C0C0
      C000FFFFFF000000FF00FFFFFF00C0C0C000FFFFFF0000808000FFFFFF000000
      FF0000008000FFFF0000FFFFFF00800000000000000000000000808080008080
      80008080800080808000C0C0C0000000FF000000FF0000008000C0C0C0008080
      8000808080008080800080808000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      000000000000C0C0C0000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF0000000000800080000000000000808000FFFFFF00FFFF
      FF00C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF0000808000FFFFFF000000
      FF0000008000FFFFFF00FFFF0000800000000000000000000000808080000000
      0000C0C0C000C0C0C00000000000C0C0C0000000FF000000FF0000008000C0C0
      C000FFFFFF00FFFFFF0080808000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000800080000000000000808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000080800000808000008080000000FF00FFFF
      FF0000008000FFFFFF00FFFF000080000000000000000000000080808000C0C0
      C0000000FF0000008000C0C0C00080808000C0C0C0000000FF000000FF000000
      8000C0C0C00080808000808080000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00C0C0C0000000000080008000000000000080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000080800000808000FFFFFF00FFFFFF00FFFF
      FF0000008000FFFFFF00FFFF000080000000000000000000000080808000C0C0
      C0000000FF0000008000C0C0C0008080800080808000C0C0C0000000FF000000
      8000C0C0C000FFFFFF0080808000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      000000FF000000FFFF0000000000800080000000000000808000008080000080
      800000808000008080000080800000808000FFFFFF00FFFFFF00000080000000
      800000008000FFFF0000FFFFFF0080000000000000000000000080808000C0C0
      C0000000FF000000FF0000008000C0C0C000C0C0C0000000FF000000FF000000
      8000C0C0C0008080800080808000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FF000000FFFFFF0000000000800080000000000000000000000000000000
      0000000080000000FF000000FF000000FF000000FF000000FF00000080000000
      8000FFFFFF00FFFFFF00FFFFFF00800000000000000000000000800000008000
      0000C0C0C0000000FF000000FF000000FF000000FF000000FF0000008000C0C0
      C000800000008000000080000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FF00
      0000C0C0C0000000FF0000000000800080000000000000000000000000000000
      000000008000000080000000800000008000000080000000800000008000FFFF
      FF00FFFFFF008000000080000000800000000000000000000000C0C0C0008000
      000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008000
      0000C0C0C00080000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000800080000000000000000000000000000000
      000000000000000000000000000080000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000000000000000
      0000000000008000800080008000800080000000000000000000000000008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00080808000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000808080008080800080808000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000C0C0C000C0C0C000C0C0C00080808000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000FFFFFF000000
      0000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0C0008080
      8000C0C0C000000000000000000000000000000000000000FF000000FF000000
      FF00000000008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000C0C0C000C0C0C000C0C0C00080808000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000C0C0C000FFFF
      FF0000000000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0
      C00080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00808080008080800080808000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000808080000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C0000000FF00C0C0C000FFFFFF00C0C0C0000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF00C0C0C0000000FF000000FF000000FF00C0C0C000FFFFFF000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000008080800080808000808080008080
      800000000000FFFFFF00808080008080800080808000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00000000000000000000000000808080000000
      00000000000080808000808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000C0C0C000FFFF
      FF00C0C0C0000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000080808000C0C0C000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000000000000000000000000000C0C0
      C0000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000080808000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000000000000000000000008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000808080000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000080808000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000FFFFFF00FFFFFF00C0C0C000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000000000000000808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000080808000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000FFFFFF00FFFFFF00C0C0C000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      00000000000000000000000000000000000080808000FFFFFF00C0C0C000C0C0
      C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000C0C0C0008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000C0C0C00080000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000800000008000C0C0C000C0C0
      C000C0C0C000C0C0C00000008000000080000000800000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000C0C0C000C0C0
      C000C0C0C000C0C0C0000000800000008000000080000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00000FFFF00000000000000000000FF
      FF0000000000000000000000000000FFFF0000FFFF0000FFFF000000000000FF
      FF000000000000FFFF0000000000800080000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000C0C0C00000008000C0C0C000C0C0
      C000C0C0C000C0C0C00000008000C0C0C000C0C0C00000008000000000000000
      00000000000000000000FFFFFF000000000080008000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0008000800000FFFF000000000000FFFF0000FF
      FF000000000000FFFF000000000000FFFF0000000000000000000000000000FF
      FF000000000000FFFF0000000000800080000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000C0C0C00000008000C0C0C000C0C0
      C000C0C0C000C0C0C00000008000C0C0C000C0C0C0000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008000800080008000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000800080008000800000FFFF0000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000FFFF0000000000800080000000000000000000000000000000
      00000000FF000000FF000000FF0000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000800000008000C0C0C000C0C0
      C000C0C0C000C0C0C00000008000000080000000800000008000000000000000
      00000000000000000000FFFFFF00000000008000800080008000800080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080008000800080008000800000FFFF00000000000000000000FF
      FF0000000000000000000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000FFFF0000000000800080000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000800000008000000080000000
      800000008000000080000000800000008000000080000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008000800080008000800080008000
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000008000800000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF00000000000000C0C0C0000000800000008000C0C0
      C000C0C0C0000000800000008000C0C0C000C0C0C00000008000000000000000
      00000000000000000000FFFFFF00000000008000800080008000800080008000
      800080008000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008000
      800080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000008000800000000000808080000000FF000000
      FF0000000000000000000000FF000000FF000000FF000000000000FFFF000000
      000000000000FF0000000000000000000000C0C0C0000000800000008000C0C0
      C000C0C0C0000000800000008000C0C0C000C0C0C0000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008000800080008000800080008000
      8000800080008080800080808000808080008080800080808000808080008000
      800080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000080008000808080000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000800000008000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      00000000000000000000FFFFFF00000000008000800080008000800080008000
      8000800080008000800080808000808080008080800080808000800080008000
      800080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000C0C0C0008080
      8000C0C0C000808080000000000080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008000800080008000800080008000
      80008000800080008000C0C0C000C0C0C000C0C0C000C0C0C000800080008000
      800080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000FF000000FF
      00000000FF00C0C0C0000000000080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000080800000808000008080000080
      800000808000008080000080800000808000008080000000000000000000FFFF
      FF00000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000C0C0C000C0C0C00080008000800080008000
      800080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000FF0000FF
      000000FF0000808080000000000080008000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000808080000000FF000000
      0000FFFF0000FFFF0000FFFFFF00000000000000000000808000008080000080
      80000080800000808000008080000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000008000800080008000800080008000
      8000800080008000800080008000808080008080800080008000800080008000
      800080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00000000FF
      FF00FF000000C0C0C0000000000080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000808080000000
      FF0000000000FFFFFF00FFFFFF00000000008000800000000000000000000080
      800000808000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000800080008000800080008000800080008000
      8000800080008000800080008000808080008080800080008000800080008000
      800080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000C0C0C0008080
      8000C0C0C000808080000000000080008000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      00000000FF000000FF0000000000000000008000800080008000800080000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000080008000800080008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
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
      0000FFFFFF008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000FF000000FF00000000000000FFFF0000FFFF00000000000000FF
      FF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000008080000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000FF0000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000FF0000000000000000000000FF000000FFFF0000FFFF0000FFFF00000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000808000000000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000FF00000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000080800000000000800000008000
      000080000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C000C0C0C000C0C0C000808080008080800080808000808080008080
      800000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000FF0000000000000000FFFF00000000000000
      0000FF000000FF000000FF00000000000000000000000000000000000000FF00
      0000000000000000000000000000FF0000000000000000FFFF00000000000000
      0000FF000000FF000000FF000000000000000000000000000000FFFF00000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FF00000000000000FF0000000000000000000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FF00000000000000FF0000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FF0000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FF0000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000808080000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000008000000080000000FF00000080000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FF000000FF000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000008000
      0000FF000000800000008000000080000000FF00000080000000800000008000
      0000000000000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF000080800000FFFF000080
      80000080800000FFFF0000FFFF0000000000000000000000000080000000FF00
      0000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      80000000000000FFFF000080800000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF0000FFFF00000000000000000080000000FF0000008000
      0000FF000000008080000080800080000000FF00000080000000FF0000008000
      0000008080000080800000000000000000000000000000000000FF000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FF00000000000000FF000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF0000FFFF00000000000000000080000000FF000000FF00
      0000FF0000000080800000808000008080008000000080000000800000008000
      0000008080000080800000000000000000000000000000000000FF000000FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FF00
      000000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000FFFF0000FFFF000080800000FFFF0000FFFF000080
      800000FFFF0000FFFF000000000000000000FF000000FF000000FF000000FF00
      0000FF000000008080000080800000808000FF000000FF000000FF0000008000
      0000FF0000008000000080000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF000000FF00FFFFFF00FF000000FFFFFF0000000000FFFFFF00FF00
      000000000000FF000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000080808000000000000000
      0000808080000000000000FFFF0000FFFF0000FFFF00008080000080800000FF
      FF0000FFFF0000FFFF00000000000000000080000000FF000000FF0000000080
      800000808000008080000080800000808000FF000000FF000000FF0000008000
      00008000000080000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FF000000FF000000FFFFFF00FFFFFF0000000000FFFFFF00FF00
      000000000000FFFFFF00FF000000000000000000000000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000808080000000
      0000FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000000000FF00000080000000008080000080
      800000808000008080000080800000808000FF00000000808000FF0000008000
      0000FF000000FF000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FF000000FFFF
      FF0000000000FFFFFF00FF000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000808080000000
      0000FFFFFF000000000000000000000000000000000080808000000000000000
      0000808080008080800080808000808080008080800000000000000000008080
      80000000000000000000808080000000000080000000FF000000FF0000000080
      800000808000008080000080800000808000008080000080800000808000FF00
      000080000000FF00000080000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FF000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      000080808000808080000000000000000000FF000000FF000000FF0000000080
      800000808000FF000000FF00000080000000008080000080800000808000FF00
      0000FF00000080000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FF000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000FFFF0000FFFF0000FFFF0000FFFF000080800000FFFF0000FF
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000808000008080000080800000808000008080000080
      800080000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF000080800000FF
      FF000080800000FFFF0000000000000000000000000080000000FF0000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000080800000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000008080000080
      80000080800000808000FF000000FF00000000808000FF000000008080000080
      8000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      800000808000FF000000FF00000080000000FF00000080000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000008000800000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF00FF00FF00000000008000800000000000000080000000
      8000000080000000800000000000000000000000000000000000000080000000
      8000000080000000800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00FF00FF0000000000000000008000800000000000000080000000
      8000000080000000800000000000000000000000000000000000000080000000
      8000000080000000800000000000800080000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000808080000000
      FF00FF00FF000000000000000000000000008000800000000000000080000000
      0000000000000000800000000000000000000000000000000000000080000000
      0000000000000000800000000000800080000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000008080
      8000000000000000000000000000000000008000800000000000000080000000
      0000000000000000800000000000000000000000000000000000000080000000
      0000000000000000800000000000800080000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000008080
      800000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000008000800000000000000080000000
      8000000080000000800000000000000000000000000000000000000080000000
      8000000080000000800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF0000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000008000800000000000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000080000000800000000000800080000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF00000000
      0000000000000000000000000000000000008000800000000000000080000000
      0000000000000000800000008000000000000000000000008000000080000000
      0000000000000000800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF000000000000FFFF000000000000FFFF00000000
      0000000000000000000000000000000000008000800000000000000080000000
      0000000000000000800000008000000000000000000000008000000080000000
      000000000000000080000000000080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000000000000000000000000000000000008080
      800000000000FFFF000000000000FFFF000000000000FFFF0000000000008080
      8000000000000000000000000000000000008000800000000000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      800000008000000080000000000080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000008000800000000000000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000000000000000000080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080000000
      0000000000000080800000808000008080000080800000808000008080000000
      000000000000800080008000800080008000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080000000000000000000008080000080800000000000000000008000
      800080008000800080008000800080008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      8000800080008000800080008000000000000000000080008000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      00000000FF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000000000000000000000FF000000
      00000000FF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000FFFF000000000000FFFF000000000000FFFF00000000000000FF000000
      00000000FF00000000000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FF00FF00000000000000000000FF00000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF0080808000FFFFFF0000000000FFFFFF0080808000FFFFFF008080
      8000FFFFFF00000000000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000FF0000000000000000000000FF000000FF000000FF
      000000FFFF000000000000FFFF00000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0080808000FFFF
      FF00FFFFFF000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FF0000000000000000000000FF00000000000000FF00000000
      000000FFFF000000000000FFFF000000000000FFFF0000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0080808000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FF0000000000000000000000000000000000000000000000FF00000000
      000000FF000000FFFF0000FFFF0000FFFF00000000000000000000000000FF00
      000000000000FF00000000000000FF0000000000000000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000FF00FFFFFF008080
      80000000FF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000FF000000FF000000FF
      0000000000000000000000FFFF00000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FF00000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FF
      FF0000FFFF0000FFFF00FFFFFF000000000000FF00000000000000FF00000000
      000000FF0000000000000000000000000000000000000000000000000000FF00
      000000000000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080000000FF00FFFFFF00808080000000FF00FFFF
      FF00808080000000FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FF000000FF000000FF
      000000000000000000000000000000000000000000000000000000000000FF00
      000000000000FF00000000000000FF00000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF0000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000C0C0C000C0C0C000C0C0C000C0C0C000FF000000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00808080000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000C0C0C00080808000FFFFFF00808080000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000080800000808000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00080800000808000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000C0C0C00080808000FFFFFF00FFFFFF00FFFFFF008080
      8000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000000000000808000008080000000000000FFFF0000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0008000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C00000FFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF0000000000000000
      000000000000000000000000000000000000C0C0C00000000000C0C0C0000080
      8000008080000000800000808000C0C0C00000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000800000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000000000000000000000000000000000808080008080800080808000C0C0
      C00000FFFF00C0C0C00000FFFF0080808000FFFFFF00FFFFFF00C0C0C0008080
      80000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      000000000000808000008080000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000C0C0C0000000000000808000C0C0
      C0000080800000008000008080000000800000000000C0C0C000808080008080
      80008080800080808000C0C0C0008000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FF00000000000000000000000000008080800000FFFF008080800000FF
      FF00FFFFFF0000FFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF008080
      8000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000808000008080000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000C0C0C0000000000000808000C0C0
      C000008080000080800000808000008080000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000800000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000FFFFFF0000000000000000000000000080808000FFFFFF0080808000FFFF
      FF0000FFFF00FFFFFF0000FFFF008080800000000000FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808000008080000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000C0C0C00000000000C0C0C0000080
      8000C0C0C0008080800000808000C0C0C00000000000C0C0C000808080008080
      80008080800080808000C0C0C000800000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFF
      FF0000FF00000000000000000000000000008080800000FFFF008080800000FF
      FF00FFFFFF0000FFFF00FFFFFF00808080000000000000000000FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000008080
      00008080000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000C0C0C00000000000808080000000
      0000C0C0C0008080800080808000000000000000000000000000000000000000
      00000000000000000000C0C0C000800000000000000080808000000000000000
      000000000000000000008080800000FF0000FFFFFF0000FF0000FFFFFF0000FF
      0000FFFFFF0000000000000000000000000080808000FFFFFF0080808000FFFF
      FF0000FFFF00FFFFFF0000FFFF008080800000000000FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000C0C0C00000000000000000000000
      000000000000C0C0C00080808000C0C0C00000000000C0C0C000C0C0C000C0C0
      C000C0C0C00080808000C0C0C000800000000000000000000000000000000000
      000000FF0000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF0000FF0000FFFF
      FF0000FF000000000000FFFFFF0000000000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF008080
      8000C0C0C000C0C0C000C0C0C000000000000000000000000000000000008080
      00008080000080800000000000008080000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000C0C0C00000000000808080008080
      8000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      00000000000000000000C0C0C000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFF0000000000000000000000000000000000008080
      800000FFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00C0C0C0008080
      80000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF0000000000000000000000000000C0C0C00000000000000000008080
      80008080800080808000C0C0C000000000000000000000000000000000000000
      00000000000000000000C0C0C000808000000000000000000000000000000000
      00000000000000FF0000FFFFFF0000FF0000FFFFFF0000000000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00000000000000000000000000000000000000
      00008080800000FFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000808000008080000000000000808000000000
      0000FFFF0000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000000000000000000000000000000000000000
      000000000000808080008080800000FFFF0080808000FFFFFF00808080000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00808080000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FF000000FF000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FF000000FFFFFF00FF000000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C0000000FF000000
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FF000000FF000000FFFFFF00FFFFFF0000000000FF000000FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF000000FF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000FF00C0C0C000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FF000000FFFFFF00FF000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FF000000FFFFFF0000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF0000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FF000000FF000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FF000000FFFFFF0000000000000000000000FF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000000000000000000000000000
      0000FFFFFF000000FF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FFFFFF00000000000000000000000000FF000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FF000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000FF00C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000FF000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FF000000FFFFFF000000000000000000000000000000FF00FFFF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF000000FF00000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000FF000000FFFFFF00FFFFFF000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF00C0C0C000FFFFFF00FF000000FFFFFF00C0C0C0000000FF000000
      FF0000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
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
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000000000000000C7E8FF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF0080CCFF0097D5FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000000000000000000018A2FE0080CCFF000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000808080008080800080808000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C0C0C000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF00000000000000FF000000FF000000
      FF00000000008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000FF000000FF000000FF0000C0C0C000C0C0
      C0000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800080808000C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000C0C0C000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C00000000000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000098FF00000000000098FF000098
      FF000098FF000098FF000098FF000098FF000098FF000098FF000098FF000098
      FF000098FF000098FF000098FF000098FF000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C0000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000098FF000000000068C1FE0040B2
      FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2FE0040B2
      FE0040B2FE0040B2FE0018A2FE0050B8FE000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C00000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000098FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000060BFFE00BFE5FF000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000098FF0000000000000000000000
      0000C7E8FF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CCFF0080CC
      FF0080CCFF0080CCFF002CAAFE00CFEBFF000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000098FF0000000000000000000000
      00003CAFFE008BD0FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8FF009FD8
      FF009FD8FF009FD8FF00B7E2FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000098FF0080CCFF0080CCFF007CCA
      FE0024A7FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097D5FF0080CCFF0080CCFF0080CC
      FF00C7E8FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
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
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      8000000000000000000000000000000000000000000000000000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      8000000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000000000000080808000FFFF
      FF00FFFFFF000000000000000000FFFFFF00808080000000000080808000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000800000008000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF00000000000000000080808000FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF008080800000000000FFFFFF008080
      800000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF008000000080000000FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000800000008000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000FFFFFF008080
      8000FFFFFF000000FF00FFFFFF0080808000FFFFFF0000000000FFFFFF008080
      80000000000080808000FFFFFF00000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000008000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF0000000000FFFFFF008080
      800000000000FFFFFF0080808000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF008080800000000000000000000000000000000000C0C0
      C000C0C0C000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF0080000000FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF000000000000000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF000000000000FFFF000000
      000000000000000000000000FF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000080808000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FF00000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000008000
      0000800000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000008000000080000000800000008000800000008000
      0000000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000080000000800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000FF00FFFFFF00FFFFFF00FFFFFF00800000008000000000000000FFFF
      FF00000000000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      000000000000000000000000000000000000000000000000FF00000000000000
      000000FF0000FFFFFF00FFFFFF008000000080000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000008000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF000000000000000000000080000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF00000000000000000000000000000000FFFF00000000000000000000FF
      FF00FFFFFF00FFFFFF008000000080000000000000000000000000000000C0C0
      C000C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF000000000000000000000000000000FF00000080000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF000000000000000000000000000000FF000000000000000000
      0000000000008000000080000000C0C0C000C0C0C00000FFFF00C0C0C000C0C0
      C000C0C0C000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FF00000080000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF00000000000000000000000000000000FF00000000
      000080000000800000000000FF00000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FF0000008000
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF00000000000000000000000000000000FFFF00000000008000
      00008000000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FF
      FF0000FFFF0000FFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF0000000000000000000000000000000000FF00
      000080000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FF00000080000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000FF000000000000FF
      FF000000000000000000FFFFFF00FFFFFF0000FF0000FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000FFFF0000000000FF0000000000
      0000000000000000FF00FF000000FFFFFF008080800000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FF00000080000000FF00000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000000FFFF008080800000FF
      FF00800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000008080800000FFFF0000FFFF00FFFFFF0000FF
      FF0000FFFF008080800080000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000800000008000000000FFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF0000FFFF0080000000800000000000000000000000000000000000
      FF000000FF0000FFFF008080800000FFFF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000FFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000FFFF0000FFFF008000000000000000FFFFFF000000FF008080
      800000FFFF0000FFFF00FFFFFF0000FFFF0000FFFF00808080000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080808000FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF008080800080000000000000000000FF000000FF0000FF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000FFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000FFFF0080000000000000000000FF0000FFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF0000000000000000000000000000000000FFFF000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF0000FFFF008000000080000000000000000000FF0080808000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00808080000000
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C00000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
      FF0000FFFF00808080008000000000000000000000000000FF0000FFFF0000FF
      FF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF0000FFFF0000FFFF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF0000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000FFFF008080800000FF
      FF0080000000800000008000000080000000000000000000FF000000FF0000FF
      FF0000FFFF00FFFFFF00FF00FF00FFFFFF0000FFFF0000FFFF000000FF000000
      FF000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000800000008000
      00008000000000000000800000008080800000000000FFFFFF000000FF008080
      800000FFFF0000FFFF00FF00FF0000FFFF0000FFFF00808080000000FF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      FF000000FF0000FFFF008080800000FFFF000000FF000000FF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400300000100010000000000001A00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080008007000000000000000300000000
      0000000100000000000080100000000000000000000000008000000000000000
      0000800000000000000080000000000000000000000000000000000000000000
      000000000000000000000000000000000000C001000000000000C00100000000
      0000C007000000000000E3FF00000000FFFF000080008000E019000000000000
      C003000000000000800700000000000000030000000000000001000000008000
      800000000000000080000000000000006000000080000000B0000000C0000000
      D0010000C0000000A0010000C0000000F8010000C0000000A8070000C0000000
      58070000C0000000EC7F0000E00100008000FFC0800080000000000000000000
      00000000000000000000001C0000000000000000000000008000001C00000000
      00000000000000000000001C0000000000000000800080000000001CC000C000
      00000000C000C00000000000C000C00000000000C000C000000001E0C000C000
      00000000C000C00000000000E001E00180008000FFFFFFF1000000000000FFE1
      000000000000FFC1000080004000F803000000004000E007000000004000C007
      000080004000C00F00008000400080078000000040008007C000000040008007
      C00000007FFC8007C00000007000C00FC000C0017001C00FC000C00107FFE01F
      C000C00707FFF87FE001E3FFFFFFFFFFFC3FFC3F8000FFFFF807F8070000FEFF
      F001F0010000D42BE001E0010000D6ABC101C1010000C7A3C101C10100008381
      C181C181000083C1C181C181000083C1C001C001800083C1C201C201C000C5E3
      C303C303C000FDFFC003C003C000C5E3C103C103C000C563C103C103C000C423
      C003C003C000FF7FC007C007E001FFFF803FFFFFF8628000803F000080E00000
      800701C001E00000800700C001E00000800010D831E100008000005831C18000
      80000040C181000080000000C307000080001818FE17000080001818CC370000
      80000000A87700008000000040F70000F000000001E30000F0000000C1E30000
      FE010000C0E30000FE030000C83F0000F003FFFF80018007C001000000000003
      8001000000000001800040000000401180004000000040088000400008004380
      800040000000718080014000000043C080014000000071E180014000000040A3
      80017FFC00007C07800170000000400F8001700100007F0F800107FF00007F1F
      F00F07FF00207FBFFFFFFFFF0000007FFFF1FFF1FFFFFFFFFFE1FFE1F83F8001
      FFC1FFC1E00FC003F803F803C007C003E007E0078003C003C007C0078003C003
      C00FC00F0001C003800780070001C003800780070001C003800780070001C003
      800780070001C027C00FC00F8003C03FC00FC00F8003FC3FE01FE01FC007FC3F
      F87FF87FE00FFFFFFFFFFFFFF83FFFFFFFF1FFF1FFF1FFF1FFE1FFE1FFE1FFE1
      FFC1FFC1FFC1FFC1F803F803F803F803E007E007E007E007C007C007C007C007
      C00FC00FC00FC00F800780078007800780078007800780078007800780078007
      8007800780078007C00FC00FC00FC00FC00FC00FC00FC00FE01FE01FE01FE01F
      F87FF87FF87FF87FFFFFFFFFFFFFFFFFFFFEFFFEFFFEFFFEF83EF83EF83EF83E
      E00EE00EE00EE00EC006C006C006C00680028002800280028002800280028002
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080028002800280028002800280028002C006C006C006C006
      E00EE00EE00EE00EF83EF83EF83EF83EFFFFFFE3F862FFFFF83FFC4180E00000
      E00F880001E00000C007000001E000008003000031E100008003000031C10000
      00010000C181000000010000C307000000010000FE17000000010000CC370000
      00010000A87700008003000040F700008003000101E30000C0070001C1E30000
      E00F000DC0E30000F83FD553C83F0000FFFFFFFFFFFFFC00F000E0190000F000
      F7FEC0030000C000F7FE800740000000F43E000340000000F79E000140000000
      F402800040000000078680004000000077866000400000007000B00040000000
      61C3D0017FFC00017FC1A0017000000361C1F801700100077F10A80707FF001F
      7F10580707FF007F0019EC7FFFFF01FFC7FFFFFF8007FFFF81FFFFFF00030000
      00FF800000010000007F8000801040000007A000000040000003A04000004000
      8031A97080004000C078AF3080004000803CAE4000004000003CA93200004000
      001CAE4000007FFC00C0A9700000700000418EB0C00170010003E1C3C00107FF
      808FFFFFC00707FFC1FFFFFFE3FFFFFFFFF181FFFFFFC00FFFE114FDFFF30000
      FFC108F880030000F80314F200030000E007080520010000C007114B20010000
      C00F02A70E010000800751500E00000080072AA00E000021800781D00C30C040
      8007C0A001018180C00FC00000F30080C00FC00042070080E01FC000BDFF00C0
      F87FC00AC3FF81E1FFFFC000FFFFC3FF80FFFFFFF862F862AAFFFFFF80E080E0
      9407FFFF01E001E0A007E00701E001E097E7C00731E131E1A5E7C00731C131C1
      86A7C007C181C181F727C007C307C307F627C007FE17FE17F7E1C007CC37CC37
      F785C00FA877A877F7A9E07F40F740F7F015E07F01E301E3FF29FFFFC1E3C1E3
      FF55FFFFC0E3C0E3FF01FFFFC83FC83FFFFFFFFF80FF80FFFFFFFFFFAAFFAAFF
      F00FF00F94079407C003C003A007A0078001800197E797E700000000A5E7A5E7
      0000000086A786A700000000F727F72700000000F627F62700000000F7E1F7E1
      00000000F785F78580018001F7A9F7A9C003C003F015F015F00FF00FFF29FF29
      FFFFFFFFFF55FF55FFFFFFFFFF01FF01F000800FFFFFFFFFD0000007FFFF8000
      E0007FE7F00F800050007CE7C0038000680000078001800034007F2300008000
      1E007F910000800000000000000080000E007FE0000080001C007FE000008000
      280000020000800034007FE18001800028007FE4C003800034005556F00F8000
      1A00AAAFFFFF80000F00D55FFFFF8000FE0FFFFFFFFFFFFFFE0F800FFFFFFFFF
      FE0F4007FFFFFFFFFC077803FFFFFFFFB2037FC1007F007FCDF90000007F007F
      D80EA000001F001F8E0FB000001F001F1E0FB800000700070C078000C007C007
      0A039000C001C0010609C000F001F001801EE400F001F001C01FF001FC01FC01
      F01FF93FFC01FC01F83FFC7FFFFFFFFF8001FE07FFFFFFFF9FFDF803F0008003
      980DF827F7FEBFFB9FFDFC67F7FEA00B98FDF043F43EB2FB9FFDC041F79E8DFB
      980D8039F402990B980D807C07868E3B9FFD007977861E3B987D001970000F0B
      9FFD000861C30C1B900500007FC1060B9FFD800161C1801B800180037F108003
      8001C07F7F1080038001F1FF0019F83FFFFFFC3FFFFF8040FFFFF807FFFF8040
      C003F00100006180DFFBE00100001200D00BC10140002100DFFBC10140004080
      D00BC18140804080DFFBC18140804080D24BC00141F02100D24BC20148801E00
      D24BC30340FC0000DE7BC00361FC0000DFE3C1037FFE0000DFEBC10300000000
      C007C003FFFF0000FFFFC007FFFF00008007FFF7FFFFF03F0003FFE70000E047
      0001004101FEC01040116D8001FE800040086D8000020000438000240DFE1E00
      71806DB61802380043C06D8C0E3E900071E100301E02E00140A300300F1EF003
      7C0700010C1EF01F400FEDB7060EE03F7F0FEDB70000E03F7F1FE007C01FD83F
      7FBFE007F01FC47F007FE007F83FF8FFFFFFFFFFFE7FC000FFFFFEFFFE7F6000
      8001D42BF81F30000001D6ABF00F18004001C7A3F24F0C0040018381F20F0600
      428183C1FE0F0300400183C1FC0F0188428183C1F81F00044001C5E3F03F0002
      4001FDFFF04F00027FF9C5E3F24F00020003C563F00F000080FFC423F81F0000
      C1FFFF7FFE7F0000FFFFFFFFFE7F0000803FF862803FBFFF803F80E0803FBFFF
      800701E08007B049800701E08007807F800031E18000B07F800031C18000B9CF
      8000C1818000BF878000C3078000B0018000FE178000804F8000CC378000B07F
      8000A8778000B9FF800040F78000BFFFF00001E3F000048FF000C1E3F00007FF
      FE01C0E3FE0107FFFE03C83FFE039FFFBFFFBFFFBFFF803FBFFFBFFFBFFF803F
      B049B049B0498007807F807F807F8007B07FB07FB07F8000B9CFB9CFB9CF8000
      BF87BF87BF878000B001B001B0018000804F804F804F8000B07FB07FB07F8000
      B9FFB9FFB9FF8000BFFFBFFFBFFF8000048F048F048FF00007FF07FF07FFF000
      07FF07FF07FFFE019FFF9FFF9FFFFE03FFFEFFFE8000FFFEF83EF83E5555F83E
      E00EE00E0000E00EC006C00676BCC00680028002B6D880028002800286C28002
      00000000CEE6000000000000CAA600000000000086C00000000000004EF60000
      00000000E6F2000080028002E6F2800280028002FEFE8002C006C0060000C006
      E00EE00E5555E00EF83EF83E0000F83EFFFFF862F862FFFE800080E080E00002
      800001E001E06E2A800001E001E04AEA800031E131E12AAA800031C131C16EAA
      8000C181C18100028000C307C30700028000FE17FE1700028000CC37CC370002
      8000A877A8770002800040F740F70002800001E301E300028000C1E3C1E30002
      8000C0E3C0E3FFFE8000C83FC83F0000E00F8003FFFFF003F00F80030000C001
      F00F800300008001F80F800300008000F007800300008000F007800300008000
      F007800300008000F00F800300008001F01F800300008001F819800300008001
      FE16800300008001F00E800300008001EE11800300008001ED2F800700008001
      F2F7800F0000F00FFEFB801F0000FFFFFFFFFFF8800FFFFFFFC18008000FFC7F
      81008008000FF83F81008008000FF81F830080080003F007800098080003F003
      8000BDE80003E0038000A7288003E0038001A6288000C00380C38E28E000C003
      803F8E08E000C00380078008F000E003802F8008F000F803801F8000FC00FC03
      803FFFE0FC01FF83FFFF0000FE07FFC3FFFFF862F862FFF8000080E080E0C000
      000001E001E08001000001E001E00001000031E131E10001000031C131C10001
      0000C181C18100000000C307C30700000000FE17FE1780000000CC37CC378000
      0000A877A8778001000040F740F7B807000001E301E3B8070000C1E3C1E3F803
      0000C0E3C0E3E0030000C83FC83FFFFFFFE3FFE3FFFFFFFFFC41FC4100000000
      8800880000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010001000000000001000100000000
      000D000D00000000D553D55300000000FFF8FFFF8000FFFFFFF8FC7F0000FC7F
      FFE0F83F0000F83FFFE0F81F8000F81FFF81F0070000F007FF03F0030000F003
      FF07E0038000E003840FE0038000E003001FC0030000C003003FC0030000C003
      007FC0030000C003003FE0030000E003003FF803C001F803803FFC03C001FC03
      C03FFF83C007FF83E07FFFC3E3FFFFC3F0038007FFFFFFFFC0010003E01FE01F
      80010001C00FC00F800080108007800780000000000300038000000000010001
      800080008000800080018000C000C00080010000E000E00080010000F000F000
      80010000F801F80180010000F801F8018001C001F801F8018001C001F807F807
      F00FC007F807F807FFFFE3FFFC7FFC7FAA55FFFFFE7FFFFF47E2FC7FFE1F0240
      FC3FF83FFC0702408421F81FFC0103C08421F007F8001A584422F003F8001A58
      6426E00300000240542AE003000002205C3AC00300011D18542AC00300321388
      542AC003003E1248542AE003003E1188542AF803003E08102244FC03001D07E0
      0240FF83002300000180FFC3003F0000FC1FFFFFFFFFFFE3F0070000FDFFFC41
      E0030000F8FF8800C0014000F07F0000C0014000E03F0000C0014000C01F0000
      C0014000800F0000C001400000070000E003400000030000F1C7400080010000
      F1C77FFCC0030000F1C77000E00F0000F0077001F00F0001F80F07FFF81F0001
      FC1F07FFFC7F000DFFFFFFFFFFFFD553FFFFFFFFF862E00F0000C00F80E0F00F
      01C0800701E0F00F00C0800301E0F80F10D8800131E1F0070058800131C1F007
      0040800FC181F0070000800FC307F00F1818801FFE17F01F1818C01FCC37F819
      0000C07FA877FE160000FC7F40F7F00E0000FC7F01E3EE110000FC7FC1E3ED2F
      0000FC7FC0E3F2F70000FFFFC83FFEFB80008000800380030000000080038003
      0000000080038003800080008003800300000000800380030000000080038003
      8000800080038003800080008003800300000000800380030000000080038003
      00000000800380030000000080038003C001C00180038003C001C00180078007
      C007C007800F800FE3FFE3FF801F801F8000FFFF800300000000FDFF80030000
      0000F8FF800300008000F07F800300000000E03F800300000000C01F80030000
      8000800F80030000800000078003000000000003800300000000800180030000
      0000C003800300000000E00F80030000C001F00F80030000C001F81F80070000
      C007FC7F800F0000E3FFFFFF801F0000800780078003F003000300038003C001
      0001000180038001801080108003800000000000800380000000000080038000
      8000800080038000800080008003800100000000800380010000000080038001
      00000000800380010000000080038001C001C00180038001C001C00180078001
      C007C007800FF00FE3FFE3FF801FFFFFFFFF803FFFFE803F8000803F0002803F
      800080076E2A8007800080074AEA800780008000020280008000800002028000
      8000800000028000800080000002800080008000000280008000800000028000
      800080000002800080008000000280008000F0000002F0008000F0000002F000
      8000FE01C71EFE018000FE030000FE03FFFFFFE3F000FFFFC00FFC41F0008000
      80078800F000800080030000F000800080010000F000800080010000F0008000
      800F0000F0008000800F000000008000801F000000008000C01F000000008000
      C07F0000001F8000FC7F0000001F8000FC7F0001001F8000FC7F0001001F8000
      FC7F000D001F8000FFFFD553001F8000FFC0FFFFFFFEFF000000FFFF0002FF00
      000000006E2AF900001C00004AEAF000000000002AAAF000001C00006EAAE000
      000000000002C000001C0000000284000000000000020000001C000000020000
      00000000000200000000000000020000000000000002000001E0000000020000
      00000180FFFE00000000018000000000FFFFE00FE00FE00FFFFFE00FF00FF00F
      F8FFE00FF00FF00FF07FE00FF80FF80FE00FE00FF007F007C00FE00FF007F007
      801FE00FF007F007800FA00BF00FF00F000FC007F01FF01F0007E00FF819F819
      0003E00FFE16FE160001C007F00EF00E0000C007EE11EE110F00C007ED2FED2F
      1F80F83FF2F7F2F73FC0F83FFEFBFEFB803F8003F003FFFF803F8003C001F83F
      800780038001E00F800780038000C00780008003800080038000800380008003
      8000800380000001800080038001000180008003800100018000800380010001
      80008003800100018000800380018003F000800380018003F00080078001C007
      FE01800FF00FE00FFE03801FFFFFF83FFFFBFFFFFF008000FFF10000FF000000
      FFE003C0FF000000FFC103C0FE000000F8031BD8FE000000F0071BD8FE000000
      E00F03C0FF000000E00F0000FF800000E08F199800008000E14F19980000C000
      E28F00000000C000F01F00000000C000F83F00000000C000FFFF00000000C000
      FFFF00000000C000FFFF00000000E001FFD58003FFFFFF00FFF580030000FF00
      FDE380030000FF00F8D780030000FE00F55580030000FE00FD6380030000FE00
      D8F780030000FF0085FB80030000FF805571800300000000D0EA800300000000
      8DFA8003000000005FF180030000000057EB8003000000008FEA800700000000
      DFF1800F00000000FFFB801F00000000FFBEFFFFFFFF800FFE1DFC7FFFFF000F
      F81BF83F0000000FF007F81F0000000FE00FF00740800003000CF00340800003
      0001E00340C00003000FE003408080030000C00341FC8000000FC0034880E000
      0001C00341FCE000E00CE00361FCF000F00FF8037FFEF000F817FC030000FC00
      FE1BFF83FFFFFC01FFBDFFC3FFFFFE0780008003803FFFFF00008003803FF83F
      000080038007E00F000080038007C00700008003800080030000800380008003
      000080038000000100008003800000018000800380000001C000800380000001
      C000800380000001C000800380008003C0008003F0008003C0008007F000C007
      C000800FFE01E00FE001801FFE03F83F8007FFFFFFE3FFFF00030000FC41C007
      0001000088008003801040000000000100004000000000010000400000000001
      800040000000000080004000000000000000400000008000000040000000C000
      00007FFC0000E001000070000000E007C00170010001F007C00107FF0001F003
      C00707FF000DF803E3FFFFFFD553FFFF803F8003FFFF8000803F8003E01F0000
      80078003C00F0000800780038007800080008003000300008000800300010000
      800080038000800080008003C000800080008003E000000080008003F0000000
      80008003F801000080008003F8010000F0008003F801C001F0008007F807C001
      FE01800FF807C007FE03801FFC7FE3FFFFFFFF00FF00FFFFE019FF00FF00FDFF
      C003FF00FF00F8FF8007FE00FE00F07F0003FE00FE00E03F0001FE00FE00C01F
      8000FF00FF00800F8000FF80FF8000076000000000000003B000000000008001
      D00100000000C003A00100000000E00FF80100000000F00FA80700000000F81F
      580700000000FC7FEC7F00000000FFFFF81FFFFFFF07FC00F00FFFFFFE03F000
      C003FFFFFC01C000C003E007F80000008001C007F80000000000C007F8000000
      0000C007780000000000C007200000000000C007000100000000C00700000000
      0000C00F000400018001E07F000F0003C003E07F00070007C003FFFF000F001F
      F00FFFFF01FF007FF81FFFFFE3FF01FF00000000000000000000000000000000
      000000000000}
  end
  object popDesktop: TPopupMenu
    OnPopup = popDesktopPopup
    Left = 317
    Top = 24
    object popDesktopOpen: TMenuItem
      Caption = '&Open'
      Default = True
      OnClick = popDesktopOpenClick
    end
    object popDesktopDelete: TMenuItem
      Caption = '&Delete'
      OnClick = popDesktopDeleteClick
    end
    object popDesktopClear: TMenuItem
      Caption = 'Clear &All'
      OnClick = popDesktopClearClick
    end
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object popDesktopColour: TMenuItem
      Caption = '&Colour'
      OnClick = popDesktopColourClick
    end
    object MenuItem7: TMenuItem
      Caption = '-'
    end
    object popDesktopLarge: TMenuItem
      Caption = 'Large &Icons'
      GroupIndex = 1
      RadioItem = True
      OnClick = popDesktopLargeClick
    end
    object popDesktopSmall: TMenuItem
      Caption = '&Small Icons'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = popDesktopSmallClick
    end
    object popDesktopList: TMenuItem
      Caption = '&List'
      GroupIndex = 1
      RadioItem = True
      OnClick = popDesktopListClick
    end
    object popDesktopDetail: TMenuItem
      Caption = 'D&etail'
      GroupIndex = 1
      RadioItem = True
      OnClick = popDesktopDetailClick
    end
    object N2: TMenuItem
      Caption = '-'
      GroupIndex = 1
    end
    object popDesktopAddTostartup: TMenuItem
      Caption = 'Add To Startup...'
      GroupIndex = 1
      OnClick = popDesktopAddTostartupClick
    end
    object popRemoveFromStartup: TMenuItem
      Caption = 'Remove From Startup...'
      GroupIndex = 1
      Visible = False
      OnClick = popRemoveFromStartupClick
    end
  end
  object tmrDiaryNotify: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = tmrDiaryNotifyTimer
    Left = 848
    Top = 25
  end
  object qryDiaryNotify: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NDIARY, DESCR '
      'FROM DIARY '
      'WHERE '
      'REMINDER_FOR = :REMINDER_FOR AND '
      
        'DIARY.NOTIFY <= TO_DATE(to_char(sysdate,'#39'DD/MM/YYYY HH24:MI'#39'), '#39 +
        'DD/MM/YYYY HH24:MI'#39')'
      ''
      '/*'
      'SELECT NDIARY, DESCR '
      'FROM DIARY '
      'WHERE '
      'REMINDER_FOR = :REMINDER_FOR AND '
      'DIARY.NOTIFY <= :NOTIFYSTART AND '
      'DIARY.NOTIFY > :NOTIFYEND'
      '*/')
    Left = 650
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REMINDER_FOR'
        Value = nil
      end>
  end
  object qryDiaryUnnotify: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE DIARY SET NOTIFY = NULL WHERE NDIARY = :NDIARY')
    Left = 660
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NDIARY'
        Value = nil
      end>
  end
  object popHelp: TPopupMenu
    AutoHotkeys = maManual
    Images = ilstHelp
    Left = 541
    Top = 30
    object miCurrentReleaseNotes: TMenuItem
      Caption = 'Current Release Notes'
      OnClick = miCurrentReleaseNotesClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object popHelpContents: TMenuItem
      Caption = '&Contents'
      ImageIndex = 0
      OnClick = popHelpContentsClick
    end
    object popHelpIndex: TMenuItem
      Caption = '&Index'
      ImageIndex = 1
      OnClick = popHelpIndexClick
    end
    object popHelpLine1: TMenuItem
      Caption = '-'
    end
    object popHelpForum: TMenuItem
      Caption = 'Axiom &Support'
      Visible = False
      OnClick = popHelpForumClick
    end
    object popHelpDownload: TMenuItem
      Caption = 'Axiom &Download'
      ImageIndex = 2
      Visible = False
      OnClick = popHelpDownloadClick
    end
    object popHelpLine2: TMenuItem
      Caption = '-'
    end
    object popHelpSQLTrace: TMenuItem
      Caption = 'SQL &Trace'
      Visible = False
      object popHelpSQLTraceStop: TMenuItem
        Caption = '&Off'
        Default = True
        OnClick = popHelpSQLTraceStopClick
      end
      object popHelpSQLTraceLine1: TMenuItem
        Caption = '-'
      end
      object popHelpSQLTraceAll: TMenuItem
        Caption = '&All'
        OnClick = popHelpSQLTraceAllClick
      end
      object popHelpSQLTraceTol1: TMenuItem
        Caption = '> &1 sec'
        OnClick = popHelpSQLTraceTol1Click
      end
      object popHelpSQLTraceTol3: TMenuItem
        Caption = '> &3 secs'
        OnClick = popHelpSQLTraceTol3Click
      end
      object popHelpSQLTraceTol5: TMenuItem
        Caption = '> &5 secs'
        OnClick = popHelpSQLTraceTol5Click
      end
      object popHelpSQLTraceTol9: TMenuItem
        Caption = '> &9 secs'
        OnClick = popHelpSQLTraceTol9Click
      end
      object popHelpSQLTraceTol20: TMenuItem
        Caption = '> &20 secs'
        OnClick = popHelpSQLTraceTol20Click
      end
    end
    object popHelpLine3: TMenuItem
      Caption = '-'
      Visible = False
    end
    object popHelpAbout: TMenuItem
      Caption = '&About...'
      OnClick = popHelpAboutClick
    end
  end
  object popLaunch: TPopupMenu
    AutoHotkeys = maManual
    Images = ilstShortcuts
    OnPopup = popLaunchPopup
    Left = 795
    Top = 253
    object popLaunchLock: TMenuItem
      Caption = '&Lock'
      ImageIndex = 68
      OnClick = popLaunchLockClick
    end
    object popLaunchPassword: TMenuItem
      Caption = 'Change &Password'
      ImageIndex = 80
      OnClick = popLaunchPasswordClick
    end
    object popLaunchLine1: TMenuItem
      Caption = '-'
    end
  end
  object ilstHelp: TImageList
    Left = 543
    Top = 150
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B5A00008C00
      2900634200002100000008080800181000001810000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000C62108000000
      00000000000042000000EF842900EF842900EF84290042000000080000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B0800A563
      0000FFA53100FF9C2900FF9C2900FFA53100FFA53100FF9C2900FF9C29001818
      0800000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000010000800FF84
      2100FF9C2900FF9C2900630000000000000000000000B5080000FF9C2900C618
      0800000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000009C10
      2900FF9C2900FF9C290018100000181000001810000018100000181000001810
      0000080000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF842100FF9C2900EFA52900EFA52900EFA52900EF842900EF842900EF84
      2100844208000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000422121000000
      000094421000FF842100181000001810000018100000AD100800FF9C2900FF9C
      290052391800000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000004200
      00000000000000080000942121000000000008000000EF842900FF9C29008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFA531004A000000945A0000FFA53100FF9C2900FF9C2900FFA531000008
      0000634200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000800000084000000C6180800EF84290042002100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000008000021101800945A00004242
      0000180808000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFE7FFE7FFFFFFFFF
      FC3FFC3FFFFF07C1FC3FFC3FFFFF07C1FE7FFE7FC07F07C1FC3FFC3FD81F0101
      FC3FFC3FC00F0001FC3FFC3FC18F0201FC1FFC1FE0070201F20FF20FF0078003
      E107E107D007C107E187E187E907C107E007E007F007E38FF00FF00FF83FE38F
      F81FF81FFF07E38FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object popMatter: TPopupMenu
    AutoHotkeys = maManual
    Images = ilstShortcuts
    OnPopup = popMatterPopup
    Left = 341
    Top = 155
  end
  object popPhoneBook: TPopupMenu
    AutoHotkeys = maManual
    Images = ilstShortcuts
    OnPopup = popPhoneBookPopup
    Left = 150
    Top = 32
  end
  object qryEntitys: TUniQuery
    KeyFields = 'CODE'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, "NAME", TYPE, LOCKDATE '
      'FROM ENTITY '
      'WHERE ACTIVE = '#39'Y'#39
      'order by default_entity')
    Left = 521
    Top = 318
  end
  object dsEntitys: TUniDataSource
    DataSet = qryEntitys
    Left = 575
    Top = 313
  end
  object dxBarManager: TdxBarManager
    AllowCallFromAnotherForm = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'DocCenter'
      'Documents'
      'View'
      'Tools'
      'Diary'
      'Clients'
      'Phonebook'
      'Matters'
      'Launch'
      'DiaryFee'
      'Snapshots'
      'Shortcuts'
      'Help'
      'SQL Trace'
      'Menu'
      'Window'
      'Default'
      'Conflicts')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
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
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.DisabledImages = ilstShortcuts
    ImageOptions.HotImages = ilstShortcuts
    ImageOptions.ImageListBkColor = clBtnFace
    ImageOptions.Images = ilstShortcuts
    ImageOptions.LargeImages = ilstShortcuts
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    OnShowCustomizingPopup = dxBarManagerShowCustomizingPopup
    Left = 448
    Top = 173
    PixelsPerInch = 96
    object dxBarManagerBar1: TdxBar
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsNone
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 395
      FloatTop = 212
      FloatClientWidth = 310
      FloatClientHeight = 102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'subItemMatter'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLaunch'
        end
        item
          Visible = False
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarShortcuts'
        end
        item
          Visible = True
          ItemName = 'dxBarSnapshots'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAutoTimer'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem10'
        end>
      NotDocking = [dsNone, dsTop, dsRight, dsBottom]
      OldName = 'Menu'
      OneOnRow = True
      Row = 1
      ShowMark = False
      SizeGrip = False
      UseOwnFont = True
      UseRecentItems = False
      Visible = False
      WholeRow = True
    end
    object barClientsMatters: TdxBar
      Caption = 'Clients/Matters/Contacts'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1126
      FloatTop = 8
      FloatClientWidth = 165
      FloatClientHeight = 118
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -2
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Position = ipBeginsNewColumn
          Visible = True
          ItemName = 'bbClientSearch'
        end
        item
          Visible = True
          ItemName = 'edClient'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItemClients'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbMatterSearch'
        end
        item
          Visible = True
          ItemName = 'beMatterSearch'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkIncludeClosed'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItemMatters'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbPhonebookSearch'
        end
        item
          Visible = True
          ItemName = 'edContact'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItemPhonebook'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object barQAT: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'QAT'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1145
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000F5F5F500FFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FFCE991AFFCE991AFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FFCE991AFFCE991AFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FFCE991AFFCE991AFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FFCE991AFFCE991AFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FFCE991AFFCE991AFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF8F1DFFFDAB150FFDAB150FFDAB150FFDAB150FFDAB150FFEAD49FFFFFFF
        FFFFDFBC69FFDAB150FFDAB150FFDAB150FFDAB150FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFFF7EFDBFFD5A83CFFD5A83CFFD5A83CFFD5A83CFFD5A83CFFE8CF94FFFFFF
        FFFFDBB457FF6F581FFF000000FFD5A83CFFD5A83CFF000000FFFFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FF886511FF6B500EFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FFCE991AFFCE991AFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FFCE991AFFCE991AFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF6ECD4FFCE991AFFCE991AFFCE991AFFCE991AFFCE991AFFE4C781FFFFFF
        FFFFD5A739FFCE991AFFCE991AFFCE991AFFCE991AFF000000FFFFFFFFFFFFFF
        FFFFF6ECD5FFCF9B1FFFCF9B1FFFCF9B1FFFCF9B1FFFCF9B1FFFE5C985FFFFFF
        FFFFD6A93FFFCF9B1FFFCF9B1FFFCF9B1FFFCF9B1FFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFC4C4C4FF}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'barbtnShowWindows'
        end
        item
          Visible = True
          ItemName = 'bbtnQuickCodes'
        end
        item
          Visible = True
          ItemName = 'bbMatterSearch'
        end
        item
          Visible = True
          ItemName = 'bbClientSearch'
        end
        item
          Visible = True
          ItemName = 'bbPhonebookSearch'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object barView: TdxBar
      Caption = 'View'
      CaptionButtons = <>
      DockedDockingStyle = dsNone
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <>
      OneOnRow = True
      Row = 3
      UseOwnFont = True
      Visible = False
      WholeRow = False
    end
    object barSearch: TdxBar
      Caption = 'Documents'
      CaptionButtons = <>
      DockedLeft = 655
      DockedTop = 0
      FloatLeft = 1145
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -2
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'barbtnFindDocuments'
        end
        item
          Visible = True
          ItemName = 'edDocument'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItemDocs'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object barDocCenter: TdxBar
      Caption = 'Document Centre'
      CaptionButtons = <>
      DockedLeft = 883
      DockedTop = 0
      FloatLeft = 1241
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -2
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object BarConflicts: TdxBar
      Caption = 'Conflicts'
      CaptionButtons = <>
      DockedLeft = 996
      DockedTop = 0
      FloatLeft = 1133
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -2
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarFindConflicts'
        end
        item
          Visible = True
          ItemName = 'edConflict'
        end
        item
          Visible = True
          ItemName = 'dxBarConflicts'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = 'Scanned Documents'
      Category = 0
      Hint = 'Scanned Documents'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000001B12001C845C028B6747016C0F0B0010000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000035250138D89603E3F4A903FFF4A903FFE9A003F38D610293261A
        0028000000000000000000000000000000000000000000000000000000000000
        00005B3F0160EFA503FB8D610293F4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFAE7901B74832014C00000000000000000000000000000000040300048D61
        0293F4A903FFF4A903FFF4A903FF825902877A54017FD59403DFF4A903FFF4A9
        03FFF4A903FFF4A903FFD29003DB6B4A01700B08000C130D0014B37C01BBF4A9
        03FFF4A903FFE19C03EB45300148000000000000000000000000543A0158E59D
        03EFEBA403F7F4A903FFF4A903FFF4A903FFA47101ABB77F01BFF4A903FFF4A9
        03FFB37C01BB171000180000000000000000000000004832014C9C6B02A3261A
        00280F0B001063450168BE8402C7F4A903FFE9A003F3E9A003F3F4A903FF8259
        0287040300040000000000000000130D00149567029B6747016C000000000000
        0000000000001E150020A06F02A7F4A903FFBE8402C745300148B37C01BBE19C
        03EB9C6B02A34C3501505B3F01609869029F1B12001C00000000000000000805
        00087A54017FEBA403F7F4A903FFEBA403F72E20013000000000000000000B08
        000C503701549869029FDC9803E7BB8002C36B4A017022180024543A0158D594
        03DFF4A903FFF4A903FFF4A903FF634501680000000000000000000000000000
        00000000000000000000000000003928013C7E570183D29003DBF4A903FFF4A9
        03FFF4A903FFF4A903FFA47101AB000000000000000000000000000000000000
        000000000000000000000000000000000000271B0029A97501B1F4A903FFF4A9
        03FFF4A903FFB77F01BF2B1D002D000000000000000000000000000000000000
        000000000000000000000000000018100019986902A0F4A903FFF4A903FFF4A9
        03FFDB9803E64F37015300000000000000000000000000000000000000000000
        00000000000000000000080600098A5F0290F4A903FFF4A903FFF4A903FFF4A9
        03FF745001790000000000000000000000000000000000000000000000000000
        000000000000000000007A54017FF4A903FFF4A903FFF4A903FFE19C03EB8259
        0287000000000000000000000000000000000000000000000000000000000000
        000000000000543A0158F4A903FFEFA503FBA77401AF4C350150040300040000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000322201346747016C130D00140000000000000000000000000000
        00000000000000000000000000000000000000000000}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000040300042E2001300B08000C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005B3F0160D89603E3F4A903FFE9A003F38D6102932A1D002C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000018100019845C
        028BF1A603FCF4A903FFF4A903FFF4A903FFF4A903FFEBA303F7A47101AB5B3F
        015F130D00130000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000017100018B77F01BFDC98
        03E7F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFD89603E3724F0178130D0014000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000032220134D89603E3EBA403F70403
        0004C58802CFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFEBA403F79C6B02A33222013400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000583D015CE9A003F3F4A903FFEBA403F70805
        0008CA8C02D3F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFBE8402C7583D015C0805
        0008000000000000000000000000000000000000000000000000000000000000
        00000000000004030004845C028BF4A903FFF4A903FFF4A903FFF4A903FFE9A0
        03F3F4A903FFF4A903FFBE8402C7CE8E02D7F4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFDC98
        03E7825902871B12001C00000000000000000000000000000000000000000000
        0000130D0014B37C01BBF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFEFA503FB724F017804030004000000003928013C9869029FE9A003F3F4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFEFA503FBA47101AB352501380000000000000000000000002A1D
        002CD59403DFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFD594
        03DF3928013C00000000000000000000000000000000000000000B08000C5B3F
        0160BB8002C3F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFEFA503FB5F4201640000000050370154E9A0
        03F3F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFA77401AF0F0B
        0010000000000000000000000000000000000000000000000000000000000000
        00003D2A0140DC9803E7CE8E02D7D89603E3F4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFD29003DB583D015CF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFEBA403F763450168000000000000
        00000000000000000000000000000000000000000000000000000F0B00109869
        029FEFA503FB825902870805000800000000412D01449C6B02A3EBA403F7F4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFEFA503FBD59403DFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFCA8C02D32A1D002C00000000000000000000
        000000000000000000000000000000000000000000004C350150D89603E3C588
        02CF2E20013000000000000000000000000000000000000000000B08000C5F42
        0164BB8002C3F4A903FFF4A903FFF4A903FFC18702CBF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FF906302970B08000C0000000000000000000000000000
        0000000000000000000000000000130D0014A47101ABEBA403F77652017C0403
        0004000000000000000000000000000000000000000000000000000000001710
        00189C6B02A3F4A903FFF4A903FFF4A903FFC18702CBBB8002C3F4A903FFF4A9
        03FFF4A903FF6747016C00000000000000000000000000000000000000000000
        000000000000000000005B3F0160E19C03EBBE8402C7261A0028000000000000
        0000000000000000000000000000000000000000000004030004724F0178E59D
        03EFF4A903FFF4A903FFF4A903FFF4A903FF6747016C35250138D59403DFF4A9
        03FFF4A903FFEFA503FBBB8002C36B4A01701B12001C00000000000000000000
        00001B12001CAC7701B3E9A003F36B4A01700403000400000000000000000000
        00000000000000000000000000000000000045300148CE8E02D7F4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFAE7901B7000000000000000008050008543A
        01589C6B02A3E19C03EBF4A903FFF4A903FFF4A903FFC58802CF7652017C6B4A
        0170E9A003F3B77F01BF1E150020000000000000000000000000000000000000
        0000000000000000000022180024A77401AFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFD89603E3130D00140000000000000000000000000000
        000000000000040300043928013C82590287D29003DBF4A903FFF4A903FFF4A9
        03FFEBA403F79567029B412D0144080500080000000000000000000000000000
        0000080500087E570183EBA403F7F4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFEFA503FB3928013C000000000000000000000000000000000000
        00000000000000000000000000000000000000000000221800246F4D0174B77F
        01BFEFA503FBF4A903FFF4A903FFE9A003F39C6B02A3583D015C0B08000C543A
        0158D89603E3F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FF724F017800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000F0B0010583D015CA06F02A7E9A003F3F4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFAE7901B70000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000004030004412D0144895F028FE59D03EFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFD896
        03E3130D00140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000583D015CD89603E3F4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFE09A03EA543A
        0158000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004A34014ECB8D02D4F4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FF7753017D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003D2A013FBD8202C6F4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FF9A6B02A20F0A00100000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002F200131B07901B7F4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFBE8402C732230135000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000021170022A26F02A9F4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFE29B03EC563C015A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000130D00149466029BF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FF7954017F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000090630297F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFB37C01BB040300040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000007652
        017CF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFB77F01BF5B3F016004030004000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006A4A016FEAA2
        03F6F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFB98002C17752017C3525
        0138000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001B12001CEFA503FBF4A9
        03FFF4A903FFF4A903FFE59D03EF906302973928013C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000017100018E59D03EFEFA5
        03FBAC7701B3543A015808050008000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000F0B00100F0B
        0010000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OnClick = dxBarLargeButton11Click
    end
    object barbtnFindDocuments: TdxBarButton
      Caption = 'Find Documents'
      Category = 1
      Hint = 'Find Documents'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000009063
        0297D59403DFD59403DFD59403DFD59403DFD59403DFD59403DFD59403DFD594
        03DFD59403DFD59403DFA06F02A700000000000000000000000000000000B77F
        01BF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000B77F01BF00000000000000000000000000000000B77F
        01BF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000B77F01BF00000000000000000000000000000000B77F
        01BF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000B77F01BF00000000000000000000000000000000B77F
        01BF00000000171000181E1500201E1500201E1500201E1500201E1500201E15
        00200B08000C00000000B77F01BF00000000000000000000000000000000B77F
        01BF00000000634501687A54017F7A54017F7A54017F7A54017F7A54017F7A54
        017F3D2A014000000000B77F01BF00000000000000000000000000000000B77F
        01BF00000000171000181E1500201E1500201E1500201E1500201E1500201E15
        00200B08000C00000000B77F01BF00000000000000000000000000000000B77F
        01BF000000006B4A01707A54017F7A54017F7A54017F7A54017F7A54017F7A54
        017F3D2A014000000000B77F01BF00000000000000000000000000000000B77F
        01BF00000000171000181E1500201E1500201E1500201E1500201E1500201E15
        00200B08000C00000000B77F01BF00000000000000000000000000000000B77F
        01BF000000006B4A01707A54017F7A54017F7A54017F7A54017F7A54017F7A54
        017F3D2A014000000000B77F01BF00000000000000000000000000000000B77F
        01BF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000B77F01BF00000000000000000000000000000000B77F
        01BF000000007652017C9869029F9869029F9869029F9869029F9869029F9869
        029F5037015400000000B77F01BF00000000000000000000000000000000B77F
        01BF000000000000000000000000000000000000000000000000000000003525
        01389869029F9869029FCA8C02D300000000000000000000000000000000B77F
        01BF000000000000000000000000000000000000000000000000000000007A54
        017F845C028BCE8E02D76B4A017000000000000000000000000000000000B77F
        01BF000000000000000000000000000000000000000000000000000000007A54
        017FDC9803E77A54017F0000000000000000000000000000000000000000895F
        028FD59403DFD59403DFD59403DFD59403DFD59403DFD59403DFD59403DFE59D
        03EF895F028F00000000000000000000000000000000}
      ShortCut = 16452
      OnClick = barbtnFindDocumentsClick
    end
    object edDocument: TdxBarEdit
      Caption = 'Text:'
      Category = 1
      Hint = 'Type text to find in document and press Enter.'
      Visible = ivAlways
      OnKeyDown = edDocumentKeyDown
      Width = 91
    end
    object dxBarSubItemDocs: TdxBarSubItem
      Caption = 'Recent Documents'
      Category = 1
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00004C350150DC9803E7F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFE59D03EF543A015800000000000000000000000000000000000000000000
        0000C58802CF845C028B3D2A01403D2A01403D2A01403D2A01403D2A01403D2A
        01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A
        0140845C028BCE8E02D700000000000000000000000000000000000000000000
        0000C58802CF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C350150D59403DF00000000000000000000000000000000000000000000
        0000C58802CF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C350150D59403DF00000000000000000000000000000000000000000000
        0000C58802CF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C350150D59403DF00000000000000000000000000000000000000000000
        0000C58802CF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C350150D59403DF00000000000000000000000000000000000000000000
        0000C58802CF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C350150D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F0160000000007652017C9869029F9869029F9869029F9869
        029F9869029F9869029F9869029F9869029F9869029F9869029F3D2A01400000
        00005B3F0160D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F016000000000221800243D2A01403D2A01403D2A01403D2A
        01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A0140080500080000
        00005B3F0160D59403DF00000000000000000000000000000000000000000000
        0000C58802CF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C350150D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F0160000000006B4A01709869029F9869029F9869029F9869
        029F9869029F9869029F9869029F9869029F9869029F9869029F322201340000
        00005B3F0160D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F016000000000221800243D2A01403D2A01403D2A01403D2A
        01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A01400B08000C0000
        00005B3F0160D59403DF00000000000000000000000000000000000000000000
        0000C58802CF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C350150D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F0160000000006B4A01709869029F9869029F9869029F9869
        029F9869029F9869029F9869029F9869029F9869029F9869029F322201340000
        00005B3F0160D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F016000000000322201345B3F01605B3F01605B3F01605B3F
        01605B3F01605B3F01605B3F01605B3F01605B3F01605B3F01600B08000C0000
        00005B3F0160D59403DF00000000000000000000000000000000000000000000
        0000C58802CF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C350150D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F016000000000543A01587A54017F7A54017F7A54017F7A54
        017F7A54017F7A54017F7A54017F7A54017F7A54017F7A54017F261A00280000
        00005B3F0160D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F0160000000003928013C5B3F01605B3F01605B3F01605B3F
        01605B3F01605B3F01605B3F01605B3F01605B3F01605B3F0160171000180000
        00005B3F0160D59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F016000000000000000000000000000000000000000000000
        00000000000000000000000000000000000004030004583D015C5B3F01605B3F
        01609567029BD59403DF00000000000000000000000000000000000000000000
        0000D59403DF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003928013CF4A903FFB77F01BFC187
        02CBF4A903FFAE7901B700000000000000000000000000000000000000000000
        0000D59403DF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D2A0140F4A903FF0B08000CBB80
        02C3CE8E02D70B08000C00000000000000000000000000000000000000000000
        0000D59403DF5B3F016000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D2A0140F4A903FFA77401AFCE8E
        02D7171000180000000000000000000000000000000000000000000000000000
        0000BE8402C7845C028B3D2A01403D2A01403D2A01403D2A01403D2A01403D2A
        01403D2A01403D2A01403D2A01403D2A01406B4A0170F4A903FFDC9803E72218
        0024000000000000000000000000000000000000000000000000000000000000
        000045300148D59403DFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFDC9803E7261A00280000
        00000000000000000000000000000000000000000000}
      ItemLinks = <>
      OnPopup = dxBarSubItemDocsPopup
    end
    object barcmbStyles: TdxBarCombo
      Caption = 'Colour Scheme'
      Category = 2
      Hint = 'Colour Scheme'
      Visible = ivAlways
      OnChange = barcmbStylesChange
      Width = 91
      Items.Strings = (
        'Metropolis UI Black'
        'Metropolis UI Blue'
        'Metropolis UI Dark'
        'Metropolis UI Green'
        'Sapphire Kamri'
        'Windows')
      ItemIndex = -1
    end
    object dxBarSubItemOptions: TdxBarSubItem
      Caption = '&Options'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPassword'
        end
        item
          Visible = True
          ItemName = 'bbtnEmployee'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarColorCmbShortcuts'
        end
        item
          Visible = True
          ItemName = 'dxBarColorCmbSnapshots'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      OnPopup = dxBarSubItemOptionsPopup
    end
    object dxBarMRUListItem1: TdxBarMRUListItem
      Caption = 'Options'
      Category = 3
      Visible = ivAlways
    end
    object dxBarLookupEntity: TdxBarLookupCombo
      Caption = '&Entity'
      Category = 3
      Hint = 'Entity'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FF00000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FF00000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
      ShowCaption = True
      Width = 154
      OnCloseUp = dxBarLookupEntityCloseUp
      OnDropDown = dxBarLookupEntityDropDown
      KeyField = 'CODE'
      ListField = 'NAME'
      ListSource = dsEntitys
      RowCount = 10
    end
    object dxBarColorCmbShortcuts: TdxBarColorCombo
      Caption = 'My Favourites Background'
      Category = 3
      Hint = 'Change the background colour for My Favourites'
      Visible = ivAlways
      OnChange = dxBarColorCmbShortcutsChange
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF000000
        00FF000080FF000080FF8080C0FF000000FF008000FF008000FF80C080FF0000
        00FF800000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000080FF000080FF8080C0FF000000FF008000FF008000FF80C080FF0000
        00FF800000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF0020C0FF0000FFFF8080E0FF000000FF00C000FF00FF00FF80E080FF0000
        00FFC00000FFFF0000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF0000FFFF8080E0FF000000FF000000FF00FF00FF80E080FF0000
        00FF000000FFFF0000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF0000FFFF8080E0FF000000FF000000FF00FF00FF80E080FF0000
        00FF000000FFFF0000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF0020C0FF0000FFFF8080E0FF000000FF00C000FF00FF00FF80E080FF0000
        00FFC00000FFFF0000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000080FF000080FF8080C0FF000000FF008000FF008000FF80C080FF0000
        00FF800000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000080FF000080FF8080C0FF000000FF008000FF008000FF80C080FF0000
        00FF800000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF004040
        40FF000080FF0000FFFFC0C0C0FF404040FF008000FF00FF00FFC0C0C0FF4040
        40FF800000FFFF0000FFC0C0C0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
        C0FF000000FF4040C0FFFFFFFF00C0C0C0FF000000FF40C040FFFFFFFF00C0C0
        C0FF000000FFC04040FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00404040FFC0C0C0FFFFFFFF00FFFFFF00404040FFC0C0C0FFFFFFFF00FFFF
        FF00404040FFC0C0C0FFFFFFFF00FFFFFF00FFFFFF00}
      Width = 91
      ShowEditor = True
      OnCloseUp = dxBarColorCmbShortcutsCloseUp
      Color = clTeal
      ShowCustomColorButton = True
    end
    object dxBarColorCmbSnapshots: TdxBarColorCombo
      Caption = 'Snapshots Background'
      Category = 3
      Hint = 'Snapshots Background'
      Visible = ivAlways
      OnChange = dxBarColorCmbSnapshotsChange
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF000000
        00FF000080FF000080FF8080C0FF000000FF008000FF008000FF80C080FF0000
        00FF800000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000080FF000080FF8080C0FF000000FF008000FF008000FF80C080FF0000
        00FF800000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF0020C0FF0000FFFF8080E0FF000000FF00C000FF00FF00FF80E080FF0000
        00FFC00000FFFF0000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF0000FFFF8080E0FF000000FF000000FF00FF00FF80E080FF0000
        00FF000000FFFF0000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF000080FF8080E0FF000000FF000000FF008000FF80E080FF0000
        00FF000000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FF0000FFFF8080E0FF000000FF000000FF00FF00FF80E080FF0000
        00FF000000FFFF0000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF0020C0FF0000FFFF8080E0FF000000FF00C000FF00FF00FF80E080FF0000
        00FFC00000FFFF0000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000080FF000080FF8080C0FF000000FF008000FF008000FF80C080FF0000
        00FF800000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000080FF000080FF8080C0FF000000FF008000FF008000FF80C080FF0000
        00FF800000FF800000FFC08080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF004040
        40FF000080FF0000FFFFC0C0C0FF404040FF008000FF00FF00FFC0C0C0FF4040
        40FF800000FFFF0000FFC0C0C0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
        C0FF000000FF4040C0FFFFFFFF00C0C0C0FF000000FF40C040FFFFFFFF00C0C0
        C0FF000000FFC04040FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00404040FFC0C0C0FFFFFFFF00FFFFFF00404040FFC0C0C0FFFFFFFF00FFFF
        FF00404040FFC0C0C0FFFFFFFF00FFFFFF00FFFFFF00}
      Width = 91
      ShowEditor = True
      OnCloseUp = dxBarColorCmbSnapshotsCloseUp
      Color = clTeal
      ShowCustomColorButton = True
    end
    object dxBarButton23: TdxBarButton
      Caption = 'System'
      Category = 3
      Hint = 'System'
      Visible = ivAlways
      ImageIndex = 59
      OnClick = LaunchModule
    end
    object dxBarButton24: TdxBarButton
      Caption = 'Options'
      Category = 3
      Hint = 'Options'
      Visible = ivAlways
      ImageIndex = 74
      OnClick = LaunchModule
    end
    object dxBarButton25: TdxBarButton
      Caption = 'Printers'
      Category = 3
      Hint = 'Printers'
      Visible = ivAlways
      ImageIndex = 91
      OnClick = LaunchModule
    end
    object bbPassword: TdxBarButton
      Caption = 'Change Password'
      Category = 3
      Hint = 'Change Password'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000FF00FFFFFF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FF00FFFFFF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF00FFFFFF008484FF00FFFFFF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
        00FF000000FF008484FF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF00FF
        FFFF008484FF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF0084
        84FF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF007B7B7BFF0000
        00FF000000FF000000FFFF00FF00000000FF000000FF000000FF008484FF00FF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF007B7B7BFF000000FF00FF
        FFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF008484FF00FFFFFF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484FF00FFFFFF000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF00FFFFFF00FF
        FFFF000000FF000000FF008484FF00FFFFFF00FFFFFF000000FF7B7B7BFFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7BFF7B7B7BFF00FF
        FFFF000000FF000000FF008484FF00FFFFFF00FFFFFF00FFFFFF000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF00FF
        FFFF00FFFFFF008484FF008484FF00FFFFFF00FFFFFF00FFFFFF000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF7B7B7BFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF7B7B7BFFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007B7B7BFF000000FF000000FF000000FF000000FF7B7B7BFFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = bbPasswordClick
    end
    object bbtnEmployee: TdxBarButton
      Caption = 'My Details'
      Category = 3
      Hint = 'My Details'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5A091FF755E49FF6E57
        40FF674F38FF624A32FF604830FF604830FF604830FF604830FF604830FF6048
        30FF604830FF604830FF604830FF604830FF604830FFB7A293FFEDDDD3FFECDA
        CFFFE5CCBCFFE1C4B2FFDEBDA8FFDEBDA8FFDEBDA8FFDDBCA7FFDBB9A1FFDAB8
        A2FFDCB69EFFDEB297FFE1AE91FFE2AF8FFF604830FFB9A596FFFCF2EDFFADB5
        C4FF0D5AC1FF1353A9FF044197FF25508BFFAAA3A4FFF9E2D3FFF6DCCAFFF4D6
        C3FFF4D6C3FFF4D6C3FFF4D6C3FFDFB295FF604830FFBCA899FFE7EAF0FF1B61
        C2FF69A5F6FF4284DEFF0346A1FF1564CDFF043F92FFF9E8DBFFDABAA9FFC59F
        8CFFC19986FFC09682FFBE937EFFDCB49CFF604830FFC0AC9DFFEEEFF4FF306E
        C3FF71A4E6FF1C5BB0FF2673D9FF0E51B6FF1854A7FFFBEFE6FFF8E1D2FFF8DF
        CFFFF7DCCBFFF5D9C7FFF4D7C4FFD8B8A3FF604830FFC3B0A1FFFEFAF8FFDADC
        DFFF32518CFF999993FF818B9BFF2C5395FFD5D6D9FFFBF3EEFFE8D1C4FFC39E
        8BFFC19985FFBF9681FFBD937EFFD6BEA8FF604830FFC7B4A5FFFEFCFBFF6564
        64FF282827FFB6B5B4FF7A7C7EFF666768FFF9F9F8FFFDF9F6FFFBF1E9FFFAEE
        E5FFFAEAE0FFF9E8DCFFF8E3D5FFD4BFAEFF604830FFCAB7A9FFFAF9F8FF4C4C
        4CFF484848FFE3E3E3FFC5C5C4FF7B7977FFDBDAD9FFFEF5F0FFFCC9A7FFFCB7
        8BFFFAAD82FFF8A478FFF69D70FFD3C3B6FF604830FFCDBBADFFFFFEFEFF6969
        69FF747575FF989898FF969797FF7C7A79FFE1E0DFFFFFFCFBFFFEF9F6FFFEFA
        F8FFFDF8F5FFFCF4EFFFFCF4EEFFD1C4BFFF674F38FFD0BEB0FFFFFFFFFFE0E0
        E0FF757575FF848484FF757575FFC6C6C6FFFAFAFAFFFFFFFFFFFFFEFEFFFFFE
        FDFFFEFCFAFFFDF8F5FFFDF8F5FFCFC7C5FF725B45FFD2C0B2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFFFFFEFEFFFEFBFAFFFDFBFAFFFEFCFAFF7D6652FFD2C0B2FFD2C0B2FFD1BE
        B0FFCFBCAEFFCCBAABFFCAB7A8FFC7B4A5FFC4B0A2FFC1AD9EFFBEAA9BFFBBA7
        98FFB9A495FFB7A293FFB5A091FFB5A091FFB5A091FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = bbtnEmployeeClick
    end
    object dxMnuStartup: TdxBarSubItem
      Caption = 'Startup'
      Category = 3
      Visible = ivAlways
      ItemLinks = <>
      OnPopup = dxMnuStartupPopup
    end
    object bbtnQuickCodes: TdxBarButton
      Caption = 'QuickCodes'
      Category = 3
      Hint = 'QuickCodes'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000130C0314A767
        17AFD5821DDFD5821DDFD5821DDFD5821DDFD5821DDFD5821DDFD5821DDFD582
        1DDFD5821DDFD5821DDFD7861CE39E6216A7000000000000000072460F785031
        0B54000000000000000000000000000000000000000000000000000000000000
        000000000000000000001E130420B57019BF0000000000000000B57019BF5031
        0B54000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000221505240000000000000000B57019BFF396
        21FFBE741AC7B57019BFB57019BFB57019BFB57019BFB57019BFB57019BFB570
        19BFB57019BFB57019BFB57019BF72460F780000000000000000B57019BFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFB57019BF0000000000000000A76717AFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFB57019BF0000000000000000B57019BFF396
        21FFD7861CE3EE941FFBF39621FFE48D1FEFE88F1EF3F39621FFEA9020F7D582
        1DDFD5821DDFD5821DDFD7861CE3B57019BF0000000000000000B57019BFF396
        21FF1E130420D5821DDFF39621FF794B107F985E159FF39621FFB57019BF170E
        03183D2508403D25084053340B58B57019BF0000000000000000B57019BFF396
        21FF1E1304206A420E70794B107F3D250840985E159FF39621FFCD7E1CD75B38
        0C60C47A1BCFF39621FFF39621FFB57019BF0000000000000000B57019BFF396
        21FF1E1304208452128B985E159F4C2F0A50815011873D2508406A420E70C47A
        1BCF5F3B0D64C47A1BCFF39621FFB57019BF0000000000000000B57019BFF396
        21FF1E130420D5821DDFF39621FF794B107F90591497B57019BFC47A1BCFF396
        21FFCD7E1CD72E1C0630D7861CE3B57019BF0000000000000000B57019BFF396
        21FFF39621FF311E0734794B107F6E440F74F39621FFF39621FFE48D1FEFB570
        19BFB57019BFB57019BF1E130420B57019BF0000000000000000B57019BFF396
        21FFF39621FFE0891DEB81501187F39621FFF39621FFF39621FFCD7E1CD75B38
        0C605B380C605B380C606E440F74B57019BF0000000000000000B57019BFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFB57019BF00000000000000007447107AF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFB57019BF0000000000000000130C03149E62
        16A7EE941FFBF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FF9E6216A700000000}
      ImageIndex = 21
      OnClick = bbtnQuickCodesClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Hide Status Bar...'
      Category = 3
      Hint = 'Hide/Show Status Bar '
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton3Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Exit'
      Category = 3
      Hint = 'Exit'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000011744558745469746C65004572726F723B4661696C3BE8
        835D03000001E849444154785EC593DB4B93711880BB9A7F43ECA293A5EC4231
        FB9496DA51E82277614442299D46A7F5752168A7455141888850633097611EC8
        4379086994E186B36F35681B692C87E045A690376E8679F5F4FE60775F7853D0
        C573F3BECFEFB97A7F1B80BFE2DF07BEDEBA661174C11032598CECCCB26E60AA
        A1DE2AC416BAFDFC1C7F49E66D0FE9D75DAC04BA5878EA41ED94F3C7404C7759
        84D86287871F1DCD24DD2E9607BCA4FB3D4CD79F61BEA591456F13E2C4851C53
        20E2745E996B7DC852DB03C277DCBCB8DB42543F4BF87C2DBDB79B99BCD1C0B7
        7B9799BB7F13E59A02A19375C6F7A64652D79D4C7ADB59058C9E41463D9DA401
        C3EB2771BA8A79F725946B0ABCA93EB6367BE22029D77112B54748F60FB00C0A
        A69FF7F2F1A8EC2E54335B5789B8BF4C8191C3556B3335FB99729410D8A731EA
        EB230DAC02A1EE61027B77F1D951CA4CCD01C4CD98027DE59546C25141B87813
        A1476D2C01A9E1572407475801261EFB081658255281724D81CEE2327DBC6C0F
        91F27C3EE9E7483D6B67E250A9A0F1E5898FE8C5537C90DD3BFB6E946B0AF86D
        5A8E101F2BD98961DF41B0682BEFED3605C1C2CD6AC69856843809E59A020ACF
        9602AB101BCA578F728968DB855C4285DB18CAB321BBB872D63DE5D68D7916E1
        AA101556B244B333D329FFFFDFF81BEAAAB702F51D56B10000000049454E44AE
        426082}
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'Find Documents'
      Category = 3
      Hint = 'Find Documents'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00004C2F0A50DB881EE7F39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFE48D1FEF53340B5800000000000000000000000000000000000000000000
        0000C47A1BCF8452128B3D2508403D2508403D2508403D2508403D2508403D25
        08403D2508403D2508403D2508403D2508403D2508403D2508403D2508403D25
        08408452128BCD7E1CD700000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C60000000007649107C985E159F985E159F985E159F985E
        159F985E159F985E159F985E159F985E159F985E159F985E159F3D2508400000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000221505243D2508403D2508403D2508403D25
        08403D2508403D2508403D2508403D2508403D2508403D250840080501080000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C60000000006A420E70985E159F985E159F985E159F985E
        159F985E159F985E159F985E159F985E159F985E159F985E159F311E07340000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000221505243D2508403D2508403D2508403D25
        08403D2508403D2508403D2508403D2508403D2508403D2508400B07010C0000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C60000000006A420E70985E159F985E159F985E159F985E
        159F985E159F985E159F985E159F985E159F985E159F985E159F311E07340000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000311E07345B380C605B380C605B380C605B38
        0C605B380C605B380C605B380C605B380C605B380C605B380C600B07010C0000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C600000000053340B58794B107F794B107F794B107F794B
        107F794B107F794B107F794B107F794B107F794B107F794B107F261705280000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C60000000003923083C5B380C605B380C605B380C605B38
        0C605B380C605B380C605B380C605B380C605B380C605B380C60170E03180000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000402000457360C5C5B380C605B38
        0C60945B139BD5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003923083CF39621FFB57019BFC177
        19CBF39621FFAE6C18B700000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D250840F39621FF0B07010CBA73
        18C3CD7E1CD70B07010C00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D250840F39621FFA76717AFCD7E
        1CD7170E03180000000000000000000000000000000000000000000000000000
        0000BE741AC78452128B3D2508403D2508403D2508403D2508403D2508403D25
        08403D2508403D2508403D2508403D2508406A420E70F39621FFDB881EE72215
        0524000000000000000000000000000000000000000000000000000000000000
        0000442A0948D5821DDFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFDB881EE7261705280000
        00000000000000000000000000000000000000000000}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00004C2F0A50DB881EE7F39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFE48D1FEF53340B5800000000000000000000000000000000000000000000
        0000C47A1BCF8452128B3D2508403D2508403D2508403D2508403D2508403D25
        08403D2508403D2508403D2508403D2508403D2508403D2508403D2508403D25
        08408452128BCD7E1CD700000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C60000000007649107C985E159F985E159F985E159F985E
        159F985E159F985E159F985E159F985E159F985E159F985E159F3D2508400000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000221505243D2508403D2508403D2508403D25
        08403D2508403D2508403D2508403D2508403D2508403D250840080501080000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C60000000006A420E70985E159F985E159F985E159F985E
        159F985E159F985E159F985E159F985E159F985E159F985E159F311E07340000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000221505243D2508403D2508403D2508403D25
        08403D2508403D2508403D2508403D2508403D2508403D2508400B07010C0000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C60000000006A420E70985E159F985E159F985E159F985E
        159F985E159F985E159F985E159F985E159F985E159F985E159F311E07340000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000311E07345B380C605B380C605B380C605B38
        0C605B380C605B380C605B380C605B380C605B380C605B380C600B07010C0000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000C47A1BCF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004C2F0A50D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C600000000053340B58794B107F794B107F794B107F794B
        107F794B107F794B107F794B107F794B107F794B107F794B107F261705280000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C60000000003923083C5B380C605B380C605B380C605B38
        0C605B380C605B380C605B380C605B380C605B380C605B380C60170E03180000
        00005B380C60D5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000402000457360C5C5B380C605B38
        0C60945B139BD5821DDF00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003923083CF39621FFB57019BFC177
        19CBF39621FFAE6C18B700000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D250840F39621FF0B07010CBA73
        18C3CD7E1CD70B07010C00000000000000000000000000000000000000000000
        0000D5821DDF5B380C6000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D250840F39621FFA76717AFCD7E
        1CD7170E03180000000000000000000000000000000000000000000000000000
        0000BE741AC78452128B3D2508403D2508403D2508403D2508403D2508403D25
        08403D2508403D2508403D2508403D2508406A420E70F39621FFDB881EE72215
        0524000000000000000000000000000000000000000000000000000000000000
        0000442A0948D5821DDFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFDB881EE7261705280000
        00000000000000000000000000000000000000000000}
      OnClick = dxBarLargeButton10Click
    end
    object barbtnShowWindows: TdxBarButton
      Caption = 'Show Windows'
      Category = 3
      Hint = 'Show Windows'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000E19C03EBF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFAE7901B70000000000000000F4A903FF6B4A01703D2A
        01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A
        01403D2A014082590287D59403DF0000000000000000F4A903FF3D2A01400000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B3F0160D59403DF0000000000000000F4A903FF3D2A01400000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B3F0160DC9803E73D2A014022180024F4A903FF3D2A01400000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B3F0160F4A903FFF4A903FFE9A003F3F4A903FF3D2A01400000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B3F0160D59403DF3D2A0140F4A903FFF4A903FF3D2A01400000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B3F0160D59403DF3D2A0140F4A903FFF4A903FF9869029F7A54
        017F7A54017F7A54017F7A54017F7A54017F7A54017F7A54017F7A54017F7A54
        017F7A54017FA77401AFD59403DF3D2A0140F4A903FFF4A903FFF4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FF9C6B02A3A77401AF543A
        0158B37C01BB9869029FD59403DF3D2A0140F4A903FFEBA403F7F4A903FFF4A9
        03FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFDC9803E7E19C03EBC187
        02CBE9A003F3D59403DFBE8402C73D2A0140F4A903FF2A1D002C3D2A0140DC98
        03E7825902873D2A01403D2A01403D2A01403D2A01403D2A01403D2A01403D2A
        01403D2A01403D2A0140130D00143D2A0140F4A903FF0000000000000000D594
        03DFCE8E02D7B77F01BFB77F01BFB77F01BFB77F01BFB77F01BFB77F01BFB77F
        01BFB77F01BFB77F01BFB77F01BFC58802CFF4A903FF0000000000000000D594
        03DFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFA774
        01AF9869029F543A0158BE8402C77A54017FF4A903FF00000000000000009C6B
        02A3F4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4A9
        03FFEFA503FBEFA503FBF4A903FFEFA503FBE19C03EB00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OnClick = barbtnShowWindowsClick
    end
    object dxBarButton8: TdxBarButton
      Caption = '&Diary'
      Category = 4
      Hint = 'Employee Diary'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF}
      PaintStyle = psCaption
      OnClick = tbtnDiaryClick
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Diary'
      Category = 4
      Hint = 'Diary'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF}
      PaintStyle = psCaptionGlyph
      OnClick = tbtnDiaryClick
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFFFF0000FFFFFFFFFFFFFFFFFF7B7B7BFFFF0000FFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFF00
        00FFFF0000FFFF0000FFFFFFFFFFFF0000FFFF0000FFFF0000FF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF7B7B7BFF7B7B
        7BFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFF7B7B7BFFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
        FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF7B7B7BFFFF00
        00FFFF0000FFFF0000FF7B7B7BFFFF0000FFFF0000FFFF0000FF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FFFFFFFFFFFFFF
        FFFFFF0000FFFFFFFFFFFFFFFFFF7B7B7BFFFF0000FFFFFFFFFF7B7B7BFFFFFF
        FFFFFFFFFFFF7B7B7BFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF7B7B7BFF0000
        FFFFFFFFFFFF7B7B7BFF0000FFFFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF}
      Width = 63
    end
    object bbClientSearch: TdxBarButton
      Caption = 'Find Clients'
      Category = 5
      Hint = 'Find Clients'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005B380C60794B107F794B107F794B107F794B107F794B107F794B107F794B
        107F794B107F633D0D68000000000000000000000000945B139BB57019BFB570
        19BFC87B1AD3F39621FFF39621FFF39621FFD7861CE3D1811BDBF39621FFF396
        21FFF39621FFD5821DDFB57019BFB57019BF985E159F5B380C60EA9020F7C47A
        1BCF945B139BB57019BFF39621FFDB881EE7663F0E6C6A420E70D1811BDBF396
        21FFC17719CBA36515ABB57019BFEE941FFB663F0E6C00000000130C03142617
        05283D25084004020004221505243D2508400805010808050108352107382A1A
        062C040200043D25084026170528170E0318000000000000000000000000985E
        159FF39621FF9C6014A30000000035210738DB881EE7DB881EE73D2508400000
        00008C561293F39621FFA36515AB000000000000000000000000130C0314EE94
        1FFBF39621FFF39621FF130C0314B57019BFF39621FFF39621FFC47A1BCF0F09
        0210EE941FFBF39621FFF39621FF1B10041C000000000000000000000000C47A
        1BCFF39621FFCD7E1CD73923083CF39621FFF39621FFF39621FFF39621FF3923
        083CBA7318C3F39621FFD1811BDB000000000000000000000000000000002E1C
        06308C5612933923083C0B07010CF39621FFF39621FFF39621FFF39621FF130C
        03142E1C06308C5612933923083C000000000000000000000000000000000000
        0000000000000000000000000000A36515ABF39621FFF39621FFB16D17BB0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003521073840280944000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
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
        000000000000130C0314B57019BFB57019BFB57019BFB57019BFB57019BFB570
        19BFB57019BFB57019BFB57019BFB57019BFB57019BFB57019BFB57019BFB570
        19BF1E130420000000000000000000000000000000008C561293985E159F985E
        159F985E159F81501187E48D1FEFF39621FFF39621FFF39621FFF39621FFF396
        21FFEA9020F7E48D1FEFF39621FFF39621FFF39621FFF39621FFF39621FFEA90
        20F78452128B985E159F985E159F985E159F8C561293B57019BFF39621FFF396
        21FFF39621FFC87B1AD3BE741AC7F39621FFF39621FFF39621FFF39621FFC47A
        1BCF9C6014A3AB6916B3B57019BFF39621FFF39621FFF39621FFF39621FFCD7E
        1CD7C87B1AD3F39621FFF39621FFF39621FFBA7318C326170528C87B1AD3F396
        21FFEA9020F7442A09489C6014A3945B139BF39621FFF39621FFF39621FF3D25
        08408954138F9E6216A7311E0734F39621FFF39621FFF39621FF9E6216A79E62
        16A74C2F0A50E48D1FEFF39621FFCD7E1CD72E1C063000000000000000003521
        073857360C5C0F0902101B10041C00000000311E0734794B107F8954138F0000
        0000000000000000000000000000815011877D4D118335210738000000001B10
        041C0F09021053340B583D250840000000000000000000000000000000000000
        00000F090210A76717AFDB881EE753340B580000000000000000000000001B10
        041C985E159F985E159F1E130420000000000000000000000000442A0948D181
        1BDBA76717AF130C031400000000000000000000000000000000000000000000
        00008452128BF39621FFF39621FFEA9020F71E1304200000000008050108D786
        1CE3F39621FFF39621FFDB881EE70F090210000000000F090210E48D1FEFF396
        21FFF39621FF985E159F00000000000000000000000000000000000000002215
        0524EE941FFBF39621FFF39621FFF39621FF9C6014A300000000794B107FF396
        21FFF39621FFF39621FFF39621FF90591497000000008C561293F39621FFF396
        21FFF39621FFEE941FFB311E0734000000000000000000000000000000000805
        0108F39621FFF39621FFF39621FFF39621FF8150118740280944EA9020F7F396
        21FFF39621FFF39621FFF39621FFEE941FFB3D2508407D4D1183F39621FFF396
        21FFF39621FFF39621FF170E0318000000000000000000000000000000000000
        0000BE741AC7F39621FFF39621FFF39621FF4C2F0A5050310B54F39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FF663F0E6C442A0948F39621FFF396
        21FFF39621FFD7861CE300000000000000000000000000000000000000000000
        00002E1C0630A36515ABE88F1EF39E6216A7040200041B10041CF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FF26170528000000006E440F74CD7E
        1CD7D7861CE34028094400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E48D1FEFF396
        21FFF39621FFF39621FFF39621FFE48D1FEF0402000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000005B380C60F396
        21FFF39621FFF39621FFF39621FF6A420E700000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003D25
        08408C5612938C561293442A0948000000000000000000000000000000000000
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
        00000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      ShortCut = 16462
      OnClick = tbtnClientClick
    end
    object dxBarListClients: TdxBarMRUListItem
      Caption = 'ReOpen'
      Category = 5
      Visible = ivAlways
      OnClick = dxBarListClientsClick
      ShowNumbers = False
    end
    object dxBarSubItemClients: TdxBarSubItem
      Caption = 'Recent Clients'
      Category = 5
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000080501083D2508407649107CAB6916B3BE741AC7D582
        1DDFEA9020F7F39621FFF39621FFDB881EE7D5821DDFAB6916B37D4D1183482D
        0A4C080501080000000000000000000000000000000000000000000000000B07
        010C81501187BE741AC7EE941FFBF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFE88F1EF3905914970B07010C000000000000000000000000000000001E13
        0420F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FF2E1C0630000000000000000000000000000000001E13
        0420F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FF2E1C0630000000000000000000000000000000001E13
        0420F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FF2E1C0630000000000000000000000000000000001E13
        0420F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FF2E1C0630000000000000000000000000000000001E13
        0420F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FF2E1C063000000000000000000000000000000000130C
        0314F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FF1B10041C000000000000000000000000000000000000
        0000C47A1BCFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFD2811CDC07050108000000000000000000000000000000000000
        0000A36515ABF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFB16D17BB00000000000000000000000000000000000000000000
        0000472C0A4ADC881DE8F39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFE68E1EF150310B5400000000000000000000000000000000000000000000
        0000000000008452128BF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FF905914970000000000000000000000000000000000000000000000000000
        0000000000000F090210774A107DDE891DEBF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFE68E1EF17E4E
        1184160D03170000000000000000000000000000000000000000000000000000
        00000000000000000000000000003923083C945B139BD7861CE3F39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFDB881EE7985E159F3D2508400000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000482D0A4CEE941FFBF396
        21FFF39621FFF39621FFF39621FFEE941FFB50310B5400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000050310B54CF7F1BDAF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFDB881EE75E3A0D63000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000AB6916B3F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFC2781ACC000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001D12041EDC881DE8F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF09521FD2C1B062E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003923083CF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF4C2F0A500000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002F1D0631F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF3B25083E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D7861CE3F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFE48D1FEF040200040000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000613C0D66F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FF6A420E70000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000007D4D1183EE941FFBF396
        21FFF39621FFF39621FFF39621FFF39621FF8954138F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000035210738945B
        139BC47A1BCFC87B1AD39C6014A33D2508400000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ItemLinks = <>
      OnPopup = dxBarSubItemClientsPopup
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Clients'
      Category = 5
      Hint = 'Clients'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopClients
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FF000000FFFF0000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FF000000FFFFFFFFFF000000FFFF0000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        00FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00840000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF840000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF8400
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FF000000FFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00
        00FF840000FFFF0000FFFF0000FFFF0000FF000000FFFF0000FFFF0000FF0000
        00FFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF840000FFFF0000FF000000FF000000FFFF0000FFFF0000FFFF00
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FF840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FF840000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF0000FF840000FFFF0000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      OnClick = tbtnClientClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Clients'
      Category = 5
      Hint = 'Clients'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopClients
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FF000000FFFF0000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FF000000FFFFFFFFFF000000FFFF0000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        00FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00840000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF840000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF8400
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FF000000FFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00
        00FF840000FFFF0000FFFF0000FFFF0000FF000000FFFF0000FFFF0000FF0000
        00FFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF840000FFFF0000FF000000FF000000FFFF0000FFFF0000FFFF00
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FF840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FF840000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF0000FF840000FFFF0000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FF000000FFFF0000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FF000000FFFFFFFFFF000000FFFF0000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        00FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00840000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF840000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF8400
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FF000000FFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00
        00FF840000FFFF0000FFFF0000FFFF0000FF000000FFFF0000FFFF0000FF0000
        00FFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF840000FFFF0000FF000000FF000000FFFF0000FFFF0000FFFF00
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FF840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FF840000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF0000FF840000FFFF0000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      OnClick = tbtnClientClick
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FFFF0000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FFFF0000FF000000FFFFFFFFFF000000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FFFF00FF00000000FFFFFFFFFF000000FFFFFFFFFF0000
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
        FFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00
        00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF0000FFFF00FF000000
        00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFF000000FFFF0000FFFF00FF00000000FF000000FFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFF000000FFFF0000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFF00FF00000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Width = 63
    end
    object edClient: TdxBarEdit
      Caption = 'Client:'
      Category = 5
      Hint = 'Enter Client name and press Enter'
      Style = dmAxiom.cxStyle7
      Visible = ivAlways
      OnKeyDown = edClientKeyDown
      ShowCaption = True
      Width = 91
      StyleEdit = dmAxiom.cxStyle8
    end
    object bbClientNew: TdxBarButton
      Caption = 'Create Client...'
      Category = 5
      Hint = 'Create Client'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FF000000FFFF0000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FF000000FFFFFFFFFF000000FFFF0000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        00FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00840000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF840000FFFF00
        00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF8400
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FF000000FFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00
        00FF840000FFFF0000FFFF0000FFFF0000FF000000FFFF0000FFFF0000FF0000
        00FFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF0000FF840000FFFF0000FF000000FF000000FFFF0000FFFF0000FFFF00
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000FF840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF0000FF840000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF0000FF840000FFFF0000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      OnClick = bbClientNewClick
    end
    object barCCIClientList: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 5
      Hint = 'New Item'
      Visible = ivAlways
    end
    object bbPhonebookSearch: TdxBarButton
      Caption = 'Find Contacts'
      Category = 6
      Hint = 'Find Contacts'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000000B07010C3D2508405B380C605B380C60442A09480B07
        010C6A420E708C5612930B07010C000000000000000000000000000000000000
        000000000000442A0948E88F1EF3F39621FFF39621FFF39621FFF39621FFD582
        1DDF2E1C06306E440F7408050108000000000000000000000000000000002215
        0524A76717AFE0891DEBF39621FFF39621FFF39621FFF39621FF5F3B0D645835
        0C5C08050108BE741AC726170528000000000000000000000000000000006E44
        0F74F39621FFF39621FFF39621FFF39621FFF39621FFD1811BDB7448107AF396
        21FF7649107CB16D17BB8150118700000000000000000000000000000000311E
        0734F39621FFF39621FFF39621FFF39621FFF39621FFEE941FFB52330B57C177
        19CB442A0947E0891DEB3D250840000000000000000000000000000000000000
        0000D7861CE3F39621FFF39621FFF39621FFF39621FFF39621FFE48D1FEF9059
        1497D7861CE3E88F1EF304020004000000000000000000000000000000000000
        00008954138FF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FF8C56129300000000000000000000000000000000000000000000
        0000040200045F3B0D64DB881EE7F39621FFDB881EE7BA7318C3F39621FFE88F
        1EF372460F780402000400000000000000000000000000000000000000000000
        000000000000000000000F0902106A420E7053330B5756350B5B6E450F741B10
        041C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000005F3B0D64663F0E6C35210738945B139B0402
        0004000000000000000000000000000000000000000000000000000000000000
        00000000000000000000080501088452128B00000000000000003923083C5334
        0B58000000000000000000000000000000000000000000000000000000000000
        00000000000000000000442A09485B380C600000000000000000000000009059
        1497000000000000000000000000000000000000000000000000000000000000
        00000000000000000000985E159F5B380C60000000000000000000000000CD7E
        1CD70B07010C0000000000000000000000000000000000000000000000000000
        00000000000000000000CD7E1CD75B380C6008050108170E031800000000DB88
        1EE71E1304200000000000000000000000000000000000000000000000000000
        000000000000000000005B380C60CD7E1CD7DB881EE7EA9020F7B57019BFB570
        19BF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000005B380C60D1811BDBE0891DEB8954138F0B07
        010C0000000000000000000000000000000000000000}
      ShortCut = 16464
      OnClick = tbtnPhoneBookClick
    end
    object dxBarListPhonebook: TdxBarMRUListItem
      Caption = 'ReOpen'
      Category = 6
      Visible = ivAlways
      OnClick = dxBarListPhonebookClick
      ShowNumbers = False
    end
    object dxBarSubItemPhonebook: TdxBarSubItem
      Caption = 'Recent Contacts'
      Category = 6
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FFFF00FF000000
        00FF00FFFFFF00FFFFFF00FFFFFF000000FFFF00FF00FF00FF00000000FF0000
        00FF000000FFFF00FF00000000FFFFFF00FFFFFF00FFFFFF00FF000000FF0000
        00FF000000FF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FF0000FFFF0000
        FFFF0000FFFF000000FF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF000000FFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FF000000FFFF00FF00000000FF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FF000000FF000000FF000000FFFF00FF007B7B7BFF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00FF00FF000000
        00FFFF00FF00000000FFFF00FF00000000FFFF00FF00000000FFFF00FF000000
        00FFFF00FF00000000FF000000FFFF00FF00FF00FF00}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000000000000008050108482D0A4C00000000AE6C18B76E44
        0F7435210738D7861CE31B10041C2A1A062C794B107F794B107F492D0A4D794B
        107F794B107F663F0E6C6A420E70794B107F5F3B0D6400000000000000000000
        00000000000000000000170E0318442A09488C56129300000000000000000000
        00000000000000000000000000006A420E70F39621FFF39621FFA76716AFED92
        1FFAF39621FFA86916B1F39621FFF39621FFE0891DEB00000000000000000000
        000000000000815011877649107C000000000000000000000000000000000000
        00000000000000000000000000002A1A062CE88F1EF3F39621FFA56716AFE88F
        1EF3F39621FFA86817B0F39621FFF39621FF945B139B00000000000000000B07
        010C311E07340805010800000000000000000000000000000000000000000000
        0000000000000000000000000000000000002E1C06307E4E1085A76716AFF396
        21FFF39621FFEE941FFB804F1187633D0D680402000400000000000000007246
        0F78663F0E6C0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000F090210E48D1FEFF396
        21FFF39621FFF39621FF5B380C60000000000000000000000000261705280402
        0004000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000A36515ABF39621FFF396
        21FFF39621FFF39621FFEE941FFB2E1C06300000000000000000C87B1AD3170E
        0318000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000F090210D2811CDCF39621FFF396
        21FFF39621FFF39621FFF39621FF71460F7700000000000000000B07010C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B07010BD6831CE1F39621FFF396
        21FFF39621FFF39621FFF39621FF70450F7500000000663F0E6C261705280000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000945B139BF39621FFF396
        21FFF39621FFF39621FFE88F1EF32617052800000000663F0E6C130C03140000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000B07010CA76717AFF396
        21FFF39621FFE0891DEB442A094800000000000000001B10041C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001B10
        041C311E07340805010800000000000000000000000035210738000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000442A09485B380C60000000000B07010C1E1304201E13
        04200F0901101E1304201E1304201E130420170E03181B10041C1E1304201B10
        041C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000170E03181E130420000000006E440F74F39621FFF396
        21FFBA7318C3CD7E1CD7F39621FFF39621FF985E149FF39621FFF39621FFF396
        21FF0F0902100000000000000000000000000000000000000000000000000000
        00000000000000000000482D0A4C130C0314000000006D430F73F39621FFF396
        21FFE88F1EF39F6316A8F39621FFF39621FFA26416AAF39621FFF39621FFDC88
        1DE8201404210000000000000000000000000000000000000000000000000000
        00000000000000000000AE6C18B70B07010C00000000130C0314CD7E1CD7F396
        21FFD5821DDFB87119C1F39621FFF39621FF995F14A1F39621FFF39621FF794B
        107F000000000000000000000000000000000000000000000000000000000000
        00000000000004020004000000000000000000000000000000000B07010C3D25
        08408C561293F39621FFF39621FFF39621FFE88F1EF34E2F0B51311E07340000
        0000000000000000000000000000000000000000000000000000000000000000
        000004020004BE741AC7170E0318000000000000000000000000000000000000
        0000B16D17BBF39621FFF39621FFF39621FFF39621FF482D0A4C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003521073800000000000000000000000000000000000000007246
        0F78F39621FFF39621FFF39621FFF39621FFF39621FFE88F1EF31B10041C0000
        000000000000000000000000000000000000000000000000000000000000663F
        0E6C794B107F000000000000000000000000000000000000000000000000B16D
        17BBF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF643E0E690000
        0000000000000000000000000000000000000000000004020004170E0318311E
        07340B07010C000000000000000000000000000000000000000000000000D181
        1BDBF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF72460F780000
        00000000000000000000000000000805010800000000985E159F633D0D680000
        0000000000000000000000000000000000000000000000000000000000009C60
        14A3F39621FFF39621FFF39621FFF39621FFF39621FFF39621FF402809440000
        00005B380C604C2F0A50130C0314D5821DDF2215052404020004000000000000
        0000000000000000000000000000000000000000000000000000000000001E13
        0420E88F1EF3F39621FFF39621FFF39621FFF39621FFAB6916B3000000000000
        0000442A09483923083C00000000040200040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E130420985E159FCD7E1CD7C17719CB6E440F7404020004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ItemLinks = <>
      OnPopup = dxBarSubItemPhonebookPopup
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Phonebook'
      Category = 6
      Hint = 'Phonebook'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopPhonebook
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FFFF00FF000000
        00FF00FFFFFF00FFFFFF00FFFFFF000000FFFF00FF00FF00FF00000000FF0000
        00FF000000FFFF00FF00000000FFFFFF00FFFFFF00FFFFFF00FF000000FF0000
        00FF000000FF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FF0000FFFF0000
        FFFF0000FFFF000000FF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF000000FFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FF000000FFFF00FF00000000FF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FF000000FF000000FF000000FFFF00FF007B7B7BFF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00FF00FF000000
        00FFFF00FF00000000FFFF00FF00000000FFFF00FF00000000FFFF00FF000000
        00FFFF00FF00000000FF000000FFFF00FF00FF00FF00}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FFFF00FF000000
        00FF00FFFFFF00FFFFFF00FFFFFF000000FFFF00FF00FF00FF00000000FF0000
        00FF000000FFFF00FF00000000FFFFFF00FFFFFF00FFFFFF00FF000000FF0000
        00FF000000FF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FF0000FFFF0000
        FFFF0000FFFF000000FF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF000000FFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FF000000FFFF00FF00000000FF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FF000000FF000000FF000000FFFF00FF007B7B7BFF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00FF00FF000000
        00FFFF00FF00000000FFFF00FF00000000FFFF00FF00000000FFFF00FF000000
        00FFFF00FF00000000FF000000FFFF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      OnClick = tbtnPhoneBookClick
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FFFF00FF000000
        00FF00FFFFFF00FFFFFF00FFFFFF000000FFFF00FF00FF00FF00000000FF0000
        00FF000000FFFF00FF00000000FFFFFF00FFFFFF00FFFFFF00FF000000FF0000
        00FF000000FF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FF0000FFFF0000
        FFFF0000FFFF000000FF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF000000FFFFFFFFFF000000FF000000FF0000FFFF0000
        FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFF7B7B
        7BFF7B7B7BFFFFFFFFFF7B7B7BFF7B7B7BFFFFFFFFFF7B7B7BFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFF7B7B
        7BFF7B7B7BFFFFFFFFFF7B7B7BFF7B7B7BFF7B7B7BFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000000FFFFFF
        FFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFF
        FFFF000000FFFFFFFFFF000000FF000000FFFF00FF00000000FF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FF000000FF000000FF000000FFFF00FF007B7B7BFF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00FF00FF000000
        00FFFF00FF00000000FFFF00FF00000000FFFF00FF00000000FFFF00FF000000
        00FFFF00FF00000000FF000000FFFF00FF00FF00FF00}
      Width = 63
    end
    object bbContactCreate: TdxBarButton
      Caption = 'Create Contact...'
      Category = 6
      Hint = 'Create Contact'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FFFF00FF000000
        00FF00FFFFFF00FFFFFF00FFFFFF000000FFFF00FF00FF00FF00000000FF0000
        00FF000000FFFF00FF00000000FFFFFF00FFFFFF00FFFFFF00FF000000FF0000
        00FF000000FF7B7B7BFF7B7B7BFF7B7B7BFF000000FF000000FF0000FFFF0000
        FFFF0000FFFF000000FF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
        7BFF7B7B7BFF7B7B7BFF000000FFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000084FF0000
        84FF000084FF000084FF000084FF000084FF000084FF000084FF000084FF0000
        84FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFFFF000000FF000000FFFF00FF00000000FF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FF000000FF000000FF000000FFFF00FF007B7B7BFF000000FF7B7B
        7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B7BFF000000FF7B7B
        7BFF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00FF00FF000000
        00FFFF00FF00000000FFFF00FF00000000FFFF00FF00000000FFFF00FF000000
        00FFFF00FF00000000FF000000FFFF00FF00FF00FF00}
      OnClick = bbContactCreateClick
    end
    object edContact: TdxBarEdit
      Caption = 'Contact:'
      Category = 6
      Hint = 'Type Contact name and press Enter'
      Visible = ivAlways
      OnKeyDown = edContactKeyDown
      ShowCaption = True
      Width = 91
    end
    object bbMatterSearch: TdxBarButton
      Caption = 'Find Matters'
      Category = 7
      Hint = 'Find Matters'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000213838004C7F7F004C
        7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C
        7F7F004C7F7F004C7F7F004C7F7F004C7F7F003E6868008AE6E7004C7F7F0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000059
        96970072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072
        BEBF0072BEBF0072BEBF0072BEBF008AE6E70068AEAF0098FFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000005F9E9F002640400098FFFF000000000000
        00000000000000213838004C7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C
        7F7F004C7F7F004C7F7F004C7F7F007ED2D3001C30300098FFFF000000000000
        0000000000000073C2C300457474003960600039606000396060003960600039
        6060003960600039606000396060002B4848000000000098FFFF004C7F7F004C
        7F7F004E82830083DADB00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000003E6868004C7F7F004C
        7F7F004C7F7F0021383800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ShortCut = 16461
      OnClick = tbtnMattersClick
    end
    object dxBarSubItemMatters: TdxBarSubItem
      Caption = 'Recent Matters'
      Category = 7
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000213838004C7F7F004C
        7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C
        7F7F004C7F7F004C7F7F004C7F7F004C7F7F003E6868008AE6E7004C7F7F0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF000000000059
        96970072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072
        BEBF0072BEBF0072BEBF0072BEBF008AE6E70068AEAF0098FFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000005F9E9F002640400098FFFF000000000000
        00000000000000213838004C7F7F004C7F7F004C7F7F004C7F7F004C7F7F004C
        7F7F004C7F7F004C7F7F004C7F7F007ED2D3001C30300098FFFF000000000000
        0000000000000073C2C300457474003960600039606000396060003960600039
        6060003960600039606000396060002B4848000000000098FFFF004C7F7F004C
        7F7F004E82830083DADB00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000003E6868004C7F7F004C
        7F7F004C7F7F0021383800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ImageIndex = 0
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000243C3C0068AEAF0072
        BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072
        BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072
        BEBF0072BEBF0072BEBF0072BEBF0072BEBF004A7C7C007ED2D30077C6C7005F
        9E9F0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF008EEEEF004270700000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF003960600000
        0000008EEEEF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
        FFFF0098FFFF0098FFFF0098FFFF0098FFFF0096FAFB0098FFFF003960600000
        0000002F5050005F9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F
        9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F
        9E9F005F9E9F005F9E9F007BCECF0098FFFF00396060008EEEEF004270700000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000004270700098FFFF00000000008EEEEF004270700000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000004270700098FFFF000000000098FFFF003960600000
        000000000000000000000000000000132020006BB2B30072BEBF0072BEBF0072
        BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072BEBF0072
        BEBF0072BEBF0072BEBF0086E2E3007BCECF000000000098FFFF003960600000
        000000000000000000000000000000558E8F008BEAEB005F9E9F005F9E9F005F
        9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F9E9F005F
        9E9F005F9E9F005F9E9F00558E8F00182828000000000098FFFF003960600000
        0000000000000000000000020404008BEAEB00538A8B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000098FFFF0073C2C3005F
        9E9F005F9E9F005F9E9F006BB2B30098FFFF0018282800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000005086870072BEBF0072
        BEBF0072BEBF0072BEBF0072BEBF004A7C7C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ItemLinks = <>
      ItemOptions.Size = misNormal
      OnPopup = dxBarSubItemMattersPopup
    end
    object bbFindMatter: TdxBarButton
      Caption = 'Find Matter'
      Category = 7
      Hint = 'Find Matter'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007B7B7BFF000000FF000000FF000000FF000000FF7B7B7BFFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      ShortCut = 16461
      OnClick = tbtnMattersClick
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'MatterList'
      Category = 7
      Hint = 'Find Matter'
      Visible = ivAlways
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Matters'
      Category = 7
      Hint = 'Matters'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopMatters
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007B7B7BFF000000FF000000FF000000FF000000FF7B7B7BFFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007B7B7BFF000000FF000000FF000000FF000000FF7B7B7BFFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      OnClick = tbtnMattersClick
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
        00FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBD
        BDFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFF
        FFFF000000FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FF
        FFFFBDBDBDFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FF00FF
        FFFFFFFFFFFF000000FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBD
        BDFF00FFFFFFBDBDBDFF00FFFFFF000000FFFF00FF00FF00FF00000000FFFFFF
        FFFF00FFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF00FF
        FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFF
        FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF00FF
        FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
        7BFF000000FF000000FF000000FF000000FF7B7B7BFFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Width = 63
    end
    object beMatterSearch: TdxBarEdit
      Caption = 'Matter:'
      Category = 7
      Hint = 'Type Matter No/Client name and press Enter '
      MergeKind = mkNone
      Visible = ivAlways
      OnKeyDown = beMatterSearchKeyDown
      ShowCaption = True
      Width = 91
    end
    object dxBarMRUListItem2: TdxBarMRUListItem
      Caption = 'Re Open'
      Category = 7
      Visible = ivAlways
      OnClick = dxBarMRUListItem2Click
    end
    object dxbbtnCreateMatter: TdxBarButton
      Caption = 'Create Matter'
      Category = 7
      Hint = 'Create Matter'
      Visible = ivAlways
      OnClick = dxbbtnCreateMatterClick
    end
    object barCCIMatterList: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 7
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarListLaunch: TdxBarMRUListItem
      Caption = 'New Item'
      Category = 8
      Visible = ivAlways
      ShowNumbers = False
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Launch'
      Category = 8
      Hint = 'Launch'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000DADADAFF1C1C1CFF00000000101010FFFFFFFFFFFFFFFFFF080808FF0000
        00001C1C1CFFDADADAFF000000000000000000000000C9C9C9FF2B2B2BFF9999
        99FFFFFFFFFFD5D5D5FF171717FF00000000333333FF434343FF020202FF1717
        17FFD5D5D5FFFFFFFFFF999999FF2C2C2CFFC9C9C9FF3E3E3EFF0D0D0DFF2626
        26FF323232FF3B3B3BFF080808FFBCBCBCFFC4C4C4FFB9B9B9FF060606FF0707
        07FF3B3B3BFF323232FF2F2F2FFF0E0E0EFF3E3E3EFF00000000A1A1A1FFD0D0
        D0FFCDCDCDFFCCCCCCFF191919FFEDEDEDFFFFFFFFFFFAFAFAFF010101FF1515
        15FFCCCCCCFFCDCDCDFFD1D1D1FFA1A1A1FF0000000000000000212121FFE2E2
        E2FFFFFFFFFFFFFFFFFF1F1F1FFFE1E1E1FFFFFFFFFFEFEFEFFF000000001A1A
        1AFFFFFFFFFFFFFFFFFFE2E2E2FF212121FF00000000E4E4E4FF3C3C3CFF1212
        12FFD9D9D9FFFFFFFFFF1F1F1FFFE1E1E1FFFFFFFFFFEFEFEFFF000000001919
        19FFFFFFFFFFD9D9D9FF121212FF3C3C3CFFE4E4E4FFFFFFFFFF464646FF0000
        0000131313FFDADADAFF262626FFE1E1E1FFFFFFFFFFEFEFEFFF000000002020
        20FFDCDCDCFF131313FF00000000464646FFFFFFFFFFFFFFFFFF434343FFC1C1
        C1FF2C2C2CFF0D0D0DFF050505FFE9E9E9FFFFFFFFFFEFEFEFFF070707FF0202
        02FF0D0D0DFF2C2C2CFFC1C1C1FF434343FFFFFFFFFFFFFFFFFF434343FFD2D2
        D2FF363636FF0F0F0FFF040404FFE9E9E9FFFFFFFFFFEFEFEFFF070707FF0303
        03FF0F0F0FFF363636FFD2D2D2FF434343FFFFFFFFFFFFFFFFFF434343FFCDCD
        CDFF343434FFD9D9D9FF282828FFE2E2E2FFFFFFFFFFEFEFEFFF070707FF2525
        25FFD9D9D9FF343434FFCDCDCDFF434343FFFFFFFFFFFFFFFFFF434343FFCDCD
        CDFF343434FFE2E2E2FF2A2A2AFFE2E2E2FFFFFFFFFFEFEFEFFF070707FF2727
        27FFE2E2E2FF343434FFCDCDCDFF434343FFFFFFFFFFFFFFFFFF3B3B3BFFD4D4
        D4FF343434FFDEDEDEFF202020FFEAEAEAFFFFFFFFFFEFEFEFFF070707FF1D1D
        1DFFDEDEDEFF343434FFD4D4D4FF3B3B3BFFFFFFFFFFFFFFFFFF626262FFA9A9
        A9FF494949FFE5E5E5FF4B4B4BFFC3C3C3FFFCFCFCFFEFEFEFFF0B0B0BFF4949
        49FFE5E5E5FF494949FFA9A9A9FF626262FFFFFFFFFFFFFFFFFFFFFFFFFF5151
        51FFDCDCDCFFFFFFFFFFFFFFFFFF0B0B0BFFF9F9F9FFFAFAFAFF131313FFFFFF
        FFFFFFFFFFFFDCDCDCFF515151FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFF575757FFB3B3B3FFB3B3B3FF575757FFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0DFF0D0D0DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      PaintStyle = psCaptionGlyph
      ShortCut = 16460
      OnClick = tbtnLaunchClick
    end
    object dxBarButton22: TdxBarButton
      Caption = 'New Item'
      Category = 8
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Launch'
      Category = 8
      Hint = 'Launch'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000DADADAFF1C1C1CFF00000000101010FFFFFFFFFFFFFFFFFF080808FF0000
        00001C1C1CFFDADADAFF000000000000000000000000C9C9C9FF2B2B2BFF9999
        99FFFFFFFFFFD5D5D5FF171717FF00000000333333FF434343FF020202FF1717
        17FFD5D5D5FFFFFFFFFF999999FF2C2C2CFFC9C9C9FF3E3E3EFF0D0D0DFF2626
        26FF323232FF3B3B3BFF080808FFBCBCBCFFC4C4C4FFB9B9B9FF060606FF0707
        07FF3B3B3BFF323232FF2F2F2FFF0E0E0EFF3E3E3EFF00000000A1A1A1FFD0D0
        D0FFCDCDCDFFCCCCCCFF191919FFEDEDEDFFFFFFFFFFFAFAFAFF010101FF1515
        15FFCCCCCCFFCDCDCDFFD1D1D1FFA1A1A1FF0000000000000000212121FFE2E2
        E2FFFFFFFFFFFFFFFFFF1F1F1FFFE1E1E1FFFFFFFFFFEFEFEFFF000000001A1A
        1AFFFFFFFFFFFFFFFFFFE2E2E2FF212121FF00000000E4E4E4FF3C3C3CFF1212
        12FFD9D9D9FFFFFFFFFF1F1F1FFFE1E1E1FFFFFFFFFFEFEFEFFF000000001919
        19FFFFFFFFFFD9D9D9FF121212FF3C3C3CFFE4E4E4FFFFFFFFFF464646FF0000
        0000131313FFDADADAFF262626FFE1E1E1FFFFFFFFFFEFEFEFFF000000002020
        20FFDCDCDCFF131313FF00000000464646FFFFFFFFFFFFFFFFFF434343FFC1C1
        C1FF2C2C2CFF0D0D0DFF050505FFE9E9E9FFFFFFFFFFEFEFEFFF070707FF0202
        02FF0D0D0DFF2C2C2CFFC1C1C1FF434343FFFFFFFFFFFFFFFFFF434343FFD2D2
        D2FF363636FF0F0F0FFF040404FFE9E9E9FFFFFFFFFFEFEFEFFF070707FF0303
        03FF0F0F0FFF363636FFD2D2D2FF434343FFFFFFFFFFFFFFFFFF434343FFCDCD
        CDFF343434FFD9D9D9FF282828FFE2E2E2FFFFFFFFFFEFEFEFFF070707FF2525
        25FFD9D9D9FF343434FFCDCDCDFF434343FFFFFFFFFFFFFFFFFF434343FFCDCD
        CDFF343434FFE2E2E2FF2A2A2AFFE2E2E2FFFFFFFFFFEFEFEFFF070707FF2727
        27FFE2E2E2FF343434FFCDCDCDFF434343FFFFFFFFFFFFFFFFFF3B3B3BFFD4D4
        D4FF343434FFDEDEDEFF202020FFEAEAEAFFFFFFFFFFEFEFEFFF070707FF1D1D
        1DFFDEDEDEFF343434FFD4D4D4FF3B3B3BFFFFFFFFFFFFFFFFFF626262FFA9A9
        A9FF494949FFE5E5E5FF4B4B4BFFC3C3C3FFFCFCFCFFEFEFEFFF0B0B0BFF4949
        49FFE5E5E5FF494949FFA9A9A9FF626262FFFFFFFFFFFFFFFFFFFFFFFFFF5151
        51FFDCDCDCFFFFFFFFFFFFFFFFFF0B0B0BFFF9F9F9FFFAFAFAFF131313FFFFFF
        FFFFFFFFFFFFDCDCDCFF515151FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFF575757FFB3B3B3FFB3B3B3FF575757FFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0DFF0D0D0DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000DADADAFF1C1C1CFF00000000101010FFFFFFFFFFFFFFFFFF080808FF0000
        00001C1C1CFFDADADAFF000000000000000000000000C9C9C9FF2B2B2BFF9999
        99FFFFFFFFFFD5D5D5FF171717FF00000000333333FF434343FF020202FF1717
        17FFD5D5D5FFFFFFFFFF999999FF2C2C2CFFC9C9C9FF3E3E3EFF0D0D0DFF2626
        26FF323232FF3B3B3BFF080808FFBCBCBCFFC4C4C4FFB9B9B9FF060606FF0707
        07FF3B3B3BFF323232FF2F2F2FFF0E0E0EFF3E3E3EFF00000000A1A1A1FFD0D0
        D0FFCDCDCDFFCCCCCCFF191919FFEDEDEDFFFFFFFFFFFAFAFAFF010101FF1515
        15FFCCCCCCFFCDCDCDFFD1D1D1FFA1A1A1FF0000000000000000212121FFE2E2
        E2FFFFFFFFFFFFFFFFFF1F1F1FFFE1E1E1FFFFFFFFFFEFEFEFFF000000001A1A
        1AFFFFFFFFFFFFFFFFFFE2E2E2FF212121FF00000000E4E4E4FF3C3C3CFF1212
        12FFD9D9D9FFFFFFFFFF1F1F1FFFE1E1E1FFFFFFFFFFEFEFEFFF000000001919
        19FFFFFFFFFFD9D9D9FF121212FF3C3C3CFFE4E4E4FFFFFFFFFF464646FF0000
        0000131313FFDADADAFF262626FFE1E1E1FFFFFFFFFFEFEFEFFF000000002020
        20FFDCDCDCFF131313FF00000000464646FFFFFFFFFFFFFFFFFF434343FFC1C1
        C1FF2C2C2CFF0D0D0DFF050505FFE9E9E9FFFFFFFFFFEFEFEFFF070707FF0202
        02FF0D0D0DFF2C2C2CFFC1C1C1FF434343FFFFFFFFFFFFFFFFFF434343FFD2D2
        D2FF363636FF0F0F0FFF040404FFE9E9E9FFFFFFFFFFEFEFEFFF070707FF0303
        03FF0F0F0FFF363636FFD2D2D2FF434343FFFFFFFFFFFFFFFFFF434343FFCDCD
        CDFF343434FFD9D9D9FF282828FFE2E2E2FFFFFFFFFFEFEFEFFF070707FF2525
        25FFD9D9D9FF343434FFCDCDCDFF434343FFFFFFFFFFFFFFFFFF434343FFCDCD
        CDFF343434FFE2E2E2FF2A2A2AFFE2E2E2FFFFFFFFFFEFEFEFFF070707FF2727
        27FFE2E2E2FF343434FFCDCDCDFF434343FFFFFFFFFFFFFFFFFF3B3B3BFFD4D4
        D4FF343434FFDEDEDEFF202020FFEAEAEAFFFFFFFFFFEFEFEFFF070707FF1D1D
        1DFFDEDEDEFF343434FFD4D4D4FF3B3B3BFFFFFFFFFFFFFFFFFF626262FFA9A9
        A9FF494949FFE5E5E5FF4B4B4BFFC3C3C3FFFCFCFCFFEFEFEFFF0B0B0BFF4949
        49FFE5E5E5FF494949FFA9A9A9FF626262FFFFFFFFFFFFFFFFFFFFFFFFFF5151
        51FFDCDCDCFFFFFFFFFFFFFFFFFF0B0B0BFFF9F9F9FFFAFAFAFF131313FFFFFF
        FFFFFFFFFFFFDCDCDCFF515151FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFF575757FFB3B3B3FFB3B3B3FF575757FFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0DFF0D0D0DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      PaintStyle = psCaptionGlyph
      OnClick = tbtnLaunchClick
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000800080000000FFFF8000
        800080008000800080000000FFFF800080008000800080008000800080000000
        FFFF8000800080008000800080000000FFFF800080000000FFFF0000FFFF0000
        FFFF800080000000FFFF0000FFFF0000FFFF80008000800080000000FFFF0000
        FFFF0000FFFF800080000000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF0000
        FFFF800080000000FFFF00FFFFFF0000FFFF80008000800080000000FFFF00FF
        FFFF0000FFFF800080000000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000
        FFFF800080000000FFFF00FFFFFF0000FFFF80008000800080000000FFFF00FF
        FFFF0000FFFF800080000000FFFF00FFFFFF0000FFFF000000FF808080FF0000
        00FF80008000000000FF808080FF000000FF8000800080008000000000FF8080
        80FF000000FF80008000000000FF808080FF000000FF80008000000000FF8000
        80008000800080008000000000FF000000FF000000FF000000FF000000FF0000
        00FF800080008000800080008000000000FF80008000000000FF000000FF0000
        00FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FF000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF808080FFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF000000FF80008000000000FF8080
        80FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FFFFFFFFFFFFFFFFFF808080FF000000FF8000800080008000000000FF0000
        00FF808080FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FFFFFFFFFF808080FF000000FF000000FF8000800080008000000000FFFFFF
        FFFF000000FF808080FF000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FF808080FF000000FFFFFFFFFF000000FF8000800080008000000000FFFFFF
        FFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FF000000FF000000FFFFFFFFFF000000FF8000800080008000000000FFFFFF
        FFFF000000FF80008000000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FF80008000000000FFFFFFFFFF000000FF8000800080008000000000FFFFFF
        FFFF000000FF80008000000000FFFFFFFFFFFFFFFFFFC0C0C0FF808080FF0000
        00FF80008000000000FFFFFFFFFF000000FF8000800080008000000000FFC0C0
        C0FF000000FF80008000000000FFFF0000FFFF0000FFFF0000FF800000FF0000
        00FF80008000000000FFC0C0C0FF000000FF80008000}
      Width = 63
    end
    object bbDiaryFee: TdxBarButton
      Caption = 'Diary Fee'
      Category = 9
      Hint = 'Diary Fee'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000F5F5F50AC7C7C7388181
        817E6A6A6A956A6A6A956A6A6A956A6A6A956A6A6A956A6A6A956A6A6A956A6A
        6A956A6A6A956A6A6A956A6A6A958181817EC7C7C738DEDEDE211C82B5FF1A80
        B3FF177DB0FF157BAEFF1278ABFF0F75A8FF0C72A5FF0A70A3FF076DA0FF056B
        9EFF03699CFF01679AFF006699FF4A4A4AB58181817E2187BAFF66CCFFFF1F85
        B8FF99FFFFFF6ED4FFFF6ED4FFFF6ED4FFFF6ED4FFFF6ED4FFFF6ED4FFFF6ED4
        FFFF6ED4FFFF3AA0D3FF99FFFFFF006699FF6B6B6B94248ABDFF66CCFFFF268C
        BFFF99FFFFFF7AE0FFFF7AE0FFFF7AE0FFFF7AE0FFFF7AE0FFFF7AE0FFFF7AE0
        FFFF7AE0FFFF43A9DCFF99FFFFFF01679AFF6A6A6A95278DC0FF66CCFFFF2C92
        C5FF99FFFFFF85EBFFFF85EBFFFF7ED1E1FF81C2D0FF8CC7D4FF91C9D5FF86C3
        D1FF76C9D9FF4DB3E6FF99FFFFFF03699CFF6A6A6A95298FC2FF66CCFFFF3298
        CBFF99FFFFFF90F2FAFF89C9CEFF8EC1C5FF91C1C1FFA8D6CEFFA2D1D0FF97C3
        C2FFB0D1D5FF68A0C0FF96F9F9FF056B9EFF6A6A6A952C92C5FF6ED4FFFF3399
        CCFF99FFFFFF94D4D4FF9BCECCFFB7E3D1FFCCF8E5FFACE1EFFFA4DCF5FFCCFE
        F8FFB2E4D8FF8DB1C9FF92CACAFF076DA0FF6A6A6A952E94C7FF7AE0FFFF2C92
        C5FFE8E8E8FFD6D6D6FFF2E9D4FFFFF8E2FFFFF3D9FFFFF1D8FFFFEED5FFFFEF
        DAFFFFFEFBFFA6D8D8FFE8D5D5FF12658EFF7070708F3096C9FF85EBFFFF80E6
        FFFF599CBDFF599CBDFF599CBDFF599CBDFF599CBDFF599CBDFF599CBDFF599C
        BDFF599CBDFF599CBDFF599CBDFF407D9FFF7F7F7F803298CBFF91F7FFFF8EF4
        FFFFB5C2C4FFD8CCB4FFD8EADFFFFFFFDFFFFFFFD1FFAFAD91FF968670FFCCB3
        8DFFE6C194FFEFEBE9FFB3ADA4FF8D7E7EEC868686793399CCFFFFFFFFFF99FF
        FFFFBFCBCBFFD0CBC5FFBEDDFFFFFFFFF9FFFFFFDDFFAFAF9FFF535353FF7365
        55FFCCB690FFD0CFDEFF9092A9FF867C7CEB9292926DFFFFFF003399CCFFFFFF
        FFFFDADADAFFD9CABAFFFFFCF9FFFFFFFFFFFFFFEEFFFFFFDEFFD9D9B7FF4D49
        43FFD9B990FFFFF1CCFF908B82FF716D6DE1B0B0B04FFFFFFF00FFFFFF003399
        CCFF5E9EBEFFDDDDDDFFECDCCCFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFE7FFD9D7
        AEFF59544AFFD6C29CFF8A8A8AFF7C7C7CA6DADADA25FFFFFF00FFFFFF00FFFF
        FF00FEFEFE01D0D0D0D1DEDBD8FFECDCCCFFFFFCF9FFCBE4FFFFBEDCFFFFFFFA
        CEFFE4D2A9FF9E9C99FF808080DBCECECE31F6F6F609FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F7F7F711D0D0D0D1DDDDDDFFD3C4B4FFDDCFBFFFCCC5B9FFC5BA
        AAFFACACACFF949494D3D2D2D233F6F6F609FEFEFE01FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00DCDCDC62CFCFCFC3C7C7C7E3BFBFBFE3BDBD
        BDBAC0C0C071EFEFEF10FBFBFB04FFFFFF00FFFFFF00}
      OnClick = bbDiaryFeeClick
    end
    object dxBarSnapshotList: TdxBarMRUListItem
      Caption = 'New Item'
      Category = 10
      Visible = ivAlways
      ShowNumbers = False
    end
    object dxBarShortcutList: TdxBarMRUListItem
      Caption = 'New Item'
      Category = 11
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = '&About...'
      Category = 12
      Hint = 'About'
      Visible = ivAlways
      OnClick = popHelpAboutClick
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Current Release Notes'
      Category = 12
      Hint = 'Current Release Notes'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
        C0FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF000000
        00FFFFFFFF00000000FF000000FFFFFFFF00000000FFFFFFFF00FFFFFF00C0C0
        C0FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF00FFFF
        FF00000000FFFFFFFF00FFFFFF00000000FF000000FF000000FF808080FFC0C0
        C0FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF00FFFF
        FF00FFFFFF00000000FFFFFFFF00808080FF00FFFFFF000000FFFFFFFF00C0C0
        C0FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008080FF00FFFFFF000000FFC0C0
        C0FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF008000
        00FF800000FF800000FF800000FF800000FF800000FF008080FF00FFFFFF0000
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008080FF00FF
        FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF008000
        00FF800000FF800000FF800000FF800000FF800000FF800000FFFFFFFF000080
        80FF00FFFFFF000000FFFFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0FFC0C0
        C0FF008080FF00FFFFFF000000FFFFFFFF00FFFFFF00808080FFFFFFFF008000
        00FF800000FF800000FF800000FF800000FFFFFFFF00000000FF000000FF0000
        00FF000000FF008080FFC0C0C0FF000080FFFFFFFF00808080FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FFFFFFFF008080
        80FFFFFFFF00FFFFFF00000080FF000080FFFFFFFF00808080FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FF808080FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = miCurrentReleaseNotesClick
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Contents'
      Category = 12
      Hint = 'Contents'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E2EFF212121FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF002E2E2EFF000000FF808080FF800080FF212121FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF002E2E2EFF2E2E2EFF808080FFC0C0C0FFFFFFFF00C0C0C0FF800080FF2121
        21FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E2EFF2E2E
        2EFF808080FFC0C0C0FFFFFFFF00FFFFFF00808080FFC0C0C0FFC0C0C0FF8000
        80FF212121FFFFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E2EFF808080FFC0C0
        C0FFFFFFFF00FFFFFF00808080FF808080FF000000FF808080FFC0C0C0FFC0C0
        C0FF800080FF212121FFFFFFFF00FFFFFF00FFFFFF00800080FF808080FFFFFF
        FF00808080FF808080FF000000FF000000FF800080FF000000FF808080FFC0C0
        C0FFC0C0C0FF800080FF212121FFFFFFFF00FFFFFF00800080FF808080FF8080
        80FF000000FF000000FF800080FF800080FF800080FF800080FF000000FF8080
        80FFC0C0C0FFC0C0C0FF800080FF212121FFFFFFFF00800080FF000000FF0000
        00FF800080FF800080FF800080FF800080FF800080FF800080FF800080FF0000
        00FF808080FFC0C0C0FFC0C0C0FF800080FF212121FF9C389CFF808080FF8000
        80FF800080FF800080FF800080FF00FFFFFF008080FF800080FF800080FF8000
        80FF000000FF808080FFC0C0C0FF000000FF363636FFFFFFFF009C389CFF8080
        80FF800080FF800080FF800080FF800080FFC0C0C0FF00FFFFFF00FFFFFF8000
        80FF800080FF000000FF808080FF000000FFFFFFFF00FFFFFF00FFFFFF009C38
        9CFF808080FF800080FF800080FF008080FF008080FF800080FF00FFFFFF00FF
        FFFF800080FF800080FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF009C389CFF808080FF800080FF800080FF00FFFFFF00FFFFFF00FFFFFF0080
        80FF800080FF800080FF800080FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF009C389CFF808080FF800080FF800080FF800080FF800080FF8000
        80FF800080FF800080FF363636FF363636FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF009C389CFF808080FF800080FF800080FF800080FF8000
        80FF363636FF363636FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF009C389CFF808080FF800080FF000000FF3636
        36FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C389CFF363636FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Index'
      Category = 12
      Hint = 'Index'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E2EFF212121FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF002E2E2EFF000000FF808080FF800080FF212121FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF002E2E2EFF2E2E2EFF808080FFC0C0C0FFFFFFFF00C0C0C0FF800080FF2121
        21FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E2EFF2E2E
        2EFF808080FFC0C0C0FFFFFFFF00FFFFFF00808080FFC0C0C0FFC0C0C0FF8000
        80FF212121FFFFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E2EFF808080FFC0C0
        C0FFFFFFFF00FFFFFF00808080FF808080FF000000FF808080FFC0C0C0FFC0C0
        C0FF800080FF212121FFFFFFFF00FFFFFF00FFFFFF00800080FF808080FFFFFF
        FF00808080FF808080FF000000FF000000FF800080FF000000FF808080FFC0C0
        C0FFC0C0C0FF800080FF212121FFFFFFFF00FFFFFF00800080FF808080FF8080
        80FF000000FF000000FF800080FF800080FF800080FF800080FF000000FF8080
        80FFC0C0C0FFC0C0C0FF800080FF212121FFFFFFFF00800080FF000000FF0000
        00FF800080FF800080FF800080FF800080FF800080FF800080FF800080FF0000
        00FF808080FFC0C0C0FFC0C0C0FF800080FF212121FF9C389CFF808080FF8000
        80FF800080FF800080FF800080FF00FFFFFF008080FF800080FF800080FF8000
        80FF000000FF808080FFC0C0C0FF000000FF363636FFFFFFFF009C389CFF8080
        80FF800080FF800080FF800080FF800080FFC0C0C0FF00FFFFFF00FFFFFF8000
        80FF800080FF000000FF808080FF000000FFFFFFFF00FFFFFF00FFFFFF009C38
        9CFF808080FF800080FF800080FF008080FF008080FF800080FF00FFFFFF00FF
        FFFF800080FF800080FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF009C389CFF808080FF800080FF800080FF00FFFFFF00FFFFFF00FFFFFF0080
        80FF800080FF800080FF800080FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF009C389CFF808080FF800080FF800080FF800080FF800080FF8000
        80FF800080FF800080FF363636FF363636FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF009C389CFF808080FF800080FF800080FF800080FF8000
        80FF363636FF363636FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF009C389CFF808080FF800080FF000000FF3636
        36FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C389CFF363636FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = dxBarButton12Click
    end
    object barBtnSupport: TdxBarButton
      Caption = 'Insight Support'
      Category = 12
      Hint = 'Insight Support'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF005F5F5FFF333366FF5F5F5FFF808080FFA4A0A0FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
        80FF333366FF333399FF333399FF2100A5FF333399FF333366FF777777FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00999999FF1616
        16FF000000FF3333CCFF3333CCFF3333CCFF3333CCFF3333CCFF333399FF0033
        66FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333399FF0000
        80FF000000FF000066FF6666FFFF6666FFFF5050FFFF3333CCFF3333CCFF3333
        99FF4D4D4DFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00808080FF333399FF6666
        CCFF3333CCFF000033FF3333CCFF5050FFFF5050FFFF6666FFFF5050FFFF6666
        CCFF333366FF333366FFFFFFFF00FFFFFF00FFFFFF00666699FF333399FF3333
        CCFF9999FFFF5050FFFF333399FF3333FFFF3333FFFF6666FFFF6666FFFF3333
        CCFF2100A5FF333366FFFFFFFF00FFFFFF00FFFFFF00999999FF333399FF6666
        CCFF3333FFFF5050FFFF3333FFFF5050FFFF6666FFFF5050FFFF5050FFFF3333
        CCFF2100A5FF333366FFFFFFFF00FFFFFF00FFFFFF00969696FF333399FF6666
        CCFF9999FFFF9999FFFF807CFFFF9999FFFF807CFFFF807CFFFF5050FFFF3333
        CCFF2100A5FF333366FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00333366FF2100
        A5FF3333CCFF5050FFFF3333FFFF5050FFFF807CFFFF6666FFFF9999FFFF3333
        CCFF3333CCFF333366FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A0A0FF3333
        99FF3333CCFF3333CCFF3333FFFF3333FFFF807CFFFF6666FFFF5050FFFF3333
        CCFF333366FF161616FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
        80FF333366FF3333CCFF6666CCFF5050FFFF3333CCFF5050FFFF3333CCFF3333
        99FF222222FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00000033FF333366FF333399FF333399FF3333CCFF2100A5FF333366FF1616
        16FF222222FF000000FF161616FF161616FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00333366FF333366FF333366FF333366FF000000FF0000
        00FF000000FF161616FFFFFFFF00161616FF161616FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001616
        16FF1C1C1CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00222222FF1C1C1CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00161616FF161616FFFFFFFF00FFFFFF00FFFFFF00}
      OnClick = popHelpForumClick
    end
    object dxBarButton14: TdxBarButton
      Caption = 'Insight Releases Page'
      Category = 12
      Hint = 'Insight Releases Page'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00CC33
        33FFCC3333FFCC3333FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC3333FF9966
        00FFFFFFFF00FFFFFF00993300FF161616FF990000FFCC3333FF996633FF9966
        00FF996600FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00777777FFCC3333FFFFFF
        FF00FFFFFF00161616FF161616FFCC3333FF996633FF996633FFCC6600FFFF66
        33FFFF6633FF996600FF996600FFFFFFFF00FFFFFF005F5F5FFFCC3333FFFFFF
        FF00663333FF993333FFCC3333FF996633FFFF6633FFCC6600FFFF6633FFFF66
        33FFFF6633FFFF6633FFFF6633FF996600FFFFFFFF005F5F5FFFCC6633FF9933
        00FF800000FFCC3333FF996633FFFF6633FFCC6600FFFFFFFF00FFFFFF00CC33
        33FFFF6633FFFF6633FFFF6633FFFF6633FF996600FF5F5F5FFF669999FFCC66
        33FF993333FF996633FFCC6600FFFF6633FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00CC3333FFFF6633FFFF6633FFFF6633FF996600FF777777FF6699CCFFFF66
        33FFCC3333FF996633FFFF6633FFCC6600FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777FF99CCCCFF6699
        CCFFCC6633FF996633FFFF6633FFCC6600FFCC6600FFCC6600FFCC6600FFCC66
        00FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFFFFFFF00777777FF99CC
        CCFFCC6666FFCC6633FFFF6633FFFF6633FFFF6633FFFF6633FFCC9933FFCC99
        33FFFF9900FFFF9900FFFF9900FFFF9900FFCC6600FFFFFFFF00CC3333FF6699
        99FF99CCFFFFFF6633FFFF6633FFCC6600FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00CC3333FFFFFF66FFFFCC00FFFF9900FFCC6600FFFFFFFF00FFFFFF009933
        33FF999966FF99FFFFFFFF6633FFCC6600FFCC6600FFFFFFFF00FFFFFF00CC33
        33FFCC9933FFFFFF99FFFFFF66FFCC6600FFFFFFFF00FFFFFF00FFFFFF00CC33
        33FF993333FF999966FFC0C0C0FFCC6600FFCC6600FFCC3333FFCC3333FFCC66
        00FFFFCC00FFFFFF66FFFF9900FFCC6600FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00CC3333FFCC6600FFCC9966FFCCCC99FFCC6600FFCC6600FFCC9933FFFF99
        00FFCC9933FFFF9900FFCC6600FFFFFFFF00FF6633FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00CC6600FFCC6600FFFF6633FFFF6633FFFF6633FFFF6633FFCC99
        33FFFF9900FFCC6600FFFFFFFF00FFFFFF00FF6633FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00CC6600FFCC6600FFCC6600FFCC6600FFCC66
        00FFCC6600FFFFFFFF00FFFFFF00FFFFFF00CC6600FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00CC6600FFCC6600FFCC6600FFCC6600FFFFFFFF00}
      OnClick = popHelpDownloadClick
    end
    object dxBarSubItem11: TdxBarSubItem
      Caption = '&SQL Trace'
      Category = 12
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end>
    end
    object dxBarButton15: TdxBarButton
      Caption = '&Off'
      Category = 13
      Hint = 'Off'
      Visible = ivAlways
      OnClick = popHelpSQLTraceStopClick
    end
    object dxBarButton16: TdxBarButton
      Caption = '&All'
      Category = 13
      Hint = 'All'
      Visible = ivAlways
      OnClick = popHelpSQLTraceAllClick
    end
    object dxBarButton17: TdxBarButton
      Caption = '> &1 sec'
      Category = 13
      Hint = '> 1 sec'
      Visible = ivAlways
      OnClick = popHelpSQLTraceTol1Click
    end
    object dxBarButton18: TdxBarButton
      Caption = '> &3 secs'
      Category = 13
      Hint = '> 3 secs'
      Visible = ivAlways
      OnClick = popHelpSQLTraceTol3Click
    end
    object dxBarButton19: TdxBarButton
      Caption = '> &5 secs'
      Category = 13
      Hint = '> 5 secs'
      Visible = ivAlways
      OnClick = popHelpSQLTraceTol5Click
    end
    object dxBarButton20: TdxBarButton
      Caption = '> &9 secs'
      Category = 13
      Hint = '> 9 secs'
      Visible = ivAlways
      OnClick = popHelpSQLTraceTol9Click
    end
    object dxBarButton21: TdxBarButton
      Caption = '> &20 secs'
      Category = 13
      Hint = '> 20 secs'
      Visible = ivAlways
      OnClick = popHelpSQLTraceTol20Click
    end
    object subItemMatter: TdxBarSubItem
      Caption = '&Matters'
      Category = 14
      Visible = ivAlways
      AllowCustomizing = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'beMatterSearch'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbMatterSearch'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarMRUListItem2'
        end>
      OnPopup = dxBarSubItemMattersPopup
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Clie&nts'
      Category = 14
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edClient'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClientSearch'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClientNew'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarListClients'
        end>
      OnPopup = dxBarSubItemClientsPopup
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = '&Contacts'
      Category = 14
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edContact'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbPhonebookSearch'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbContactCreate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarListPhonebook'
        end>
      OnPopup = dxBarSubItemPhonebookPopup
    end
    object dxBarButtonDiary: TdxBarButton
      Caption = '&Diary'
      Category = 14
      Enabled = False
      Hint = 'Diary'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaption
      ShortCut = 16452
      OnClick = tbtnDiaryClick
    end
    object dxBarLaunch: TdxBarSubItem
      Caption = '&Launch'
      Category = 14
      Visible = ivAlways
      ItemLinks = <>
      OnPopup = dxBarLaunchPopup
    end
    object bsWindow: TdxBarSubItem
      Caption = '&Window'
      Category = 14
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end>
    end
    object dxBarShortcuts: TdxBarSubItem
      Caption = 'My &Favourites'
      Category = 14
      Visible = ivAlways
      ItemLinks = <>
      OnPopup = dxBarSnapshotsPopup
    end
    object dxBarSnapshots: TdxBarSubItem
      Caption = '&Snapshots'
      Category = 14
      Visible = ivAlways
      ItemLinks = <>
      OnPopup = dxBarSnapshotsPopup
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = '&Help'
      Category = 14
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barBtnSupport'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OnPopup = dxBarSubItem10Popup
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = '&Tools'
      Category = 14
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLookupEntity'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItemOptions'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxMnuStartup'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnQuickCodes'
        end>
      OnPopup = dxBarSubItem6Popup
    end
    object dxBarButton28: TdxBarButton
      Caption = 'Show &Windows'
      Category = 15
      Hint = 'Show hidden Windows'
      Visible = ivAlways
      OnClick = dxBarButton28Click
    end
    object dxBarWindowList: TdxBarListItem
      Caption = 'List of Current Windows'
      Category = 15
      Visible = ivAlways
      OnClick = dxBarWindowListClick
      OnGetData = dxBarWindowListGetData
      ShowCheck = True
      ShowNumbers = False
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'New Item'
      Category = 16
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarInPlaceSubItem1: TdxBarInPlaceSubItem
      Caption = 'Desktop'
      Category = 16
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLookupEntity'
        end>
      KeepBeginGroupWhileExpanded = False
    end
    object btnAddToFavourites: TdxBarButton
      Caption = 'Add to  My Favourites...'
      Category = 16
      Hint = 'Add to  My Favourites'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00
        FF00000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FFFF00FF000000
        00FF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btnAddToFavouritesClick
    end
    object btnAddToStartup: TdxBarButton
      Caption = 'Add to Startup...'
      Category = 16
      Hint = 'Add Program to Startup Menu'
      Visible = ivAlways
      OnClick = btnAddToStartupClick
    end
    object btnRemoveFromStartup: TdxBarButton
      Caption = 'Remove From Startup...'
      Category = 16
      Hint = 'Remove Item From Startup Menu'
      Visible = ivAlways
      OnClick = btnRemoveFromStartupClick
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'New Item'
      Category = 16
      Visible = ivAlways
      DropDownEnabled = False
      PaintStyle = psCaptionGlyph
      OnClick = dxBarLargeButton6Click
      ShowCaption = False
      Width = 317
    end
    object dxBarButton4: TdxBarButton
      Caption = 'xxxxxx'
      Category = 16
      Hint = 'xxxxxx'
      Visible = ivAlways
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'New Button'
      Category = 16
      Hint = 'New Button'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
    end
    object btnAutoTimer: TdxBarButton
      Caption = 'Auto Timer Off'
      Category = 16
      Hint = 'Auto Timer Off'
      Visible = ivAlways
      ButtonStyle = bsChecked
      DropDownEnabled = False
      OnClick = btnAutoTimerClick
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Create Client'
      Category = 16
      Hint = 'Create Client'
      Visible = ivAlways
    end
    object dxRibbonGalleryItem1: TdxRibbonGalleryItem
      Caption = 'New Gallery'
      Category = 16
      Visible = ivAlways
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 16
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton26: TdxBarButton
      Caption = 'New Button'
      Category = 16
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'New Button'
      Category = 16
      Hint = 'New Button'
      Visible = ivAlways
    end
    object chkIncludeClosed: TcxBarEditItem
      Caption = 'Include Closed Matters '
      Category = 16
      Hint = 'Include Closed Matters '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnChange = chkIncludeClosedPropertiesChange
      InternalEditValue = False
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = 'New Button'
      Category = 16
      Hint = 'New Button'
      Visible = ivAlways
    end
    object edConflict: TdxBarEdit
      Caption = 'Text:'
      Category = 16
      Hint = 'Type conflict search text and press Enter'
      Visible = ivAlways
      OnKeyDown = edConflictKeyDown
      Width = 91
    end
    object dxBarButton7: TdxBarButton
      Caption = 'New Button'
      Category = 16
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 16
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 16
      Visible = ivNever
      ItemLinks = <>
    end
    object dxBarFindConflicts: TdxBarButton
      Caption = 'Saved Conflict searches'
      Category = 17
      Hint = 'Saved Conflict searches'
      Visible = ivAlways
      DropDownEnabled = False
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000E744558745469746C650044657461696C733B3496FF4C
        000002F449444154785E85916B485C471886DF397BCE5E5C77D7B58B26BA22BA
        66AB62A80A26AD622F1416FC51AC480225816090FE28810453213590B63F4A9B
        42A084D236A50905A56D6809FD2185B4A5604C40E996129BE83146E325D9B866
        E32D7B3D67CE7C9DD5B6F447C0071E9819785FF8E66344847F89847D304CD1C9
        B9D5679AA2D9E42226EFEFDEDEB42E93044F41C1FF300D51EBD0D4EFEAF754BC
        D8D2182A7CAEBE22ACA9B6A13A8FFA5EA840F5EE58C085782B50EC7372CBC2E4
        F42226A61EA0B921AC084E67982506762EE014640AB0BC2610E93E8C0B839FE0
        D01B1156ECD612DCA2861D0B0C6E4DCCCE3FA26F7F1DC5DBA78E221C24B89C69
        B4853C76021EEF58B0B0C92F9597FA4D5555616ECE22B9B60ACBC8C232393604
        CEE36910D17F4AFCEF1F6889EA233F5222FA19DDBA729C864EBE4C5DD5EE0900
        6DD23A6995342075489902C9D0813230C654009E743239A38F0E439F5CC6ED3F
        74FC36BE824977A4B4B2F5F495EA573EFE2BB8AF7FA4A4E1C8796F596BBED0C5
        B08DA336600F1F6DF25EA8A92C79E166DC8D42470E532B0CE3C6F3A0F2D7A0B8
        76A1B5713746C674E4D666905A1EBB9159D5DF81446D2977365DEC0E26A2E70E
        D2C2F7FD74EAF55769F8F33E8A74F4527DF73035BDB9443D676394A7E7833B14
        EABE46656D67A9A8BAF34B06C077FAA5673E8DB4371FAEDCBB17D9F80C6E4EAD
        E0975B695CA70E685507C1343FB899C5FE5A0DA37FC6C18D2CCC278B482F5DD5
        15009E92425B7B717910E67A0C3C99C0B3BB0991460EAE0500CDBB153ED6E5C7
        A5813D5B618BE740B64210A39002C0E9B12BBB0A7C3EF0D42A48612026605701
        B7B80F63734906B238F7CD1C24F9F3963C1D836566A795ED57421E6164FE5929
        43819DA1C635B7F561DC48E184DC549E93876A20CCFC08F3103CF3B30A603DFA
        303768FBE1722F178020808390330482990CE69236C4B31BF8F08B003EFAEA77
        98A987327C4F8EABFF24CC275F3300AAD42F2D913AB10D932A5287C35B55E728
        AAE950344F23981AB4CCD45DC1B357054F5ECCC4C727FF063F187055CFC115E1
        0000000049454E44AE426082}
      OnClick = dxBarConflictsClick
    end
    object dxBarConflicts: TdxBarSubItem
      Caption = 'Recent Conflicts'
      Category = 17
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000E744558745469746C650044657461696C733B3496FF4C
        000002F449444154785E85916B485C471886DF397BCE5E5C77D7B58B26BA22BA
        66AB62A80A26AD622F1416FC51AC480225816090FE28810453213590B63F4A9B
        42A084D236A50905A56D6809FD2185B4A5604C40E996129BE83146E325D9B866
        E32D7B3D67CE7C9DD5B6F447C0071E9819785FF8E66344847F89847D304CD1C9
        B9D5679AA2D9E42226EFEFDEDEB42E93044F41C1FF300D51EBD0D4EFEAF754BC
        D8D2182A7CAEBE22ACA9B6A13A8FFA5EA840F5EE58C085782B50EC7372CBC2E4
        F42226A61EA0B921AC084E67982506762EE014640AB0BC2610E93E8C0B839FE0
        D01B1156ECD612DCA2861D0B0C6E4DCCCE3FA26F7F1DC5DBA78E221C24B89C69
        B4853C76021EEF58B0B0C92F9597FA4D5555616ECE22B9B60ACBC8C232393604
        CEE36910D17F4AFCEF1F6889EA233F5222FA19DDBA729C864EBE4C5DD5EE0900
        6DD23A6995342075489902C9D0813230C654009E743239A38F0E439F5CC6ED3F
        74FC36BE824977A4B4B2F5F495EA573EFE2BB8AF7FA4A4E1C8796F596BBED0C5
        B08DA336600F1F6DF25EA8A92C79E166DC8D42470E532B0CE3C6F3A0F2D7A0B8
        76A1B5713746C674E4D666905A1EBB9159D5DF81446D2977365DEC0E26A2E70E
        D2C2F7FD74EAF55769F8F33E8A74F4527DF73035BDB9443D676394A7E7833B14
        EABE46656D67A9A8BAF34B06C077FAA5673E8DB4371FAEDCBB17D9F80C6E4EAD
        E0975B695CA70E685507C1343FB899C5FE5A0DA37FC6C18D2CCC278B482F5DD5
        15009E92425B7B717910E67A0C3C99C0B3BB0991460EAE0500CDBB153ED6E5C7
        A5813D5B618BE740B64210A39002C0E9B12BBB0A7C3EF0D42A48612026605701
        B7B80F63734906B238F7CD1C24F9F3963C1D836566A795ED57421E6164FE5929
        43819DA1C635B7F561DC48E184DC549E93876A20CCFC08F3103CF3B30A603DFA
        303768FBE1722F178020808390330482990CE69236C4B31BF8F08B003EFAEA77
        98A987327C4F8EABFF24CC275F3300AAD42F2D913AB10D932A5287C35B55E728
        AAE950344F23981AB4CCD45DC1B357054F5ECCC4C727FF063F187055CFC115E1
        0000000049454E44AE426082}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000E744558745469746C650044657461696C733B3496FF4C
        0000087549444154785EAD967B6C97D519C73FEFFBBBF746EF94B6D01669B1A4
        156D41607658A5A252C6AC4B90E8B88997A91B71332EF0C7C8C8E644B2C539DD
        FD62D045A71B2EDBD886CE69A23864EB44642BA442B1F47EFD5D2FEFED9CB337
        BF5FE29A261B9AFA24DFBCC9FB26E7F93CDF73CEF3BC9A528AFF179D0D7E9454
        48404AEA84A24B4A5A052C551284E2B454EA5921794D01DD230E1F27742E1152
        29D6DF743D52725F2018EA5BB4A8FA3B4B9736DCBE6C5953EB92CB97B5562EAA
        DB11CA2DF8AB523C2925689AF649016417930AFEF4E7D737CD2F2F7DEA9A55AD
        2C282B05258845C24C4F4E908CC70984F209E6CFFBA2847B015DCBC627E38092
        94F97CBEE79A1A1BF4F0F4244303FD8C0C0E32313AC6E4C404E3E3130C8D8D62
        9A362521EDA975B5DE536D0B3D77035E1762EE0042B1A37A41456EDA4833ED26
        9C0E4749A40CD29645CA12246D81B41DAA2B0A11286FC4144D96C38F5B2A3CB7
        029EB93BA0D85A515E423C1A652A96206108529622EECA74145E5D63E58A653C
        F4E0766CA15C3045DC9028C536C03F57004D2A96681E2F93910413318BA4A3B0
        D0D1750F019F874D1BD67260FF03343654F3B9AE9BF0685A065029AE06027306
        104A8523098BC998892D242D57AF62CB964D6EC55B79FA67DFE0E12F6FC5E705
        294C6EEB5A4B47DB95F8BD1A52A9A28FE280F7D2D7503B1F491995A62D58B5B6
        8303DFFE3A56E40394305D391949C7CA4853361BD65DC53BA77AED8998A13E91
        33E0085E9E0A47491B165BBFF025A49D04E9A06436B970CC2C806D621949FCBA
        4555519EC7916A12507375408DA5E44F181BBF5F492A4B4B4A50328A940ED2B1
        91225BB9B08D0C402A11271689A32BE286C3CB407AAE0EA8FEA80CBBABED519A
        62F4837328F4FFDA6E991F2617AED22EC0D44414D3B4FA2FC6E53781E49C00B2
        730271664AFEDEEBF1F6BFFBF65BE89E004A4AA46322B2D6BB3248C563246209
        8647A68818F66920A29472E6EA0057CDF728C0080573F60FF69E9E3877F60268
        DEEC1664ABC748268884A719B838CEB9BEF1E844D27EE5A3D80F70C96908A0B9
        01CCBB75F9FC03EDEDEDF77E7ADD6A4A4229ACD414C968944434C6E0E0387FEF
        EEE7D8BF867F7362CCDA0744000508C0060CC002E44C87752E1D6CDBB64DD5D7
        D7A727423567867B4FF2C75FFF81378FF570EEFC1817FBC7F9E7BB7DBC7EEC7D
        DE1D093150744343E5F2EDBFABBAEAAEF39557EEEAAB68BAE36F65F5B73C5DB8
        A87D175006F801ADA269E7A51D700BD7015F7E4141DE75EDED3FF507FCEBD784
        FA73EB2EAFE7E489F75CCB47B02C072754C4A0564FBAF45A2A6A965356D54061
        7115A0084F0E3236D0C3C0F993F668FFC9A356FCE213C989D3C781B47263A603
        1C3E7C98AFB504327293FB80D21BAB3D5B6E6A5D7A7CFBF6ED5D5DB774E5A609
        B062F572366FDDC01DDB3B59DEB686D1DC15041A77B272DD9DD4346FC4F0D573
        763448F78520E7E38B91E59DD4AED8E9BBEC8ACECFF8F2163D122A5ED606F867
        F701A494AC7CE8713EFBF907FC95395AFDC645DE1F343756AE1DCECFC1300CB7
        056FE1E1B75E251A4DA003C1DC00DDE3C5786A3772C59A2EA69241868624EFBF
        FE384A3AE8DE209AABB2E6DB91AA94E0C24D545BD6AAFED347BEC2744F8F5BE4
        B03E1BC04DEE012ABB6ABDBFDAB9F7AB6B37EFB98B0DD79571F4E851745D67DF
        B71E67FF2F5D4BC793BCD163D2673551DFDC9E49DE372A49A405C28CF1E4BE0E
        9E39B81E61C6B3D7D53149593E44C12A0AE737AD0B95B5DE01E4CC7400B7C2CC
        69DFBD7BF7BE46FA9A6A5AAF86540F950569E2637DF4F4F4505757C763070FB2
        6BD72E44A881F29A66F4D002860625B6EDA0A400A0685E88D52D97A19442082B
        FB5E29B440197A7E9D57F3BEB31E38A4CF6ECD8B172F6E686C6CBCADBEB991B7
        FFF252664169DB5C77B9C9A1438788C56284C3E18C5B96CACB1CB8A998246988
        4C92C1371F41D829BEFB8B63DCB3F72500846D66E518482950BE72F0841A81DC
        D9B320BFA3A3E31E1720A744E4D2FBC20164CB02A46370ED12C9DD3F3F4C6767
        277BF6ECE1D1471FE5EEBD2F525852C9C8B0C82E2C1D34DDC70B3FBC9D92A25C
        F2F342BC7AFC5036B1922065D6057F0168BE1220E89DD56C4AAAAAAA6E745D40
        C5023891111C2386B42D74E5B0638DC983F7DFC96579A31C397204A5C8289156
        59A75CE1F1F1C4D3C779F1473BF0793DA079108E99F9AE94440A3BDB45A5D000
        7DE616F85B5A5A9AABABAB2B4B4B4B0916CE4759499C5418691948E1F0A95A78
        6C639C876F0C32F4C6F7F09026323990499E057028A8BD9E13EF8D32343C0500
        9A8E9518CB4038B689B0E258C911A4959E06CC9900A18686868EF2F2721CC701
        5F4EA622271D455A0ECA114857852185B204DB56F9F125CE323A7086DCA0422A
        9981885F7C93D52DB5C41369006E685B821D3E87635B083B89B09218B101A448
        9C03523301F28A8B8B5BDDEAB12C8B743C8C0688740C290CA4E32085C8249742
        E2D7141B6A4619B9F00E5E6B0832160B344F90FDBBDB32FB0F70E8E046143A52
        98992B692546312317A4B462AF0131EF4C07162E5CD8B264894B6CDB24A68690
        9A07C788232D1B653B1907A47025255E57AB4B873879E655A6FA2A09546C2029
        BD99E673F37D2F6747B902898602841973152535F96FCC70CF2995E87D0648CE
        04887477773F5F5C52B6B572610D81A95344D21E86072238461A615B485BA284
        93790A47619B8AD5796739D2FB3CA669E1E4B590537D0D520A8465E0642CCFCA
        4A8E624C9F4185FF1153E6C853C0B00B293E1C46D9DE4FDDE6CD9BBFEFDE828E
        D4C9DF128CF5A2345012D034140A09A86C4F416A604B1835F2386BD4932E6A83
        DC5A84A714CD978F742CACE4385662082BDE8FD7783F9A98FE609FB2269F03A6
        5D00F9210059083F5036636CCE0EED7FFCD47881A26071E3CD7AA078A5EEC9AB
        559EC03C25256EF53169C70685397D42262F3C0B9C06625AE90D524EBCC20C80
        8F2F177836480E900FE40141B261014920967D2266FE90FC073577F55183A614
        110000000049454E44AE426082}
      LargeImageIndex = 0
      ItemLinks = <>
      OnPopup = dxBarConflictsPopup
    end
  end
  object dxBarPopMatters: TdxBarPopupMenu
    BarManager = dxBarManager
    ItemLinks = <>
    UseOwnFont = False
    UseRecentItems = True
    OnPopup = dxBarSubItemMattersPopup
    Left = 166
    Top = 278
    PixelsPerInch = 96
  end
  object dxBarPopClients: TdxBarPopupMenu
    BarManager = dxBarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarListClients'
      end>
    UseOwnFont = False
    OnPopup = dxBarSubItemClientsPopup
    Left = 65
    Top = 154
    PixelsPerInch = 96
  end
  object dxBarPopPhonebook: TdxBarPopupMenu
    BarManager = dxBarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarListPhonebook'
      end>
    UseOwnFont = False
    OnPopup = dxBarSubItemPhonebookPopup
    Left = 193
    Top = 185
    PixelsPerInch = 96
  end
  object qryEmpCuts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   sg.display_order, e.NAME, e.imageindex, sg.description,'
      
        '         sg.imageindex AS group_imageindex, e.shortcut_group, e.' +
        'big_button'
      '    FROM empcuts e, shortcut_group sg'
      '   WHERE e.emp = :p_emp AND e.shortcut_group = sg.code'
      'GROUP BY e.shortcut_group,'
      '         sg.description,'
      '         sg.imageindex,'
      '         e.NAME,'
      '         e.imageindex,'
      '         sg.display_order,'
      '         e.big_button'
      'UNION'
      'SELECT   sg.display_order, e.NAME, e.imageindex, sg.description,'
      
        '         sg.imageindex AS group_imageindex, e.shortcut_group, e.' +
        'big_button'
      '    FROM emp_type_cuts e, shortcut_group sg'
      '   WHERE e.emptype = :p_emptype AND e.shortcut_group = sg.code'
      'GROUP BY e.shortcut_group,'
      '         sg.description,'
      '         sg.imageindex,'
      '         e.NAME,'
      '         e.imageindex,'
      '         sg.display_order,'
      '         e.big_button'
      'UNION'
      
        'SELECT   sg.display_order, d.caption, d.imageindex, sg.descripti' +
        'on,'
      
        '         sg.imageindex AS group_imageindex, sg.code, d.big_butto' +
        'n'
      '    FROM shortcut_group sg, desktop d'
      '   WHERE d.emp = :p_emp AND sg.code = 14 AND TYPE = 0'
      'GROUP BY sg.code,'
      '         sg.description,'
      '         sg.imageindex,'
      '         d.caption,'
      '         d.imageindex,'
      '         sg.display_order,'
      '         d.big_button'
      'ORDER BY 1, 6, 2'
      ''
      ''
      ''
      ''
      '/*'
      'SELECT   e.NAME, e.imageindex, sg.description,'
      
        '         sg.imageindex AS group_imageindex, e.shortcut_group, e.' +
        'big_button'
      '    FROM empcuts e, shortcut_group sg'
      '   WHERE emp = :p_emp AND e.shortcut_group = sg.code'
      'GROUP BY e.shortcut_group,'
      '         sg.description,'
      '         sg.imageindex,'
      '         e.NAME,'
      '         e.imageindex,'
      '         sg.display_order,'
      '         e.big_button'
      'ORDER BY sg.display_order, e.shortcut_group, NAME'
      '*/')
    Left = 380
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_emptype'
        Value = nil
      end>
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT trim(M.FILEID) as FILEID,trim(P.SEARCH) AS SEARCH, trim(M' +
        '.SHORTDESCR) AS SHORTDESCR, idx'
      'FROM MATTER M, PHONEBOOK P,OPENLIST O'
      'WHERE O.AUTHOR = :P_Author'
      'AND O.TYPE = :P_Type'
      'AND O.CODE = M.FILEID'
      'AND M.NCLIENT = P.NCLIENT'
      '/*union'
      'SELECT '#39'Search...'#39','#39#39','#39#39',999'
      'FROM dual*/'
      'ORDER BY 3')
    Left = 187
    Top = 388
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Type'
        Value = nil
      end>
  end
  object dsMRUList: TUniDataSource
    DataSet = qryMRUList
    Left = 259
    Top = 400
  end
  object pmLaunch: TdxBarPopupMenu
    BarManager = dxBarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnAddToFavourites'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnAddToStartup'
      end
      item
        Visible = True
        ItemName = 'btnRemoveFromStartup'
      end>
    UseOwnFont = False
    OnPopup = pmLaunchPopup
    Left = 53
    Top = 250
    PixelsPerInch = 96
  end
  object qryStartupScreens: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select name,imageindex from empcuts where startup = '#39'Y'#39' and emp ' +
        '= :emp')
    Left = 247
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
  end
  object qryClientMRU: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT trim(c.code) as FILEID,trim(c.SEARCH) AS SEARCH,idx'
      ' FROM OPENLIST O,CLIENT C'
      'WHERE O.AUTHOR = :P_Author AND O.TYPE = '#39'CLIENT'#39
      'AND O.CODE = C.NCLIENT (+)'
      'union'
      'SELECT '#39'Search...'#39','#39#39',999'
      'FROM dual'
      'ORDER BY 3')
    Left = 176
    Top = 446
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Author'
        Value = nil
      end>
  end
  object dsClientMRU: TUniDataSource
    DataSet = qryClientMRU
    Left = 250
    Top = 452
  end
  object cxEditRepository1: TcxEditRepository
    Left = 324
    Top = 325
    PixelsPerInch = 96
    object cxEditRepository1ImageItem1: TcxEditRepositoryImageItem
    end
  end
  object qryPhonebookMRU: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT trim(P.NNAME) as FILEID,trim(P.SEARCH) AS SEARCH,idx'
      'FROM OPENLIST O, PHONEBOOK P'
      'WHERE O.AUTHOR = :P_Author AND O.TYPE = '#39'PHONEBOOK'#39
      ' AND O.CODE = P.NNAME (+)'
      'union'
      'SELECT '#39'Search...'#39','#39#39',999'
      'FROM dual'
      'ORDER BY 3')
    Left = 235
    Top = 531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Author'
        Value = nil
      end>
  end
  object dsPhonebookMRU: TUniDataSource
    DataSet = qryPhonebookMRU
    Left = 381
    Top = 494
  end
  object popDesktopClassic: TPopupMenu
    OnPopup = popDesktopPopup
    Left = 705
    Top = 161
    object MenuItem1: TMenuItem
      Caption = '&Open'
      Default = True
    end
    object popDesktopClassicDelete: TMenuItem
      Caption = '&Delete'
      OnClick = popDesktopClassicDeleteClick
    end
    object popDesktopClassicClear: TMenuItem
      Caption = 'Clear &All'
      OnClick = popDesktopClassicClearClick
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object popDesktopClassicColour: TMenuItem
      Caption = '&Colour'
      OnClick = popDesktopClassicColourClick
    end
    object MenuItem8: TMenuItem
      Caption = '-'
    end
    object popDesktopClassicLarge: TMenuItem
      Caption = 'Large &Icons'
      GroupIndex = 1
      RadioItem = True
      OnClick = popDesktopClassicLargeClick
    end
    object popDesktopClassicSmall: TMenuItem
      Caption = '&Small Icons'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = popDesktopClassicSmallClick
    end
    object popDesktopClassicList: TMenuItem
      Caption = '&List'
      GroupIndex = 1
      RadioItem = True
      OnClick = popDesktopClassicListClick
    end
    object popDesktopClassicDetails: TMenuItem
      Caption = 'D&etail'
      GroupIndex = 1
      RadioItem = True
      OnClick = popDesktopClassicDetailsClick
    end
  end
  object popSnapShotsClassic: TPopupMenu
    OnPopup = popSnapshotsPopup
    Left = 794
    Top = 184
    object popSnapShotsClassicOpen: TMenuItem
      Caption = '&Open'
      Default = True
      OnClick = popSnapShotsClassicOpenClick
    end
    object popSnapShotsClassicAddHint: TMenuItem
      Caption = 'Edit &Reminder'
      OnClick = popSnapShotsClassicAddHintClick
    end
    object popSnapShotsClassicAutoCost: TMenuItem
      Caption = 'Au&tocost'
      Visible = False
      OnClick = popSnapshotsAutocostClick
    end
    object popSnapShotsClassicDelete: TMenuItem
      Caption = '&Delete'
      OnClick = popSnapShotsClassicDeleteClick
    end
    object popSnapShotsClassicClearAll: TMenuItem
      Caption = 'Clear &All'
      OnClick = popSnapShotsClassicClearAllClick
    end
    object MenuItem11: TMenuItem
      Caption = '-'
    end
    object popSnapShotsClassicColour: TMenuItem
      Caption = '&Colour'
      OnClick = popSnapShotsClassicColourClick
    end
    object MenuItem13: TMenuItem
      Caption = '-'
    end
    object popSnapShotsClassicLarge: TMenuItem
      Caption = 'Large &Icons'
      GroupIndex = 1
      RadioItem = True
      OnClick = popSnapShotsClassicLargeClick
    end
    object popSnapShotsClassicSmall: TMenuItem
      Caption = '&Small Icons'
      GroupIndex = 1
      RadioItem = True
      OnClick = popSnapShotsClassicSmallClick
    end
    object popSnapShotsClassicList: TMenuItem
      Caption = '&List'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = popSnapShotsClassicListClick
    end
    object popSnapShotsClassicDetail: TMenuItem
      Caption = 'D&etail'
      GroupIndex = 1
      RadioItem = True
      OnClick = popSnapShotsClassicDetailClick
    end
  end
  object dxDockingManager1: TdxDockingManager
    AutoHideMovingSize = 18
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    DockZonesWidth = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Images = ilstMatter
    LookAndFeel.NativeStyle = True
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer, doHideAutoHideIfActive]
    Left = 282
    Top = 193
    PixelsPerInch = 96
  end
  object qryLaunchDiary: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 1'
      '  FROM employee, emp_type_cuts'
      ' WHERE emp_type_cuts.imageindex = 26'
      '   AND employee.code = :emp'
      '   AND employee.TYPE = emp_type_cuts.emptype'
      ''
      '/*'
      'select '#39'x'#39' from empcuts where imageindex = 26 and emp = :emp'
      '*/')
    Left = 525
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
  end
  object tmrUserCount: TTimer
    Enabled = False
    Interval = 900000
    OnTimer = tmrUserCountTimer
    Left = 1094
    Top = 380
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM BANK')
    Left = 858
    Top = 406
  end
  object popHideTabs: TPopupMenu
    AutoHotkeys = maManual
    Images = ilstShortcuts
    OnPopup = popLaunchPopup
    Left = 617
    Top = 417
    object mnuHideBHLSupport: TMenuItem
      Caption = 'Hide BHL Support Tab'
    end
    object MenuItem3: TMenuItem
      Caption = 'Hide Browser Tab'
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <>
    UseOwnFont = True
    Left = 118
    Top = 214
    PixelsPerInch = 96
  end
  object dxBarApplicationMenu: TdxBarApplicationMenu
    BarManager = dxBarManager
    Buttons = <>
    ExtraPane.AllowPinItems = False
    ExtraPane.Header = 'Recent'
    ExtraPane.Items = <>
    ExtraPane.Visible = False
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'barBtnSupport'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbPassword'
      end
      item
        Visible = True
        ItemName = 'bbtnEmployee'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarLookupEntity'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxMnuStartup'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    ItemOptions.Size = misNormal
    UseOwnFont = False
    OnPopup = dxBarApplicationMenuPopup
    Left = 98
    Top = 304
    PixelsPerInch = 96
  end
  object SchedulerGridConnection: TcxSchedulerGridConnection
    GridPopupMenu.Items = [bpmiNewEvent, bpmiNewReccuringEvent, bpmiOpen, bpmiEditSeries, bpmiLabel, bpmiDelete]
    GridPopupMenu.OnPopup = cxSchedulerGridConnection1GridPopupMenuPopup
    GridView = tvTaskList
    Storage = DBTaskStorage
    Active = True
    OnEditEvent = SchedulerGridConnectionEditEvent
    OnInitEditDialog = SchedulerGridConnectionInitEditDialog
    OnNewEvent = SchedulerGridConnectionNewEvent
    Left = 899
    Top = 539
    Links = <
      item
        AdapterClass = 'TcxSchedulerIDFieldAdapter'
        FieldIndex = 0
        Item = tvTaskListcxGridColumn1
      end
      item
        AdapterClass = 'TcxSchedulerIDFieldAdapter'
        FieldIndex = 7
        Item = tvTaskListcxGridColumn2
      end
      item
        AdapterClass = 'TcxSchedulerGroupIDFieldAdapter'
        FieldIndex = 22
        Item = tvTaskListcxGridColumn3
      end
      item
        AdapterClass = 'TcxSchedulerStateFieldAdapter'
        FieldIndex = 14
        Item = tvTaskListcxGridColumn4
      end
      item
        AdapterClass = 'TcxSchedulerTextFieldAdapter'
        FieldIndex = 0
        Item = tvTaskListcxGridColumn5
      end
      item
        AdapterClass = 'TcxSchedulerTextFieldAdapter'
        FieldIndex = 4
        Item = tvTaskListcxGridColumn6
      end
      item
        AdapterClass = 'TcxSchedulerDateTimeFieldAdapter'
        FieldIndex = 15
        Item = tvTaskListcxGridColumn7
      end
      item
        AdapterClass = 'TcxSchedulerDateTimeFieldAdapter'
        FieldIndex = 16
        Item = tvTaskListcxGridColumn8
      end
      item
        AdapterClass = 'TcxSchedulerEventFinishFieldAdapter'
        FieldIndex = 2
        Item = tvTaskListcxGridColumn9
      end
      item
        AdapterClass = 'TcxSchedulerEventStartFieldAdapter'
        FieldIndex = 13
        Item = tvTaskListcxGridColumn10
      end
      item
        AdapterClass = 'TcxSchedulerTextFieldAdapter'
        FieldIndex = 5
        Item = tvTaskListcxGridColumn11
      end
      item
        AdapterClass = 'TcxSchedulerTypeFieldAdapter'
        FieldIndex = 1
        Item = tvTaskListcxGridColumn12
      end
      item
        AdapterClass = 'TcxSchedulerReminderFieldAdapter'
        FieldIndex = 6
        Item = tvTaskListcxGridColumn13
      end
      item
        AdapterClass = 'TcxSchedulerAllDayFieldAdapter'
        FieldIndex = 6
        Item = tvTaskListcxGridColumn14
      end
      item
        AdapterClass = 'TcxSchedulerEnabledFieldAdapter'
        FieldIndex = 6
        Item = tvTaskListcxGridColumn15
      end
      item
        AdapterClass = 'TcxSchedulerLabelColorFieldAdapter'
        FieldIndex = 3
        Item = tvTaskListcxGridColumn16
      end
      item
        AdapterClass = 'TcxSchedulerRecurringFieldAdapter'
        FieldIndex = 9
        Item = tvTaskListcxGridColumn17
      end
      item
        AdapterClass = 'TcxSchedulerIntegerFieldAdapter'
        FieldIndex = 8
        Item = tvTaskListcxGridColumn18
      end
      item
        AdapterClass = 'TcxSchedulerDateTimeFieldAdapter'
        FieldIndex = 10
        Item = tvTaskListcxGridColumn19
      end
      item
        AdapterClass = 'TcxSchedulerIntegerFieldAdapter'
        FieldIndex = 11
        Item = tvTaskListcxGridColumn20
      end
      item
        AdapterClass = 'TcxSchedulerResourceIDFieldAdapter'
        FieldIndex = 12
        Item = tvTaskListcxGridColumn21
      end
      item
        AdapterClass = 'TcxSchedulerCompleteFieldAdapter'
        FieldIndex = 17
        Item = tvTaskListcxGridColumn22
      end
      item
        AdapterClass = 'TcxSchedulerLinksFieldAdapter'
        FieldIndex = 19
        Item = tvTaskListcxGridColumn23
      end
      item
        AdapterClass = 'TcxSchedulerIntegerFieldAdapter'
        FieldIndex = 18
        Item = tvTaskListcxGridColumn24
      end
      item
        AdapterClass = 'TcxSchedulerStatusFieldAdapter'
        FieldIndex = 20
        Item = tvTaskListcxGridColumn25
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 23
        Item = tvTaskListcxGridColumn26
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 24
        Item = tvTaskListcxGridColumn27
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 25
        Item = tvTaskListcxGridColumn28
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 26
        Item = tvTaskListcxGridColumn29
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 27
        Item = tvTaskListcxGridColumn30
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 28
        Item = tvTaskListcxGridColumn31
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 29
        Item = tvTaskListcxGridColumn32
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 30
        Item = tvTaskListcxGridColumn33
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 31
        Item = tvTaskListcxGridColumn34
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 32
        Item = tvTaskListcxGridColumn35
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 33
        Item = tvTaskListcxGridColumn36
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 34
        Item = tvTaskListcxGridColumn37
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 35
        Item = tvTaskListcxGridColumn38
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 36
        Item = tvTaskListcxGridColumn39
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 37
        Item = tvTaskListcxGridColumn40
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 38
        Item = tvTaskListcxGridColumn41
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 39
        Item = tvTaskListcxGridColumn42
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 40
        Item = tvTaskListcxGridColumn43
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 41
        Item = tvTaskListcxGridColumn44
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 42
        Item = tvTaskListcxGridColumn45
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 43
        Item = tvTaskListcxGridColumn46
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 44
        Item = tvTaskListcxGridColumn47
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 45
        Item = tvTaskListcxGridColumn48
      end
      item
        AdapterClass = 'TcxSchedulerFieldAdapter'
        FieldIndex = 46
        Item = tvTaskListcxGridColumn49
      end>
  end
  object DBTaskStorage: TcxSchedulerDBStorage
    Resources.Items = <>
    Resources.ResourceColor = 'RESOURCE_COLOUR'
    Resources.ResourceID = 'NEMPLOYEE'
    Resources.ResourceName = 'NAME'
    CustomFields = <
      item
        FieldName = 'AUTHOR'
      end
      item
        FieldName = 'UNITS'
      end
      item
        FieldName = 'FILEID'
      end
      item
        FieldName = 'MINS'
      end
      item
        FieldName = 'AMOUNT'
      end
      item
        FieldName = 'RATE'
      end
      item
        FieldName = 'TIME_TYPE'
      end
      item
        FieldName = 'TAXCODE'
      end
      item
        FieldName = 'EMPCODE'
      end
      item
        FieldName = 'NMATTER'
      end
      item
        FieldName = 'ITEMS'
      end
      item
        FieldName = 'CREATED'
      end
      item
        FieldName = 'FEEBASIS'
      end
      item
        FieldName = 'FEE_TEMPLATE'
      end
      item
        FieldName = 'BILLTYPE'
      end
      item
        FieldName = 'NFEE'
      end
      item
        FieldName = 'UNIT'
      end
      item
        FieldName = 'TAX'
      end
      item
        FieldName = 'NOTES'
      end
      item
        FieldName = 'MATLOCATE'
      end
      item
        FieldName = 'IS_TASK'
      end
      item
        FieldName = 'UNIQUEID'
      end
      item
        FieldName = 'P_UNIQUEID'
      end
      item
        FieldName = 'TASK_COMPLETED'
      end
      item
        FieldName = 'VERSION'
      end
      item
        FieldName = 'PROGRAM_NAME'
      end
      item
        FieldName = 'EMP_TYPE'
      end
      item
        FieldName = 'TYPE'
      end
      item
        FieldName = 'MATLOCATE'
      end
      item
        FieldName = 'PREC_ID'
      end
      item
        FieldName = 'NPROJECTTEMPL'
      end
      item
        FieldName = 'NSCALECOST'
      end
      item
        FieldName = 'DAYS'
      end
      item
        FieldName = 'COLOUR'
      end
      item
        FieldName = 'DAYS'
      end
      item
        FieldName = 'BUDGET_LOW'
      end
      item
        FieldName = 'BUDGET_HIGH'
      end
      item
        FieldName = 'TIME_ESTIMATE'
      end
      item
        FieldName = 'MAX_TIME_ESTIMATE'
      end
      item
        FieldName = 'PARENT_ID'
      end
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'TASK_COMPLETED_PCT'
      end>
    DataSource = dsDiary
    FieldNames.Caption = 'CAPTION'
    FieldNames.EventType = 'EVENT_TYPE'
    FieldNames.Finish = 'END_DATE'
    FieldNames.ID = 'UNIQUEID'
    FieldNames.LabelColor = 'LABELCOLOUR'
    FieldNames.Message = 'REASON'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ParentID = 'P_UNIQUEID'
    FieldNames.ResourceID = 'RESOURCEID'
    FieldNames.Start = 'START_DATE'
    FieldNames.State = 'STATE'
    Left = 899
    Top = 474
  end
  object qryDiary: TUniQuery
    KeyFields = 'uniqueid'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   ft.uniqueid, ft.created AS created, ft.fileid, ft.autho' +
        'r,'
      
        '         ft.reason, ft.units, ft.rate, ft.amount, ft.taxcode, ft' +
        '.tax,'
      '         ft.taxrate, ft.elapsed, ft.empcode,'
      '         ft.matlocate,'
      
        '         ft.nmatter, ft.time_type, ft.fee_template, ft.start_dat' +
        'e,'
      '         ft.end_date, ft.items, ft.billtype,'
      
        '         FT.processed, ft.nfee, ft.notes, ft.event_type, ft.opti' +
        'ons, ft.is_task,'
      
        '         ft.p_uniqueid, ft.LABELCOLOUR, ft.state, ft.resourceid,' +
        ' ft.caption, ft.task_completed,'
      
        '         ft.version, ft.program_name, ft.emp_type, ft.type, ft.p' +
        'rec_id, ft.NPROJECTTEMPL, ft.parent_id,'
      
        '         ft.COLOUR, ft.SEQ_ORDER, ft.DAYS, ft.nscalecost, ft.nsc' +
        'alecost, ft.budget_low, ft.budget_high, ft.time_estimate,'
      '         ft.max_time_estimate, ft.id, FT.TASK_COMPLETED_PCT'
      '    FROM feetmp ft'
      '   WHERE ft.author = :author'
      '     AND FT.IS_TASK = '#39'Y'#39
      '     AND FT.TASK_COMPLETED IS NULL'
      'ORDER BY 2')
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SQNC_FEETMP')
    Left = 678
    Top = 546
    ParamData = <
      item
        DataType = ftString
        Name = 'author'
        Value = ''
      end>
  end
  object dsDiary: TUniDataSource
    DataSet = qryDiary
    Left = 746
    Top = 532
  end
  object imgPopupMenu: TImageList
    Left = 935
    Top = 352
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      000000000000000000000000000000000000FAFAFA00F9F9F900F9F9F900F9F9
      F900E5E3E200BCB8B500A7A29E00A7A29E00A7A29E00A7A29E00A7A29E00A7A2
      9E00A7A29E00A8A29F00BFBAB800EAE8E8000000000000000000000000000000
      0000EFEFEF008C8C8C009C9C9C00F7F7F700EFEFEF00D6D6D600C6C6C6009C9C
      9C00ADADAD00EFEFEF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000DFDCDB00D7D4D300D7D4D300D7D4
      D300C2BEBC008A8A8A005585A5005689A8005A8DAD005A8DAD005A8DAD005A8D
      AD005A8DAF006293B40072A4C40084B7D7000000000000000000000000000000
      0000DEDEDE003131310042424200E7E7E700B5B5B500737373006B6B6B007B5A
      5A006B525200ADADAD00D6D6D600FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000C6C6C60000000000C6C6C60000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000C0BFBE009C9591009E9692009E96
      9200877F7D004E4A48002E638500E5E5E500F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300FFFFFF00A6CAE2000000000000000000000000000000
      0000D6D6D600EFA55A00C66B18006B6B6B001042AD001863FF006B63AD00BDAD
      AD00ADA5A5009C8C8C0073525200EFEFEF000000000000000000000000000000
      0000FFFFFF0000000000C6C6C600000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000000000000000000097908C0078554300916751009A6E
      5700815C4800473328002A587700EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B4D3E7000000000000000000000000000000
      0000D6D6D600E79C4A00AD631000B59494001042AD002173FF006B529C00A573
      7300A57B7B009CB59C00A5B59C00E7E7E7000000000000000000000000000000
      0000FFFFFF0000000000C6C6C60000000000C6C6C60000000000848484000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000968E8A00825D4B00D1CDCA00E8E4
      E100BDBAB800666463003A759B00F7F7F7008888880088888800888888008888
      88008888880088888800FFFFFF00B4D3E700FFFFFF00F7F7F700F7F7F700F7F7
      F700C6C6C600E7944200AD632900D6B5B5001042AD004294FF006B63A500BD94
      9400B5848400AD7B7B00A5737300E7E7E7000000000000000000000000000000
      0000FFFFFF0000000000C6C6C600000000008484840000000000848484000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000FFFFFF00848484000000000084848400FFFF
      FF0000000000FFFFFF00FFFFFF0000000000968E8A00865F4D00DDD7D300F7F0
      EC00C9C4C1006C6968003D789D00EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B4D3E700DEDEDE00BDBDBD00BDBDBD00B5B5
      B50094949400DE8C3900AD632900E7D6D6001042AD004AA5FF006B639C00BD8C
      8C00BD8C8C00CE949400B5848400E7E7E7000000000000000000000000000000
      0000FFFFFF0000000000C6C6C60000000000C6C6C60000000000848484000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF008484840000000000FFFFFF008484
      840000000000FFFFFF00FFFFFF0000000000968E8A00855F4C00DBD2CE00F5EB
      E600C8C0BC006C6765003D779D00F7F7F7008888880088888800888888008888
      88008888880088888800FFFFFF00B4D3E70039738C004AB5E7004AB5E7004AB5
      EF004294BD00DE842900A5634200EFE7E7001042AD004A94DE006B639C00BD8C
      8C00B5848400A5737300BD848400E7E7E7000000000000000000000000000000
      0000FFFFFF0000000000C6C6C600000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF008484
      8400FFFFFF000000FF00FFFFFF0084848400FFFFFF0000000000FFFFFF008484
      84000000000084848400FFFFFF0000000000968E8A00845E4C00D8CEC700F2E6
      DF00D1C6C0008C8581003E799F00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BCD7EA0039A5CE006BD6FF006BCEFF006BCE
      FF005AADCE00DE8421008C5A3900EFE7E700736B8C006B6B6B00B59CB500BD84
      8400BD8C8C00BD848400BD7B7B00E7E7E7000000000000000000000000000000
      0000FFFFFF0000000000C6C6C60000000000C6C6C60000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400FFFFFF00FFFFFF0000000000FFFFFF008484
      840000000000FFFFFF008484840000000000968E8A00845D4B00D7C8C200F0E0
      D900E6D6D000CFC1BB004483AD005B99C20079ACCD0079ACCD0079ACCD0079AC
      CD0079ACCD0079ABCC008CB0C600BFDAEA0039A5CE007BD6F7008CCEDE009494
      9C006B94A500949494008C8C8C0094949400E7E7E700D6D6DE00948C8C00DEA5
      A500CE6B6B00C66B6B00BD6B6B00EFEFEF000000000000000000000000000000
      0000FFFFFF0000000000C6C6C600000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFF
      FF0000000000FFFFFF008484840000000000968E8A00845D4A00D4C4BC00EDDB
      D200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDB
      D200EDDBD200ECD9D100D1A68F00FFFFFF0039A5CE008CD6EF00ADB5B500BDB5
      B5008C7B7B00C6C6C600D6D6D600CECECE00EFEFEF00CECECE00E7E7E700FFF7
      F700F7EFEF00DE949400CE6B6B00F7F7F7000000000000000000000000000000
      0000848484000000000084848400000000008484840000000000848484000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF008484840000000000968E8A00835C4900D1BEB600E1CD
      C300CDBAB200C0AFA600BFAEA600BFAEA600BFAEA600C6B4AC00D9C6BD00E7D2
      C900EAD5CB00EAD5CB00D1A68F00FFFFFF0039A5CE007BCEF7007B949400C6C6
      C6007B949400BDBDBD00C6C6C6007B9494007B949400AD949400ADADAD00AD8C
      8C00AD949400E7E7E700FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000084848400FFFFFF00000000009F989400875D4800D4BEB400D0BC
      B200988982006F645F00665C5700665C5700685D590084777100BDAAA200E2CB
      C100E9D1C600E8D2C800D0A69000FFFFFF0039A5CE006BCEFF008CCEDE007B94
      940084DEDE007B9494007B9494009CFFFF008CE7E7007BBDC600BDE7E700FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00C6C6C600C6C6C600C6C6C600848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C8C2BE009A6B5300DBB8A700CBAE
      9F00917F74000D508600025292000252920002529200035A9A000694D700B9BD
      BD00DEBEAF00E2C6B900D4AA9600FFFFFF0039A5CE0084E7FF0084E7FF0084E7
      FF0084E7FF00A5EFFF00A5EFFF00A5EFFF00A5EFFF0039A5CE00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000E2D4CD00B18C7900B08B7800AD87
      7400A9806C005464750002529200058ED0005CBDE900CEEBF800DAE0E400D3AD
      9A00D4AE9C00D8B6A400E2C8B900FFFFFF0039A5CE0094F7FF008CF7FF008CF7
      FF00D6FFFF0039A5CE0039A5CE0039A5CE0039A5CE00A5D6E700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6FAFC00DDECF40056A0CB005EB9E20087CBEA00BCE1F200F9FCFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFE00F803F0000F001E00F803F0000
      F000E00F80070000F000E00F80070000F000E00F800000000000E00F80000000
      0000E00F800000000000A00B800000000000C007800000000000E00F80000000
      0000E00F800000000001C00780000000000FC007F0000000001FC007F0000000
      001FF83FFE010000FFFFF83FFE03000000000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 919
    Top = 260
    PixelsPerInch = 96
    object styTaskComplete: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGreen
    end
    object styTaskNotComplete: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyle1: TcxStyle
    end
  end
  object popCloseTabs: TPopupMenu
    AutoHotkeys = maManual
    Images = ilstShortcuts
    Left = 264
    Top = 314
    object CloseAllOpentabs1: TMenuItem
      Caption = 'Close All Open tabs'
      OnClick = CloseAllOpentabs1Click
    end
  end
  object qryScalecostDocCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nvl(count(*), 0) as doc_count'
      'from SCALECOSTDOCLINK'
      'where nscalecost = :nscalecost')
    Left = 555
    Top = 533
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nscalecost'
        Value = nil
      end>
  end
  object qryCompleteTask: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO axiom.feetmp'
      
        '            (uniqueid, TYPE, fileid, reason, amount, created, un' +
        'its, rate, author,'
      
        '             empcode, taxcode, tax, taxrate, withhold, elapsed, ' +
        'nmatter,'
      
        '             time_type, fee_template, mins, start_date, end_date' +
        ', labelcolour,'
      
        '             state, resourceid, options, event_type, caption, it' +
        'ems, unit,'
      
        '             task_amount, nfee, billtype, feebasis, emp_type, VE' +
        'RSION,'
      
        '             system_date, processed, matlocate, notes, discount,' +
        ' is_task,'
      
        '             total_fee_amt_pct, p_uniqueid, task_completed, time' +
        '_code,'
      
        '             item_unit, item_amount, task_tax, program_name, npr' +
        'ojecttempl,'
      
        '             ID, parent_id, task_type, colour, seq_order, days, ' +
        'prec_id,'
      '             nscalecost)'
      
        '   SELECT sqnc_feetmp.NEXTVAL, TYPE, fileid, reason, amount, cre' +
        'ated, units, rate, author,'
      
        '             empcode, taxcode, tax, taxrate, withhold, elapsed, ' +
        'nmatter,'
      
        '             time_type, fee_template, mins, start_date, end_date' +
        ', labelcolour,'
      
        '             state, resourceid, options, event_type, caption, it' +
        'ems, unit,'
      
        '             task_amount, nfee, billtype, feebasis, emp_type, VE' +
        'RSION,'
      
        '             system_date, processed, matlocate, notes, discount,' +
        ' '#39'N'#39','
      
        '             total_fee_amt_pct, p_uniqueid, task_completed, time' +
        '_code,'
      
        '             item_unit, item_amount, task_tax, program_name, npr' +
        'ojecttempl,'
      
        '             ID, parent_id, task_type, colour, seq_order, days, ' +
        'prec_id,'
      '             nscalecost'
      '     FROM axiom.tasktmp'
      '    WHERE uniqueid = :uniqueid')
    Left = 42
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'uniqueid'
        Value = nil
      end>
  end
end
