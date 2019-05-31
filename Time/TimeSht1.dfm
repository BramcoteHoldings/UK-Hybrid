object frmTimeSheet: TfrmTimeSheet
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Time Sheet'
  ClientHeight = 709
  ClientWidth = 1294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 653
    Width = 1294
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1294
      33)
    object chkNoExit: TcxCheckBox
      Left = 6
      Top = 9
      Anchors = [akLeft, akBottom]
      Caption = '&Keep form open after posting?'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Transparent = True
    end
    object lblTotalUnits: TcxLabel
      Left = 527
      Top = 14
      Anchors = [akLeft, akBottom]
      Caption = 'Total'
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Style.TextColor = clBlue
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      AnchorY = 21
    end
    object btnOk: TcxButton
      Left = 1199
      Top = 5
      Width = 85
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = '&Process'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
        00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF808080FF000000FFFFFF
        FF00000000FF808080FF000000FF000000FFFFFFFF00A5CE98FF459F3CFF2E93
        35FF2C8E3BFF25842DFF5B9F54FFECF3E9FF808080FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00808080FF000000FFFFFFFF002F9724FF2D9833FF2D93
        37FF2D8E3AFF2E8A3FFF18771FFF808080FF808080FFFFFFFF00808080FF0000
        00FF808080FFFFFFFF00000000FF000000FF000000FF2F9724FF2D9833FF2D93
        37FF2D8E3AFF2E8A3FFF2A8130FF808080FFFFFFFF00FFFFFF00000000FF8080
        80FF000000FFFFFFFF00FFFFFF00808080FF000000FF2F9724FF2D9833FF2D93
        37FF2D8E3AFF2E8A3FFF2A812FFF808080FF808080FFFFFFFF00808080FF0000
        00FF808080FFFFFFFF00000000FF000000FF000000FF2F9724FF2D9833FF2D93
        37FF2D8E3AFF2E8A3FFF2A812FFF539F58FF808080FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00808080FF000000FF2D8A3BFF2F9724FF2D9833FF2D93
        37FF2D8E3AFF2E8A3FFF2A812FFF539F58FF808080FF808080FF000000FFFFFF
        FF00000000FF808080FF000000FF000000FF2D8A3BFF30941EFF2F8F2AFF3088
        2FFF30892EFF2F8C2DFF2B8421FF54A055FF449A55FF479649FF808080FF8080
        80FF808080FF808080FF37982BFF64A556FF2F8A2BFF31832AFF2E8042FF2E82
        42FF2D8A3DFF2D9538FF2A951FFF53A751FF459954FF46964EFF549956FF297E
        35FF2D8A3EFF2F9633FF419F37FF549C5BFF2C9336FF71A969FF328241FF2D84
        3FFF2D8D3BFF289631FF49A63EFF5EA755FF429440FF238027FF5C9F5FFFBDD7
        AFFFCDE1BFFFC4DDB8FFD3E4CEFF94C08AFF98C68CFFFFFFFF00E0ECD8FFA2C8
        98FF81B874FF7FB375FF72A97CFF418F53FF298938FF27932DFF52A747FFC1DD
        B6FFFFFFFF00FFFFFF00FFFFFF00FEFEFEFFF2F9F2FFFFFFFF00FFFFFF00FFFF
        FF00CBE0C2FF52955BFF2B7E43FF2D8540FF2D8F39FF25962CFF58AE52FFCAE2
        C1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D8E7D1FF7FB276FF65A760FF66AC5EFF84BD75FFE1EEDBFFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 2
      Visible = False
      OnClick = btnOKClick
    end
    object lblTimerDisp: TcxLabel
      Left = 339
      Top = 11
      Anchors = [akLeft, akBottom]
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.TextStyle = []
      Style.IsFontAssigned = True
      Properties.LineOptions.InnerColor = clGrayText
      Properties.ShowAccelChar = False
      Transparent = True
    end
    object cbTimeSheetViewByRecorder: TcxCheckBox
      Left = 215
      Top = 9
      Hint = 'Show only entries entered by User logged in'
      Caption = 'Show my Inputs'
      ParentShowHint = False
      ShowHint = True
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Transparent = True
      OnClick = cbTimeSheetViewByRecorderClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 133
    Width = 1294
    Height = 520
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 7
    object dbgrFeeTmp: TcxGrid
      Left = 0
      Top = 0
      Width = 1294
      Height = 520
      Align = alClient
      TabOrder = 0
      OnEnter = dbgrFeeTmpEnter
      OnExit = dbgrFeeTmpExit
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      object tvFeeTmp: TcxGridDBTableView
        PopupMenu = popGrid
        OnKeyDown = tvFeeTmpKeyDown
        OnMouseDown = tvFeeTmpNewMouseDown
        Navigator.Buttons.CustomButtons = <>
        OnEditing = tvFeeTmpEditing
        OnEditKeyDown = tvFeeTmpEditKeyDown
        OnEditKeyPress = tvFeeTmpEditKeyPress
        OnFocusedItemChanged = tvFeeTmpFocusedItemChanged
        OnFocusedRecordChanged = tvFeeTmpFocusedRecordChanged
        OnInitEdit = tvFeeTmpNewInitEdit
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsFeeTmp
        DataController.DetailKeyFieldNames = 'UNIQUEID'
        DataController.KeyFieldNames = 'UNIQUEID'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##0'
            Kind = skSum
            FieldName = 'UNITS'
            Column = tvFeeTmpUNITS
          end
          item
            Format = '$##0.00'
            Kind = skSum
            FieldName = 'AMOUNT'
            Column = tvFeeTmpAMOUNT
          end>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.InfoText = 'Click here to add a new  Fee'
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.HintHidePause = 3
        OptionsBehavior.ColumnHeaderHints = False
        OptionsBehavior.EditAutoHeight = eahRow
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 3
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Styles.Background = cxStyle1
        Styles.OnGetContentStyle = tvFeeTmpStylesGetContentStyle
        object tvFeeTmpPROCESS: TcxGridDBColumn
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          MinWidth = 30
          Options.Filtering = False
          Options.Moving = False
          VisibleForCustomization = False
          Width = 30
        end
        object tvFeeTmpCREATED: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'CREATED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.AutoSelect = False
          Properties.DateOnError = deToday
          Properties.ImmediatePost = True
          Properties.InputKind = ikStandard
          Properties.Kind = ckDateTime
          Properties.PostPopupValueOnTab = True
          Properties.ReadOnly = False
          Properties.ShowTime = False
          Properties.WeekNumbers = True
          Options.Moving = False
          Width = 62
        end
        object tvFeeTmpFILEID: TcxGridDBColumn
          Caption = 'Matter'
          DataBinding.FieldName = 'FILEID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.CaseSensitiveSearch = True
          Properties.CharCase = ecUpperCase
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsEditList
          Properties.DropDownRows = 25
          Properties.ImmediatePost = True
          Properties.IncrementalFiltering = False
          Properties.KeyFieldNames = 'FILEID'
          Properties.ListColumns = <
            item
              Caption = 'Matter'
              Width = 80
              FieldName = 'FILEID'
            end
            item
              Caption = 'Client'
              Width = 160
              FieldName = 'SEARCH'
            end
            item
              Caption = 'Matter Description'
              FieldName = 'SHORTDESCR'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListSource = dsMRUList
          Properties.ValidateOnEnter = False
          Properties.OnCloseUp = tvFeeTmpFILEIDPropertiesCloseUp
          Properties.OnInitPopup = tvFeeTmpFILEIDPropertiesInitPopup
          Properties.OnValidate = tvFeeTmpREFNOPropertiesValidate
          Options.FilteringMRUItemsList = False
          Options.Moving = False
          Width = 95
        end
        object tvFeeTmpTYPE: TcxGridDBColumn
          Caption = 'Type'
          DataBinding.FieldName = 'TIME_TYPE'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.CharCase = ecUpperCase
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 3
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'M'
            'O'
            'H')
          Properties.OnEditValueChanged = tvFeeTmpTYPEPropertiesEditValueChanged
          Properties.OnValidate = tvFeeTmpTYPEPropertiesValidate
          MinWidth = 44
          Options.HorzSizing = False
          Width = 44
        end
        object tvFeeTmpMATTERDETAILS: TcxGridDBColumn
          Caption = 'Matter Details'
          DataBinding.FieldName = 'MATLOCATE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Focusing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 177
        end
        object tvFeeTmpAUTHOR: TcxGridDBColumn
          Caption = 'Author'
          DataBinding.FieldName = 'AUTHOR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 15
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end
            item
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsFeeEarners
          Visible = False
          Options.Grouping = False
          Width = 118
        end
        object tvFeeTmpFEE_TEMPLATE: TcxGridDBColumn
          Caption = 'Task'
          DataBinding.FieldName = 'FEE_TEMPLATE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 55
              FieldName = 'CODE'
            end
            item
              Width = 250
              FieldName = 'DESCR'
            end
            item
              FieldName = 'BILLTYPE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsScaleCostsList
          Properties.OnCloseUp = tvFeeTmpFEE_TEMPLATEPropertiesCloseUp
          Properties.OnInitPopup = tvFeeTmpFEE_TEMPLATEPropertiesInitPopup
          Properties.OnValidate = tvFeeTmpFEE_TEMPLATEPropertiesValidate
          Width = 106
        end
        object tvFeeTmpREASON: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'REASON'
          PropertiesClassName = 'TcxPopupEditProperties'
          Properties.ImmediateDropDownWhenActivated = False
          Properties.OnCloseUp = tvFeeTmpREASONPropertiesCloseUp
          Properties.OnInitPopup = tvFeeTmpREASONPropertiesInitPopup
          Properties.OnValidate = tvFeeTmpREASONPropertiesValidate
          Width = 166
        end
        object tvFeeTmpNOTES: TcxGridDBColumn
          DataBinding.FieldName = 'Notes'
          PropertiesClassName = 'TcxRichEditProperties'
          Properties.WantTabs = True
          Width = 114
        end
        object tvFeeTmpITEMS: TcxGridDBColumn
          Caption = 'Items'
          DataBinding.FieldName = 'ITEMS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = tvFeeTmpITEMSPropertiesValidate
          Options.Focusing = False
          Width = 59
        end
        object tvFeeTmpUNITS: TcxGridDBColumn
          Caption = 'Units'
          DataBinding.FieldName = 'UNITS'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Properties.OnValidate = tvFeeTmpUNITSPropertiesValidate
          HeaderAlignmentHorz = taRightJustify
          Options.Moving = False
          Width = 59
        end
        object tvFeeTmpRATE: TcxGridDBColumn
          Caption = 'Rate'
          DataBinding.FieldName = 'RATE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.OnValidate = tvFeeTmpRATEPropertiesValidate
          HeaderAlignmentHorz = taRightJustify
          Options.Moving = False
          Width = 61
        end
        object tvFeeTmpAMOUNT: TcxGridDBColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'AMOUNT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taRightJustify
          Options.Moving = False
          Width = 60
        end
        object tvFeeTmpELAPSED: TcxGridDBColumn
          Caption = 'Elapsed'
          DataBinding.FieldName = 'ELAPSED'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 48
          Options.Editing = False
          Options.Focusing = False
          Options.HorzSizing = False
          Width = 48
        end
        object tvFeeTmpNMATTER: TcxGridDBColumn
          DataBinding.FieldName = 'NMATTER'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          Options.Moving = False
          VisibleForCustomization = False
        end
        object tvFeeTmpUNIT: TcxGridDBColumn
          DataBinding.FieldName = 'UNIT'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          Options.Moving = False
          VisibleForCustomization = False
        end
        object tvFeeTmpTAXCODE: TcxGridDBColumn
          DataBinding.FieldName = 'TAXCODE'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          Options.Moving = False
          Options.Sorting = False
          VisibleForCustomization = False
        end
        object tvFeeTmpBILLTYPE: TcxGridDBColumn
          Caption = 'Billable'
          DataBinding.FieldName = 'BILLABLE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          MinWidth = 48
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Styles.Content = dmAxiom.cxStyle4
          VisibleForCustomization = False
          Width = 48
        end
        object tvFeeTmpTASK_COMPLETED: TcxGridDBColumn
          Caption = 'Task Completed'
          DataBinding.FieldName = 'TASK_COMPLETED'
        end
        object tvFeeTmpNFEE: TcxGridDBColumn
          DataBinding.FieldName = 'NFEE'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.FilteringMRUItemsList = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          VisibleForCustomization = False
        end
        object tvFeeTmpUNIQUEID: TcxGridDBColumn
          DataBinding.FieldName = 'UNIQUEID'
          Visible = False
          VisibleForCustomization = False
        end
        object tvFeeTmpIS_TASK: TcxGridDBColumn
          DataBinding.FieldName = 'IS_TASK'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object tvFeeTmpNew: TcxGridDBTableView
        PopupMenu = popGrid
        OnMouseDown = tvFeeTmpNewMouseDown
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = tvFeeTmpNewCellClick
        OnEditing = tvFeeTmpEditing
        OnEditKeyDown = tvFeeTmpNewEditKeyDown
        OnEditKeyPress = tvFeeTmpEditKeyPress
        OnFocusedItemChanged = tvFeeTmpFocusedItemChanged
        OnFocusedRecordChanged = tvFeeTmpFocusedRecordChanged
        OnInitEdit = tvFeeTmpNewInitEdit
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsFeeTmp
        DataController.KeyFieldNames = 'UNIQUEID'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',.00'
            Kind = skSum
            FieldName = 'AMOUNT'
            Column = tvFeeTmpNewAMOUNT
          end
          item
            Kind = skSum
            FieldName = 'UNITS'
            Column = tvFeeTmpNewUNITS
          end
          item
            Kind = skSum
            FieldName = 'ITEMS'
            Column = tvFeeTmpNewITEMS
          end
          item
            Kind = skSum
            FieldName = 'TASK_AMOUNT'
            Column = tvFeeTmpNewTASK_AMOUNT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.EditAutoHeight = eahEditor
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = tvFeeTmpStylesGetContentStyle
        OnColumnHeaderClick = tvFeeTmpNewColumnHeaderClick
        object tvFeeTmpNewPROCESS: TcxGridDBColumn
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00000000FF000000FF000000FFFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00000000FF000000FF000000FF000000FF000000FFFFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00000000FF000000FFFFFFFF00000000FF000000FF000000FFFFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00000000FF000000FF0000
            00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
            00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 30
          VisibleForCustomization = False
          Width = 30
          OnHeaderClick = tvFeeTmpNewPROCESSHeaderClick
        end
        object tvFeeTmpNewAUTHOR: TcxGridDBColumn
          Caption = 'Author'
          DataBinding.FieldName = 'AUTHOR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
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
          Properties.ListSource = dsFeeEarners
          Properties.OnEditValueChanged = tvFeeTmpNewAUTHORPropertiesEditValueChanged
          Options.Editing = False
          Options.Focusing = False
          Width = 44
        end
        object tvFeeTmpNewCREATED: TcxGridDBColumn
          Caption = 'Created'
          DataBinding.FieldName = 'CREATED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          Properties.WeekNumbers = True
          VisibleForCustomization = False
          Width = 70
        end
        object tvFeeTmpNewFILEID: TcxGridDBColumn
          Caption = 'Matter'
          DataBinding.FieldName = 'FILEID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.CharCase = ecUpperCase
          Properties.ClearKey = 16430
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsEditList
          Properties.DropDownRows = 25
          Properties.KeyFieldNames = 'FILEID'
          Properties.ListColumns = <
            item
              Caption = 'Matter'
              FieldName = 'FILEID'
            end
            item
              Caption = 'Client'
              FieldName = 'SEARCH'
            end
            item
              Caption = 'Description'
              FieldName = 'SHORTDESCR'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsMRUList
          Properties.OnCloseUp = tvFeeTmpFILEIDPropertiesCloseUp
          Properties.OnEditValueChanged = tvFeeTmpFILEIDPropertiesEditValueChanged
          Properties.OnInitPopup = tvFeeTmpFILEIDPropertiesInitPopup
          VisibleForCustomization = False
          Width = 54
        end
        object tvFeeTmpNewTYPE: TcxGridDBColumn
          Caption = 'Type'
          DataBinding.FieldName = 'TIME_TYPE'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'M'
            'O'
            'H')
          Properties.OnEditValueChanged = tvFeeTmpTYPEPropertiesEditValueChanged
          Properties.OnValidate = tvFeeTmpTYPEPropertiesValidate
          Width = 28
        end
        object tvFeeTmpNewMATTERDETAILS: TcxGridDBColumn
          Caption = 'Matter Details'
          DataBinding.FieldName = 'MATLOCATE'
          Options.Editing = False
          Options.Focusing = False
          VisibleForCustomization = False
          Width = 141
        end
        object tvFeeTmptotal_fee_amt_pct: TcxGridDBColumn
          DataBinding.FieldName = 'total_fee_amt_pct'
          PropertiesClassName = 'TcxProgressBarProperties'
          Properties.BeginColor = clGreen
          Properties.EndColor = clGreen
          Properties.OverloadValue = 85.000000000000000000
          Visible = False
          VisibleForCustomization = False
          IsCaptionAssigned = True
        end
        object tvFeeTmpNewFEE_TEMPLATE: TcxGridDBColumn
          Caption = 'Task'
          DataBinding.FieldName = 'FEE_TEMPLATE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Code'
              Width = 55
              FieldName = 'CODE'
            end
            item
              Caption = 'Description'
              Width = 250
              FieldName = 'DESCR'
            end
            item
              Caption = 'Type'
              FieldName = 'BILLTYPE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsScaleCostsList
          Properties.OnCloseUp = tvFeeTmpFEE_TEMPLATEPropertiesCloseUp
          Properties.OnInitPopup = tvFeeTmpFEE_TEMPLATEPropertiesInitPopup
          VisibleForCustomization = False
          Width = 59
        end
        object tvFeeTmpNewREASON: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'REASON'
          PropertiesClassName = 'TcxRichEditProperties'
          Properties.WantTabs = True
          Options.Moving = False
          VisibleForCustomization = False
          Width = 145
        end
        object tvFeeTmpNewNOTES: TcxGridDBColumn
          Caption = 'Notes'
          DataBinding.FieldName = 'NOTES'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.WantTabs = True
          Properties.OnChange = tvFeeTmpNewNOTESPropertiesChange
          Width = 104
        end
        object tvFeeTmpNewITEMS: TcxGridDBColumn
          Caption = 'Items'
          DataBinding.FieldName = 'ITEMS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = tvFeeTmpITEMSPropertiesValidate
          Width = 37
        end
        object tvFeeTmpNeWTIME_CODE: TcxGridDBColumn
          Caption = 'Item Type'
          DataBinding.FieldName = 'TIME_CODE'
          Options.Editing = False
          Options.Focusing = False
          Width = 54
        end
        object tvFeeTmpNewUNITS: TcxGridDBColumn
          Caption = 'Units'
          DataBinding.FieldName = 'UNITS'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.DisplayFormat = True
          Properties.AssignedValues.EditFormat = True
          Properties.ImmediatePost = True
          Properties.Increment = 0.500000000000000000
          Properties.MaxValue = 500.000000000000000000
          Properties.ValueType = vtFloat
          Properties.OnValidate = tvFeeTmpUNITSPropertiesValidate
          Options.Moving = False
          VisibleForCustomization = False
          Width = 51
        end
        object tvFeeTmpNewRATE: TcxGridDBColumn
          Caption = 'Rate'
          DataBinding.FieldName = 'RATE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.OnValidate = tvFeeTmpRATEPropertiesValidate
          HeaderAlignmentHorz = taRightJustify
          VisibleForCustomization = False
          Width = 47
        end
        object tvFeeTmpNewAMOUNT: TcxGridDBColumn
          Caption = 'Time Amount'
          DataBinding.FieldName = 'AMOUNT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.OnChange = tvFeeTmpNewAMOUNTPropertiesChange
          HeaderAlignmentHorz = taRightJustify
          VisibleForCustomization = False
          Width = 76
        end
        object tvFeeTmpNewBILLTYPE: TcxGridDBColumn
          Caption = 'Billable'
          DataBinding.FieldName = 'BILLABLE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 60
          Options.Editing = False
          Options.Focusing = False
          Options.HorzSizing = False
          Width = 60
        end
        object tvFeeTmpNewTASK_AMOUNT: TcxGridDBColumn
          Caption = 'Item Amount'
          DataBinding.FieldName = 'TASK_AMOUNT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Options.Focusing = False
          Width = 49
        end
        object tvFeeTmpNewTASK_COMPLETED: TcxGridDBColumn
          Caption = 'Task Completed'
          DataBinding.FieldName = 'TASK_COMPLETED'
          Width = 85
        end
        object tvFeeTmpNewNMATTER: TcxGridDBColumn
          DataBinding.FieldName = 'NMATTER'
          Visible = False
          VisibleForCustomization = False
        end
        object tvFeeTmpNewUNIT: TcxGridDBColumn
          DataBinding.FieldName = 'UNIT'
          Visible = False
          VisibleForCustomization = False
        end
        object tvFeeTmpNewTAXCODE: TcxGridDBColumn
          DataBinding.FieldName = 'TAXCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object tvFeeTmpNewNFEE: TcxGridDBColumn
          DataBinding.FieldName = 'NFEE'
          Visible = False
          VisibleForCustomization = False
        end
        object tvFeeTmpNewUNIQUEID: TcxGridDBColumn
          DataBinding.FieldName = 'UNIQUEID'
          Visible = False
          VisibleForCustomization = False
        end
        object tvFeeTmpNewIS_TASK: TcxGridDBColumn
          DataBinding.FieldName = 'IS_TASK'
          Visible = False
          VisibleForCustomization = False
        end
        object tvFeeTmpNewELAPSED: TcxGridDBColumn
          Caption = 'Elapsed'
          DataBinding.FieldName = 'ELAPSED'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object lvFeeTmp: TcxGridLevel
        GridView = tvFeeTmpNew
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 28
    Width = 1294
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      1294
      105)
    object cxGroupBox1: TcxGroupBox
      Left = 4
      Top = 0
      Caption = 'Defaults'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Transparent = True
      Height = 98
      Width = 262
      object Label2: TLabel
        Left = 10
        Top = 43
        Width = 24
        Height = 15
        Caption = 'Date'
      end
      object Label4: TLabel
        Left = 10
        Top = 66
        Width = 37
        Height = 15
        Caption = 'Author'
      end
      object dtpDate: TcxDateEdit
        Left = 55
        Top = 39
        AutoSize = False
        Properties.DateOnError = deToday
        Properties.ImmediatePost = True
        Properties.InputKind = ikStandard
        Properties.ShowTime = False
        Properties.OnChange = dtpDatePropertiesChange
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 22
        Width = 101
      end
      object cbAuthor: TcxLookupComboBox
        Left = 55
        Top = 63
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            Width = 150
            FieldName = 'NAME'
          end
          item
            Caption = 'Code'
            Width = 50
            FieldName = 'CODE'
          end>
        Properties.ListSource = dsFeeEarners
        Properties.OnChange = cbAuthorPropertiesChange
        Style.LookAndFeel.NativeStyle = True
        Style.PopupBorderStyle = epbsSingle
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 197
      end
      object lblDay: TcxLabel
        Left = 159
        Top = 39
        AutoSize = False
        Transparent = True
        Height = 19
        Width = 75
      end
      object lblNext: TcxLabel
        Left = 132
        Top = 15
        Hint = 'Next Day'
        AutoSize = False
        Caption = '>>'
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.IsFontAssigned = True
        StyleFocused.BorderStyle = ebsSingle
        StyleHot.BorderStyle = ebsThick
        Properties.Alignment.Horz = taCenter
        Transparent = True
        OnClick = lblNextClick
        Height = 22
        Width = 24
        AnchorX = 144
      end
      object lblPrev: TcxLabel
        Left = 55
        Top = 15
        Hint = 'Previous Day'
        AutoSize = False
        Caption = '<<'
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleFocused.BorderStyle = ebsSingle
        StyleHot.BorderStyle = ebsSingle
        Properties.Alignment.Horz = taCenter
        Transparent = True
        OnClick = lblPrevClick
        Height = 22
        Width = 24
        AnchorX = 67
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 274
      Top = 0
      Caption = 'Units'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Transparent = True
      Height = 98
      Width = 298
      object lblUnPostedMatters: TcxLabel
        Left = 69
        Top = 19
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 19
        Width = 64
        AnchorX = 133
      end
      object lblUnPostedOverhead: TcxLabel
        Left = 223
        Top = 20
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 19
        Width = 64
        AnchorX = 287
      end
      object lblUnPostedHeld: TcxLabel
        Left = 223
        Top = 43
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 18
        Width = 64
        AnchorX = 287
      end
      object cxLabel4: TcxLabel
        Left = 3
        Top = 18
        Caption = 'Billable'
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 162
        Top = 17
        Caption = 'Overhead'
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 162
        Top = 42
        Caption = 'Held'
        Transparent = True
      end
      object lblNonBillableMatters: TcxLabel
        Left = 69
        Top = 43
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 18
        Width = 64
        AnchorX = 133
      end
      object cxLabel2: TcxLabel
        Left = 3
        Top = 41
        Caption = 'Non-Billable'
        Transparent = True
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 63
        Caption = 'Daily Budget  - Units'
        Transparent = True
      end
      object lblDailyBudgetUnits: TcxLabel
        Left = 113
        Top = 65
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 19
        Width = 20
        AnchorX = 133
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 579
      Top = 0
      Caption = 'Amount'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Transparent = True
      Height = 98
      Width = 175
      object lblPostedMatters: TcxLabel
        Left = 78
        Top = 20
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 19
        Width = 86
        AnchorX = 164
      end
      object lblPostedOverhead: TcxLabel
        Left = 78
        Top = 65
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 19
        Width = 86
        AnchorX = 164
      end
      object lblNonBillableAmount: TcxLabel
        Left = 78
        Top = 43
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 18
        Width = 86
        AnchorX = 164
      end
      object cxLabel7: TcxLabel
        Left = 5
        Top = 18
        Caption = 'Billable'
        Transparent = True
      end
      object cxLabel8: TcxLabel
        Left = 5
        Top = 65
        Caption = 'Overhead'
        Transparent = True
      end
      object cxLabel9: TcxLabel
        Left = 5
        Top = 42
        Caption = 'Non Billable'
        Transparent = True
      end
    end
    object pnlBudgets: TPanel
      Left = 762
      Top = 14
      Width = 509
      Height = 76
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 3
      object lblTimeToday: TcxLabel
        Left = 8
        Top = 2
        Caption = 'Selected day'
        Style.TextStyle = []
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 78
      end
      object lblTimeMonth: TcxLabel
        Left = -2
        Top = 28
        Caption = 'Month to date'
        Style.TextStyle = []
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 78
      end
      object lblTimeYear: TcxLabel
        Left = 12
        Top = 53
        Caption = 'Year to date'
        Style.TextStyle = []
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 78
      end
      object progbarMyYearlyTotal: TcxProgressBar
        Left = 82
        Top = 52
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Properties.BarStyle = cxbsGradient
        Properties.BeginColor = clLime
        Properties.EndColor = clGreen
        Properties.OverloadBeginColor = 36095
        Properties.OverloadEndColor = clGreen
        Properties.OverloadValue = 50.000000000000000000
        Properties.PeakColor = clSilver
        Properties.PeakSize = 3
        Properties.ShowPeak = True
        Properties.SolidTextColor = True
        Style.BorderStyle = ebsUltraFlat
        Style.Color = clNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Transparent = True
        Height = 24
        Width = 227
      end
      object progBarMyMonthlyTotal: TcxProgressBar
        Left = 82
        Top = 26
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Properties.BarStyle = cxbsGradient
        Properties.BeginColor = clLime
        Properties.EndColor = clGreen
        Properties.OverloadBeginColor = 36095
        Properties.OverloadEndColor = clGreen
        Properties.OverloadValue = 50.000000000000000000
        Properties.PeakColor = clSilver
        Properties.PeakSize = 3
        Properties.ShowPeak = True
        Properties.SolidTextColor = True
        Style.BorderStyle = ebsUltraFlat
        Style.Color = clNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Transparent = True
        Height = 23
        Width = 227
      end
      object progBarMyDailyTotal: TcxProgressBar
        Left = 82
        Top = 0
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Properties.BarStyle = cxbsGradient
        Properties.BeginColor = clLime
        Properties.EndColor = clGreen
        Properties.OverloadBeginColor = 36095
        Properties.OverloadEndColor = clGreen
        Properties.OverloadValue = 50.000000000000000000
        Properties.PeakColor = clBlack
        Properties.PeakSize = 4
        Properties.PeakValue = 80.000000000000000000
        Properties.SolidTextColor = True
        Style.BorderStyle = ebsUltraFlat
        Style.Color = clNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Transparent = True
        Height = 23
        Width = 227
      end
      object lblMyDailyBudget: TcxLabel
        Left = 314
        Top = 3
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Transparent = True
      end
      object lblMyMonthlyBudget: TcxLabel
        Left = 315
        Top = 30
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Transparent = True
      end
      object lblMyYearlyBudget: TcxLabel
        Left = 315
        Top = 55
        Caption = '0'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Transparent = True
      end
    end
  end
  object sbarStatus: TStatusBar
    Left = 0
    Top = 686
    Width = 1294
    Height = 23
    Panels = <
      item
        Width = 200
      end
      item
        Width = 140
      end
      item
        Width = 140
      end
      item
        Width = 50
      end>
  end
  object dsFeeTmp: TUniDataSource
    DataSet = qryFeeTmp
    Left = 287
    Top = 208
  end
  object qryScaleCost: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(AMOUNT,0) as amount, nvl(RATE,0) as rate, DESCR, UNIT' +
        ', CODE, BILLTYPE, ZERO_FEE, DFLT_TIME_UNITS, DEFAULTTIME '
      'FROM SCALECOST '
      'WHERE CODE = :P_Code')
    Left = 689
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM BANK')
    Left = 625
    Top = 175
  end
  object qryFeeInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO FEE'
      
        '  (CREATED, DESCR, UNITS, MINS, UNIT, AUTHOR, RATE, NMATTER, NCL' +
        'IENT'
      '  , BILLED, TYPE, PARTNER, FILEID, BANK_ACCT, DEPT, EMP_TYPE'
      
        '  , PRIVATE, TAXCODE, AMOUNT, TAX, TIME_TYPE, BILLTYPE, TASK, IT' +
        'EMS, TASK_AMOUNT, NFEE'
      
        '  , LABELCOLOUR, PROGRAM_NAME, VERSION,EMPCODE, NOTES, DISCOUNT,' +
        ' VALUE, START_DATE, END_DATE, TIME_CODE, ITEM_AMOUNT, TASK_TAX, ' +
        'PROCESSING_UNIT)'
      'VALUES'
      
        '  (:CREATED, :DESCR, :UNITS, :MINS, :UNIT, :AUTHOR, :RATE, :NMAT' +
        'TER, :NCLIENT'
      '  , '#39'N'#39', '#39'N'#39', :PARTNER, :FILEID, :BANK_ACCT, :DEPT, :EMP_TYPE'
      
        '  , '#39'N'#39', :TAXCODE, :AMOUNT, :TAX, :TIME_TYPE, :BILLTYPE, :TASK, ' +
        ':ITEMS, :TASK_AMOUNT, :NFEE'
      
        '  , :LABELCOLOUR, :PROGRAM_NAME, :VERSION, :EMPCODE, :NOTES, :DI' +
        'SCOUNT, :VALUE, :START_DATE, :END_DATE, :TIME_CODE, :ITEM_AMOUNT' +
        ', :TASK_TAX, :PROCESSING_UNIT)')
    CachedUpdates = True
    Left = 605
    Top = 313
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
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MINS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RATE'
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
        Name = 'PARTNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
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
      end
      item
        DataType = ftUnknown
        Name = 'TIME_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TASK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ITEMS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TASK_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NFEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABELCOLOUR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROGRAM_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VERSION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMPCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOTES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISCOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VALUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'START_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'END_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIME_CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ITEM_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TASK_TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROCESSING_UNIT'
        Value = nil
      end>
  end
  object qFeeEarners: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME ||'#39' - '#39'|| code as name FROM EMPLOYEE WHERE'
      'ACTIVE = '#39'Y'#39' AND (ISFEEEARNER = '#39'Y'#39' OR ISTIME_RECORDER = '#39'Y'#39')'
      'ORDER BY NAME')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 175
    Top = 236
    object qFeeEarnersCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qFeeEarnersNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsFeeEarners: TDataSource
    DataSet = qFeeEarners
    Left = 317
    Top = 129
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1002
    Top = 19
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object stySelection: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
    object styFeeColour: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object styDefault: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object styMatter: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7649020
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7649020
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object styOverhead: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14982788
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14982788
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clWhite
    end
    object styHeld: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6610596
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6610596
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object styTaskCompColour: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGreen
    end
    object styTaskInCompColour: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clRed
    end
  end
  object qryTaxCode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM TAXTYPE ORDER BY CODE')
    Left = 386
    Top = 171
  end
  object dsTaxCode: TUniDataSource
    DataSet = qryTaxCode
    Left = 431
    Top = 176
  end
  object qryMSearch: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT fileid, nmatter, title, shortdescr'
      'FROM matter'
      'WHERE fileid = :p_fileid')
    Left = 499
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_fileid'
        Value = nil
      end>
  end
  object qryTempFeeInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FT.ROWID, FT.CREATED, FT.FILEID, FT.AUTHOR, FT.REASON, FT' +
        '.UNITS, FT.RATE, FT.AMOUNT,'
      
        'FT.TAXCODE, FT.TAX, FT.TAXRATE, FT.ELAPSED, FT.EMPCODE, FT.UNIQU' +
        'EID,FT.NFEE,'
      
        'decode(FT.TIME_TYPE, '#39'M'#39', M.TITLE || '#39' '#39' || M.SHORTDESCR, '#39'Overh' +
        'ead Time'#39') AS MATLOCATE, FT.NMATTER, FT.TIME_TYPE, FT.FEE_TEMPLA' +
        'TE,'
      
        'FT.ITEMS, FT.UNIT, FT.TASK_AMOUNT, FT.LABELCOLOUR, FT.BILLTYPE, ' +
        'FT.EMP_TYPE, FT.NOTES'
      'FROM FEETMP FT , MATTER M'
      'WHERE FT.AUTHOR=:AUTHOR'
      'AND FT.FILEID = M.FILEID (+)'
      'AND NVL(FT.TIME_TYPE,'#39'M'#39') <> '#39'H'#39
      'AND FT.NFEE IS NULL'
      'order by FT.uniqueid desc')
    Left = 551
    Top = 134
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end>
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   TRIM (m.fileid) AS fileid, TRIM (p.search) AS search,'
      '         TRIM (m.shortdescr) AS shortdescr, idx'
      '    FROM matter m, phonebook p, openlist o'
      '   WHERE o.author = :p_author'
      '     AND o.TYPE = :p_type'
      '     AND o.code = m.fileid'
      '     AND m.nclient = p.nclient'
      '     AND m.closed = 0'
      'UNION'
      'SELECT   '#39'Search...'#39', '#39#39', '#39#39', 999'
      '    FROM DUAL'
      'ORDER BY 4')
    Left = 632
    Top = 225
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
    Left = 695
    Top = 237
  end
  object qryFeeTmp: TUniQuery
    UpdatingTable = 'FEETMP'
    KeyFields = 'UNIQUEID'
    SQLInsert.Strings = (
      'INSERT INTO FEETMP'
      
        '  (FILEID, REASON, AMOUNT, UNIQUEID, CREATED, UNITS, RATE, AUTHO' +
        'R, EMPCODE, TAXCODE, '
      
        '  TAX, TAXRATE, ELAPSED, NMATTER, TIME_TYPE, FEE_TEMPLATE, MINS,' +
        ' LABELCOLOUR, ITEMS, '
      
        '  UNIT, TASK_AMOUNT, NFEE, BILLTYPE, FEEBASIS, EMP_TYPE, VERSION' +
        ', NOTES, MATLOCATE,'
      
        '  STATE, RESOURCEID, OPTIONS, EVENT_TYPE, CAPTION, TOTAL_FEE_AMT' +
        '_PCT, ITEM_AMOUNT, PROGRAM_NAME)'
      'VALUES'
      
        '  (:FILEID, :REASON, :AMOUNT, :UNIQUEID, :CREATED, :UNITS, :RATE' +
        ', :AUTHOR, :EMPCODE, :TAXCODE, '
      
        '  :TAX, :TAXRATE, :ELAPSED, :NMATTER, :TIME_TYPE, :FEE_TEMPLATE,' +
        ' :MINS, :LABELCOLOUR, :ITEMS, '
      
        '  :UNIT, :TASK_AMOUNT, :NFEE, :BILLTYPE, :FEEBASIS, :EMP_TYPE, :' +
        'VERSION, :NOTES, :MATLOCATE,'
      
        '  :STATE, :RESOURCEID, :OPTIONS, :EVENT_TYPE, :CAPTION, :TOTAL_F' +
        'EE_AMT_PCT, :ITEM_AMOUNT, :PROGRAM_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM FEETMP'
      'WHERE'
      '  UNIQUEID = :Old_UNIQUEID')
    SQLUpdate.Strings = (
      'UPDATE FEETMP'
      'SET'
      
        '  FILEID = :FILEID, REASON = :REASON, AMOUNT = :AMOUNT, UNIQUEID' +
        ' = :UNIQUEID, '
      
        '  CREATED = :CREATED, UNITS = :UNITS, RATE = :RATE, AUTHOR = :AU' +
        'THOR, '
      
        '  EMPCODE = :EMPCODE, TAXCODE = :TAXCODE, TAX = :TAX, TAXRATE = ' +
        ':TAXRATE, '
      
        '  ELAPSED = :ELAPSED, NMATTER = :NMATTER, TIME_TYPE = :TIME_TYPE' +
        ', FEE_TEMPLATE = :FEE_TEMPLATE, '
      
        '  MINS = :MINS, LABELCOLOUR = :LABELCOLOUR, STATE = :STATE, RESO' +
        'URCEID = :RESOURCEID, '
      
        '  OPTIONS = :OPTIONS, EVENT_TYPE = :EVENT_TYPE, CAPTION = :CAPTI' +
        'ON, ITEMS = :ITEMS, '
      
        '  UNIT = :UNIT, TASK_AMOUNT = :TASK_AMOUNT, NFEE = :NFEE, BILLTY' +
        'PE = :BILLTYPE, '
      
        '  FEEBASIS = :FEEBASIS, EMP_TYPE = :EMP_TYPE, VERSION = :VERSION' +
        ', MATLOCATE = :MATLOCATE, NOTES = :NOTES,'
      
        '  TOTAL_FEE_AMT_PCT = :TOTAL_FEE_AMT_PCT, TASK_COMPLETED = :TASK' +
        '_COMPLETED, ITEM_AMOUNT = :ITEM_AMOUNT, PROGRAM_NAME = :PROGRAM_' +
        'NAME'
      'WHERE'
      '  UNIQUEID = :Old_UNIQUEID')
    SQLLock.Strings = (
      
        'SELECT FILEID, REASON, AMOUNT, UNIQUEID, CREATED, UNITS, RATE, A' +
        'UTHOR, EMPCODE, '
      
        'TAXCODE, TAX, TAXRATE, ELAPSED, NMATTER, TIME_TYPE, FEE_TEMPLATE' +
        ', MINS, LABELCOLOUR, '
      
        'ITEMS, UNIT, TASK_AMOUNT, NFEE, BILLTYPE, FEEBASIS, EMP_TYPE, VE' +
        'RSION, NOTES, MATLOCATE, TOTAL_FEE_AMT_PCT, TASK_COMPLETED, ITEM' +
        '_AMOUNT, PROGRAM_NAME'
      ' FROM FEETMP'
      'WHERE'
      '  UNIQUEID = :Old_UNIQUEID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT FILEID, REASON, AMOUNT, UNIQUEID, CREATED, UNITS, RATE, A' +
        'UTHOR, EMPCODE, TAXCODE, TAX, TAXRATE, ELAPSED, NMATTER, TIME_TY' +
        'PE, FEE_TEMPLATE, MINS, '
      
        'LABELCOLOUR, STATE, RESOURCEID, OPTIONS, EVENT_TYPE, CAPTION, IT' +
        'EMS, UNIT, TASK_AMOUNT, NFEE, BILLTYPE, FEEBASIS, EMP_TYPE, VERS' +
        'ION, MATLOCATE, '
      
        'NOTES, IS_TASK, TOTAL_FEE_AMT_PCT, TIME_CODE, PROGRAM_NAME, TASK' +
        '_COMPLETED '
      'FROM FEETMP'
      'WHERE'
      '  UNIQUEID = :UNIQUEID')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM FEETMP'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FT.ROWID, FT.CREATED, FT.FILEID, FT.AUTHOR, FT.REASON, FT' +
        '.UNITS, FT.RATE, FT.AMOUNT,'
      
        'FT.TAXCODE, FT.TAX, FT.TAXRATE, FT.ELAPSED, FT.EMPCODE,FT.UNIQUE' +
        'ID,FT.NFEE,FT.BILLTYPE,'#39'Yes'#39' as Billable,'
      'MATLOCATE, FT.NMATTER,'
      
        '--decode(FT.TIME_TYPE, '#39'M'#39',P.SEARCH || '#39' '#39' || M.SHORTDESCR,'#39'O'#39', ' +
        #39'Overhead Time'#39','#39'H'#39', P.SEARCH || '#39' '#39' || M.SHORTDESCR ) AS MATLOC' +
        'ATE, FT.NMATTER,'
      
        'FT.TIME_TYPE, FT.FEE_TEMPLATE, FT.ITEMS, FT.UNIT, FT.TASK_AMOUNT' +
        ', FT.LABELCOLOUR, FT.FEEBASIS, FT.EMP_TYPE, FT.VERSION, FT.MINS,' +
        ' FT.NOTES,'
      
        'FT.STATE, FT.RESOURCEID, FT.OPTIONS, FT.EVENT_TYPE, FT.CAPTION, ' +
        'FT.TOTAL_FEE_AMT_PCT, FT.IS_TASK, FT.TASK_COMPLETED, FT.TIME_COD' +
        'E, FT.PROGRAM_NAME'
      'FROM FEETMP FT, MATTER M, PHONEBOOK P'
      'WHERE FT.AUTHOR=:AUTHOR'
      'AND FT.FILEID = M.FILEID (+)'
      'AND M.NCLIENT = P.NCLIENT (+)'
      'AND FT.NFEE IS NULL'
      'AND IS_TASK = '#39'N'#39
      'order by FT.uniqueid desc')
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SQNC_FEETMP'
      'Oracle.SequenceMode=smInsert')
    OnUpdateRecord = qryFeeTmpUpdateRecord
    AfterInsert = qryFeeTmp1AfterInsert
    AfterEdit = qryFeeTmpAfterEdit
    BeforePost = qryFeeTmpBeforePost
    AfterPost = qryFeeTmp1AfterPost
    OnNewRecord = qryFeeTmpNewRecord
    Left = 108
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end>
  end
  object ImageList1: TImageList
    Left = 33
    Top = 187
    Bitmap = {
      494C010112001500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000007070
      708FB2B2B24D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCCCC330000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B33CC8080
      807F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF009900FF009900FF009900FF007C00FF333B
      33CCA5A5A55A0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF109F10EF40B240BF20A520DF009900FF0073
      00FF404040BFF2F2F20D00000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20000000009FD89F60109F
      10EF335933CCB2B2B24D00000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF005600FF454545BA0000000000000000BFE5
      BF40006900FF7373738C00000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B24D000000000099
      00FF009900FF009900FF009900FF009900FF009900FF303030CF000000000000
      000060BF609F666D6699000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000334A33CCB2B2B24D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF20A5C3A55A000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000107810EF404040BFF2F2
      F20D0000000000000000378937C8136313EC114B11EE114311EE113411EE2435
      24DB000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060BF609F004300FF5959
      59A6E5E5E51A00000000E5F4E51A109F10EF009900FF009900FF009900FF1847
      18E7000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFE5BF40009900FF004D
      00FF404040BF8080807F99999966105210EF009900FF009900FF009900FF1545
      15EA000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000050B950AF0099
      00FF008600FF004D00FF005600FF008F00FF009900FF009900FF009900FF1444
      14EB000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF8EF1030AC
      30CF009900FF009900FF009900FF009900FF009900FF009900FF009900FF1645
      16E9000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF8
      EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F80009900FF1947
      19E6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F703D74
      3DC2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00F9F9F900F9F9F900F9F9
      F900E5E3E200BCB8B500A7A29E00A7A29E00A7A29E00A7A29E00A7A29E00A7A2
      9E00A7A29E00A8A29F00BFBAB800EAE8E80000000000000000003333CC003333
      CC003333CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000DFDCDB00D7D4D300D7D4D300D7D4
      D300C2BEBC008A8A8A005585A5005689A8005A8DAD005A8DAD005A8DAD005A8D
      AD005A8DAF006293B40072A4C40084B7D700000000003333CC003399FF003399
      FF003399FF003333CC003333CC003333CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000C0BFBE009C9591009E9692009E96
      9200877F7D004E4A48002E638500E5E5E500F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300FFFFFF00A6CAE2003333CC003399FF0066CCFF003399
      FF003399FF003399FF003399FF003399FF003333CC003333CC003333CC000000
      000000000000000000000000000000000000A5CE9800459F3C002E9335002C8E
      3B0025842D005B9F5400ECF3E900808080000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000000000000000000097908C0078554300916751009A6E
      5700815C4800473328002A587700EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B4D3E7003333CC006699FF0066CCFF006699
      FF006699FF006699CC006699CC006699FF003399FF003399FF003399FF003333
      CC00000000000000000000000000000000002F9724002D9833002D9337002D8E
      3A002E8A3F0018771F0080808000808080000000000080808000000000008080
      800000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000968E8A00825D4B00D1CDCA00E8E4
      E100BDBAB800666463003A759B00F7F7F7008888880088888800888888008888
      88008888880088888800FFFFFF00B4D3E7003333CC0066CCFF003399FF003399
      FF006699CC009966330099663300996633006699CC0066CCFF0066CCFF003333
      CC00000000000000000000000000000000002F9724002D9833002D9337002D8E
      3A002E8A3F002A81300080808000000000000000000000000000808080000000
      000000000000000000008080800000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000FFFFFF00848484000000000084848400FFFF
      FF0000000000FFFFFF00FFFFFF0000000000968E8A00865F4D00DDD7D300F7F0
      EC00C9C4C1006C6968003D789D00EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B4D3E7003333CC006699FF003399FF003399
      FF003399FF0096969600FFCC9900FF9966009966330099663300996633003333
      CC00000000000000000000000000000000002F9724002D9833002D9337002D8E
      3A002E8A3F002A812F0080808000808080000000000080808000000000008080
      800000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF008484840000000000FFFFFF008484
      840000000000FFFFFF00FFFFFF0000000000968E8A00855F4C00DBD2CE00F5EB
      E600C8C0BC006C6765003D779D00F7F7F7008888880088888800888888008888
      88008888880088888800FFFFFF00B4D3E7003333CC0066CCFF003399FF003399
      FF003399FF003399FF003399CC0099999900FFCC9900FFCC6600FF993300CC66
      3300CC6633000000000000000000000000002F9724002D9833002D9337002D8E
      3A002E8A3F002A812F00539F5800808080000000000000000000000000000000
      00000000000080808000000000002D8A3B000000000000000000FFFFFF008484
      8400FFFFFF000000FF00FFFFFF0084848400FFFFFF0000000000FFFFFF008484
      84000000000084848400FFFFFF0000000000968E8A00845E4C00D8CEC700F2E6
      DF00D1C6C0008C8581003E799F00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BCD7EA003333CC0066CCFF003399FF003366
      FF003399FF003399FF003399FF003399FF003399CC0099999900FFCC9900FFCC
      9900FF996600CC663300CC663300000000002F9724002D9833002D9337002D8E
      3A002E8A3F002A812F00539F5800808080008080800000000000000000000000
      00008080800000000000000000002D8A3B000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400FFFFFF00FFFFFF0000000000FFFFFF008484
      840000000000FFFFFF008484840000000000968E8A00845D4B00D7C8C200F0E0
      D900E6D6D000CFC1BB004483AD005B99C20079ACCD0079ACCD0079ACCD0079AC
      CD0079ACCD0079ABCC008CB0C600BFDAEA003333CC0066CCFF003399FF003399
      FF003366FF006699FF006699FF003399FF003399FF003399CC00CC663300CC66
      3300FFCC9900FFCC9900FFCC9900CC66330030941E002F8F2A0030882F003089
      2E002F8C2D002B84210054A05500449A55004796490080808000808080008080
      80008080800037982B0064A556002F8A2B000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFF
      FF0000000000FFFFFF008484840000000000968E8A00845D4A00D4C4BC00EDDB
      D200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDB
      D200EDDBD200ECD9D100D1A68F00FFFFFF003333CC0066CCFF0066CCFF003399
      FF003366FF0099CCFF00F8F8F800D6E7E700C6D6EF0066CCFF003399CC006666
      9900CC663300CC663300CC663300CC66330031832A002E8042002E8242002D8A
      3D002D9538002A951F0053A751004599540046964E0054995600297E35002D8A
      3E002F963300419F3700549C5B002C93360000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF008484840000000000968E8A00835C4900D1BEB600E1CD
      C300CDBAB200C0AFA600BFAEA600BFAEA600BFAEA600C6B4AC00D9C6BD00E7D2
      C900EAD5CB00EAD5CB00D1A68F00FFFFFF003333CC0066CCFF003399FF003366
      FF003366FF0066CCFF0099CCFF00CCFFFF00FFFFCC00C6D6EF003399FF003333
      CC000000000000000000000000000000000071A96900328241002D843F002D8D
      3B002896310049A63E005EA7550042944000238027005C9F5F00BDD7AF00CDE1
      BF00C4DDB800D3E4CE0094C08A0098C68C000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000084848400FFFFFF00000000009F989400875D4800D4BEB400D0BC
      B200988982006F645F00665C5700665C5700685D590084777100BDAAA200E2CB
      C100E9D1C600E8D2C800D0A69000FFFFFF003333CC0066CCFF003399FF003399
      FF003366FF003366FF000066FF003366FF003399FF006699FF003399FF003333
      CC000000000000000000000000000000000000000000E0ECD800A2C8980081B8
      74007FB3750072A97C00418F53002989380027932D0052A74700C1DDB6000000
      00000000000000000000FEFEFE00F2F9F2000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C8C2BE009A6B5300DBB8A700CBAE
      9F00917F74000D508600025292000252920002529200035A9A000694D700B9BD
      BD00DEBEAF00E2C6B900D4AA9600FFFFFF003333CC0066CCFF0099CCFF00CCFF
      FF00C6D6EF0099CCFF0066CCFF006699FF003399FF003399FF003399FF003333
      CC0000000000000000000000000000000000000000000000000000000000CBE0
      C20052955B002B7E43002D8540002D8F390025962C0058AE5200CAE2C1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000E2D4CD00B18C7900B08B7800AD87
      7400A9806C005464750002529200058ED0005CBDE900CEEBF800DAE0E400D3AD
      9A00D4AE9C00D8B6A400E2C8B900FFFFFF00000000003333CC003333CC003333
      CC006699CC006699FF0099CCFF0066CCFF0099CCFF0066CCFF003333CC003333
      CC00000000000000000000000000000000000000000000000000000000000000
      0000D8E7D1007FB2760065A7600066AC5E0084BD7500E1EEDB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6FAFC00DDECF40056A0CB005EB9E20087CBEA00BCE1F200F9FCFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00003333CC003333CC003333CC00C6D6EF0099CCFF003333CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000003333CC003333CC003333CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420000A539080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6A5AD008C849C000000000000000000000000000000
      000000000000A5390800A5420800A5390800A542080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6A5AD008C849C0052BDFF000000000000000000000000000000
      000000000000A54200000000000000000000A5390800A539080000000000A539
      0800A5420000000000000000000000000000CE310000CE310000CE310000CE31
      0000CE310000CE310000CE310000CE310000CE31000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6A5AD008C849C0052BDFF008CCEEF000000000000000000000000000000
      000000000000A54200000000000000000000A539080000000000A5390800A539
      0800A5390800A54208000000000000000000FFFFFF00FFFFFF00F7F7F700F7F7
      F700FFEFCE00FFEFCE00FFEFCE00FFEFCE00CE31000000000000000000000000
      0000000000000000000000000000000000000084000084848400C6C6C600C6C6
      C60084848400C6C6C600C6C6C60084848400C6C6C600C6C6C600848484000084
      000000000000000000000000000000000000000000000000000029ADDE0029AD
      DE0029ADDE004ABDDE000000000000000000000000000000000000000000C6A5
      AD008C849C0052BDFF008CCEEF00000000000000000000000000000000000000
      000000000000A5420800A5390800A5390800A539080000000000A53908000000
      000000000000A54200000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7
      F700FFEFCE00FFEFCE00FFEFCE00FFEFCE00CE31000000000000000000000000
      00000000000000000000000000000000000000840000C6C6C60000FFFF000000
      0000000000000000000000FFFF00000000000000000000FFFF00C6C6C6000084
      000000000000000000000000000000000000000000000000000029ADDE008CCE
      EF0073CEF70052D6F70029B5E700DEB59C00D6AD9400D6AD9400DEB59C008C84
      9C0052BDFF008CCEEF0000000000000000000000000000000000000000000000
      00000000000000000000A5390800A5420000A5420800A5390800A54208000000
      000000000000A53908000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7
      F700FFEFCE00FFEFCE00FFEFCE00FFEFCE00CE31000000000000000000000000
      0000000000000000000000000000000000000084000084848400000000008400
      0000840000008400000000000000840000000000000000000000848484000084
      00000000000000840000008400000000000029ADDE004ABDDE0029ADDE004ABD
      DE00BDF7FF0084E7FF00DEBDA500F7DECE00FFEFC600FFE7BD00EFD6AD00CE9C
      8400BDADA5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C420800A54A2100A5390800A5420000A542
      0800A5420800A539080000000000000000008400000084000000840000008400
      000084000000840000008400000084000000840000008400000084000000CE31
      00000000000000310000000000000000000000840000C6C6C60000FFFF000000
      00000000000000FFFF00000000000000000000FFFF0000000000C6C6C6000084
      00000000000084848400008400000000000029ADDE00ADE7FF0029ADDE004ABD
      DE00CEFFFF00DEB59C00F7E7D600FFF7EF00FFE7C600FFE7BD00FFFFC600F7DE
      B500D6AD94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000947B73008C736B00A55A3900A5390800A539
      0800A5390800000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7
      F700F7F7F700FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00CE31
      00000000000000310000003100000000000000840000C6C6C600C6C6C6000084
      8400C6C6C6008400000000000000C6C6C6008400000000FFFF00C6C6C6000084
      000000000000C6C6C600008400000000000029ADDE0094EFFF0029ADDE0073CE
      F7008CCEEF00CEA59400FFF7CE00FFEFC600FFFFC600FFFFDE00FFFFDE00FFFF
      DE00CEA5940039B5DE0000000000000000000000000000000000000000000000
      000000000000000000008C7B7300AD948C008C7B73008C7B7300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00CE31
      0000000000000031000084848400003100000084000084848400008484000084
      84000084840000000000840000000000000000000000C6C6C600848484000084
      00000000000084848400008400000000000029ADDE0073CEF70029ADDE0084E7
      FF0039B5DE00D6AD9400FFE7BD00FFE7BD00FFFFDE00FFFFE700FFFFEF00FFFF
      E700D6AD940039B5DE0000000000000000000000000000000000000000000000
      0000000000008C7B7300D6BDBD008C7B7300AD948C008C7B7300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00CE31
      00000000000000310000003100000000000000840000C6C6C600000000000084
      8400C6C6C600000000000000000000FFFF000000000000FFFF00C6C6C6000084
      000000000000C6C6C600008400000000000029ADDE0073CEF70029ADDE0094EF
      FF0084E7FF00DEB59C00EFD6AD00FFFFC600FFFFDE00FFFFEF00FFFFFF00F7E7
      D600DEB59C008CCEEF0039B5DE00000000000000000000000000000000000000
      00008C7B7300EFDEDE008C7B7300AD948C00D6BDBD008C7B7300000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084000000840000008400000084000000840000008400000084000000CE31
      0000000000000031000000000000000000000084000084848400C6C6C600C6C6
      C60084848400C6C6C600C6C6C60084848400C6C6C600C6C6C600848484000084
      000000000000C6C6C600008400000000000029ADDE0073CEF70029ADDE00ADFF
      FF009CFFFF009CFFFF00D6AD9400F7DEB500FFFFDE00FFFFE700F7E7DE00DEBD
      A5008CCEEF00ADE7FF0029ADDE00000000000000000000000000000000008C7B
      7300FFFFFF008C7B7300000000008C7B7300DECECE008C7B7300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7
      F700FFEFCE00FFEFCE00FFEFCE00FFEFCE00CE31000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000C6C6C60084848400008400000000000029ADDE0084E7FF0029ADDE00CEFF
      FF009CFFFF009CFFFF00BDF7FF00CEA59400D6AD9400D6AD9400CEA5940039B5
      DE004ABDDE0029ADDE0029ADDE00000000000000000000000000000000008C7B
      73008C7B730000000000000000008C7B7300EFE7E7008C7B7300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7
      F700F7F7F700FFEFCE00FFEFCE00FFEFCE00CE31000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000C6C6C6000000000000848400C6C6C600000000000000000000FFFF000000
      000000FFFF00C6C6C600008400000000000029ADDE009CFFFF0039B5DE00ADE7
      FF0094EFFF00EFFFFF0094EFFF0029ADDE0029ADDE0029ADDE0029ADDE0029AD
      DE0094C6D6000000000000000000000000000000000000000000000000008C7B
      73000000000000000000000000008C7B7300FFF7F7008C7B7300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFEFCE00FFEFCE00FFEFCE00CE31000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000084848400C6C6C600C6C6C60084848400C6C6C600C6C6C60084848400C6C6
      C600C6C6C60084848400008400000000000029ADDE009CFFFF009CFFFF0029AD
      DE0029ADDE0029ADDE0029ADDE009CFFFF009CFFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C7B73008C7B730000000000000000000000
      000000000000000000000000000000000000CE310000CE310000CE310000CE31
      0000CE310000CE310000CE310000CE310000CE31000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000840000008400000000000029ADDE00CEFFFF00CEFFFF00CEFF
      FF0029ADDE0029ADDE0029ADDE0029ADDE0029ADDE0029ADDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C7B73000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094C6D60029ADDE0029ADDE0029AD
      DE0094C6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700B5B5B500949494008C8C8C009C9C9C00C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636363006363630000000000000000006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00D6D6D600D6D6D600D6D6D600EFEF
      EF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0094949C0029296B0000006300000063000000630000004A00101039006363
      6300D6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      6300A5A5A500A5A5A500636363006363630063636300E7E7E700636363006363
      6300636363000000000000000000000000009494940073737300737373007373
      73007373730073737300737373005A525200847B7B008C7B7B00524A4A005A5A
      5A00ADADAD00FFFFFF0000000000000000000000000000000000F7F7F7006363
      94000000840000008C0000008C0000008C0000008C0000008C00000084000000
      520031313900C6C6C60000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063636300DEDE
      DE00A5A5A500A5A5A500A5A5A500313131003131310063636300C6C6C600E7E7
      E700B5B5B500636363006363630063636300CE9C9C00E7ADAD00E7ADAD00E7AD
      AD00E7ADAD00E7ADAD009C9C9C0073736B00A59C84009C9C84006B636300FFCE
      CE004242420094949400FFFFFF000000000000000000FFFFFF005A5A9C000000
      94000000940000009C0000009C000000A50000009C000000940000008C000000
      8C000000630031313900D6D6D600000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300D6D6D600CECE
      CE00949494009494940094949400393939001010100000000000101010000000
      000073737300C6C6C6006363630000000000E7DED600FFEFD600FFE7CE00FFE7
      CE00DEB58C00B5B5B500E7CEA500FFF7DE00FFEFCE00CECEE700FFFFFF00F7EF
      C600D6ADAD0039393900C6C6C60000000000000000008C8CB5000000A5000808
      9C009C9CD6006B6BD6000000AD000000AD000000AD004A4ABD00B5B5E7002121
      A50000008C000000520073737300000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000063636300CECECE00CECECE009494
      9400D6D6D600CECECE00C6C6C600B5B5B500A5A5A500949494005A5A5A000000
      000010101000101010006363630073737300EFE7DE00FFE7CE00FFE7C600FFDE
      B500ADADAD00BDAD9400FFF7BD00FFEFB500FFE7B500FFE7AD00FFDEA500FFFF
      FF00CECEA500DEB5B5007B7B7B00FFFFFF00DEDEEF002929AD000000AD002929
      A500DEDED600FFFFFF006363D6000000B5004242C600E7E7EF00FFFFF7005A5A
      B50000009C0000008400292942000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000063636300CECECE0094949400F7F7
      F700F7F7F700F7F7F700E7E7E700DEDEDE00DEDEDE00CECECE00C6C6C600B5B5
      B50094949400525252007373730073737300EFE7DE00FFE7CE00FFE7CE00FFD6
      A500DEDEDE00FFF7BD00FFFFCE00FFFFCE00FFF7C600FFE7B500FFE7B500FFDE
      A500FFFFE700BDA5A5005A5A5A00F7F7F7009494E7000000B5000000BD000000
      C6004A4AA500E7E7DE00FFFFFF009C9CE700EFEFF700FFFFF7007373BD000000
      B5000000AD000000A50010105A0000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000006363630094949400F7F7F700F7F7
      F700F7F7F700D6D6D600949494009C9C9C00B5B5B500C6C6C600D6D6D600DEDE
      DE00C6C6C600B5B5B5009494940063636300EFEFE700FFDEBD00FFDEBD00FFCE
      9C00D6D6D6005AADFF00FFFFFF00FFFFDE009C9C84005252520031313100CEAD
      84005273FF00847B7B005A5A5A00F7F7F7005A5AD6000808BD000000CE000000
      D6000000CE005252B500F7F7EF00FFFFFF00FFFFFF007373CE000000BD000000
      C6000000BD000000AD0008086B0000000000000000000084000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      000000000000000000000000000000000000000000006363630063636300EFEF
      EF00B5B5B5007373730094949400949494009494940094949400949494009C9C
      9C00C6C6C600CECECE00C6C6C60063636300EFEFEF00FFE7C600FFDEBD00FFD6
      A500F7F7F700FFEFDE00FFFFFF00FFFFE700FFFFDE00B5B59400846B5A00FFE7
      B500FFEFC6009C9494007B7B7B00FFFFFF004A4AD6000808CE000808DE000808
      DE000000D6003939CE00EFEFEF00FFFFFF00FFFFFF005A5ADE000000CE000000
      CE000000C6000000BD0010107B00000000000084000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      6300CE9C63009C6363009C63630073737300636363007373730094949400A5A5
      A500CECECE00C6C6C6006363630000000000F7EFEF00FFD6AD00FFD6AD00FFD6
      A500DEDEDE00CEB59C00FFFFFF00FFFFFF00FFFFF700FFFFDE00B5B59400846B
      5A00D6C6A50094949400C6C6C600000000007373E7001010DE001010EF000808
      F7004242DE00E7E7EF00FFFFF700BDBDD600EFEFEF00FFFFFF006363E7000000
      D6000808CE000808C60021217B00000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300F7CEA500FFCE9C00F7CEA500CE9C6300CE9C6300CE9C63007373
      730063636300636363000000000000000000F7F7F700FFDEB500FFD6AD00FFD6
      AD00E7BD9C00FFFFFF00DEC6AD00FFFFFF00FFFFFF00D6EFFF00FFFFCE00F7DE
      AD00A5A5A5007B7B7B00FFFFFF0000000000BDBDF7002121E7002121FF003939
      EF00DEDEE700FFFFEF007373C6000000D6005252B500E7E7D600FFFFFF006363
      E7000808DE000808CE004A4A8400000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFEFCE00F7CEA500F7CEA500F7CEA500F7CEA500CE9C63000000
      000000000000000000000000000000000000F7F7F700FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00DEBD9C00FFFFFF00BDBDB500CEB59400C6AD94009C9C9400C6C6
      C60084848400FFFFFF000000000000000000F7F7FF005A5AF7003131FF005252
      EF00B5B5C6007373CE000000EF000000EF000000EF005252B500ADADB5004A4A
      E7001818EF001818B500B5B5BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFEFCE00FFEFCE00F7CEA500FFCE9C00F7CEA500CE9C6300000000000000
      000000000000000000000000000000000000F7F7F700FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00BDAD9400C6C6C600B5B5B5009C8C8C00BDBD
      BD00FFFFFF0000000000000000000000000000000000D6D6FF003939FF005252
      FF006B6BEF005252FF003939FF002121FF002929FF003939FF004242EF003131
      FF001818EF007B7BA50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084000000FF
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFEFCE00FFEFCE00FFEFCE00F7CEA500FFCE9C00CE9C6300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7EF00FFF7E700FFEFDE00FFE7CE00E78C8C00D6D6
      D600000000000000000000000000000000000000000000000000C6C6FF004A4A
      FF006B6BFF009494FF009494FF008484FF007373FF006363FF005252FF003131
      FF007B7BB500FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000FF00000000000000000000000000000000000000000000CE9C6300F7F7
      F700F7F7F700FFEFCE00FFEFCE00FFEFCE00F7CEA500CE9C6300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFB55200EF8C0800AD634200F7F7
      F70000000000000000000000000000000000000000000000000000000000DEDE
      FF006B6BFF006B6BFF008484FF009494FF007373FF005252FF005252F700A5A5
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000CE9C6300CE9C
      6300CE9C6300F7F7F700FFEFCE00FFEFCE00CE9C630000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFE7B500C68C6300F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00BDBDFF008C8CFF007B7BFF007B7BFF00ADADFF00E7E7FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C63000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F7F7F700F7F7
      F700EFEFEF00EFEFEF00E7E7E700DEDEDE00CEAD9400F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000C6C6C60000000000C6C6C600000000008484840000FF00008484
      840000000000C6C6C60000000000000000000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000840000008400000000000000
      0000000000000000000000000000000000000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008484
      84000000000000000000000000000000000084848400C6C6C60000000000C6C6
      C60000000000C6C6C60000000000000000000000000000008400000084000000
      0000000000000000000000000000000000000000840000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B00000000007B7B7B0000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400000000000000000084848400848484008484
      8400848484008484840000000000000000000000000000008400000084000000
      0000000000000000000000008400000084000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000C6C6C6000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000000000000000000008400000084000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF007B7B7B00000000007B7B7B000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000008484840000000000000000000000
      000000000000000000000000000084848400C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B7B
      7B00FFFFFF00FFFFFF0000000000FFFFFF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B00000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000008484840084848400000000000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000FF00FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      000000000000000000007B7B7B000000000000000000000000007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00E7FFFFFF00000000E01FFC3F00000000
      E00FFC3F00000000E007FC3F00000000E003FC3F00000000E043FC3F00000000
      E063800100000000A0338001000000009FF38001000000008C0F800100000000
      840FFC3F00000000800FFC3F00000000C00FFC3F00000000C00FFC3F00000000
      E00FFC3F00000000FFCFFFFF00000000803F0000C7FFFF87803F000080FFFE21
      80070000001F00F980070000000F008880000000000F018C80000000000F0088
      80000000000700F8800000000001002080000000000000008000000000000000
      80000000000F000080000000000F801CF0000000000FE01FF0000000800FF03F
      FE010000F03FFFFFFE030000FE3FFFFFFC7FFFFFFFFFFFFCF87FFFFF800FFFF8
      FB27007F0007FFF0FB43007F0007C3E1F85B007F1D81C003FC1B007F22C00007
      FE03000B1B400007FE07000902000003FC3F000805800003F83F000926800001
      F03F000B00000001E23F007F00000001E63F007FE4D00007EE3F007FE000003F
      FE7F007FE001003FFEFFFFFFFFFF07FFF80FFFFFF33FFE07E007FFFFE0070003
      C003F9FFC00000018001F0FF800100018001F0FF000000000001E07F00000000
      0001C07F000000000001843F8000000000011E3FE00100010001FE1FF0030001
      0001FF1FF01F00030001FF8FE03F00078003FFC7E03F000FC003FFE3C03F000F
      E00FFFF8C07F001FF01FFFFFF8FF003FFFFFE000FFFFFFFFFFFFEFFEFFFFF80F
      FFFFE802FFFFF007E007EA8A7FF8E003C007E0023F78C001C007E02A9F7F8000
      C007C0029CF88000C0079E1ECCF88000C0072E1EC1F88000C0073F80E3F88000
      C00F589FC3F8C001E07F3B9F19F8E003E07F2A9FFCFFC001FFFF9F3FFE7FC809
      FFFF007FFFFFFF7FFFFFA0FFFFFFFE3F00000000000000000000000000000000
      000000000000}
  end
  object qryBillType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT f.billtype as BillType FROM FeeBasis f, Matter m'
      'WHERE f.code = m.feebasis'
      'AND m.nmatter = :p_nmatter')
    Left = 967
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nmatter'
        Value = nil
      end>
  end
  object barManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'PopUpMenu'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = ImageList1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 342
    Top = 210
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object barManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 590
      FloatTop = 201
      FloatClientWidth = 55
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAddRow'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButtonSave'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnTimer'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbShowTasks'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbShowFees'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbShowTime'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbSpecificDate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbFeeEnquiry'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      MultiLine = True
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object popCopyCurrentLine: TdxBarButton
      Caption = 'Copy Current Line'
      Category = 0
      Hint = 'Copy Current Line'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = CopyCurrentline1Click
    end
    object popRemove: TdxBarButton
      Caption = 'Remove'
      Category = 0
      Hint = 'Remove'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = popRemoveClick
    end
    object popEdit: TdxBarButton
      Caption = 'Edit'
      Category = 0
      Hint = 'Edit'
      Visible = ivAlways
      OnClick = popEditClick
    end
    object popGridDateStamp: TdxBarButton
      Caption = 'Date Stamp (Current Date and Time)'
      Category = 0
      Hint = 'Date Stamp (Current Date and Time)'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = popGridDateStampClick
    end
    object popDescription: TdxBarButton
      Caption = 'Lookup Description'
      Category = 0
      Hint = 'Lookup Description'
      Visible = ivAlways
      OnClick = Reason1Click
    end
    object popQuickCode: TdxBarButton
      Caption = 'Lookup Quickcode'
      Category = 0
      Hint = 'Lookup Quickcode'
      Visible = ivAlways
      OnClick = QuickCode1Click
    end
    object popMatter: TdxBarButton
      Caption = 'Open Matter'
      Category = 0
      Hint = 'Open Matter'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = popMatterClick
    end
    object bbFeeBasis: TdxBarButton
      Caption = 'Fee Basis'
      Category = 0
      Hint = 'Fee Basis'
      Visible = ivAlways
      ImageIndex = 14
      OnClick = bbFeeBasisClick
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'To Cancel transaction, please use the Esc key.'
      Category = 0
      Hint = 'To Cancel transaction, please use the Esc key.'
      Visible = ivAlways
    end
    object dxButtonInsertAbove: TdxBarButton
      Caption = 'Insert Time Entry Above Currently Selected'
      Category = 0
      Hint = 'Insert Time Entry Above Currently Selected'
      Visible = ivAlways
      OnClick = dxButtonInsertAboveClick
    end
    object btnRemoveSort: TdxBarButton
      Caption = 'Remove Sort'
      Category = 0
      Hint = 'Remove Sort'
      Visible = ivAlways
      OnClick = btnRemoveSortClick
    end
    object bbtnCompleteTask: TdxBarButton
      Caption = 'Complete Task'
      Category = 0
      Hint = 'Complete Task'
      Visible = ivAlways
      OnClick = bbtnCompleteTaskClick
    end
    object btnSave: TdxBarButton
      Caption = 'Save'
      Category = 1
      Hint = 'Save'
      Visible = ivNever
    end
    object btnTimer: TdxBarButton
      Caption = 'Start Timer'
      Category = 1
      Hint = 'Start Timer'
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btnTimerClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Print'
      Category = 1
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 6
      PaintStyle = psCaptionGlyph
      OnClick = btnPrintClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Process'
      Category = 1
      Hint = 'Process'
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
    end
    object dxBarButton5: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = btnCancelClick
    end
    object tbFeeEnquiry: TdxBarButton
      Caption = 'Fee Enquiry'
      Category = 1
      Hint = 'Open Fee Enquiry Screen'
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
      OnClick = tbFeeEnquiryClick
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'Select All'
      Category = 1
      Hint = 'Show Tasks'
      Visible = ivAlways
    end
    object bbtnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 1
      Hint = 'Refresh Grid'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = bbtnRefreshClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'File'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'popGridDateStamp'
        end
        item
          Visible = True
          ItemName = 'popRemove'
        end
        item
          Visible = True
          ItemName = 'popCopyCurrentLine'
        end>
    end
    object dxbtnDeselectAll: TdxBarButton
      Caption = 'Select All'
      Category = 1
      Hint = 'Select All selected Time entries'
      Visible = ivAlways
      OnClick = dxbtnDeselectAllClick
    end
    object btnAddRow: TdxBarButton
      Caption = 'Add Entry'
      Category = 1
      Hint = 'Add New Entry'
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = btnAddRowClick
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'Show Fees'
      Category = 1
      Hint = 'Show Fees'
      Visible = ivAlways
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem
      Caption = 'Show Time'
      Category = 1
      Hint = 'Show Time'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Help'
      Category = 1
      Hint = 'Help'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
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
      OnClick = dxBarButton1Click
    end
    object dxBarButtonSave: TdxBarButton
      Caption = 'Save'
      Category = 1
      Enabled = False
      Hint = 'Save'
      Visible = ivAlways
      ImageIndex = 5
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButtonSaveClick
    end
    object dxBarControlContainerItem4: TdxBarControlContainerItem
      Caption = 'Show All Dates'
      Category = 1
      Hint = 'Show All Dates'
      Visible = ivAlways
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object cbShowTasks: TcxBarEditItem
      Caption = 'Show Tasks '
      Category = 1
      Hint = 'Show Tasks '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnChange = cbShowTasksPropertiesChange
      Properties.OnEditValueChanged = cbShowTasksPropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbShowFees: TcxBarEditItem
      Caption = 'Fees '
      Category = 1
      Hint = 'Show Posted (Billable) entries'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnChange = cbShowFeesPropertiesChange
      Properties.OnEditValueChanged = cbShowFeesPropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbShowTime: TcxBarEditItem
      Caption = 'Time '
      Category = 1
      Hint = 'Show Unposted Entries'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnChange = cbShowTimePropertiesChange
      Properties.OnEditValueChanged = cbShowTimePropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbSpecificDate: TcxBarEditItem
      Caption = 'All Dates'
      Category = 1
      Hint = 'All Dates '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnChange = cbSpecificDatePropertiesChange
      Properties.OnEditValueChanged = cbSpecificDatePropertiesEditValueChanged
      InternalEditValue = False
    end
  end
  object qryScaleCostsList: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM SCALECOST WHERE CODE = :CODE')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM SCALECOST '
      'WHERE ACTIVE = '#39'Y'#39
      'ORDER BY CODE')
    Left = 771
    Top = 277
  end
  object dsScaleCostsList: TUniDataSource
    AutoEdit = False
    DataSet = qryScaleCostsList
    Left = 774
    Top = 360
  end
  object popGrid: TdxBarPopupMenu
    BarManager = barManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'popCopyCurrentLine'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'popRemove'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbtnRefresh'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'popGridDateStamp'
      end
      item
        Visible = True
        ItemName = 'popMatter'
      end
      item
        Visible = True
        ItemName = 'popQuickCode'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbtnCompleteTask'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxButtonInsertAbove'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnRemoveSort'
      end>
    UseOwnFont = False
    OnPopup = popGridPopup
    Left = 590
    Top = 218
    PixelsPerInch = 96
  end
  object qryFeeTempUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'UPDATE FEETMP SET NFEE = :NFEE, LABELCOLOUR = :LABELCOLOUR WHERE' +
        ' UNIQUEID = :UNIQUEID')
    Left = 92
    Top = 430
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NFEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABELCOLOUR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNIQUEID'
        Value = nil
      end>
  end
  object qryUnpostedTotals: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT '#39'MB'#39' AS TYPE, to_char(nvl(sum(units),0)) || '#39' Units'#39' as u' +
        'nits'
      '  FROM feetmp'
      ' WHERE CASE'
      '          WHEN ((:alltrans = 0) AND (nfee IS NULL))'
      '             THEN 1'
      '          WHEN ((:alltrans = 1) AND (NVL (nfee, 1) > 0))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND time_type = '#39'M'#39
      '   AND billtype = '#39'Billable'#39
      '   AND author = :author'
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))'
      'UNION'
      
        'SELECT '#39'MN'#39' AS TYPE, to_char(nvl(sum(units),0)) || '#39' Units'#39' as u' +
        'nits'
      '  FROM feetmp'
      ' WHERE CASE'
      '          WHEN ((:alltrans = 0) AND (nfee IS NULL))'
      '             THEN 1'
      '          WHEN ((:alltrans = 1) AND (NVL (nfee, 1) > 0))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND time_type = '#39'M'#39
      '   AND billtype IN ('#39'NonBillable'#39', '#39'Productive NonBillable'#39')'
      '   AND author = :author'
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))'
      'UNION'
      
        'SELECT '#39'O'#39' AS TYPE, to_char(nvl(sum(units),0)) || '#39' Units'#39' as un' +
        'its'
      '  FROM feetmp'
      ' WHERE CASE'
      '          WHEN ((:alltrans = 0) AND (nfee IS NULL))'
      '             THEN 1'
      '          WHEN ((:alltrans = 1) AND (NVL (nfee, 1) > 0))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND time_type = '#39'O'#39
      '   AND author = :author'
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))'
      'UNION'
      
        'SELECT '#39'H'#39' AS TYPE, to_char(nvl(sum(units),0)) || '#39' Units'#39' as un' +
        'its'
      '  FROM feetmp'
      ' WHERE CASE'
      '          WHEN ((:alltrans = 0) AND (nfee IS NULL))'
      '             THEN 1'
      '          WHEN ((:alltrans = 1) AND (NVL (nfee, 1) > 0))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND time_type = '#39'H'#39
      '   AND author = :author'
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))')
    Left = 879
    Top = 187
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'alltrans'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'created'
        Value = nil
      end>
  end
  object qryUnPostedAmountTotals: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '#39'MB'#39' AS TYPE, NVL (SUM (amount), 0) total'
      '  FROM feetmp'
      ' WHERE CASE'
      '          WHEN ((:alltrans = 0) AND (nfee IS NULL))'
      '             THEN 1'
      '          WHEN ((:alltrans = 1) AND (NVL (nfee, 1) > 0))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND time_type = '#39'M'#39
      '   AND billtype = '#39'Billable'#39
      '   AND author = :author'
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))'
      'UNION'
      'SELECT '#39'MN'#39' AS TYPE, NVL (SUM (amount), 0) AS total'
      '  FROM feetmp'
      ' WHERE CASE'
      '          WHEN ((:alltrans = 0) AND (nfee IS NULL))'
      '             THEN 1'
      '          WHEN ((:alltrans = 1) AND (NVL (nfee, 1) > 0))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND time_type = '#39'M'#39
      '   AND billtype IN ('#39'NonBillable'#39', '#39'Productive NonBillable'#39')'
      '   AND author = :author'
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))'
      'UNION'
      'SELECT '#39'O'#39' AS TYPE, NVL (SUM (amount), 0) AS total'
      '  FROM feetmp'
      ' WHERE CASE'
      '          WHEN ((:alltrans = 0) AND (nfee IS NULL))'
      '             THEN 1'
      '          WHEN ((:alltrans = 1) AND (NVL (nfee, 1) > 0))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND time_type = '#39'O'#39
      '   AND author = :author'
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))')
    Left = 1062
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'alltrans'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'created'
        Value = nil
      end>
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = popGrid
      end>
    Left = 785
    Top = 177
  end
  object qryTodayTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nvl(sum(units),0) as totalunits '
      'from feetmp'
      'where trunc(created) = :created'
      'and author = :author')
    Left = 478
    Top = 434
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'created'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
  end
  object qryEmployeeList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT distinct e.CODE, e.name '
      'FROM  employee e'
      'where '
      'e.NFEE_AUTHORITY in'
      '(select distinct nfee_authority from fee_authority_relation'
      
        'start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authority fr' +
        'om employee where code = :code)'
      'connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      'and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      'UNION'
      'SELECT CODE, NAME '
      'FROM EMPLOYEE '
      'WHERE'
      'ACTIVE = '#39'Y'#39' '
      'AND ISTIME_RECORDER = '#39'Y'#39
      'AND code = :code'
      'ORDER BY 2')
    Left = 115
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object dsEmployeeList: TUniDataSource
    DataSet = qryEmployeeList
    Left = 232
    Top = 179
  end
  object rptFeeTmp: TppReport
    AutoStop = False
    DataPipeline = plFeeTmpRpt
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
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
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 378
    Top = 390
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plFeeTmpRpt'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 29369
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 27781
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 17724
        mmTop = 23813
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Reason'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 23813
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 137848
        mmTop = 23813
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Rate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 150813
        mmTop = 23813
        mmWidth = 5291
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Task'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 23813
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 173832
        mmTop = 23813
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 23813
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 184150
        mmTop = 794
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Timesheet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4953
        mmLeft = 88233
        mmTop = 10848
        mmWidth = 20913
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 17463
        mmWidth = 8382
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = ppLabel12GetText
        Border.mmPadding = 0
        Caption = 'Label12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 12700
        mmTop = 17463
        mmWidth = 12446
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        Border.mmPadding = 0
        Caption = 'Label13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4953
        mmLeft = 90906
        mmTop = 6085
        mmWidth = 15833
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Author:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 75291
        mmTop = 17463
        mmWidth = 11303
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        OnGetText = ppLabel15GetText
        Border.mmPadding = 0
        Caption = 'Label15'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 91811
        mmTop = 17463
        mmWidth = 12446
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Created'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 23813
        mmWidth = 9261
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
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plFeeTmpRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4784
        mmLeft = 17724
        mmTop = 529
        mmWidth = 16407
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'UNITS'
        DataPipeline = plFeeTmpRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4784
        mmLeft = 138377
        mmTop = 529
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'RATE'
        DataPipeline = plFeeTmpRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4784
        mmLeft = 147638
        mmTop = 529
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'FEE_TEMPLATE'
        DataPipeline = plFeeTmpRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4784
        mmLeft = 159544
        mmTop = 529
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = plFeeTmpRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4784
        mmLeft = 170392
        mmTop = 529
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plFeeTmpRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4784
        mmLeft = 180975
        mmTop = 529
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plFeeTmpRpt
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 794
        mmWidth = 15873
        BandType = 4
        LayerName = Foreground
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 6350
        mmLeft = 35190
        mmTop = 0
        mmWidth = 102923
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBMemo1: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'DBMemo1'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'REASON'
          DataPipeline = plFeeTmpRpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plFeeTmpRpt'
          mmHeight = 4763
          mmLeft = 35983
          mmTop = 794
          mmWidth = 101600
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12965
        mmTop = 1323
        mmWidth = 31485
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 11113
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 529
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Totals'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 94456
        mmTop = 1323
        mmWidth = 7673
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'UNITS'
        DataPipeline = plFeeTmpRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4191
        mmLeft = 118004
        mmTop = 1323
        mmWidth = 12435
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = plFeeTmpRpt
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4191
        mmLeft = 156104
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plFeeTmpRpt
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFeeTmpRpt'
        mmHeight = 4191
        mmLeft = 179123
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 184944
        mmTop = 8731
        mmWidth = 11377
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Total (inc Tax)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 132821
        mmTop = 8731
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10'Value := ' +
          'DBCalc3.Value + (DBCalc3.Value * 0.10);'#13#10#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
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
  object plFeeTmpRpt: TppDBPipeline
    DataSource = dsFeeTmpRpt
    UserName = 'plFeeTmpRpt'
    Left = 306
    Top = 391
    object plFeeTmpRptppField1: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 0
    end
    object plFeeTmpRptppField2: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plFeeTmpRptppField3: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plFeeTmpRptppField4: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object plFeeTmpRptppField5: TppField
      FieldAlias = 'REASON'
      FieldName = 'REASON'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 4
    end
    object plFeeTmpRptppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNITS'
      FieldName = 'UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plFeeTmpRptppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'RATE'
      FieldName = 'RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plFeeTmpRptppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plFeeTmpRptppField9: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object plFeeTmpRptppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object plFeeTmpRptppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAXRATE'
      FieldName = 'TAXRATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plFeeTmpRptppField12: TppField
      FieldAlias = 'ELAPSED'
      FieldName = 'ELAPSED'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 11
    end
    object plFeeTmpRptppField13: TppField
      FieldAlias = 'EMPCODE'
      FieldName = 'EMPCODE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object plFeeTmpRptppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNIQUEID'
      FieldName = 'UNIQUEID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object plFeeTmpRptppField15: TppField
      FieldAlias = 'NFEE'
      FieldName = 'NFEE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 14
    end
    object plFeeTmpRptppField16: TppField
      FieldAlias = 'BILLTYPE'
      FieldName = 'BILLTYPE'
      FieldLength = 22
      DisplayWidth = 22
      Position = 15
    end
    object plFeeTmpRptppField17: TppField
      FieldAlias = 'MATLOCATE'
      FieldName = 'MATLOCATE'
      FieldLength = 161
      DisplayWidth = 161
      Position = 16
    end
    object plFeeTmpRptppField18: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 17
    end
    object plFeeTmpRptppField19: TppField
      FieldAlias = 'TIME_TYPE'
      FieldName = 'TIME_TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object plFeeTmpRptppField20: TppField
      FieldAlias = 'FEE_TEMPLATE'
      FieldName = 'FEE_TEMPLATE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 19
    end
    object plFeeTmpRptppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEMS'
      FieldName = 'ITEMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object plFeeTmpRptppField22: TppField
      FieldAlias = 'UNIT'
      FieldName = 'UNIT'
      FieldLength = 6
      DisplayWidth = 6
      Position = 21
    end
    object plFeeTmpRptppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASK_AMOUNT'
      FieldName = 'TASK_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object plFeeTmpRptppField24: TppField
      FieldAlias = 'LABELCOLOUR'
      FieldName = 'LABELCOLOUR'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 23
    end
    object plFeeTmpRptppField25: TppField
      FieldAlias = 'FEEBASIS'
      FieldName = 'FEEBASIS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 24
    end
    object plFeeTmpRptppField26: TppField
      FieldAlias = 'EMP_TYPE'
      FieldName = 'EMP_TYPE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 25
    end
    object plFeeTmpRptppField27: TppField
      FieldAlias = 'VERSION'
      FieldName = 'VERSION'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object plFeeTmpRptppField28: TppField
      FieldAlias = 'MINS'
      FieldName = 'MINS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 27
    end
  end
  object qryFeeTmpRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FT.ROWID, FT.CREATED, FT.FILEID, FT.AUTHOR, FT.REASON, FT' +
        '.UNITS, FT.RATE, FT.AMOUNT,'
      
        'FT.TAXCODE, FT.TAX, FT.TAXRATE, FT.ELAPSED, FT.EMPCODE,FT.UNIQUE' +
        'ID,FT.NFEE,FT.BILLTYPE,'
      
        'decode(FT.TIME_TYPE, '#39'M'#39',P.SEARCH || '#39' '#39' || M.SHORTDESCR,'#39'O'#39', '#39'O' +
        'verhead Time'#39','#39'H'#39', P.SEARCH || '#39' '#39' || M.SHORTDESCR ) AS MATLOCAT' +
        'E, FT.NMATTER,'
      
        'FT.TIME_TYPE, FT.FEE_TEMPLATE, FT.ITEMS, FT.UNIT, FT.TASK_AMOUNT' +
        ', FT.LABELCOLOUR, FT.FEEBASIS, FT.EMP_TYPE, FT.VERSION, FT.MINS'
      'FROM FEETMP FT, MATTER M, PHONEBOOK P'
      'WHERE FT.AUTHOR=:AUTHOR'
      'AND FT.FILEID = M.FILEID (+)'
      'AND M.NCLIENT = P.NCLIENT (+)'
      'AND FT.NFEE IS NULL'
      'AND TRUNC(FT.CREATED) = NVL(:CREATED, trunc(FT.CREATED))'
      'order by FT.uniqueid desc')
    Left = 183
    Top = 503
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end>
  end
  object dsFeeTmpRpt: TUniDataSource
    DataSet = qryFeeTmpRpt
    Left = 236
    Top = 412
  end
  object procDailyBudget: TUniStoredProc
    StoredProcName = 'get_daily_budget'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := get_daily_budget(:P_EMPLOYEE, :P_FROMDATE, :P_TODAT' +
        'E);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 1148
    Top = 183
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_EMPLOYEE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_FROMDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_TODATE'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'get_daily_budget'
  end
  object qryDailyTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(total) as total_wip from'
      '('
      'SELECT NVL (SUM (amount), 0) total'
      '  FROM feetmp'
      ' WHERE  time_type = '#39'M'#39
      '   AND billtype = '#39'Billable'#39
      '   AND author = :author'
      '   AND nfee is null'
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))'
      'union'
      'SELECT NVL (SUM (amount), 0) total'
      '  FROM fee'
      ' WHERE  time_type = '#39'M'#39
      '   AND billtype = '#39'Billable'#39
      '   AND author = :author'
      '   AND type = '#39'N'#39
      '   AND TRUNC (created) = NVL (:created, TRUNC (created))'
      ')')
    Left = 999
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'created'
        Value = nil
      end>
  end
  object qryMonthlyTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(total) as total_wip from'
      '('
      'SELECT NVL (SUM (amount), 0) total'
      '  FROM feetmp'
      ' WHERE  time_type = '#39'M'#39
      '   AND billtype = '#39'Billable'#39
      '   AND author = :author'
      '   AND nfee is null'
      
        '   AND TRUNC (created) >= NVL (:date_from, TRUNC (created)) and ' +
        'TRUNC (created) <= NVL (:date_to, TRUNC (created))  '
      '--NVL (:created, TRUNC (created))'
      'union'
      'SELECT NVL (SUM (amount), 0) total'
      '  FROM fee'
      ' WHERE  time_type = '#39'M'#39
      '   AND billtype = '#39'Billable'#39
      '   AND author = :author'
      '   AND type = '#39'N'#39
      
        '   AND TRUNC (created) >= NVL (:date_from, TRUNC (created)) and ' +
        'TRUNC (created) <= NVL (:date_to, TRUNC (created))'
      ')')
    Left = 1200
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'date_from'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'date_to'
        Value = nil
      end>
  end
  object qryGetSeq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select DOC_DOCID.nextval as nextdoc from dual')
    Left = 791
    Top = 453
  end
  object ppFileNoteRpt: TppReport
    AutoStop = False
    DataPipeline = plTmpProcess
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 60350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppFileNoteRptBeforePrint
    DeviceType = 'PDF'
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
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 375
    Top = 540
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plTmpProcess'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object pplblTransTitle: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblTransTitle'
        Border.mmPadding = 0
        Caption = 'lblTransTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 89451
        mmTop = 2910
        mmWidth = 18923
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Matter Fee Filenote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 82815
        mmTop = 8202
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15620
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 51329
      mmPrintPosition = 0
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Matter #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 19315
        mmTop = 3440
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 21960
        mmTop = 9790
        mmWidth = 8732
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 22225
        mmTop = 15610
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 23019
        mmTop = 21696
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Minutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 19315
        mmTop = 27781
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 20373
        mmTop = 34660
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground1
      end
      object pplblClient: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblClient'
        Border.mmPadding = 0
        Caption = 'lblClient'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4234
        mmLeft = 34660
        mmTop = 15610
        mmWidth = 11907
        BandType = 4
        LayerName = Foreground1
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region1'
        Brush.Style = bsClear
        Pen.Style = psClear
        ShiftRelativeTo = ppDBMemo2
        Stretch = True
        Transparent = True
        mmHeight = 7144
        mmLeft = 0
        mmTop = 42335
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Notes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4498
          mmLeft = 21698
          mmTop = 43656
          mmWidth = 8995
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBMemo3: TppDBMemo
          DesignLayer = ppDesignLayer2
          UserName = 'DBMemo3'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'NOTES'
          DataPipeline = plTmpProcess
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plTmpProcess'
          mmHeight = 4468
          mmLeft = 34660
          mmTop = 43656
          mmWidth = 148058
          BandType = 4
          LayerName = Foreground1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 3439
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'UNITS'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 21695
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'MINS'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 27780
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo2'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'REASON'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4758
        mmLeft = 34660
        mmTop = 34660
        mmWidth = 148167
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object pplblMatterDesc: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblMatterDesc'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 34660
        mmTop = 9790
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object pplblFooter: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblFooter'
        Border.mmPadding = 0
        Caption = 'lblFooter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 89959
        mmTop = 1852
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 789
        mmLeft = 0
        mmTop = 263
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground1
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
  object tmrAutocost: TTimer
    Enabled = False
    OnTimer = tmrAutocostTimer
    Left = 712
    Top = 558
  end
  object plTmpProcess: TppDBPipeline
    DataSource = dsTmpProcess
    UserName = 'plTmpProcess'
    Left = 269
    Top = 550
    object plTmpProcessppField1: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plTmpProcessppField2: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plTmpProcessppField3: TppField
      FieldAlias = 'REASON'
      FieldName = 'REASON'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 2
    end
    object plTmpProcessppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plTmpProcessppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNIQUEID'
      FieldName = 'UNIQUEID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plTmpProcessppField6: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object plTmpProcessppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNITS'
      FieldName = 'UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plTmpProcessppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'RATE'
      FieldName = 'RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plTmpProcessppField9: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object plTmpProcessppField10: TppField
      FieldAlias = 'EMPCODE'
      FieldName = 'EMPCODE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object plTmpProcessppField11: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object plTmpProcessppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object plTmpProcessppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAXRATE'
      FieldName = 'TAXRATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object plTmpProcessppField14: TppField
      FieldAlias = 'WITHHOLD'
      FieldName = 'WITHHOLD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object plTmpProcessppField15: TppField
      FieldAlias = 'ELAPSED'
      FieldName = 'ELAPSED'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 14
    end
    object plTmpProcessppField16: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 15
    end
    object plTmpProcessppField17: TppField
      FieldAlias = 'TIME_TYPE'
      FieldName = 'TIME_TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object plTmpProcessppField18: TppField
      FieldAlias = 'FEE_TEMPLATE'
      FieldName = 'FEE_TEMPLATE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 17
    end
    object plTmpProcessppField19: TppField
      FieldAlias = 'MINS'
      FieldName = 'MINS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 18
    end
    object plTmpProcessppField20: TppField
      FieldAlias = 'START_DATE'
      FieldName = 'START_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 19
    end
    object plTmpProcessppField21: TppField
      FieldAlias = 'END_DATE'
      FieldName = 'END_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 20
    end
    object plTmpProcessppField22: TppField
      FieldAlias = 'LABELCOLOUR'
      FieldName = 'LABELCOLOUR'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 21
    end
    object plTmpProcessppField23: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 22
    end
    object plTmpProcessppField24: TppField
      FieldAlias = 'RESOURCEID'
      FieldName = 'RESOURCEID'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 23
    end
    object plTmpProcessppField25: TppField
      FieldAlias = 'OPTIONS'
      FieldName = 'OPTIONS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 24
    end
    object plTmpProcessppField26: TppField
      FieldAlias = 'EVENT_TYPE'
      FieldName = 'EVENT_TYPE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 25
    end
    object plTmpProcessppField27: TppField
      FieldAlias = 'CAPTION'
      FieldName = 'CAPTION'
      FieldLength = 1000
      DisplayWidth = 1000
      Position = 26
    end
    object plTmpProcessppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEMS'
      FieldName = 'ITEMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object plTmpProcessppField29: TppField
      FieldAlias = 'UNIT'
      FieldName = 'UNIT'
      FieldLength = 6
      DisplayWidth = 6
      Position = 28
    end
    object plTmpProcessppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASK_AMOUNT'
      FieldName = 'TASK_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object plTmpProcessppField31: TppField
      FieldAlias = 'NFEE'
      FieldName = 'NFEE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 30
    end
    object plTmpProcessppField32: TppField
      FieldAlias = 'BILLTYPE'
      FieldName = 'BILLTYPE'
      FieldLength = 22
      DisplayWidth = 22
      Position = 31
    end
    object plTmpProcessppField33: TppField
      FieldAlias = 'FEEBASIS'
      FieldName = 'FEEBASIS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
    object plTmpProcessppField34: TppField
      FieldAlias = 'EMP_TYPE'
      FieldName = 'EMP_TYPE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object plTmpProcessppField35: TppField
      FieldAlias = 'VERSION'
      FieldName = 'VERSION'
      FieldLength = 10
      DisplayWidth = 10
      Position = 34
    end
    object plTmpProcessppField36: TppField
      FieldAlias = 'SYSTEM_DATE'
      FieldName = 'SYSTEM_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 35
    end
    object plTmpProcessppField37: TppField
      FieldAlias = 'PROCESSED'
      FieldName = 'PROCESSED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 36
    end
    object plTmpProcessppField38: TppField
      FieldAlias = 'MATLOCATE'
      FieldName = 'MATLOCATE'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 37
    end
    object plTmpProcessppField39: TppField
      FieldAlias = 'NOTES'
      FieldName = 'NOTES'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 38
    end
    object plTmpProcessppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISCOUNT'
      FieldName = 'DISCOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object plTmpProcessppField41: TppField
      FieldAlias = 'IS_TASK'
      FieldName = 'IS_TASK'
      FieldLength = 1
      DisplayWidth = 1
      Position = 40
    end
    object plTmpProcessppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_FEE_AMT_PCT'
      FieldName = 'TOTAL_FEE_AMT_PCT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object plTmpProcessppField43: TppField
      FieldAlias = 'P_UNIQUEID'
      FieldName = 'P_UNIQUEID'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 42
    end
    object plTmpProcessppField44: TppField
      FieldAlias = 'TASK_COMPLETED'
      FieldName = 'TASK_COMPLETED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 43
    end
    object plTmpProcessppField45: TppField
      FieldAlias = 'TIME_CODE'
      FieldName = 'TIME_CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 44
    end
    object plTmpProcessppField46: TppField
      FieldAlias = 'ITEM_UNIT'
      FieldName = 'ITEM_UNIT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 45
    end
    object plTmpProcessppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_AMOUNT'
      FieldName = 'ITEM_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 46
    end
    object plTmpProcessppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASK_TAX'
      FieldName = 'TASK_TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object plTmpProcessppField49: TppField
      FieldAlias = 'PROGRAM_NAME'
      FieldName = 'PROGRAM_NAME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 48
    end
  end
  object qryTmpProcess: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from feetmp where uniqueid = :uniqueid')
    Left = 138
    Top = 559
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'uniqueid'
        Value = nil
      end>
  end
  object dsTmpProcess: TUniDataSource
    DataSet = qryTmpProcess
    Left = 193
    Top = 557
  end
end
