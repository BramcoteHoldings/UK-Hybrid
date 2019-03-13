object frmSystemFile: TfrmSystemFile
  Left = 85
  Top = 141
  Caption = 'System Variables'
  ClientHeight = 667
  ClientWidth = 1119
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label22: TLabel
    Left = 20
    Top = 55
    Width = 141
    Height = 13
    Caption = 'Multi-Client Phonebook Group'
    Transparent = True
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 28
    Width = 1119
    Height = 639
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.ShowFrame = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    OnChange = pcMainChange
    OnPageChanging = pcMainPageChanging
    ClientRectBottom = 638
    ClientRectLeft = 1
    ClientRectRight = 1118
    ClientRectTop = 20
    object tsGeneral: TcxTabSheet
      Caption = '&General'
      ImageIndex = 0
      object DBText1: TDBText
        Left = 104
        Top = 7
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'COMPANY'
        DataSource = dsSystemFile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 7
        Top = 26
        Width = 38
        Height = 13
        Caption = 'Address'
        Transparent = True
      end
      object Label1: TLabel
        Left = 3
        Top = 100
        Width = 55
        Height = 13
        Caption = 'Next Matter'
        Transparent = True
      end
      object Label2: TLabel
        Left = 553
        Top = 296
        Width = 100
        Height = 13
        Caption = 'Next Archived Matter'
        Transparent = True
        Visible = False
      end
      object Label3: TLabel
        Left = 8
        Top = 119
        Width = 77
        Height = 13
        Caption = 'Minutes per Unit'
        Transparent = True
      end
      object Label5: TLabel
        Left = 549
        Top = 487
        Width = 76
        Height = 13
        Caption = 'Word Processor'
        Transparent = True
        Visible = False
      end
      object Label36: TLabel
        Left = 369
        Top = 7
        Width = 46
        Height = 13
        Caption = 'Firm Logo'
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 22
        Width = 239
        Height = 21
        DataField = 'ADD1'
        DataSource = dsSystemFile
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 104
        Top = 45
        Width = 239
        Height = 21
        DataField = 'ADD2'
        DataSource = dsSystemFile
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 104
        Top = 69
        Width = 135
        Height = 21
        DataField = 'SUBURB'
        DataSource = dsSystemFile
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 245
        Top = 69
        Width = 38
        Height = 21
        CharCase = ecUpperCase
        DataField = 'STATE'
        DataSource = dsSystemFile
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 290
        Top = 69
        Width = 53
        Height = 21
        DataField = 'POSTCODE'
        DataSource = dsSystemFile
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 93
        Width = 75
        Height = 21
        DataField = 'NEXTMATTER'
        DataSource = dsSystemFile
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 650
        Top = 293
        Width = 75
        Height = 21
        DataField = 'NEXTARCHIVE'
        DataSource = dsSystemFile
        TabOrder = 6
        Visible = False
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 116
        Width = 23
        Height = 21
        DataField = 'TIME_UNITS'
        DataSource = dsSystemFile
        TabOrder = 7
      end
      object dbcbWordProc: TDBComboBox
        Left = 645
        Top = 485
        Width = 135
        Height = 21
        Style = csDropDownList
        DataField = 'WORDPROC'
        DataSource = dsSystemFile
        Items.Strings = (
          'WORD97'
          'WORDPERFECT8')
        TabOrder = 8
        Visible = False
      end
      object cmbHelpType: TcxComboBox
        Left = 104
        Top = 139
        Properties.Items.Strings = (
          'Winhelp'
          'HtmlHelp')
        Properties.OnChange = cmbHelpTypePropertiesChange
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Text = 'cmbHelpType'
        Width = 134
      end
      object cxLabel2: TcxLabel
        Left = 7
        Top = 141
        Caption = 'Help File Format:'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 104
        Top = 184
        AutoSize = False
        DataBinding.DataField = 'HOME_PAGE_URL'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Height = 19
        Width = 238
      end
      object cxLabel4: TcxLabel
        Left = 7
        Top = 185
        Caption = 'Default URL:'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 6
        Top = 232
        AutoSize = False
        Caption = 'Use Debtor Tasks'
        DataBinding.DataField = 'DEBTOR_TASK'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 12
        Height = 15
        Width = 165
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 4
        Top = 208
        AutoSize = False
        Caption = 'Collection Template BLOB'
        DataBinding.DataField = 'DEBTOR_DOCUMENT_BLOB'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 13
        Height = 20
        Width = 169
      end
      object cxGroupBox2: TcxGroupBox
        Left = 10
        Top = 436
        Caption = 'Crystal Reports Viewer Option'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 14
        Height = 47
        Width = 423
        object cbUseAxiomCrysltalViewer: TcxDBCheckBox
          Left = 7
          Top = 14
          Caption = 'Use Axiom Crystal Viewer'
          DataBinding.DataField = 'USE_AXIOM_CR_VIEWER'
          DataBinding.DataSource = dsSystemFile
          Enabled = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Visible = False
          OnClick = cbUseAxiomCrysltalViewerClick
          Width = 184
        end
        object cxLabel9: TcxLabel
          Left = 2
          Top = 20
          AutoSize = False
          Caption = 'Crystal Reports Viewer path:'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.WordWrap = True
          Transparent = True
          Height = 15
          Width = 110
        end
        object scmbCrystalPath: TcxDBShellComboBox
          Left = 114
          Top = 18
          DataBinding.DataField = 'CRYSTAL_VIEWER_PATH'
          DataBinding.DataSource = dsSystemFile
          ParentShowHint = False
          Properties.DropDownWidth = 350
          Properties.FastSearch = True
          Properties.IncrementalSearch = True
          Properties.Root.BrowseFolder = bfCustomPath
          Properties.ShowFullPath = sfpAlways
          Properties.ValidateOnEnter = False
          Properties.ViewOptions = [scvoShowFiles]
          ShowHint = True
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Width = 298
        end
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 6
        Top = 252
        AutoSize = False
        Caption = 'Use Diary Notify '
        DataBinding.DataField = 'USE_DIARY_NOTIFY'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 17
        Height = 20
        Width = 167
      end
      object cxDBCheckBox11: TcxDBCheckBox
        Left = 6
        Top = 275
        AutoSize = False
        Caption = 'Use Fee Authority'
        DataBinding.DataField = 'USE_FEE_AUTHORITY'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 18
        Height = 19
        Width = 167
      end
      object cxLabel18: TcxLabel
        Left = 8
        Top = 164
        Caption = 'Help File Path'
      end
      object edtHelpPath: TcxDBButtonEdit
        Left = 104
        Top = 162
        AutoSize = False
        DataBinding.DataField = 'HELP_FILE_PATH'
        DataBinding.DataSource = dsSystemFile
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtHelpPathPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Height = 19
        Width = 238
      end
      object cxDBImage1: TcxDBImage
        Left = 424
        Top = 6
        DataBinding.DataField = 'LOGO_IMAGE'
        DataBinding.DataSource = dsSystemFile
        PopupMenu = dxBarPopupMenu1
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.ImmediatePost = True
        Properties.PopupMenuLayout.MenuItems = []
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 20
        Height = 150
        Width = 348
      end
      object cbEnforceClientPack: TcxDBCheckBox
        Left = 6
        Top = 297
        AutoSize = False
        Caption = 'Enforce Client Pack'
        DataBinding.DataField = 'ENFORCE_CLIENT_PACK'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 21
        Height = 20
        Width = 167
      end
      object cxDBCheckBox18: TcxDBCheckBox
        Left = 6
        Top = 320
        AutoSize = False
        Caption = 'Expanded Matter Data Fields'
        DataBinding.DataField = 'EXPANDED_MTR_DATA'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 22
        Height = 19
        Width = 167
      end
      object cxDBCheckBox25: TcxDBCheckBox
        Left = 6
        Top = 343
        AutoSize = False
        Caption = 'Search on "Matter" only in Matter Search Screen'
        DataBinding.DataField = 'MATTER_ONLY_SEARCH'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.ImmediatePost = True
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 23
        Height = 31
        Width = 167
      end
      object cxDBCheckBox28: TcxDBCheckBox
        Left = 6
        Top = 375
        AutoSize = False
        Caption = 'Include Creditor Inv # in EFT file'
        DataBinding.DataField = 'USE_CREDITOR_REFERENCE'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 24
        Height = 34
        Width = 167
      end
    end
    object tsLibraries: TcxTabSheet
      Caption = 'Libraries'
      ImageIndex = 1
      TabVisible = False
      DesignSize = (
        1117
        618)
      object lblAppName: TLabel
        Left = 6
        Top = 4
        Width = 83
        Height = 13
        Caption = 'Application Name'
        Transparent = True
      end
      object lbFileName: TLabel
        Left = 154
        Top = 4
        Width = 47
        Height = 13
        Caption = 'File Name'
        Transparent = True
      end
      object Label7: TLabel
        Left = 6
        Top = 41
        Width = 38
        Height = 13
        Caption = 'Settings'
        Transparent = True
      end
      object dbeFileName: TDBEdit
        Left = 154
        Top = 19
        Width = 120
        Height = 21
        DataField = 'VALUE'
        DataSource = dsLibraries
        TabOrder = 0
      end
      object cbAppName: TComboBox
        Left = 6
        Top = 19
        Width = 134
        Height = 21
        Style = csDropDownList
        Sorted = True
        TabOrder = 1
        OnChange = cbAppNameChange
      end
      object dbgSettings: TcxGrid
        Left = 6
        Top = 56
        Width = 1108
        Height = 559
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object tvSettings: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSettings
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          object tvSettingsITEM1: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'ITEM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Styles.Header = cxStyle1
            Width = 100
          end
          object tvSettingsVALUE1: TcxGridDBColumn
            Caption = 'Setting'
            DataBinding.FieldName = 'VALUE'
            Styles.Header = cxStyle2
            Width = 170
          end
          object tvSettingsINTVALUE1: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'INTVALUE'
            Styles.Header = cxStyle3
          end
        end
        object dbgSettingsLevel1: TcxGridLevel
          GridView = tvSettings
        end
      end
    end
    object tabUserStatements: TcxTabSheet
      Caption = 'User &Statements'
      ImageIndex = 2
      TabVisible = False
      object dbgUserStatements: TcxGrid
        Left = 0
        Top = 0
        Width = 1117
        Height = 618
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvUserStatements: TcxGridDBTableView
          OnDblClick = dbgUserStatementsDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsUserStatements
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          object tvUserStatementsCODE1: TcxGridDBColumn
            DataBinding.FieldName = 'CODE'
          end
          object tvUserStatementsDESCRIPTION1: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 150
          end
          object tvUserStatementsSTATEMENTTYPE1: TcxGridDBColumn
            DataBinding.FieldName = 'STATEMENTTYPE'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DropDownRows = 7
            Properties.Items.Strings = (
              'MTRCONTACT'
              'MATTER'
              'OTHER'
              'PRECEDENT')
            Properties.ReadOnly = False
            Width = 98
          end
          object tvUserStatementsWORKFLOWTYPE: TcxGridDBColumn
            Caption = 'Workflow'
            DataBinding.FieldName = 'WORKFLOWTYPE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'CODE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWorkflowTypes
          end
        end
        object dbgUserStatementsLevel1: TcxGridLevel
          GridView = tvUserStatements
        end
      end
    end
    object tabFieldMapping: TcxTabSheet
      Caption = 'Field &Mapping'
      ImageIndex = 3
      TabVisible = False
      object dbgDataFieldMapping: TcxGrid
        Left = 0
        Top = 0
        Width = 1117
        Height = 618
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvDataFieldMapping: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsDataFieldMapping
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 30
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tvDataFieldMappingAXIOMCODE: TcxGridDBColumn
            DataBinding.FieldName = 'AXIOMCODE'
            Width = 335
          end
          object tvDataFieldMappingFOREIGNCODE: TcxGridDBColumn
            DataBinding.FieldName = 'FOREIGNCODE'
            Width = 320
          end
          object tvDataFieldMappingROWID: TcxGridDBColumn
            DataBinding.FieldName = 'ROWID'
            Visible = False
            Width = 60
          end
        end
        object dbgDataFieldMappingLevel1: TcxGridLevel
          GridView = tvDataFieldMapping
        end
      end
    end
    object tsOutlook: TcxTabSheet
      Caption = 'Outlook'
      ImageIndex = 4
      TabVisible = False
      object Label21: TLabel
        Left = 2
        Top = 23
        Width = 96
        Height = 13
        Alignment = taRightJustify
        Caption = 'Use Calendar Folder'
        Transparent = True
      end
      object Label8: TLabel
        Left = 13
        Top = 46
        Width = 85
        Height = 13
        Alignment = taRightJustify
        Caption = 'Appointment Form'
        Transparent = True
      end
      object Label9: TLabel
        Left = -1
        Top = 68
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Field Names'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 8
        Top = 85
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Matter Number'
        Transparent = True
      end
      object Label11: TLabel
        Left = 52
        Top = 107
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Client'
        Transparent = True
      end
      object Label12: TLabel
        Left = -1
        Top = 129
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Client Reference'
        Transparent = True
      end
      object Label13: TLabel
        Left = -3
        Top = 151
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Short Description'
        Transparent = True
      end
      object Label14: TLabel
        Left = 6
        Top = 174
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Full Description'
        Transparent = True
      end
      object Label19: TLabel
        Left = 54
        Top = 196
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Type'
        Transparent = True
      end
      object Label20: TLabel
        Left = 197
        Top = 174
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Branch'
        Transparent = True
      end
      object Label17: TLabel
        Left = 200
        Top = 151
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Author'
        Transparent = True
      end
      object Label18: TLabel
        Left = 190
        Top = 129
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Operator'
        Transparent = True
      end
      object Label16: TLabel
        Left = 187
        Top = 107
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Controller'
        Transparent = True
      end
      object Label15: TLabel
        Left = 197
        Top = 85
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Partner'
        Transparent = True
      end
      object eCalendarFolder: TEdit
        Left = 105
        Top = 20
        Width = 129
        Height = 21
        TabOrder = 2
      end
      object eOutlookForm: TEdit
        Left = 105
        Top = 42
        Width = 223
        Height = 21
        TabOrder = 4
      end
      object eFieldMatterNumber: TEdit
        Left = 83
        Top = 81
        Width = 93
        Height = 21
        TabOrder = 5
      end
      object eFieldClient: TEdit
        Left = 83
        Top = 103
        Width = 93
        Height = 21
        TabOrder = 6
      end
      object eFieldClientRef: TEdit
        Left = 83
        Top = 125
        Width = 93
        Height = 21
        TabOrder = 7
      end
      object eFieldShortDesc: TEdit
        Left = 83
        Top = 148
        Width = 93
        Height = 21
        TabOrder = 8
      end
      object eFieldFullDesc: TEdit
        Left = 83
        Top = 170
        Width = 93
        Height = 21
        TabOrder = 9
      end
      object eFieldType: TEdit
        Left = 83
        Top = 192
        Width = 93
        Height = 21
        TabOrder = 10
      end
      object eFieldBranch: TEdit
        Left = 238
        Top = 170
        Width = 93
        Height = 21
        TabOrder = 11
      end
      object eFieldAuthor: TEdit
        Left = 238
        Top = 148
        Width = 93
        Height = 21
        TabOrder = 12
      end
      object eFieldOperator: TEdit
        Left = 238
        Top = 125
        Width = 93
        Height = 21
        TabOrder = 13
      end
      object eFieldController: TEdit
        Left = 238
        Top = 103
        Width = 93
        Height = 21
        TabOrder = 14
      end
      object eFieldPartner: TEdit
        Left = 238
        Top = 81
        Width = 93
        Height = 21
        TabOrder = 15
      end
      object cbUseOutlook: TcxCheckBox
        Left = 8
        Top = 0
        Caption = 'Use Outlook for Diary'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnClick = cbUseOutlookClick
        Width = 116
      end
      object cbDefaultCalendar: TcxCheckBox
        Left = 139
        Top = 0
        Caption = 'Use Default Calendar'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        OnClick = cbDefaultCalendarClick
        Width = 141
      end
      object cbAppendMatterType: TcxCheckBox
        Left = 237
        Top = 19
        Caption = 'Append Matter Type'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 121
      end
    end
    object tsClients: TcxTabSheet
      Caption = 'Phonebook/Client'
      ImageIndex = 5
      object Label23: TLabel
        Left = 20
        Top = 52
        Width = 141
        Height = 13
        Caption = 'Multi-Client Phonebook Group'
        Transparent = True
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 149
        Top = 281
        DataBinding.DataField = 'DEFAULT_PHONEBOOKGRP'
        DataBinding.DataSource = dsSystemFile
        Properties.ClearKey = 46
        Properties.KeyFieldNames = 'CATEGORY'
        Properties.ListColumns = <
          item
            FieldName = 'CATEGORY'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsPbGroups
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Width = 209
      end
      object cxLabel3: TcxLabel
        Left = 10
        Top = 283
        Caption = 'Default Phonebook Group:'
        Transparent = True
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 149
        Top = 305
        DataBinding.DataField = 'NTEMPLATE'
        DataBinding.DataSource = dsSystemFile
        Properties.ClearKey = 46
        Properties.KeyFieldNames = 'NTEMPLATE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsCollectionTemplate
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Width = 209
      end
      object cxLabel8: TcxLabel
        Left = 10
        Top = 307
        Caption = 'Default Collection Template:'
        Transparent = True
      end
      object cbClientCreate: TcxCheckBox
        Left = 19
        Top = 7
        Caption = 'Limit Client Create to Phone Book Group'
        Properties.Alignment = taLeftJustify
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        OnClick = cbClientCreateClick
        Width = 228
      end
      object cbSLERequired: TcxCheckBox
        Left = 20
        Top = 85
        Caption = 'SLE Date is required on matter.'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 182
      end
      object ckUseCheckDigit: TcxCheckBox
        Left = 20
        Top = 103
        Caption = 'Use Check Digit on File ID.'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 173
      end
      object gbMatterCarrage: TcxGroupBox
        Left = 20
        Top = 198
        Caption = 'Matter Carriage'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 77
        Width = 321
        object Label30: TLabel
          Left = 9
          Top = 17
          Width = 258
          Height = 13
          Caption = 'Limit the following to select only from the matter entity...'
          Transparent = True
          WordWrap = True
        end
        object ckCarrageLimitPartner: TcxCheckBox
          Left = 11
          Top = 38
          Caption = 'Partner'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 146
        end
        object ckCarrageLimitController: TcxCheckBox
          Left = 11
          Top = 56
          Caption = 'Controller'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 146
        end
        object ckCarrageLimitAuthor: TcxCheckBox
          Left = 167
          Top = 38
          Caption = 'Author'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 146
        end
        object ckCarrageLimitOperator: TcxCheckBox
          Left = 167
          Top = 56
          Caption = 'Operator'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 146
        end
      end
      object cxLabel11: TcxLabel
        Left = 10
        Top = 330
        Caption = 'Start of the financial year:'
        Transparent = True
      end
      object cxDBCLStartFinYear: TcxDBLookupComboBox
        Left = 149
        Top = 328
        DataBinding.DataField = 'FinYear_start_month'
        DataBinding.DataSource = dsSystemFile
        Properties.ClearKey = 46
        Properties.KeyFieldNames = 'Month'
        Properties.ListColumns = <
          item
            FieldName = 'Descr'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsMonth
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Width = 83
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 149
        Top = 352
        DataBinding.DataField = 'DEFAULT_CREDITORGRP'
        DataBinding.DataSource = dsSystemFile
        Properties.ClearKey = 46
        Properties.KeyFieldNames = 'CATEGORY'
        Properties.ListColumns = <
          item
            FieldName = 'CATEGORY'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsPbGroups
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        Width = 209
      end
      object cxLabel20: TcxLabel
        Left = 10
        Top = 354
        Caption = 'Default Creditor Group:'
        Transparent = True
      end
      object cxLabel26: TcxLabel
        Left = 10
        Top = 377
        Caption = 'Default Matter Fee Basis:'
        Transparent = True
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 149
        Top = 375
        DataBinding.DataField = 'DEFLT_MATTER_FEE_BASIS'
        DataBinding.DataSource = dsSystemFile
        Properties.ClearKey = 46
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end
          item
            FieldName = 'BILLTYPE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsFeeBasis
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 15
        Width = 209
      end
      object dblClientPhonebookGroup: TcxLookupComboBox
        Left = 21
        Top = 28
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CATEGORY'
        Properties.ListColumns = <
          item
            FieldName = 'CATEGORY'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsGroups
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 201
      end
      object dblMultiClientGroup: TcxLookupComboBox
        Left = 21
        Top = 65
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CATEGORY'
        Properties.ListColumns = <
          item
            FieldName = 'CATEGORY'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsGroups
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 1
        Width = 201
      end
      object ckHideDX: TcxDBCheckBox
        Left = 20
        Top = 121
        Caption = 'Hide DX Address'
        DataBinding.DataField = 'HIDEDXPANEL'
        DataBinding.DataSource = dsSystemFile
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 121
      end
      object chkHideDOBPanel: TcxDBCheckBox
        Left = 20
        Top = 139
        Caption = 'Hide DOB'
        DataBinding.DataField = 'HIDEDOBPANEL'
        DataBinding.DataSource = dsSystemFile
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Width = 121
      end
      object cxDBCheckBox38: TcxDBCheckBox
        Left = 20
        Top = 158
        Caption = 'Hide Client "Controls" Tab'
        DataBinding.DataField = 'HIDEDOBPANEL'
        DataBinding.DataSource = dsSystemFile
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 18
        Width = 151
      end
    end
    object tsOther2: TcxTabSheet
      Caption = 'Other'
      ImageIndex = 6
      OnExit = tsOther2Exit
      OnShow = tsOther2Show
      object cxGroupBox3: TcxGroupBox
        Left = 15
        Top = 6
        Caption = 'Clearance Days'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 226
        Width = 294
        object grdReceiptClerance: TcxGrid
          Left = 9
          Top = 34
          Width = 277
          Height = 186
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvReceiptClerance: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnDataChanged = tvReceiptCleranceDataControllerDataChanged
            DataController.OnRecordChanged = tvReceiptCleranceDataControllerRecordChanged
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object tvReceiptCleranceDescr: TcxGridColumn
              Caption = 'Description'
              Options.Editing = False
              Options.Focusing = False
              Width = 157
            end
            object tvReceiptCleranceDays: TcxGridColumn
              Caption = 'Clearance Days'
              Width = 92
            end
            object tvReceiptCleranceCode: TcxGridColumn
              Caption = 'Code'
              Options.Editing = False
              Options.Focusing = False
              Width = 47
            end
          end
          object tvDBReceiptClerance: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsBankClearance
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object tvDBReceiptCleranceDESCRIPTION: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCRIPTION'
              Options.Editing = False
              Width = 165
            end
            object tvDBReceiptCleranceCLEARANCE_DAYS: TcxGridDBColumn
              Caption = 'Clearance Days'
              DataBinding.FieldName = 'CLEARANCE_DAYS'
              Width = 87
            end
            object tvDBReceiptCleranceCODE: TcxGridDBColumn
              Caption = 'Code'
              DataBinding.FieldName = 'CODE'
              Options.Editing = False
              Width = 44
            end
          end
          object grdReceiptCleranceLevel1: TcxGridLevel
            GridView = tvDBReceiptClerance
          end
        end
        object btnLoadData: TcxButton
          Left = 203
          Top = 11
          Width = 84
          Height = 22
          Caption = 'Load Details'
          LookAndFeel.NativeStyle = True
          TabOrder = 1
          Visible = False
          OnClick = btnLoadDataClick
        end
      end
      object cxDBMemo1: TcxDBMemo
        Left = 15
        Top = 251
        DataBinding.DataField = 'MATTER_CREATE_WARN_MSG'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 70
        Width = 297
      end
      object cxLabel21: TcxLabel
        Left = 14
        Top = 235
        Caption = 'Matter Creation WARNING message'
      end
      object cxLabel22: TcxLabel
        Left = 14
        Top = 326
        Caption = 'Matter Creation BAN message'
      end
      object cxDBMemo2: TcxDBMemo
        Left = 15
        Top = 343
        DataBinding.DataField = 'MATTER_CREATE_BAN_MSG'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 71
        Width = 297
      end
      object cxGroupBox1: TcxGroupBox
        Left = 15
        Top = 416
        Caption = 'Fee Alert'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Height = 58
        Width = 334
        object Label31: TLabel
          Left = 170
          Top = 16
          Width = 102
          Height = 13
          Caption = 'Fee Earner Min Units:'
          Transparent = True
        end
        object Label32: TLabel
          Left = 168
          Top = 38
          Width = 114
          Height = 13
          Caption = 'Number of Days in Alert:'
          Transparent = True
        end
        object Label33: TLabel
          Left = 13
          Top = 16
          Width = 103
          Height = 13
          Caption = 'Send Alert after Days:'
          Transparent = True
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 12
          Top = 34
          Caption = 'Enabled'
          DataBinding.DataField = 'FEE_ALERT_ENABLE'
          DataBinding.DataSource = dsSystemFile
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 70
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 287
          Top = 12
          DataBinding.DataField = 'FEE_ALERT_MIN_UNITS'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 38
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 122
          Top = 12
          DataBinding.DataField = 'FEE_ALERT_DAY_OFFSET'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 39
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 287
          Top = 34
          DataBinding.DataField = 'FEE_ALERT_DAYS'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 38
        end
      end
    end
    object tabMatterDefaults: TcxTabSheet
      Caption = 'Matter Defaults'
      ImageIndex = 9
      object Label50: TLabel
        Left = 22
        Top = 166
        Width = 102
        Height = 13
        Caption = 'Default Closed Status'
      end
      object cbArchiveUnclosed: TcxDBCheckBox
        Left = 17
        Top = 6
        Caption = 'Allow Archival of unclosed Matters'
        DataBinding.DataField = 'ARCHIVEUNCLOSED'
        DataBinding.DataSource = dsSystemFile
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 219
      end
      object cbDisallowClose: TcxDBCheckBox
        Left = 17
        Top = 26
        Caption = 'Allow matter closure if outstanding accounting'
        DataBinding.DataField = 'ALLOWCLOSEIFACC'
        DataBinding.DataSource = dsSystemFile
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 259
      end
      object cbWarnOnNoFees: TcxDBCheckBox
        Left = 17
        Top = 46
        Caption = 'Warn on no fees allocated when closing matter'
        DataBinding.DataField = 'WARNONNOFEESATCLOSE'
        DataBinding.DataSource = dsSystemFile
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 261
      end
      object cbAllowClosureWithUnPresCheques: TcxDBCheckBox
        Left = 17
        Top = 65
        Caption = 'Allow matter closure and archival with unpresented cheques'
        DataBinding.DataField = 'ALLOWCLOSEUNPRESENTED'
        DataBinding.DataSource = dsSystemFile
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 330
      end
      object cxDBCheckBox27: TcxDBCheckBox
        Left = 17
        Top = 85
        AutoSize = False
        Caption = 'Retain original Closed Date when re-opening matter'
        DataBinding.DataField = 'RETAIN_MATTER_CLOSED_DATE'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 19
        Width = 276
      end
      object cxDBLookupComboBox9: TcxDBLookupComboBox
        Left = 128
        Top = 164
        DataBinding.DataField = 'DFLT_MATTER_CLOSED_STATUS'
        DataBinding.DataSource = dsSystemFile
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsMatterStatus
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 145
      end
      object cxDBCheckBox33: TcxDBCheckBox
        Left = 17
        Top = 105
        AutoSize = False
        Caption = 'UPPER Case matter description'
        DataBinding.DataField = 'MATTER_DESCR_UPPER'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 19
        Width = 276
      end
      object cxDBCheckBox35: TcxDBCheckBox
        Left = 17
        Top = 125
        AutoSize = False
        Caption = 'Make Client Contact tab the Default'
        DataBinding.DataField = 'MATTER_CONTACT_TAB_DEFAULT'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 19
        Width = 276
      end
      object cxGroupBox10: TcxGroupBox
        Left = 19
        Top = 187
        Caption = 'Archival Defaults'
        TabOrder = 8
        Height = 154
        Width = 381
        object Label51: TLabel
          Left = 15
          Top = 128
          Width = 97
          Height = 13
          Caption = 'Archive Review Age'
        end
        object cxDBSpinEdit5: TcxDBSpinEdit
          Left = 125
          Top = 124
          DataBinding.DataField = 'ARCHIVE_REVIEW_PERIOD'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 61
        end
        object cxDBCheckBox12: TcxDBCheckBox
          Left = 13
          Top = 22
          AutoSize = False
          Caption = 'Remove Archive Date when re-opening matter'
          DataBinding.DataField = 'REMOVE_ARCHIVE_DATE'
          DataBinding.DataSource = dsSystemFile
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Height = 19
          Width = 276
        end
        object cxDBCheckBox26: TcxDBCheckBox
          Left = 13
          Top = 41
          AutoSize = False
          Caption = 'Default to "Archive" tab when matter is Archived.'
          DataBinding.DataField = 'DFLT_MATTER_ARCH_TAB'
          DataBinding.DataSource = dsSystemFile
          ParentShowHint = False
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Height = 19
          Width = 276
        end
        object cxDBCheckBox36: TcxDBCheckBox
          Left = 13
          Top = 60
          AutoSize = False
          Caption = 'Hide "Date" Column in Archive Details Grid'
          DataBinding.DataField = 'HIDE_DATE_COL_ARCHIVE'
          DataBinding.DataSource = dsSystemFile
          ParentShowHint = False
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Height = 19
          Width = 276
        end
        object cxDBCheckBox37: TcxDBCheckBox
          Left = 13
          Top = 79
          AutoSize = False
          Caption = 'Hide "Location" Column in Archive Details Grid'
          DataBinding.DataField = 'HIDE_LOCATION_COL_ARCHIVE'
          DataBinding.DataSource = dsSystemFile
          ParentShowHint = False
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Height = 19
          Width = 276
        end
        object cxDBCheckBox42: TcxDBCheckBox
          Left = 13
          Top = 98
          AutoSize = False
          Caption = 'Hide "Archive Type" selection box'
          DataBinding.DataField = 'HIDE_ARCHIVE_TYPE'
          DataBinding.DataSource = dsSystemFile
          ParentShowHint = False
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Height = 19
          Width = 276
        end
      end
      object cxGroupBox11: TcxGroupBox
        Left = 19
        Top = 345
        Caption = 'Visibility'
        TabOrder = 9
        Height = 158
        Width = 391
        object cxDBCheckBox39: TcxDBCheckBox
          Left = 13
          Top = 20
          AutoSize = False
          Caption = 'Hide Workflow Tab'
          DataBinding.DataField = 'HIDE_MATTER_WORKFLOW'
          DataBinding.DataSource = dsSystemFile
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 19
          Width = 276
        end
        object cxDBCheckBox40: TcxDBCheckBox
          Left = 13
          Top = 76
          Caption = 'Hide Matter Workflow Tab'
          DataBinding.DataField = 'HIDE_MATTER_WORKFLOW_TAB'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 1
          Width = 208
        end
        object cxDBCheckBox41: TcxDBCheckBox
          Left = 13
          Top = 57
          Caption = 'Hide Matter "Workflow Carriage" Tab'
          DataBinding.DataField = 'HIDE_MAT_WKFLOW_CARRIAGE_TAB'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 2
          Width = 225
        end
        object cxDBCheckBox43: TcxDBCheckBox
          Left = 13
          Top = 38
          Caption = 'Hide Matter "Budgets" Tab'
          DataBinding.DataField = 'HIDE_MATTER_BUDGETS_TAB'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 3
          Width = 225
        end
        object cxDBCheckBox44: TcxDBCheckBox
          Left = 13
          Top = 94
          Caption = 'Hide Matter Carriage "Operator"'
          DataBinding.DataField = 'HIDE_CARRIAGE_OPERATOR'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 4
          Width = 220
        end
        object cxDBCheckBox45: TcxDBCheckBox
          Left = 13
          Top = 112
          Caption = 'Hide Matter Matter Carriage "ParaLegal"'
          DataBinding.DataField = 'HIDE_CARRIAGE_PARALEGAL'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 5
          Width = 266
        end
        object cxDBCheckBox46: TcxDBCheckBox
          Left = 13
          Top = 129
          Caption = 'Hide Matter Carriage "Team"'
          DataBinding.DataField = 'HIDE_CARRIAGE_TEAM'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 6
          Width = 222
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Accounting Defaults'
      ImageIndex = 6
      object Label56: TLabel
        Left = 12
        Top = 392
        Width = 79
        Height = 13
        Caption = 'Debtor Template'
      end
      object scmbEFTFilePath: TcxDBShellComboBox
        Left = 125
        Top = 10
        DataBinding.DataField = 'EFT_FILE_DIR'
        DataBinding.DataSource = dsSystemFile
        Properties.DropDownWidth = 350
        Properties.IncrementalSearch = True
        Properties.Root.BrowseFolder = bfCustomPath
        Properties.ShowFullPath = sfpAlways
        Properties.ValidateOnEnter = False
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 298
      end
      object cxLabel7: TcxLabel
        Left = 11
        Top = 12
        Caption = 'E.F.T. File Directory:'
        Transparent = True
      end
      object seAccountInterest: TcxDBSpinEdit
        Left = 125
        Top = 86
        Hint = 
          'This is the percentage amount that will be used  to calculate in' +
          'terest '#13#10'on overdue accounts.|This is the percentage amount that' +
          ' will be used  to calculate interest on overdue accounts.'
        DataBinding.DataField = 'ACCOUNT_INTEREST'
        DataBinding.DataSource = dsSystemFile
        ParentShowHint = False
        Properties.BeepOnError = True
        Properties.DisplayFormat = '#0.00'
        Properties.MaxValue = 100.000000000000000000
        Properties.UseDisplayFormatWhenEditing = True
        Properties.ValueType = vtFloat
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 77
      end
      object cxLabel10: TcxLabel
        Left = 11
        Top = 82
        AutoSize = False
        Caption = 'Overdue Account interest'
        Properties.WordWrap = True
        Transparent = True
        Height = 30
        Width = 111
      end
      object cbShowNetTrust: TcxDBCheckBox
        Left = 12
        Top = 114
        Caption = 
          'Display Net Trust (Cleared Trust less Unpaid Trust Cheque Requis' +
          'itions)'
        DataBinding.DataField = 'SHOW_NET_TRUST'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 367
      end
      object cbCheckTrustODraw: TcxDBCheckBox
        Left = 12
        Top = 135
        Caption = 'Check Trust O/Draw on TTO receipt'
        DataBinding.DataField = 'CHECK_TRUST_ODRAW_TTO'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 209
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 12
        Top = 156
        Caption = 'Use Direct Debit Sequence'
        DataBinding.DataField = 'SHOW_DD_CHEQUE_NO'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Width = 162
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 126
        Top = 174
        DataBinding.DataField = 'DR_PAYMENT_DAYS'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Width = 61
      end
      object cxLabel14: TcxLabel
        Left = 12
        Top = 176
        Caption = 'Debtor Payment Days'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object cxDBCostCentreAccounting: TcxDBCheckBox
        Left = 12
        Top = 201
        Caption = 'Cost Centre A/C'
        DataBinding.DataField = 'COSTCENTRE_ACCOUNTING_YN'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Properties.OnChange = cxDBCostCentreAccountingPropertiesChange
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Width = 109
      end
      object cmbPrependCheqReq: TcxDBCheckBox
        Left = 12
        Top = 223
        Caption = 'Prepend CheReq no to description'
        DataBinding.DataField = 'SHOW_CHEQREQ_NO'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Width = 195
      end
      object cxDBCheckBox10: TcxDBCheckBox
        Left = 12
        Top = 245
        Caption = 'CheqReq for Controlled Deposit'
        DataBinding.DataField = 'DEPOSIT_CHEQ_REQ'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Width = 179
      end
      object cxLabel16: TcxLabel
        Left = 12
        Top = 289
        AutoSize = False
        Caption = 'TTO clearance days'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
        Height = 17
        Width = 108
      end
      object sedTTOClearanceDays: TcxDBSpinEdit
        Left = 125
        Top = 288
        DataBinding.DataField = 'TTO_CLEARANCE_DAYS'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Width = 53
      end
      object cxGroupBox4: TcxGroupBox
        Left = 11
        Top = 314
        Caption = 'Interest on Disbursements Option'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 14
        Height = 69
        Width = 442
        object Label37: TLabel
          Left = 8
          Top = 22
          Width = 56
          Height = 13
          Caption = 'Sundry type'
          Transparent = True
        end
        object Label38: TLabel
          Left = 8
          Top = 45
          Width = 61
          Height = 13
          Caption = 'Interest Rate'
          Transparent = True
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 114
          Top = 19
          DataBinding.DataField = 'DFLT_DISB_SUNDRY'
          DataBinding.DataSource = dsSystemFile
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSundries
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 311
        end
        object cxDBSpinEdit3: TcxDBSpinEdit
          Left = 114
          Top = 41
          DataBinding.DataField = 'DFLT_DISB_INTEREST'
          DataBinding.DataSource = dsSystemFile
          Properties.Increment = 0.100000000000000000
          Properties.LargeIncrement = 1.000000000000000000
          Properties.MaxValue = 100.000000000000000000
          Properties.ValueType = vtFloat
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 49
        end
      end
      object cxDBCheckBox32: TcxDBCheckBox
        Left = 12
        Top = 267
        Caption = 
          'Allow Trust Amount Editing in Bill Draft Mode  (Linked to Employ' +
          'ee Type Security Option)'
        DataBinding.DataField = 'EDIT_BILL_TRUST'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 15
        Width = 456
      end
      object DBEdit16: TDBEdit
        Left = 125
        Top = 389
        Width = 228
        Height = 21
        DataField = 'DR_TEMPLATE'
        DataSource = dsSystemFile
        TabOrder = 16
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Billing Defaults'
      ImageIndex = 8
      OnShow = cxTabSheet2Show
      object Label6: TLabel
        Left = 18
        Top = 187
        Width = 92
        Height = 13
        Caption = 'Draft Bill Reference'
        Transparent = True
      end
      object Label53: TLabel
        Left = 21
        Top = 362
        Width = 126
        Height = 13
        Caption = 'Default Draft Bill Template:'
      end
      object Label54: TLabel
        Left = 21
        Top = 394
        Width = 132
        Height = 13
        Caption = 'Default Memo Bill Template:'
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 17
        Top = 56
        Caption = 'Allow Split Bills'
        DataBinding.DataField = 'ALLOW_SPLIT_BILLS'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 108
      end
      object cxDBCheckBox13: TcxDBCheckBox
        Left = 15
        Top = 35
        Caption = 'Allow fee billings for inactive fee earners'
        DataBinding.DataField = 'ALLOW_INACTIVE_FEE_POST'
        DataBinding.DataSource = dsSystemFile
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 233
      end
      object cxLabel17: TcxLabel
        Left = 18
        Top = 14
        Caption = 'BPay Code Length'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object sedBPAY_CODE_LENGTH: TcxDBSpinEdit
        Left = 140
        Top = 12
        DataBinding.DataField = 'BPAY_CODE_LENGTH'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 53
      end
      object dbchkPreassignBillNo: TcxDBCheckBox
        Left = 17
        Top = 76
        AutoSize = False
        Caption = 'Pre-assign Bill #'
        DataBinding.DataField = 'PREASSIGN_BILL_NO'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taLeftJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 21
        Width = 97
      end
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 19
        Top = 211
        Caption = 'Billed G.S.T. Method'
        DataBinding.DataField = 'GST_BILL_TOTAL'
        DataBinding.DataSource = dsSystemFile
        Properties.Items = <
          item
            Caption = 'Item Tax Total'
            Value = 'N'
          end
          item
            Caption = '% of Taxable Bill'
            Value = 'Y'
          end>
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Height = 68
        Width = 111
      end
      object DBEdit9: TDBEdit
        Left = 116
        Top = 184
        Width = 90
        Height = 21
        DataField = 'DRAFTBILL'
        DataSource = dsSystemFile
        TabOrder = 6
      end
      object cxDBCheckBox19: TcxDBCheckBox
        Left = 15
        Top = 98
        Caption = 'Enforce Trust Remittance on Creditor Bills '
        DataBinding.DataField = 'ENFORCE_TRUST_REMIT_CRED'
        DataBinding.DataSource = dsSystemFile
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Width = 260
      end
      object cxDBCheckBox30: TcxDBCheckBox
        Left = 15
        Top = 119
        Caption = 'Automatically Print Bill (Only for Insight generated bills) '
        DataBinding.DataField = 'AUTO_PRINT_BILL'
        DataBinding.DataSource = dsSystemFile
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 296
      end
      object cxGroupBox7: TcxGroupBox
        Left = 19
        Top = 284
        Caption = 'Interest on Disbursements Option'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Height = 69
        Width = 442
        object Label48: TLabel
          Left = 8
          Top = 22
          Width = 56
          Height = 13
          Caption = 'Sundry type'
          Transparent = True
        end
        object Label49: TLabel
          Left = 8
          Top = 45
          Width = 61
          Height = 13
          Caption = 'Interest Rate'
          Transparent = True
        end
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 114
          Top = 19
          DataBinding.DataField = 'DFLT_DISB_SUNDRY'
          DataBinding.DataSource = dsSystemFile
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSundries
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 311
        end
        object cxDBSpinEdit4: TcxDBSpinEdit
          Left = 114
          Top = 41
          DataBinding.DataField = 'DFLT_DISB_INTEREST'
          DataBinding.DataSource = dsSystemFile
          Properties.Increment = 0.100000000000000000
          Properties.LargeIncrement = 1.000000000000000000
          Properties.MaxValue = 100.000000000000000000
          Properties.ValueType = vtFloat
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 49
        end
      end
      object cxGroupBox8: TcxGroupBox
        Left = 20
        Top = 424
        Caption = 'Bill Email Template'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
        DesignSize = (
          440
          163)
        Height = 163
        Width = 440
        object grdBillEmailTemplate: TcxGrid
          Left = 5
          Top = 16
          Width = 431
          Height = 140
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvBillEmailTemplate: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dmAxiom.dsEmailTemplates
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tvBillEmailTemplateID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              VisibleForCustomization = False
            end
            object tvBillEmailTemplateDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              Width = 80
            end
            object tvBillEmailTemplateBODY_TEXT: TcxGridDBColumn
              Caption = 'Email Body'
              DataBinding.FieldName = 'BODY_TEXT'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGrid1DBTableView1BODY_TEXTPropertiesButtonClick
              Width = 300
            end
          end
          object lvBillEmailTemplate: TcxGridLevel
            GridView = tvBillEmailTemplate
          end
        end
      end
      object cxDBCheckBox34: TcxDBCheckBox
        Left = 15
        Top = 140
        Caption = 
          'Make Bill Post screen Modal (always on top and must be closed pr' +
          'ior to attempting to do anything else in Insight)'
        DataBinding.DataField = 'BILL_POST_MODAL'
        DataBinding.DataSource = dsSystemFile
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Width = 559
      end
      object JvDBLookupComboEdit1: TJvDBLookupComboEdit
        Left = 159
        Top = 391
        Width = 234
        Height = 21
        LookupDisplay = 'ITEM_NAME'
        LookupField = 'ITEM_ID'
        LookupSource = dmAxiom.dsRB_Item
        TabOrder = 12
        Text = 'JvDBLookupComboEdit1'
        DataField = 'MEMO_BILL_DEFAULT'
        DataSource = dsSystemFile
      end
      object JvDBLookupComboEdit2: TJvDBLookupComboEdit
        Left = 159
        Top = 359
        Width = 234
        Height = 21
        LookupDisplay = 'ITEM_NAME'
        LookupField = 'ITEM_ID'
        LookupSource = dmAxiom.dsRB_Item
        TabOrder = 13
        Text = 'JvDBLookupComboEdit2'
        DataField = 'DRAFT_BILL_DEFAULT'
        DataSource = dsSystemFile
      end
      object DBCheckBox2: TDBCheckBox
        Left = 19
        Top = 164
        Width = 326
        Height = 17
        Hint = 
          'Automatically Save Bill as PDF (only for Insight generated bills' +
          ') at post step.'
        Caption = 
          'Automatically Save Bill as PDF (only for Insight generated bills' +
          ')'
        DataField = 'SAVE_BILL_AS_PDF'
        DataSource = dsSystemFile
        TabOrder = 14
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Fee/Time  Defaults'
      ImageIndex = 11
      object Label52: TLabel
        Left = 8
        Top = 170
        Width = 87
        Height = 13
        Caption = 'Default Time Type'
      end
      object cxDBCheckBox31: TcxDBCheckBox
        Left = 5
        Top = 20
        Caption = 'Enforce UPPERCASE for time/fee description'
        DataBinding.DataField = 'ENFORCE_TIME_DESC_UPPER'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 180
      end
      object cxDBCheckBox14: TcxDBCheckBox
        Left = 6
        Top = 56
        AutoSize = False
        Caption = 'Limit Overhead Time codes to NonBillable'
        DataBinding.DataField = 'LIMIT_SCALECOST_NONBILLABLE'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 31
        Width = 179
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 8
        Top = 90
        Caption = 'Allow TimeSheet Amount Edit'
        DataBinding.DataField = 'TIMESHEET_AMOUNT_EDIT'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 174
      end
      object cxDBCheckBox29: TcxDBCheckBox
        Left = 8
        Top = 113
        Caption = 'Allow TimeSheet Rate Edit'
        DataBinding.DataField = 'TIMESHEET_RATE_EDIT'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 174
      end
      object cxDBComboBox2: TcxDBComboBox
        Left = 123
        Top = 168
        DataBinding.DataField = 'DEFAULT_FEE_TIME_TYPE'
        DataBinding.DataSource = dsSystemFile
        Properties.Items.Strings = (
          'H'
          'O')
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 59
      end
      object cxDBCheckBox47: TcxDBCheckBox
        Left = 4
        Top = 132
        AutoSize = False
        Caption = 'Limit Time codes to Billable'
        DataBinding.DataField = 'LIMIT_SCALECOST_BILLABLE'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Height = 31
        Width = 179
      end
    end
    object tsGlStructure: TcxTabSheet
      Caption = 'GL Structure'
      ImageIndex = 7
      object Label24: TLabel
        Left = 12
        Top = 33
        Width = 40
        Height = 13
        Caption = 'Heading'
        Transparent = True
      end
      object Label25: TLabel
        Left = 12
        Top = 56
        Width = 63
        Height = 13
        Caption = 'Component 1'
        Transparent = True
      end
      object Label26: TLabel
        Left = 12
        Top = 78
        Width = 63
        Height = 13
        Caption = 'Component 2'
        Transparent = True
      end
      object Label27: TLabel
        Left = 12
        Top = 100
        Width = 63
        Height = 13
        Caption = 'Component 3'
        Transparent = True
      end
      object Label28: TLabel
        Left = 12
        Top = 123
        Width = 63
        Height = 13
        Caption = 'Component 4'
        Transparent = True
      end
      object Label29: TLabel
        Left = 12
        Top = 145
        Width = 63
        Height = 13
        Caption = 'Component 5'
        Transparent = True
      end
      object cxDBGlComponentHeading: TcxDBTextEdit
        Left = 89
        Top = 30
        DataBinding.DataField = 'COMPONENT_HEADING'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 300
      end
      object cxDBLGLComponent1: TcxDBLookupComboBox
        Left = 89
        Top = 52
        DataBinding.DataField = 'COMPONENT_TYPE_1'
        DataBinding.DataSource = dsGlComponents
        Properties.KeyFieldNames = 'type'
        Properties.ListColumns = <
          item
            FieldName = 'heading'
          end>
        Properties.ListSource = dsComponentTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 142
      end
      object cxDBLGLComponent2: TcxDBLookupComboBox
        Left = 89
        Top = 74
        DataBinding.DataField = 'COMPONENT_TYPE_2'
        DataBinding.DataSource = dsGlComponents
        Properties.KeyFieldNames = 'type'
        Properties.ListColumns = <
          item
            FieldName = 'heading'
          end>
        Properties.ListSource = dsComponentTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 142
      end
      object cxDBLGLComponent3: TcxDBLookupComboBox
        Left = 89
        Top = 97
        DataBinding.DataField = 'COMPONENT_TYPE_3'
        DataBinding.DataSource = dsGlComponents
        Properties.KeyFieldNames = 'type'
        Properties.ListColumns = <
          item
            FieldName = 'heading'
          end>
        Properties.ListSource = dsComponentTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 142
      end
      object cxDBLGLComponent4: TcxDBLookupComboBox
        Left = 89
        Top = 119
        DataBinding.DataField = 'COMPONENT_TYPE_4'
        DataBinding.DataSource = dsGlComponents
        Properties.KeyFieldNames = 'type'
        Properties.ListColumns = <
          item
            FieldName = 'heading'
          end>
        Properties.ListSource = dsComponentTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Width = 142
      end
      object cxDBLGLComponent5: TcxDBLookupComboBox
        Left = 89
        Top = 141
        DataBinding.DataField = 'COMPONENT_TYPE_5'
        DataBinding.DataSource = dsGlComponents
        Properties.KeyFieldNames = 'type'
        Properties.ListColumns = <
          item
            FieldName = 'heading'
          end>
        Properties.ListSource = dsComponentTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 142
      end
      object cxDBTGLComponentSize1: TcxDBTextEdit
        Left = 235
        Top = 52
        DataBinding.DataField = 'COMPONENT_SIZE_1'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Width = 33
      end
      object cxDBTGLComponentSize2: TcxDBTextEdit
        Left = 235
        Top = 74
        DataBinding.DataField = 'COMPONENT_SIZE_2'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Width = 33
      end
      object cxDBTGLComponentSize3: TcxDBTextEdit
        Left = 235
        Top = 97
        DataBinding.DataField = 'COMPONENT_SIZE_3'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Width = 33
      end
      object cxDBTGLComponentSize4: TcxDBTextEdit
        Left = 235
        Top = 119
        DataBinding.DataField = 'COMPONENT_SIZE_4'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Width = 33
      end
      object cxDBTGLComponentSize5: TcxDBTextEdit
        Left = 235
        Top = 141
        DataBinding.DataField = 'COMPONENT_SIZE_5'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Width = 33
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 270
        Top = 52
        DataBinding.DataField = 'COMPONENT_DESCR_1'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Width = 118
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 270
        Top = 74
        DataBinding.DataField = 'COMPONENT_DESCR_2'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Width = 118
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 270
        Top = 97
        DataBinding.DataField = 'COMPONENT_DESCR_3'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Width = 118
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 270
        Top = 119
        DataBinding.DataField = 'COMPONENT_DESCR_4'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        Width = 118
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 270
        Top = 141
        DataBinding.DataField = 'COMPONENT_DESCR_5'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 15
        Width = 118
      end
    end
    object tabEmails: TcxTabSheet
      Caption = 'Mail Setting Defaults'
      ImageIndex = 7
      object Label34: TLabel
        Left = 14
        Top = 19
        Width = 60
        Height = 13
        Caption = 'Email Format'
        Transparent = True
      end
      object Label35: TLabel
        Left = 14
        Top = 42
        Width = 94
        Height = 13
        Caption = 'Check EMails every'
        Transparent = True
      end
      object lblEmailDefault: TLabel
        Left = 14
        Top = 66
        Width = 54
        Height = 13
        Caption = 'Mail default'
        Transparent = True
      end
      object cmbEmailFormat: TcxDBComboBox
        Left = 119
        Top = 15
        DataBinding.DataField = 'EMAIL_FORMAT'
        DataBinding.DataSource = dsSystemFile
        Properties.Items.Strings = (
          'HTML'
          'RTF')
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 112
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 119
        Top = 39
        DataBinding.DataField = 'EMAIL_CHECK_INTERVAL'
        DataBinding.DataSource = dsSystemFile
        Properties.BeepOnError = True
        Properties.MaxValue = 60.000000000000000000
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 48
      end
      object btnAddEmailFooter: TcxButton
        Left = 17
        Top = 486
        Width = 130
        Height = 23
        Caption = 'Add eMail Footer'
        LookAndFeel.NativeStyle = True
        TabOrder = 2
        Visible = False
        OnClick = btnAddEmailFooterClick
      end
      object cmbEmail: TcxDBImageComboBox
        Left = 119
        Top = 63
        DataBinding.DataField = 'EMAIL_TYPE_DEFAULT'
        DataBinding.DataSource = dsSystemFile
        Enabled = False
        Properties.Images = dmAxiom.ilstToolbar
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = 'Axiom Email Form'
            ImageIndex = 24
            Value = 0
          end
          item
            Description = 'Outlook Email Form'
            ImageIndex = 25
            Value = 1
          end>
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 158
      end
      object cxGroupBox5: TcxGroupBox
        Left = 13
        Top = 116
        Caption = 'Default Profile settings'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 78
        Width = 371
        object Label39: TLabel
          Left = 7
          Top = 20
          Width = 42
          Height = 13
          Caption = 'Category'
        end
        object Label40: TLabel
          Left = 7
          Top = 49
          Width = 61
          Height = 13
          Caption = 'Classification'
        end
        object cmbCategory: TcxDBLookupComboBox
          Left = 71
          Top = 18
          DataBinding.DataField = 'EMAIL_DFLT_CATEGORY'
          DataBinding.DataSource = dsSystemFile
          Properties.KeyFieldNames = 'NPRECCATEGORY'
          Properties.ListColumns = <
            item
              Width = 80
              FieldName = 'DESCR'
            end
            item
              FieldName = 'NPRECCATEGORY'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsPRECCATEGORY
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 290
        end
        object cmbClassification: TcxDBLookupComboBox
          Left = 71
          Top = 46
          DataBinding.DataField = 'EMAIL_DFLT_CLASSIFICATION'
          DataBinding.DataSource = dsSystemFile
          Properties.KeyFieldNames = 'NPRECCLASSIFICATION'
          Properties.ListColumns = <
            item
              Width = 80
              FieldName = 'DESCR'
            end
            item
              FieldName = 'NPRECCLASSIFICATION'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsPRECCLASSIFICATION
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 290
        end
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 119
        Top = 274
        AutoSize = False
        DataBinding.DataField = 'FROM_EMAIL'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 19
        Width = 208
      end
      object cxLabel6: TcxLabel
        Left = 14
        Top = 276
        Caption = 'Email From:'
        Transparent = True
      end
      object cxGroupBox9: TcxGroupBox
        Left = 13
        Top = 197
        Caption = 'Mail Server Settings'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 70
        Width = 371
        object cxLabel5: TcxLabel
          Left = 14
          Top = 19
          Caption = 'Mail Server :'
          Transparent = True
        end
        object DBEdit10: TDBEdit
          Left = 119
          Top = 17
          Width = 208
          Height = 21
          DataField = 'SMTP_SERVER'
          DataSource = dsSystemFile
          TabOrder = 1
        end
        object cxLabel29: TcxLabel
          Left = 14
          Top = 43
          Caption = 'SMTP Port:'
          Transparent = True
        end
        object DBEdit11: TDBEdit
          Left = 120
          Top = 41
          Width = 43
          Height = 21
          DataField = 'SMTP_PORT'
          DataSource = dsSystemFile
          TabOrder = 3
        end
      end
      object DBCheckBox1: TDBCheckBox
        Left = 14
        Top = 91
        Width = 164
        Height = 17
        Caption = 'Listen for incoming eMails'
        DataField = 'EMAILS_LISTENER'
        DataSource = dsSystemFile
        TabOrder = 8
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object cxGroupBox12: TcxGroupBox
        Left = 12
        Top = 295
        Caption = 'Fee Alert Defaults'
        TabOrder = 9
        Height = 158
        Width = 377
        object grpFeeAlertRec: TcxDBCheckGroup
          Left = 10
          Top = 20
          Caption = 'Fee Alert Receipients'
          EditValue = '0000'
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <
            item
              Caption = 'Partner'
            end
            item
              Caption = 'Author'
            end
            item
              Caption = 'Operator'
            end
            item
              Caption = 'Controller'
            end>
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          DataBinding.DataField = 'FEE_ALERT_RECEIPIENT'
          DataBinding.DataSource = dsSystemFile
          Height = 101
          Width = 198
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 112
          Top = 128
          AutoSize = False
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 19
          Width = 208
        end
        object cxLabel31: TcxLabel
          Left = 7
          Top = 131
          Caption = 'Email To:'
          Transparent = True
        end
      end
    end
    object tabDocuments: TcxTabSheet
      Caption = 'Document Defaults'
      ImageIndex = 8
      object Label55: TLabel
        Left = 147
        Top = 223
        Width = 238
        Height = 26
        Caption = 
          'If Doc Sequences are appended to the document name, versioning m' +
          'ay not work as expected.'
        WordWrap = True
      end
      object cxLabel12: TcxLabel
        Left = 10
        Top = 5
        AutoSize = False
        Caption = 'Documents Default File Directory:'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.WordWrap = True
        Transparent = True
        Height = 30
        Width = 96
      end
      object btnedtDefaultDocDir: TcxDBButtonEdit
        Left = 119
        Top = 10
        Hint = 
          'Macros Available'#13#10'[USERHOME] = User Home Directory'#13#10'[NMATTER] = ' +
          'Matter Number'#13#10'[TEMPDIR] = User'#39's Temp Directory'#13#10'[TEMPFILE] = M' +
          'ake a Temporary File'#13#10'[DATE] = System Date'#13#10'[TIME] = System Time' +
          #13#10'[DATETIME] = System Date and Time'#13#10'[CLIENTID] = Client Code'#13#10'[' +
          'FILEID]=File Number'#13#10'[AUTHOR]=Matter Author'#13#10'[USERINITIALS]=Axio' +
          'm User Code '#13#10'[DOCSEQUENCE]=Document Number'
        DataBinding.DataField = 'DOC_DEFAULT_DIRECTORY'
        DataBinding.DataSource = dsSystemFile
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              D6000000424DD60000000000000076000000280000000E0000000C0000000100
              0400000000006000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D0000000000D
              DD00D00777777770DD00D0F0777777770D00D0FF077777777000D0FFF0000000
              0000D0FFFFFFFF0DDD00D0FFF000000DDD00DD000DDDDDDDDD00DDDDDDDDDD00
              0D00DDDDDDDDDDD00D00DDDDDD0DDD0D0D00DDDDDDD000DDDD00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 298
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 119
        Top = 40
        DataBinding.DataField = 'DFLT_DOC_SAVE_OPTION'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment.Horz = taRightJustify
        Properties.Images = dmAxiom.ilstToolbar
        Properties.Items = <
          item
            Description = 'Database'
            ImageIndex = 23
            Value = 0
          end
          item
            Description = 'File Path'
            ImageIndex = 22
            Value = 1
          end>
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 112
      end
      object cxLabel13: TcxLabel
        Left = 10
        Top = 35
        AutoSize = False
        Caption = 'Documents Default Save Mode:'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.WordWrap = True
        Transparent = True
        Height = 30
        Width = 94
      end
      object btnedtISYSIndex: TcxDBButtonEdit
        Left = 106
        Top = 473
        DataBinding.DataField = 'ISYS_INDEX_PATH'
        DataBinding.DataSource = dsSystemFile
        Properties.Buttons = <
          item
            ContentAlignment = taRightJustify
            Default = True
            Glyph.Data = {
              D6000000424DD60000000000000076000000280000000E0000000C0000000100
              0400000000006000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D0000000000D
              DD00D00777777770DD00D0F0777777770D00D0FF077777777000D0FFF0000000
              0000D0FFFFFFFF0DDD00D0FFF000000DDD00DD000DDDDDDDDD00DDDDDDDDDD00
              0D00DDDDDDDDDDD00D00DDDDDD0DDD0D0D00DDDDDDD000DDDD00}
            Kind = bkGlyph
            Stretchable = False
          end>
        Properties.OnButtonClick = btnedtISYSIndexPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Visible = False
        Width = 298
      end
      object cxLabel19: TcxLabel
        Left = 7
        Top = 476
        Caption = 'ISYS Index Path'
        Visible = False
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 119
        Top = 70
        Hint = 
          'This field should only be populated if you are running Oracle on' +
          ' a Linux server and are using Insights'#39' search facility.  The fo' +
          'rmat is /mountname/share.  Do not add a / at the end.'
        DataBinding.DataField = 'DOC_SHARE_PATH'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 199
      end
      object cxLabel23: TcxLabel
        Left = 10
        Top = 67
        AutoSize = False
        Caption = 'Document Share Path'
        Properties.WordWrap = True
        Height = 30
        Width = 96
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 119
        Top = 157
        Hint = 
          'This field should only be populated if you are running Oracle on' +
          ' a Linux server and are using Axioms'#39' search facility.  The form' +
          'at is /mountname/share.  Do not add a / at the end.'
        DataBinding.DataField = 'WKFLOW_SHARE_PATH'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 199
      end
      object cxLabel24: TcxLabel
        Left = 10
        Top = 152
        AutoSize = False
        Caption = 'Workflow Doc Share Path'
        Properties.WordWrap = True
        Height = 30
        Width = 96
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 119
        Top = 99
        DataBinding.DataField = 'DEFAULT_DOC_EXT'
        DataBinding.DataSource = dsSystemFile
        Properties.Items.Strings = (
          'doc'
          'docx')
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 72
      end
      object cxLabel25: TcxLabel
        Left = 10
        Top = 101
        AutoSize = False
        Caption = 'Default Document Ext'
        Properties.WordWrap = True
        Height = 16
        Width = 103
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 119
        Top = 128
        Hint = 
          'This field should only be populated if you are running Oracle on' +
          ' a Linux server and are using Axioms'#39' search facility.  The form' +
          'at is /mountname/share.  Do not add a / at the end.'
        DataBinding.DataField = 'WORD_SAVE_MACRO'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Width = 199
      end
      object cxLabel27: TcxLabel
        Left = 10
        Top = 130
        AutoSize = False
        Caption = 'Word Macro Name'
        Properties.WordWrap = True
        Height = 16
        Width = 96
      end
      object cxLabel28: TcxLabel
        Left = 10
        Top = 181
        Hint = 
          'This should be a directory only entry.  Please do not include Fi' +
          'le name or File name rules.'
        AutoSize = False
        Caption = 'Documents Default Directory'
        Properties.WordWrap = True
        Height = 31
        Width = 96
      end
      object cxDBButtonEdit1: TcxDBButtonEdit
        Left = 119
        Top = 186
        Hint = 
          'INCLUDE only the path.'#13#10#13#10'Macros Available'#13#10'[USERHOME] = User Ho' +
          'me Directory'#13#10'[NMATTER] = Matter Number'#13#10'[TEMPDIR] = User'#39's Temp' +
          ' Directory'#13#10'[TEMPFILE] = Make a Temporary File'#13#10'[DATE] = System ' +
          'Date'#13#10'[TIME] = System Time'#13#10'[DATETIME] = System Date and Time'#13#10'[' +
          'CLIENTID] = Client Code'#13#10'[FILEID]=File Number'#13#10'[AUTHOR]=Matter A' +
          'uthor'#13#10'[USERINITIALS]=Axiom User Code '#13#10'[DOCSEQUENCE]=Document N' +
          'umber'
        DataBinding.DataField = 'DRAG_DEFAULT_DIRECTORY'
        DataBinding.DataSource = dsSystemFile
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              D6000000424DD60000000000000076000000280000000E0000000C0000000100
              0400000000006000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D0000000000D
              DD00D00777777770DD00D0F0777777770D00D0FF077777777000D0FFF0000000
              0000D0FFFFFFFF0DDD00D0FFF000000DDD00DD000DDDDDDDDD00DDDDDDDDDD00
              0D00DDDDDDDDDDD00D00DDDDDD0DDD0D0D00DDDDDDD000DDDD00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Width = 298
      end
      object cxDBCheckBox21: TcxDBCheckBox
        Left = 242
        Top = 40
        Hint = 
          'By selecting this option, Users cannot change the mode that is u' +
          'sed for document saving.'
        Caption = 'Disable Save Mode Selection'
        DataBinding.DataField = 'DISABLE_SAVE_MODE'
        DataBinding.DataSource = dsSystemFile
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 16
        Width = 174
      end
      object cxDBCheckBox22: TcxDBCheckBox
        Left = 10
        Top = 213
        Hint = 
          'By appending the document sequence you can ensure that documents' +
          ' will be unique.  There is less likelyhood of document being ove' +
          'rwritten.'
        Caption = 'Append Document Sequence to Document Name'
        DataBinding.DataField = 'doc_seq_append'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 17
        Width = 126
      end
      object cxGroupBox6: TcxGroupBox
        Left = 13
        Top = 261
        Caption = 'Default Profile settings'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 18
        Height = 78
        Width = 371
        object Label46: TLabel
          Left = 7
          Top = 20
          Width = 42
          Height = 13
          Caption = 'Category'
        end
        object Label47: TLabel
          Left = 7
          Top = 49
          Width = 61
          Height = 13
          Caption = 'Classification'
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 71
          Top = 18
          DataBinding.DataField = 'DOC_DFLT_CATEGORY'
          DataBinding.DataSource = dsSystemFile
          Properties.KeyFieldNames = 'NPRECCATEGORY'
          Properties.ListColumns = <
            item
              Width = 80
              FieldName = 'DESCR'
            end
            item
              FieldName = 'NPRECCATEGORY'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsPRECCATEGORY
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 290
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 71
          Top = 46
          DataBinding.DataField = 'DOC_DFLT_CLASSIFICATION'
          DataBinding.DataSource = dsSystemFile
          Properties.KeyFieldNames = 'NPRECCLASSIFICATION'
          Properties.ListColumns = <
            item
              Width = 80
              FieldName = 'DESCR'
            end
            item
              FieldName = 'NPRECCLASSIFICATION'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsPRECCLASSIFICATION
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 290
        end
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 119
        Top = 347
        DataBinding.DataField = 'DFLT_DOC_LIST'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 19
        Width = 289
      end
      object cxLabel30: TcxLabel
        Left = 16
        Top = 348
        Caption = 'Default Doc Path'
      end
    end
    object tabWorkflow: TcxTabSheet
      Caption = 'WorkFlow Defaults'
      ImageIndex = 7
      object cxDBCheckBox15: TcxDBCheckBox
        Left = 22
        Top = 13
        Caption = 'Set Task Due Date when Days to complete is 0'
        DataBinding.DataField = 'WKFLOW_SET_DUE_0_DAYS'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
      object cxDBCheckBox16: TcxDBCheckBox
        Left = 22
        Top = 44
        Caption = 'Display Due Date once task is completed'
        DataBinding.DataField = 'WKFLOW_SHOW_DUE_DATE'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 210
      end
      object cxLabel1: TcxLabel
        Left = 24
        Top = 80
        Caption = 'Workflow Task default:'
        Transparent = True
      end
      object cmbWorkflowTaskDefault: TcxDBLookupComboBox
        Left = 214
        Top = 78
        DataBinding.DataField = 'DEFAULT_WKFLOW'
        DataBinding.DataSource = dsSystemFile
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'VALUE'
          end
          item
            FieldName = 'CODE'
          end>
        Properties.ListSource = dsDisplayNames
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 209
      end
      object cxLabel15: TcxLabel
        Left = 24
        Top = 109
        AutoSize = False
        Caption = 'Default Matter Precedent Workflow'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 173
      end
      object cmbMatterWorkFlow: TcxDBLookupComboBox
        Left = 214
        Top = 108
        DataBinding.DataField = 'DFLT_MATTER_PREC_WORKFLOW'
        DataBinding.DataSource = dsSystemFile
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 20
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end
          item
            FieldName = 'CODE'
          end>
        Properties.ListSource = dsWorkflowTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 209
      end
      object cxDBCheckBox8: TcxDBCheckBox
        Left = 22
        Top = 136
        Caption = 'Hide Workflow Tab'
        DataBinding.DataField = 'HIDE_MATTER_WORKFLOW'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Width = 210
      end
      object cxDBCheckBox9: TcxDBCheckBox
        Left = 22
        Top = 159
        Caption = 'Disable Workflow Generic Documents'
        DataBinding.DataField = 'HIDE_WKFLOW_GENERIC_DOCS'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Width = 210
      end
      object cxDBCheckBox17: TcxDBCheckBox
        Left = 22
        Top = 212
        Caption = 'Duplicate Task on Restart of Task (Default)'
        DataBinding.DataField = 'WKFLOW_DUPLICATE_TASK'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 210
      end
      object cxDBCheckBox20: TcxDBCheckBox
        Left = 22
        Top = 243
        Caption = 
          'Automatically save document after the merge has occurred.  (NOTE' +
          ': This option only applies when using MSWord as the merge option' +
          '.)'
        DataBinding.DataField = 'AUTO_SAVE_WORD_MERGE'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Width = 210
      end
      object cxDBCheckBox23: TcxDBCheckBox
        Left = 22
        Top = 302
        AutoSize = False
        Caption = 
          'Prompt for Document Descripiton/Profile form when merging docume' +
          'nt'
        DataBinding.DataField = 'DOC_PROMPT_DESCR'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.ImmediatePost = True
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Height = 43
        Width = 210
      end
      object cxDBCheckBox24: TcxDBCheckBox
        Left = 22
        Top = 180
        AutoSize = False
        Caption = 'Default Document Template creation to "Workflow Only"'
        DataBinding.DataField = 'DFLT_WKFLOW_DOC_TEMPL_2_WKFLOW'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Height = 32
        Width = 210
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'SMS Settings'
      ImageIndex = 10
      object Label41: TLabel
        Left = 25
        Top = 30
        Width = 31
        Height = 13
        Caption = 'U.R.L.'
      end
      object Label42: TLabel
        Left = 25
        Top = 61
        Width = 51
        Height = 13
        Caption = 'Username:'
      end
      object Label43: TLabel
        Left = 25
        Top = 89
        Width = 49
        Height = 13
        Caption = 'Password:'
      end
      object Label44: TLabel
        Left = 25
        Top = 117
        Width = 51
        Height = 13
        Caption = 'Mobile No:'
      end
      object Button1: TButton
        Left = 96
        Top = 149
        Width = 94
        Height = 25
        Caption = 'Test Settings'
        Enabled = False
        TabOrder = 0
        Visible = False
        OnClick = Button1Click
      end
      object DBEdit12: TDBEdit
        Left = 97
        Top = 25
        Width = 623
        Height = 21
        DataField = 'SMS_URL'
        DataSource = dsSystemFile
        TabOrder = 1
      end
      object DBEdit13: TDBEdit
        Left = 97
        Top = 56
        Width = 121
        Height = 21
        DataField = 'SMS_USER'
        DataSource = dsSystemFile
        TabOrder = 2
      end
      object DBEdit14: TDBEdit
        Left = 97
        Top = 86
        Width = 121
        Height = 21
        DataField = 'SMS_PASSWORD'
        DataSource = dsSystemFile
        PasswordChar = '*'
        TabOrder = 3
      end
      object DBEdit15: TDBEdit
        Left = 97
        Top = 113
        Width = 121
        Height = 21
        DataField = 'SMS_ORIGINATOR'
        DataSource = dsSystemFile
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 257
        Top = 53
        Width = 185
        Height = 58
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clInfoBk
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object Label45: TLabel
          Left = 10
          Top = 6
          Width = 163
          Height = 44
          AutoSize = False
          Caption = 
            'SMS is only supported on the SMSGlobal SMS gateway.  http:\\www.' +
            'smsglobal.com'
          ShowAccelChar = False
          WordWrap = True
        end
      end
    end
  end
  object qrySystemFile: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT S.*, S.ROWID FROM SYSTEMFILE S')
    CachedUpdates = True
    Left = 816
    Top = 520
  end
  object dsSystemFile: TUniDataSource
    DataSet = qrySystemFile
    Left = 827
    Top = 570
  end
  object qrySettings: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT S.*, S.ROWID'
      'FROM SETTINGS S'
      'WHERE S.EMP = '#39'sys'#39
      '  AND S.OWNER = :OWNER')
    BeforeInsert = qrySettingsBeforeInsert
    Left = 524
    Top = 143
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OWNER'
      end>
  end
  object dsSettings: TUniDataSource
    DataSet = qrySettings
    Left = 470
    Top = 145
  end
  object qryLibraries: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT S.*, S.ROWID FROM SETTINGS S'
      'WHERE S.EMP = '#39'sys'#39
      '  AND S.OWNER = '#39'APPLICATION'#39)
    Left = 569
    Top = 503
  end
  object dsLibraries: TUniDataSource
    DataSet = qryLibraries
    Left = 616
    Top = 507
  end
  object dsDataFieldMapping: TUniDataSource
    DataSet = qryDataFieldMapping
    Left = 608
    Top = 157
  end
  object qryDataFieldMapping: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.AXIOMCODE as AXIOMCODE,D.FOREIGNCODE, D.ROWID'
      'FROM DATAFIELDMAPPING D'
      'ORDER BY 1')
    BeforeInsert = qrySettingsBeforeInsert
    Left = 605
    Top = 186
    object qryDataFieldMappingAXIOMCODE: TStringField
      FieldName = 'AXIOMCODE'
      Required = True
      Size = 100
    end
    object qryDataFieldMappingFOREIGNCODE: TStringField
      FieldName = 'FOREIGNCODE'
      Required = True
      Size = 100
    end
    object qryDataFieldMappingROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object qryUserStatements: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT US.*, US.ROWID'
      'FROM USERSTATEMENTS US'
      'ORDER BY US.CODE')
    BeforeInsert = qrySettingsBeforeInsert
    Left = 841
    Top = 292
    object qryUserStatementsCODE: TStringField
      FieldName = 'CODE'
      Size = 12
    end
    object qryUserStatementsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
    object qryUserStatementsSTATEMENTTYPE: TStringField
      FieldName = 'STATEMENTTYPE'
      Size = 12
    end
    object qryUserStatementsSTOREDSTATEMENT: TMemoField
      FieldName = 'STOREDSTATEMENT'
      BlobType = ftMemo
    end
    object qryUserStatementsWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      Size = 11
    end
    object qryUserStatementsDATAFILE: TStringField
      FieldName = 'DATAFILE'
      Size = 70
    end
    object qryUserStatementsROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object dsUserStatements: TUniDataSource
    DataSet = qryUserStatements
    Left = 652
    Top = 186
  end
  object qryWorkflowTypes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM WORKFLOWTYPE')
    Left = 629
    Top = 247
  end
  object qGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PBGROUP ORDER BY CATEGORY')
    Left = 729
    Top = 148
    object qGroupsCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 25
    end
  end
  object dsGroups: TDataSource
    AutoEdit = False
    DataSet = qGroups
    Left = 741
    Top = 438
  end
  object qDisplayNames: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from display_name'
      'where class = '#39'MATTER'#39
      'and acct = :entity')
    Left = 878
    Top = 132
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
      end>
  end
  object dsDisplayNames: TUniDataSource
    DataSet = qDisplayNames
    Left = 879
    Top = 189
  end
  object tbPbGroups: TUniTable
    TableName = 'PBGROUP'
    OrderFields = 'CATEGORY'
    Connection = dmAxiom.uniInsight
    Left = 665
    Top = 435
  end
  object dsPbGroups: TUniDataSource
    DataSet = tbPbGroups
    Left = 773
    Top = 155
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Toolbar'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 870
    Top = 64
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
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 83
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bstLastSQL'
        end
        item
          Visible = True
          ItemName = 'bstPatchDate'
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
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Save && Close'
      Category = 0
      Hint = 'Save & Close'
      Visible = ivAlways
      ImageIndex = 8
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
      OnClick = btnCancelClick
    end
    object bstLastSQL: TdxBarStatic
      Caption = 'Patch'
      Category = 0
      Hint = 'Patch'
      Visible = ivAlways
    end
    object bstPatchDate: TdxBarStatic
      Caption = 'Patch Date'
      Category = 0
      Hint = 'Patch Date'
      Visible = ivAlways
    end
    object dxBarStatic1: TdxBarStatic
      Align = iaRight
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
      Alignment = taRightJustify
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Add Logo'
      Category = 1
      Hint = 'Add Logo'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Remove Logo'
      Category = 1
      Hint = 'Remove Logo'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Change Logo...'
      Category = 1
      Hint = 'Change Logo'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
  end
  object qryGlComponents: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO gl_components'
      
        '  (COMPONENTS_USED, COMPONENT_HEADING, COMPONENT_TYPE_1, COMPONE' +
        'NT_TYPE_2, COMPONENT_TYPE_3, COMPONENT_TYPE_4, COMPONENT_TYPE_5,' +
        ' COMPONENT_SIZE_1, COMPONENT_SIZE_2, COMPONENT_SIZE_3, COMPONENT' +
        '_SIZE_4, COMPONENT_SIZE_5, COMPONENT_DESCR_1, COMPONENT_DESCR_2,' +
        ' COMPONENT_DESCR_3, COMPONENT_DESCR_4, COMPONENT_DESCR_5)'
      'VALUES'
      
        '  (:COMPONENTS_USED, :COMPONENT_HEADING, :COMPONENT_TYPE_1, :COM' +
        'PONENT_TYPE_2, :COMPONENT_TYPE_3, :COMPONENT_TYPE_4, :COMPONENT_' +
        'TYPE_5, :COMPONENT_SIZE_1, :COMPONENT_SIZE_2, :COMPONENT_SIZE_3,' +
        ' :COMPONENT_SIZE_4, :COMPONENT_SIZE_5, :COMPONENT_DESCR_1, :COMP' +
        'ONENT_DESCR_2, :COMPONENT_DESCR_3, :COMPONENT_DESCR_4, :COMPONEN' +
        'T_DESCR_5)')
    SQLDelete.Strings = (
      'DELETE FROM gl_components'
      'WHERE'
      '  ROWID = :OLD_ROWID')
    SQLUpdate.Strings = (
      'UPDATE gl_components'
      'SET'
      '  COMPONENTS_USED = :COMPONENTS_USED,'
      '  COMPONENT_HEADING = :COMPONENT_HEADING,'
      '  COMPONENT_TYPE_1 = :COMPONENT_TYPE_1,'
      '  COMPONENT_TYPE_2 = :COMPONENT_TYPE_2,'
      '  COMPONENT_TYPE_3 = :COMPONENT_TYPE_3,'
      '  COMPONENT_TYPE_4 = :COMPONENT_TYPE_4,'
      '  COMPONENT_TYPE_5 = :COMPONENT_TYPE_5,'
      '  COMPONENT_SIZE_1 = :COMPONENT_SIZE_1,'
      '  COMPONENT_SIZE_2 = :COMPONENT_SIZE_2,'
      '  COMPONENT_SIZE_3 = :COMPONENT_SIZE_3,'
      '  COMPONENT_SIZE_4 = :COMPONENT_SIZE_4,'
      '  COMPONENT_SIZE_5 = :COMPONENT_SIZE_5,'
      '  COMPONENT_DESCR_1 = :COMPONENT_DESCR_1,'
      '  COMPONENT_DESCR_2 = :COMPONENT_DESCR_2,'
      '  COMPONENT_DESCR_3 = :COMPONENT_DESCR_3,'
      '  COMPONENT_DESCR_4 = :COMPONENT_DESCR_4,'
      '  COMPONENT_DESCR_5 = :COMPONENT_DESCR_5'
      'WHERE'
      '  ROWID = :OLD_ROWID')
    SQLLock.Strings = (
      'SELECT * FROM gl_components'
      'WHERE'
      '  ROWID = :OLD_ROWID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  gl.ROWID = :OLD_ROWID')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select gl.*,gl.rowid from gl_components gl')
    Left = 498
    Top = 216
  end
  object dsGlComponents: TUniDataSource
    DataSet = qryGlComponents
    Left = 530
    Top = 216
  end
  object vtComponentTypes: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'Heading'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'type'
        DataType = ftString
        Size = 20
      end>
    Left = 668
    Top = 76
    Data = {
      03000200070048656164696E6701001400000000000400747970650100140000
      000000000000000000}
  end
  object dsComponentTypes: TUniDataSource
    DataSet = vtComponentTypes
    Left = 760
    Top = 67
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 434
    Top = 287
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
  end
  object dsWorkflowTypes: TUniDataSource
    DataSet = qryWorkflowTypes
    Left = 700
    Top = 242
  end
  object qryCollectionTemplate: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO gl_components'
      
        '  (COMPONENTS_USED, COMPONENT_HEADING, COMPONENT_TYPE_1, COMPONE' +
        'NT_TYPE_2, COMPONENT_TYPE_3, COMPONENT_TYPE_4, COMPONENT_TYPE_5,' +
        ' COMPONENT_SIZE_1, COMPONENT_SIZE_2, COMPONENT_SIZE_3, COMPONENT' +
        '_SIZE_4, COMPONENT_SIZE_5, COMPONENT_DESCR_1, COMPONENT_DESCR_2,' +
        ' COMPONENT_DESCR_3, COMPONENT_DESCR_4, COMPONENT_DESCR_5)'
      'VALUES'
      
        '  (:COMPONENTS_USED, :COMPONENT_HEADING, :COMPONENT_TYPE_1, :COM' +
        'PONENT_TYPE_2, :COMPONENT_TYPE_3, :COMPONENT_TYPE_4, :COMPONENT_' +
        'TYPE_5, :COMPONENT_SIZE_1, :COMPONENT_SIZE_2, :COMPONENT_SIZE_3,' +
        ' :COMPONENT_SIZE_4, :COMPONENT_SIZE_5, :COMPONENT_DESCR_1, :COMP' +
        'ONENT_DESCR_2, :COMPONENT_DESCR_3, :COMPONENT_DESCR_4, :COMPONEN' +
        'T_DESCR_5)')
    SQLDelete.Strings = (
      'DELETE FROM gl_components'
      'WHERE'
      '  ROWID = :OLD_ROWID')
    SQLUpdate.Strings = (
      'UPDATE gl_components'
      'SET'
      '  COMPONENTS_USED = :COMPONENTS_USED,'
      '  COMPONENT_HEADING = :COMPONENT_HEADING,'
      '  COMPONENT_TYPE_1 = :COMPONENT_TYPE_1,'
      '  COMPONENT_TYPE_2 = :COMPONENT_TYPE_2,'
      '  COMPONENT_TYPE_3 = :COMPONENT_TYPE_3,'
      '  COMPONENT_TYPE_4 = :COMPONENT_TYPE_4,'
      '  COMPONENT_TYPE_5 = :COMPONENT_TYPE_5,'
      '  COMPONENT_SIZE_1 = :COMPONENT_SIZE_1,'
      '  COMPONENT_SIZE_2 = :COMPONENT_SIZE_2,'
      '  COMPONENT_SIZE_3 = :COMPONENT_SIZE_3,'
      '  COMPONENT_SIZE_4 = :COMPONENT_SIZE_4,'
      '  COMPONENT_SIZE_5 = :COMPONENT_SIZE_5,'
      '  COMPONENT_DESCR_1 = :COMPONENT_DESCR_1,'
      '  COMPONENT_DESCR_2 = :COMPONENT_DESCR_2,'
      '  COMPONENT_DESCR_3 = :COMPONENT_DESCR_3,'
      '  COMPONENT_DESCR_4 = :COMPONENT_DESCR_4,'
      '  COMPONENT_DESCR_5 = :COMPONENT_DESCR_5'
      'WHERE'
      '  ROWID = :OLD_ROWID')
    SQLLock.Strings = (
      'SELECT * FROM gl_components'
      'WHERE'
      '  ROWID = :OLD_ROWID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  gl.ROWID = :OLD_ROWID')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from debtorworkflowtemplate')
    Left = 455
    Top = 235
  end
  object dsCollectionTemplate: TUniDataSource
    DataSet = qryCollectionTemplate
    Left = 555
    Top = 293
  end
  object vtMonth: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'Month'
        DataType = ftInteger
      end
      item
        Name = 'Descr'
        DataType = ftString
        Size = 36
      end>
    Left = 436
    Top = 504
    Data = {
      0300020005004D6F6E7468030000000000000005004465736372010024000000
      000000000C0000000400000001000000030000004A616E040000000200000003
      0000004665620400000003000000030000004D61720400000004000000030000
      004170720400000005000000030000004D61790400000006000000030000004A
      756E0400000007000000030000004A756C040000000800000003000000417567
      040000000900000003000000536570040000000A000000030000004F63740400
      00000B000000030000004E6F76040000000C00000003000000446563}
    object vtMonthMonth: TIntegerField
      FieldName = 'Month'
    end
    object vtMonthDescr: TStringField
      FieldName = 'Descr'
      Size = 36
    end
  end
  object dsMonth: TUniDataSource
    DataSet = vtMonth
    Left = 480
    Top = 307
  end
  object dlFile: TOpenDialog
    Filter = 'JPG|*.jpg|HTML|*.html'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Title = 'Select document template'
    Left = 442
    Top = 412
  end
  object dlDocTemplate: TcxShellBrowserDialog
    LookAndFeel.NativeStyle = True
    Left = 538
    Top = 406
  end
  object OpenDialog: TOpenDialog
    Filter = 'ISYS Index|*.ixa'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 808
    Top = 351
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 570
    Top = 80
  end
  object qryFeeBasis: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'feebasis')
    Left = 190
    Top = 574
  end
  object dsFeeBasis: TUniDataSource
    DataSet = qryFeeBasis
    Left = 283
    Top = 573
  end
  object qryDataForm: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select caption, code'
      'from dataform')
    Left = 396
    Top = 217
  end
  object dsDataForm: TUniDataSource
    DataSet = qryDataForm
    Left = 428
    Top = 159
  end
  object qrySundries: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from sundrytype'
      'where'
      'active = '#39'Y'#39)
    Left = 384
    Top = 454
  end
  object dsSundries: TUniDataSource
    DataSet = qrySundries
    Left = 373
    Top = 557
  end
  object qryPRECCATEGORY: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from PRECCATEGORY order by descr'
      ''
      '')
    Left = 612
    Top = 365
  end
  object dsPRECCATEGORY: TUniDataSource
    DataSet = qryPRECCATEGORY
    Left = 530
    Top = 582
  end
  object qryPRECCLASSIFICATION: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from PRECCLASSIFICATION order by descr')
    Left = 467
    Top = 359
  end
  object dsPRECCLASSIFICATION: TUniDataSource
    DataSet = qryPRECCLASSIFICATION
    Left = 251
    Top = 533
  end
  object qryBankClearance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select BANK_CLEARANCE_DAYS.*, BANK_CLEARANCE_DAYS.rowid'
      'from'
      'BANK_CLEARANCE_DAYS')
    Left = 465
    Top = 120
  end
  object dsBankClearance: TUniDataSource
    DataSet = qryBankClearance
    Left = 446
    Top = 68
  end
  object qryMatterStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from matterstatus')
    Left = 424
    Top = 107
  end
  object dsMatterStatus: TUniDataSource
    DataSet = qryMatterStatus
    Left = 349
    Top = 230
  end
end
