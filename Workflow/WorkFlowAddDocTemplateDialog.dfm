object fmWorkFlowAddDocTemplateDialog: TfmWorkFlowAddDocTemplateDialog
  Left = 783
  Top = 267
  ActiveControl = feTemplatePath
  BorderStyle = bsDialog
  Caption = 'Add Document Template'
  ClientHeight = 594
  ClientWidth = 463
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
    463
    594)
  PixelsPerInch = 96
  TextHeight = 15
  object lTemplateName: TLabel
    Left = 7
    Top = 84
    Width = 84
    Height = 15
    Caption = 'Template Name'
  end
  object lDocumentFilePath: TLabel
    Left = 7
    Top = 177
    Width = 104
    Height = 15
    Caption = 'Document File Path'
  end
  object lWorkflowType: TLabel
    Left = 7
    Top = 8
    Width = 79
    Height = 15
    Caption = 'Workflow Type'
  end
  object lTemplatePath: TLabel
    Left = 7
    Top = 56
    Width = 97
    Height = 15
    Caption = 'Template File Path'
  end
  object lDataFilePath: TLabel
    Left = 7
    Top = 150
    Width = 72
    Height = 15
    Caption = 'Data File Path'
  end
  object lGroupLabel: TLabel
    Left = 7
    Top = 205
    Width = 33
    Height = 15
    Caption = 'Group'
  end
  object Label4: TLabel
    Left = 7
    Top = 108
    Width = 112
    Height = 15
    Caption = 'Template Description'
  end
  object lTemplateType: TLabel
    Left = 7
    Top = 30
    Width = 77
    Height = 15
    Caption = 'Template Type'
  end
  object bnOk: TButton
    Left = 156
    Top = 562
    Width = 71
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 6
    OnClick = bnOkClick
  end
  object bnCancel: TButton
    Left = 231
    Top = 562
    Width = 72
    Height = 23
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
  end
  object beDataForm: TcxButtonEdit
    Left = 120
    Top = 616
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
          77FF777777FF777777FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
          66FFCC9966FFCC9966FFCC9966FFCC9966FFCC6666FF996666FF996666FF9966
          66FF996666FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00868686FFCC99
          66FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF006699CCFF8686
          86FFCC9999FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFF0CAA6FFF0CA
          A6FFFFCC99FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF003399CCFF6699
          CCFF868686FFF0CAA6FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFF0CA
          A6FFF0CAA6FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FF3399CCFF868686FFF0CAA6FFCCCC99FFCC9999FFF0CAA6FFF0CAA6FFFFCC
          CCFFF0CAA6FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFC0C0C0FFC0C0C0FFCC9999FFFFECCCFFFFFFCCFFFFECCCFFF0CAA6FFF0CA
          A6FFF0CAA6FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFDDDDDDFFF0CAA6FFFFECCCFFFFFFCCFFF8F8F8FFFFFFFF00DDDDDDFFF0CA
          A6FFFFECCCFFCC6666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFFFECCCFFF0CAA6FFFFECCCFFFFECCCFFF1F1F1FFF8F8F8FFFFFFCCFFCC99
          99FFFFECCCFFCC9966FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFFFECCCFFF0CAA6FFFFECCCFFFFECCCFFFFFFCCFFFFFFCCFFFFECCCFFCCCC
          99FFFFECCCFFCC9966FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFEAEAEAFFCCCCCCFFDDDDDDFFFFECCCFFFFECCCFFFFECCCFFCC9999FFFFEC
          CCFFFFECCCFFCC9966FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFFFECCCFFFFFFFF00CCCCCCFFF0CAA6FFCCCC99FFCCCC99FFCCCCCCFFFFEC
          CCFFFF9999FFCC9966FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFF1F1F1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8FFF1F1F1FF9966
          66FF996666FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFF1F1F1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8FF9966
          66FFCC9999FFCC9999FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A6FFFFCC99FFF0CAA6FFCCCC99FFCCCC99FFCC9999FFCC9999FFCC9999FF9966
          66FFCC9999FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = beDataFormPropertiesButtonClick
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 5
    Visible = False
    Width = 284
  end
  object cxLabel1: TcxLabel
    Left = 19
    Top = 618
    Caption = 'Data Form'
    Visible = False
  end
  object feTemplatePath: TJvFilenameEdit
    Left = 134
    Top = 54
    Width = 305
    Height = 23
    Hint = 
      'Macros Available'#13#10'[USERHOME] = User Home Directory'#13#10'[NMATTER] = ' +
      'Matter Number'#13#10'[TEMPDIR] = User'#39's Temp Directory'#13#10'[TEMPFILE] = M' +
      'ake a Temporary File'#13#10'[DATE] = System Date'#13#10'[TIME] = System Time' +
      #13#10'[DATETIME] = System Date and Time'#13#10'[CLIENTID] = Client Code'#13#10'[' +
      'FILEID]=File Number'#13#10'[AUTHOR]=Matter Author'#13#10'[USERINITIALS]=Axio' +
      'm User Code '#13#10'[DOCSEQUENCE]=Document Number [USERPROFILE]=Users ' +
      'Profile'
    AutoSize = False
    AddQuotes = False
    Filter = 
      'Word Documents (*.doc; *.dot; *.docx; *.dotm)|*.doc;*.dot; *.doc' +
      'x; *.dotm|All Files (*.*)|*.*'
    DialogTitle = 'Select Document Template'
    ButtonWidth = 20
    ParentShowHint = False
    PopupMenu = popMenuMacroList
    ShowHint = True
    TabOrder = 1
    Text = 'feTemplatePath'
  end
  object feDataFilePath: TJvFilenameEdit
    Left = 134
    Top = 147
    Width = 305
    Height = 23
    Hint = 'Macros Available'
    AddQuotes = False
    Filter = 'CSV Files (*.csv)|*.csv|All Files (*.*)|*.*'
    DialogTitle = 'Select Document Template'
    ButtonWidth = 20
    ParentShowHint = False
    PopupMenu = popMenuMacroList
    ShowHint = True
    TabOrder = 3
    Text = 'feDataFilePath'
  end
  object feDocumentName: TJvFilenameEdit
    Left = 134
    Top = 174
    Width = 305
    Height = 23
    Hint = 'Macros Available'
    AddQuotes = False
    Filter = 
      'Word Documents (*.doc; *.dot; *.docx; *.dotm)|*.doc;*.dot; *.doc' +
      'x; *.dotm|All Files (*.*)|*.*'
    DialogTitle = 'Select Document Template'
    ButtonWidth = 20
    ParentShowHint = False
    PopupMenu = popMenuMacroList
    ShowHint = True
    TabOrder = 4
    Text = 'feDocumentName'
  end
  object dbeDocName: TEdit
    Left = 134
    Top = 81
    Width = 305
    Height = 23
    TabOrder = 2
    OnEnter = dbeDocNameEnter
  end
  object dblGroup: TcxImageComboBox
    Left = 134
    Top = 201
    Properties.ClearKey = 8
    Properties.DropDownRows = 20
    Properties.ImmediatePost = True
    Properties.Items = <>
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 9
    Width = 305
  end
  object btnDataFilePath: TBitBtn
    Left = 114
    Top = 146
    Width = 20
    Height = 24
    Hint = 
      'Default Data File Path - Set in Launch-Maintenance->System (Docu' +
      'ment Defaults)'
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = btnDataFilePathClick
  end
  object btnDocFilePath: TBitBtn
    Left = 114
    Top = 175
    Width = 20
    Height = 22
    Hint = 
      'Default Data File Path - Set in Launch-Maintenance->System (Docu' +
      'ment Defaults) - Documents Default File Directory'
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = btnDocFilePathClick
  end
  object memoTemplateDescr: TMemo
    Left = 134
    Top = 108
    Width = 305
    Height = 35
    Lines.Strings = (
      'memoTemplateDescr')
    MaxLength = 2000
    TabOrder = 12
  end
  object cxPageControl1: TcxPageControl
    Left = 7
    Top = 227
    Width = 436
    Height = 328
    TabOrder = 13
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 324
    ClientRectLeft = 4
    ClientRectRight = 432
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'Party Options'
      ImageIndex = 0
      object lPartyMergeType: TLabel
        Left = 4
        Top = 3
        Width = 101
        Height = 33
        AutoSize = False
        Caption = 'Generic Document Merge Type'
        WordWrap = True
      end
      object lPartyType: TLabel
        Left = 4
        Top = 44
        Width = 54
        Height = 15
        Caption = 'Addressee'
      end
      object lNoAddressee: TLabel
        Left = 112
        Top = 46
        Width = 111
        Height = 12
        AutoSize = False
        Caption = 'None'
        Visible = False
      end
      object lClientAddressee: TLabel
        Left = 112
        Top = 45
        Width = 111
        Height = 12
        AutoSize = False
        Caption = 'Client'
      end
      object lOtherParty1: TLabel
        Left = 4
        Top = 69
        Width = 60
        Height = 15
        Caption = 'Referred To'
      end
      object rbAddrTypeClient: TRadioButton
        Left = 110
        Top = 11
        Width = 49
        Height = 15
        Caption = 'Client'
        TabOrder = 0
        OnClick = rbAddrTypeClick
      end
      object rbAddrTypeParty: TRadioButton
        Left = 163
        Top = 11
        Width = 46
        Height = 15
        Caption = 'Party'
        TabOrder = 1
        OnClick = rbAddrTypeClick
      end
      object rbAddrTypeNone: TRadioButton
        Left = 213
        Top = 11
        Width = 46
        Height = 15
        Caption = 'None'
        TabOrder = 2
        OnClick = rbAddrTypeClick
      end
      object cbActive: TCheckBox
        Left = 263
        Top = 11
        Width = 53
        Height = 15
        Caption = 'Active'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object cbWorkflowOnly: TCheckBox
        Left = 318
        Top = 11
        Width = 98
        Height = 15
        Caption = 'Workflow Only'
        TabOrder = 4
      end
      object cbPartyType: TcxComboBox
        Left = 110
        Top = 41
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 20
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 5
        Width = 219
      end
      object dbgReferred: TcxGrid
        Left = 110
        Top = 68
        Width = 219
        Height = 213
        TabOrder = 6
        OnEnter = dbgReferredEnter
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tvReferred: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsReferredTo
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ColumnHeaderHints = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Appending = True
          OptionsView.NavigatorOffset = 26
          OptionsView.ScrollBars = ssVertical
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object tvReferredPartyType: TcxGridDBColumn
            DataBinding.FieldName = 'PartyType'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownRows = 20
            Properties.ImmediatePost = True
            Options.Grouping = False
            Options.Moving = False
          end
          object tvReferredID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object tvReferredVIEWORDER: TcxGridDBColumn
            DataBinding.FieldName = 'VIEWORDER'
            Visible = False
          end
        end
        object dbgReferredLevel1: TcxGridLevel
          GridView = tvReferred
        end
      end
      object ckReferredOptional: TDBCheckBox
        Left = 339
        Top = 73
        Width = 72
        Height = 15
        Caption = 'Optional'
        DataField = 'REFERREDOPTIONAL'
        DataSource = dmWorkFlowDataModuleDocs.dsDocTemplatesEdit
        TabOrder = 7
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object tbDataSet: TToolBar
        Left = 330
        Top = 105
        Width = 50
        Height = 56
        Align = alNone
        AutoSize = True
        ButtonHeight = 28
        ButtonWidth = 25
        Caption = 'tbDataSet'
        Images = ImageList
        List = True
        TabOrder = 8
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButton1'
          ImageIndex = 0
          OnClick = ToolButton1Click
        end
        object ToolButton2: TToolButton
          Left = 25
          Top = 0
          Action = aDataSetDelete
          Wrap = True
        end
        object ToolButton4: TToolButton
          Left = 0
          Top = 28
          Action = aMoveDown
        end
        object ToolButton5: TToolButton
          Left = 25
          Top = 28
          Action = aMoveUp
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Data Fields'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object cxSplitter1: TcxSplitter
        Left = 207
        Top = 0
        Width = 8
        Height = 298
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 59
        PositionAfterOpen = 31
        MinSize = 31
        Control = Panel1
      end
      object Panel2: TPanel
        Left = 215
        Top = 0
        Width = 213
        Height = 298
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 1
        object Label2: TLabel
          Left = 3
          Top = 4
          Width = 81
          Height = 15
          Caption = 'Assigned Fields'
        end
        object grdAssigned: TcxGrid
          Left = 2
          Top = 19
          Width = 204
          Height = 272
          Align = alCustom
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvAssignedFields: TcxGridDBTableView
            OnDragDrop = tvAssignedFieldsDragDrop
            OnDragOver = tvAssignedFieldsDragOver
            OnEndDrag = tvAssignedFieldsEndDrag
            OnMouseDown = tvAvailableMouseDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsAssignedFields
            DataController.DetailKeyFieldNames = 'FIELDNAME'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 51
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            Styles.Group = cxStyle1
            object tvAssignedFieldsSEQ: TcxGridDBColumn
              Caption = 'Seq'
              DataBinding.FieldName = 'SEQ'
              MinWidth = 31
              Width = 31
            end
            object tvAssignedFieldsCAPTION: TcxGridDBColumn
              DataBinding.FieldName = 'CAPTION'
              Options.Editing = False
              Options.Focusing = False
            end
            object tvAssignedFieldsDATAFORM: TcxGridDBColumn
              Caption = 'Form'
              DataBinding.FieldName = 'DATAFORM'
              Visible = False
              GroupIndex = 0
              VisibleForCustomization = False
            end
            object tvAssignedFieldsFIELDNAME: TcxGridDBColumn
              DataBinding.FieldName = 'FIELDNAME'
              Visible = False
              VisibleForCustomization = False
            end
            object tvAssignedFieldsWORKFLOWDOCTEMPLATES_DOCID: TcxGridDBColumn
              DataBinding.FieldName = 'WORKFLOWDOCTEMPLATES_DOCID'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object grdAssignedLevel1: TcxGridLevel
            GridView = tvAssignedFields
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 207
        Height = 298
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 2
        object Label1: TLabel
          Left = 4
          Top = 4
          Width = 81
          Height = 15
          Caption = 'Available Fields'
        end
        object grdAvailable: TcxGrid
          Left = 4
          Top = 19
          Width = 202
          Height = 273
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvAvailable: TcxGridDBTableView
            OnDragDrop = tvAvailableDragDrop
            OnDragOver = tvAssignedFieldsDragOver
            OnEndDrag = tvAvailableEndDrag
            OnMouseDown = tvAvailableMouseDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDataFields
            DataController.DetailKeyFieldNames = 'FIELDNAME'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.DragDropText = True
            OptionsCustomize.ColumnFiltering = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.NavigatorOffset = 51
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            Styles.Group = cxStyle1
            object tvAvailableFIELDNAME: TcxGridDBColumn
              DataBinding.FieldName = 'FIELDNAME'
            end
            object tvAvailableDATAFORM: TcxGridDBColumn
              Caption = 'Form'
              DataBinding.FieldName = 'DATAFORM'
              Visible = False
              GroupIndex = 0
              VisibleForCustomization = False
            end
            object tvAvailableSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'SEQ'
              Visible = False
              VisibleForCustomization = False
            end
            object tvAvailableMANDATORY: TcxGridDBColumn
              DataBinding.FieldName = 'MANDATORY'
              Visible = False
              VisibleForCustomization = False
            end
            object tvAvailableCAPTION: TcxGridDBColumn
              DataBinding.FieldName = 'DATAFORM'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object grdAvailableLevel1: TcxGridLevel
            GridView = tvAvailable
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Document Defaults'
      ImageIndex = 2
      object Label3: TLabel
        Left = 11
        Top = 20
        Width = 48
        Height = 15
        Caption = 'Category'
      end
      object Label8: TLabel
        Left = 11
        Top = 50
        Width = 70
        Height = 15
        Caption = 'Classification'
      end
      object Label5: TLabel
        Left = 11
        Top = 79
        Width = 72
        Height = 15
        Caption = 'Add to Folder'
        Visible = False
      end
      object cmbCategory: TcxLookupComboBox
        Left = 92
        Top = 18
        Properties.DropDownRows = 20
        Properties.KeyFieldNames = 'NPRECCATEGORY'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end
          item
            FieldName = 'NPRECCATEGORY'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsPRECCATEGORY
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 0
        Width = 296
      end
      object cmbClassification: TcxLookupComboBox
        Left = 92
        Top = 47
        Properties.KeyFieldNames = 'NPRECCLASSIFICATION'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsPRECCLASSIFICATION
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 1
        Width = 296
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 92
        Top = 75
        Properties.KeyFieldNames = 'NPRECCLASSIFICATION'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsPRECCLASSIFICATION
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 2
        Visible = False
        Width = 296
      end
    end
  end
  object cmbTemplateType: TcxComboBox
    Left = 134
    Top = 27
    Properties.BeepOnError = True
    Properties.ClearKey = 46
    Properties.Items.Strings = (
      'Generic MS-Word Mail-Merge'
      'HotDocs Precedents'
      'Informs Precedents'
      'Worldox Precedents'
      'IManage/Filesite Mail-Merge'
      'Generic Documents - No Merge')
    Properties.OnEditValueChanged = cmbTemplateTypePropertiesEditValueChanged
    TabOrder = 0
    Text = 'cmbTemplateType'
    Width = 305
  end
  object cxLabel2: TcxLabel
    Left = 134
    Top = 6
    Caption = 'dbtWorkflowType'
    Transparent = True
  end
  object vtReferredTo: TVirtualTable
    Options = [voStored]
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'VIEWORDER'
        DataType = ftInteger
      end
      item
        Name = 'PartyType'
        DataType = ftString
        Size = 25
      end>
    AfterInsert = vtReferredToAfterInsert
    BeforePost = vtReferredToBeforePost
    AfterPost = vtReferredToAfterPost
    BeforeDelete = vtReferredToBeforeDelete
    Left = 31
    Top = 358
    Data = {
      040003000200494403000000000000000900564945574F524445520300000000
      00000009005061727479547970650100190000000000000000000000}
    object vtReferredToID: TIntegerField
      FieldName = 'ID'
    end
    object vtReferredToVIEWORDER: TIntegerField
      FieldName = 'VIEWORDER'
    end
    object vtReferredToPartyType: TStringField
      FieldName = 'PartyType'
      Size = 25
    end
  end
  object dsReferredTo: TDataSource
    DataSet = vtReferredTo
    Left = 253
    Top = 461
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 24
    Top = 435
    object aDataSetInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 0
      OnExecute = aDataSetInsertExecute
      DataSource = dsReferredTo
    end
    object aDataSetEdit: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 2
      DataSource = dsReferredTo
    end
    object aDataSetDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 1
      DataSource = dsReferredTo
    end
    object aMoveUp: TAction
      Category = 'Dataset'
      Caption = 'aMoveUp'
      ImageIndex = 4
      OnExecute = aMoveUpExecute
      OnUpdate = aMoveUpUpdate
    end
    object aMoveDown: TAction
      Category = 'Dataset'
      Caption = 'aMoveDown'
      ImageIndex = 3
      OnExecute = aMoveDownExecute
      OnUpdate = aMoveDownUpdate
    end
  end
  object ImageList: TImageList
    Left = 400
    Top = 484
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000007F7F7F00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000FF0000000000000000007F7F
      7F008000000080000000800000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000000000000000FF0000000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000FF0080000000800000008000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000FF0080000000800000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000FF0080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000FF00800000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000FF0080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000FF00800000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF0080000000800000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000FF008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000FF008000000080000000800000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000800000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000000000000000FF000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      00000000000000000000000000000000FF0000000000000000007F7F7F008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF0000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000007F7F7F008000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00BF7C0000000000008F78000000000000
      C760000000000000C141000000000000E001000000000000E003000000000000
      F003000000000000F007000000000000F807000000000000F80F000000000000
      FC0F000000000000FC1F000000000000FE1F000000000000FE3F000000000000
      FF3F000000000000FF7F000000000000FFFFFFFFFFFFFEFFFFFFFFFFFFFFFE7F
      FFFFFFFFFFFFFC7FFFFFFFFFFFFFFC3FFC7FFFFFFFFFF83FFC7FFFFFFFFFF81F
      FC7FFFFFE007F01FE00FE007F00FF00FE00FE007F81FE00FE00FE007FC3FE007
      FC7FFFFFFE7FC007FC7FFFFFFFFFC003FC7FFFFFFFFF8283FFFFFFFFFFFF8EC1
      FFFFFFFFFFFF1EF1FFFFFFFFFFFF7EF900000000000000000000000000000000
      000000000000}
  end
  object qryDataFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from dataformfield FT, dataform df '
      'WHERE '
      
        'NOT EXISTS (SELECT 1 FROM WKFLOWDOCTEMPLATES_DATAFIELDS WDF WHER' +
        'E WDF.FIELDNAME = FT.FIELDNAME'
      '            AND WDF.WORKFLOWDOCTEMPLATES_DOCID = :DOCID'
      '            AND WDF.DATAFORM = FT.DATAFORM)'
      'AND ft.DATAFORM = df.CODE'
      'order by 1 ')
    Left = 47
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOCID'
        Value = nil
      end>
  end
  object dsDataFields: TUniDataSource
    DataSet = qryDataFields
    Left = 73
    Top = 407
  end
  object qryAssignedFields: TUniQuery
    UpdatingTable = 'WKFLOWDOCTEMPLATES_DATAFIELDS'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT WDF.*, WDF.ROWID FROM '
      'WKFLOWDOCTEMPLATES_DATAFIELDS WDF '
      'WHERE '
      'WDF.WORKFLOWDOCTEMPLATES_DOCID = :DOCID')
    Left = 324
    Top = 542
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOCID'
        Value = nil
      end>
  end
  object dsAssignedFields: TUniDataSource
    DataSet = qryAssignedFields
    Left = 372
    Top = 543
  end
  object qryDeleteAssignedFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM '
      'WKFLOWDOCTEMPLATES_DATAFIELDS WDF '
      'WHERE '
      'WDF.WORKFLOWDOCTEMPLATES_DOCID = :DOCID'
      'AND WDF.DATAFORM = :DATAFORM'
      'AND fieldname= :fieldname')
    Left = 319
    Top = 483
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 467
    Top = 391
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object qryPRECCATEGORY: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from PRECCATEGORY order by descr'
      ''
      '')
    Left = 554
    Top = 46
  end
  object dsPRECCATEGORY: TUniDataSource
    DataSet = qryPRECCATEGORY
    Left = 665
    Top = 30
  end
  object qryPRECCLASSIFICATION: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from PRECCLASSIFICATION order by descr')
    Left = 572
    Top = 125
  end
  object dsPRECCLASSIFICATION: TUniDataSource
    DataSet = qryPRECCLASSIFICATION
    Left = 627
    Top = 128
  end
  object popMenuMacroList: TPopupMenu
    OnPopup = popMenuMacroListPopup
    Left = 472
    Top = 543
  end
end
