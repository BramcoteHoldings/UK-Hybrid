object fmWorkFlowNewTaskItemDialog: TfmWorkFlowNewTaskItemDialog
  Left = 588
  Top = 183
  BorderStyle = bsDialog
  Caption = 'New Task Item'
  ClientHeight = 610
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    460
    610)
  PixelsPerInch = 106
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 76
    Height = 15
    Caption = 'Selected Task: '
  end
  object lSelectedTask: TLabel
    Left = 93
    Top = 8
    Width = 339
    Height = 46
    AutoSize = False
    Caption = 'lSelectedTask'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 18
    Top = 110
    Width = 89
    Height = 15
    Caption = 'Task Description:'
  end
  object Label3: TLabel
    Left = 18
    Top = 135
    Width = 55
    Height = 15
    Caption = 'Task Note:'
  end
  object lNewSeqNoLabel: TLabel
    Left = 8
    Top = 84
    Width = 157
    Height = 15
    Caption = 'New Task Sequence Number: '
  end
  object lNewSeqNo: TLabel
    Left = 182
    Top = 84
    Width = 66
    Height = 15
    Caption = 'lNewSeqNo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bnOk: TButton
    Left = 150
    Top = 578
    Width = 75
    Height = 27
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 6
    OnClick = bnOkClick
  end
  object bnCancel: TButton
    Left = 230
    Top = 578
    Width = 73
    Height = 27
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
  end
  object rbBelow: TRadioButton
    Left = 21
    Top = 63
    Width = 87
    Height = 18
    Caption = 'Below'
    TabOrder = 2
    OnClick = rbBelowClick
  end
  object rbAsChild: TRadioButton
    Left = 218
    Top = 63
    Width = 83
    Height = 18
    Caption = 'As Child'
    TabOrder = 4
    OnClick = rbBelowClick
  end
  object rbAbove: TRadioButton
    Left = 123
    Top = 63
    Width = 89
    Height = 18
    Caption = 'Above'
    Checked = True
    TabOrder = 3
    TabStop = True
    OnClick = rbBelowClick
  end
  object cbUpdateExisting: TCheckBox
    Left = 128
    Top = 556
    Width = 228
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'Update Existing Matter Timetables'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object eTaskDescription: TEdit
    Left = 123
    Top = 104
    Width = 277
    Height = 23
    TabOrder = 0
  end
  object eTaskNote: TEdit
    Left = 123
    Top = 129
    Width = 277
    Height = 23
    TabOrder = 1
  end
  object cxPageControl1: TcxPageControl
    Left = 8
    Top = 157
    Width = 437
    Height = 384
    TabOrder = 8
    Properties.ActivePage = tsAssignWatch
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    ClientRectBottom = 380
    ClientRectLeft = 4
    ClientRectRight = 433
    ClientRectTop = 26
    object tsActions: TcxTabSheet
      Caption = 'Actions'
      ImageIndex = 0
      DesignSize = (
        429
        354)
      object gbStartWhen: TGroupBox
        Left = 6
        Top = 2
        Width = 390
        Height = 98
        Caption = 'Start When'
        TabOrder = 0
        object Label5: TLabel
          Left = 9
          Top = 21
          Width = 66
          Height = 15
          Caption = 'Starts When:'
          FocusControl = dbcTaskStartsWhen
        end
        object lDaysFrom: TLabel
          Left = 9
          Top = 46
          Width = 114
          Height = 15
          Caption = 'Days From Complete:'
          FocusControl = eDaysFrom
        end
        object lStartRelated: TLabel
          Left = 9
          Top = 74
          Width = 42
          Height = 15
          Caption = 'Related:'
        end
        object eDaysFrom: TDBEdit
          Left = 135
          Top = 42
          Width = 46
          Height = 23
          DataField = 'DAYSFROM'
          DataSource = dmWorkFlowDataModuleTasks.dsTaskTemplates
          TabOrder = 1
        end
        object cbStartRelatedTask: TComboBox
          Left = 135
          Top = 68
          Width = 249
          Height = 23
          Style = csDropDownList
          DropDownCount = 16
          TabOrder = 2
          OnChange = cbStartRelatedTaskChange
        end
        object dbcTaskStartsWhen: TcxComboBox
          Left = 135
          Top = 14
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = dbcTaskStartsWhenPropertiesChange
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 0
          Width = 249
        end
      end
      object gbCompleteWhen: TGroupBox
        Left = 6
        Top = 105
        Width = 390
        Height = 99
        Caption = 'Complete When'
        TabOrder = 1
        object lDaysToComplete: TLabel
          Left = 9
          Top = 21
          Width = 99
          Height = 15
          Caption = 'Days To Complete:'
          FocusControl = eDaysToComplete
        end
        object Label7: TLabel
          Left = 9
          Top = 46
          Width = 94
          Height = 15
          Caption = 'Completes When:'
          FocusControl = dbcTaskCompletesWhen
        end
        object lCompleteRelated: TLabel
          Left = 9
          Top = 73
          Width = 42
          Height = 15
          Caption = 'Related:'
        end
        object eDaysToComplete: TDBEdit
          Left = 135
          Top = 14
          Width = 46
          Height = 23
          DataField = 'COMPLETEDAYS'
          DataSource = dmWorkFlowDataModuleTasks.dsTaskTemplates
          TabOrder = 1
        end
        object cbCompleteRelatedTask: TComboBox
          Left = 135
          Top = 67
          Width = 249
          Height = 23
          Style = csDropDownList
          DropDownCount = 16
          TabOrder = 2
          OnChange = cbCompleteRelatedTaskChange
        end
        object dbcTaskCompletesWhen: TcxComboBox
          Left = 135
          Top = 40
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.ImmediatePost = True
          Properties.OnChange = dbcTaskCompletesWhenPropertiesChange
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 0
          Width = 249
        end
      end
      object gbSkipWhen: TGroupBox
        Left = 6
        Top = 211
        Width = 390
        Height = 75
        Caption = 'Skip When'
        TabOrder = 2
        object Label8: TLabel
          Left = 9
          Top = 21
          Width = 64
          Height = 15
          Caption = 'Skips When:'
          FocusControl = dbcTaskSkipsWhen
        end
        object lSkipRelated: TLabel
          Left = 9
          Top = 47
          Width = 42
          Height = 15
          Caption = 'Related:'
        end
        object cbSkipRelatedTask: TComboBox
          Left = 135
          Top = 40
          Width = 249
          Height = 23
          Style = csDropDownList
          DropDownCount = 16
          TabOrder = 0
          OnChange = cbSkipRelatedTaskChange
        end
        object dbcTaskSkipsWhen: TcxComboBox
          Left = 135
          Top = 13
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = dbcTaskSkipsWhenPropertiesChange
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 1
          Width = 249
        end
      end
      object ckCriticalDate: TCheckBox
        Left = 7
        Top = 311
        Width = 97
        Height = 15
        Anchors = [akLeft, akBottom]
        Caption = 'Critical Date'
        TabOrder = 3
        OnClick = ckCriticalDateClick
      end
      object ckCriticalAlert: TCheckBox
        Left = 7
        Top = 332
        Width = 97
        Height = 18
        Anchors = [akLeft, akBottom]
        Caption = 'Critical Alert'
        TabOrder = 4
      end
      object cbTaskHeading: TCheckBox
        Left = 174
        Top = 311
        Width = 123
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = 'Due Same Day'
        TabOrder = 5
      end
      object cbReportable: TCheckBox
        Left = 174
        Top = 332
        Width = 123
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Reportable'
        TabOrder = 6
      end
    end
    object tsAssignWatch: TcxTabSheet
      Caption = 'Assign/Watch'
      ImageIndex = 1
      object gbAssign: TGroupBox
        Left = 8
        Top = 5
        Width = 390
        Height = 80
        Caption = 'Assign'
        TabOrder = 0
        DesignSize = (
          390
          80)
        object Label6: TLabel
          Left = 9
          Top = 21
          Width = 54
          Height = 15
          Caption = 'Assign To:'
        end
        object Label13: TLabel
          Left = 9
          Top = 50
          Width = 86
          Height = 15
          Caption = 'Assign To Team:'
        end
        object dblAssignTo: TcxLookupComboBox
          Left = 134
          Top = 15
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 15
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'VALUE'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 0
          Width = 249
        end
        object lbTeams: TcxLookupComboBox
          Left = 134
          Top = 48
          Anchors = [akLeft, akBottom]
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsTeam
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 249
        end
      end
      object gbEMail: TGroupBox
        Left = 8
        Top = 90
        Width = 390
        Height = 215
        Caption = 'E-Mail (Watch)'
        TabOrder = 1
        object Label4: TLabel
          Left = 9
          Top = 21
          Width = 104
          Height = 15
          Caption = 'On Overdue E-Mail:'
        end
        object Label9: TLabel
          Left = 9
          Top = 45
          Width = 110
          Height = 15
          Caption = 'E-Mail Task Watcher:'
        end
        object lWatchEventsCaption: TLabel
          Left = 9
          Top = 72
          Width = 74
          Height = 15
          Caption = 'Watch Events:'
        end
        object ckWatchStart: TCheckBox
          Left = 134
          Top = 73
          Width = 249
          Height = 16
          Caption = 'Task Start'
          TabOrder = 2
        end
        object ckWatchComplete: TCheckBox
          Left = 134
          Top = 92
          Width = 249
          Height = 18
          Caption = 'Task Completed'
          TabOrder = 3
        end
        object ckWatchSkip: TCheckBox
          Left = 134
          Top = 112
          Width = 249
          Height = 17
          Caption = 'Task Skipped'
          TabOrder = 4
        end
        object ckWatchAssignedChange: TCheckBox
          Left = 134
          Top = 133
          Width = 249
          Height = 16
          Caption = 'Assigned To Changed'
          TabOrder = 5
        end
        object ckWatchDueDateChange: TCheckBox
          Left = 134
          Top = 151
          Width = 249
          Height = 17
          Caption = 'Due Date Changed'
          TabOrder = 6
        end
        object ckWatchOverDue: TCheckBox
          Left = 134
          Top = 172
          Width = 249
          Height = 17
          Caption = 'Over Due'
          TabOrder = 7
        end
        object ckWatchUndo: TCheckBox
          Left = 134
          Top = 193
          Width = 249
          Height = 15
          Caption = 'Task Undone'
          TabOrder = 8
        end
        object dblEmailOverdue: TcxImageComboBox
          Left = 134
          Top = 14
          Properties.ClearKey = 46
          Properties.ImmediatePost = True
          Properties.Items = <>
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 0
          Width = 249
        end
        object dblWatcher: TcxImageComboBox
          Left = 134
          Top = 42
          Properties.ClearKey = 46
          Properties.ImmediatePost = True
          Properties.Items = <>
          Properties.OnChange = dblWatcherPropertiesChange
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 1
          Width = 249
        end
      end
    end
    object tsFeeDate: TcxTabSheet
      Caption = 'Fee / Linked Date'
      ImageIndex = 2
      object gbLinkDueDate: TGroupBox
        Left = 6
        Top = 7
        Width = 390
        Height = 98
        Caption = 'Link Due Date'
        TabOrder = 0
        object lDaysFromLink: TLabel
          Left = 9
          Top = 17
          Width = 84
          Height = 15
          Caption = 'Days From Link:'
          FocusControl = eLinkDaysFrom
        end
        object lLinkedTo: TLabel
          Left = 10
          Top = 44
          Width = 54
          Height = 15
          Caption = 'Linked To:'
          FocusControl = dbcLinkDateTo
        end
        object lDateLinkRelated: TLabel
          Left = 9
          Top = 70
          Width = 42
          Height = 15
          Caption = 'Related:'
        end
        object eLinkDaysFrom: TDBEdit
          Left = 133
          Top = 14
          Width = 46
          Height = 23
          DataField = 'LINKDATEDAYSFROM'
          DataSource = dmWorkFlowDataModuleTasks.dsTaskTemplates
          TabOrder = 0
        end
        object cbLinkDateToRelated: TComboBox
          Left = 133
          Top = 67
          Width = 249
          Height = 23
          Style = csDropDownList
          DropDownCount = 16
          TabOrder = 2
          OnChange = cbLinkDateToRelatedChange
        end
        object dbcLinkDateTo: TcxComboBox
          Left = 133
          Top = 40
          Properties.ImmediatePost = True
          Properties.OnChange = dbcLinkDateToPropertiesChange
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 1
          Width = 249
        end
      end
      object gbFeeCreate: TGroupBox
        Left = 6
        Top = 114
        Width = 390
        Height = 74
        Caption = 'Fee Creation on Complete'
        TabOrder = 1
        object lFeeTemplate: TLabel
          Left = 9
          Top = 21
          Width = 73
          Height = 15
          Caption = 'Fee Template:'
        end
        object Label10: TLabel
          Left = 9
          Top = 46
          Width = 53
          Height = 15
          Caption = 'Show Fee:'
        end
        object dbeShowFee: TcxCheckBox
          Left = 129
          Top = 43
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          State = cbsGrayed
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 1
        end
        object cmbFeeTemplate: TcxImageComboBox
          Left = 133
          Top = 20
          Properties.ClearKey = 46
          Properties.DropDownRows = 20
          Properties.ImmediatePost = True
          Properties.Items = <>
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 0
          Width = 249
        end
      end
    end
    object tsDocuments: TcxTabSheet
      Caption = 'Document Template'
      ImageIndex = 3
      DesignSize = (
        429
        354)
      object dbgDocs: TcxGrid
        Left = 0
        Top = 8
        Width = 426
        Height = 283
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvDocs: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 58
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 14
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          object tvDocsDOCUMENTNAME: TcxGridColumn
            Caption = 'Name'
            MinWidth = 23
          end
          object tvDocsID: TcxGridColumn
            Visible = False
            MinWidth = 23
          end
        end
        object dbgDocsLevel1: TcxGridLevel
          GridView = tvDocs
        end
      end
      object bnAddDoc: TButton
        Left = 139
        Top = 321
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Add'
        TabOrder = 1
        OnClick = bnAddDocClick
        ExplicitTop = 299
      end
      object bnDeleteDoc: TButton
        Left = 218
        Top = 321
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Delete'
        TabOrder = 2
        OnClick = bnDeleteDocClick
        ExplicitTop = 299
      end
    end
    object tabDataFields: TcxTabSheet
      Caption = 'Data Fields'
      ImageIndex = 4
      OnShow = tabDataFieldsShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxSplitter1: TcxSplitter
        Left = 204
        Top = 0
        Width = 8
        Height = 332
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 56
        PositionAfterOpen = 35
        MinSize = 35
        Control = Panel2
      end
      object Panel1: TPanel
        Left = 213
        Top = 0
        Width = 216
        Height = 332
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 1
        object Label12: TLabel
          Left = 3
          Top = 5
          Width = 48
          Height = 15
          Caption = 'Assigned'
        end
        object grdAssignedFields: TcxGrid
          Left = 0
          Top = 22
          Width = 213
          Height = 310
          Align = alCustom
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvAssignedFields: TcxGridDBTableView
            OnDragDrop = tvAssignedFieldsDragDrop
            OnDragOver = tvAssignedFieldsDragOver
            OnEndDrag = tvAssignedFieldsEndDrag
            OnMouseDown = tvFieldsAvailableMouseDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsAssignedFields
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 58
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.IndicatorWidth = 14
            Preview.LeftIndent = 23
            Preview.RightIndent = 6
            Styles.Group = dmAxiom.UnreadStyle
            object tvAssignedFieldsSEQ: TcxGridDBColumn
              Caption = 'Seq'
              DataBinding.FieldName = 'SEQ'
              MinWidth = 35
              Width = 35
            end
            object tvAssignedFieldsCAPTION: TcxGridDBColumn
              DataBinding.FieldName = 'CAPTION'
              MinWidth = 23
              Options.Editing = False
              Options.Focusing = False
            end
            object tvAssignedFieldsFIELDNAME: TcxGridDBColumn
              DataBinding.FieldName = 'FIELDNAME'
              Visible = False
              MinWidth = 23
              VisibleForCustomization = False
            end
            object tvAssignedFieldsDATAFORM: TcxGridDBColumn
              DataBinding.FieldName = 'DATAFORM'
              Visible = False
              GroupIndex = 0
              MinWidth = 23
              VisibleForCustomization = False
            end
            object tvAssignedFieldsWORKFLOWTYPECODE: TcxGridDBColumn
              DataBinding.FieldName = 'WORKFLOWTYPECODE'
              Visible = False
              MinWidth = 23
              VisibleForCustomization = False
            end
            object tvAssignedFieldsWKFLOW_LINEID: TcxGridDBColumn
              DataBinding.FieldName = 'WKFLOW_LINEID'
              Visible = False
              MinWidth = 23
              VisibleForCustomization = False
            end
          end
          object lvAssignedFields: TcxGridLevel
            GridView = tvAssignedFields
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 204
        Height = 332
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 2
        object Label11: TLabel
          Left = 6
          Top = 5
          Width = 48
          Height = 15
          Caption = 'Available'
        end
        object grdAvailable: TcxGrid
          Left = 0
          Top = 22
          Width = 204
          Height = 310
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvFieldsAvailable: TcxGridDBTableView
            OnDragDrop = tvFieldsAvailableDragDrop
            OnDragOver = tvAssignedFieldsDragOver
            OnEndDrag = tvFieldsAvailableEndDrag
            OnMouseDown = tvFieldsAvailableMouseDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDataFields
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsBehavior.CellHints = True
            OptionsBehavior.DragDropText = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 58
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.IndicatorWidth = 14
            Preview.LeftIndent = 23
            Preview.RightIndent = 6
            Styles.Group = dmAxiom.UnreadStyle
            object tvFieldsAvailableCAPTION: TcxGridDBColumn
              DataBinding.FieldName = 'FIELDNAME'
              MinWidth = 23
            end
            object tvFieldsAvailableNAME: TcxGridDBColumn
              DataBinding.FieldName = 'FIELDNAME'
              Visible = False
              MinWidth = 23
              VisibleForCustomization = False
            end
            object tvFieldsAvailableDATAFORM: TcxGridDBColumn
              Caption = 'Form'
              DataBinding.FieldName = 'DATAFORM'
              Visible = False
              GroupIndex = 0
              MinWidth = 23
              VisibleForCustomization = False
            end
          end
          object grdAvailableLevel1: TcxGridLevel
            GridView = tvFieldsAvailable
          end
        end
      end
    end
  end
  object qryDataFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from dataformfield FT, dataform df '
      'WHERE '
      
        'NOT EXISTS (SELECT 1 FROM WORKFLOW_DATAFORMFIELD WDF WHERE WDF.F' +
        'IELDNAME = FT.FIELDNAME'
      '            AND WDF.WKFLOW_LINEID = :WKFLOW_LINEID'
      '            AND WDF.DATAFORM = FT.DATAFORM)'
      'AND ft.DATAFORM = df.CODE'
      'order by 1')
    Left = 346
    Top = 505
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'WKFLOW_LINEID'
        Value = nil
      end>
  end
  object dsDataFields: TUniDataSource
    DataSet = qryDataFields
    Left = 394
    Top = 505
  end
  object dsAssignedFields: TUniDataSource
    DataSet = qryAssignedFields
    Left = 84
    Top = 557
  end
  object qryAssignedFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT WDF.*, WDF.ROWID FROM '
      'WORKFLOW_DATAFORMFIELD WDF '
      'WHERE WDF.WORKFLOWTYPECODE = :WORKFLOWTYPECODE'
      'AND WDF.WKFLOW_LINEID = :WKFLOW_LINEID')
    Left = 21
    Top = 546
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'WORKFLOWTYPECODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WKFLOW_LINEID'
        Value = nil
      end>
  end
  object qryDeleteAssignedFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM '
      'WORKFLOW_DATAFORMFIELD WDF '
      'WHERE '
      'WDF.WKFLOW_LINEID = :DOCID'
      'AND WDF.DATAFORM = :DATAFORM'
      'AND fieldname= :fieldname')
    Left = 403
    Top = 469
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOCID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DATAFORM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fieldname'
        Value = nil
      end>
  end
  object tbTeam: TUniTable
    TableName = 'TEAM'
    OrderFields = 'CODE'
    Connection = dmAxiom.uniInsight
    ReadOnly = True
    KeyFields = 'CODE'
    Filter = 'active=true'
    FilterOptions = [foCaseInsensitive]
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 29
    Top = 484
    object StringField1: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object tbTeamDESCR: TStringField
      FieldName = 'DESCR'
      Size = 50
    end
  end
  object dsTeam: TDataSource
    AutoEdit = False
    DataSet = tbTeam
    Left = 98
    Top = 481
  end
end
