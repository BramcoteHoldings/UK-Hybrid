object frmSystemFile: TfrmSystemFile
  Left = 85
  Top = 141
  Caption = 'System Variables'
  ClientHeight = 668
  ClientWidth = 1084
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
    Left = 19
    Top = 51
    Width = 160
    Height = 13
    Caption = 'Multi-Client Phonebook Group'
    Transparent = True
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 28
    Width = 1084
    Height = 640
    Align = alClient
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    OnChange = pcMainChange
    OnPageChanging = pcMainPageChanging
    ClientRectBottom = 636
    ClientRectLeft = 4
    ClientRectRight = 1080
    ClientRectTop = 46
    object tsGeneral: TcxTabSheet
      Caption = '&General'
      ImageIndex = 0
      object DBText1: TDBText
        Left = 102
        Top = 3
        Width = 41
        Height = 15
        AutoSize = True
        DataField = 'COMPANY'
        DataSource = dsSystemFile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 7
        Top = 22
        Width = 42
        Height = 15
        Caption = 'Address'
        Transparent = True
      end
      object Label1: TLabel
        Left = 7
        Top = 114
        Width = 62
        Height = 15
        Caption = 'Next Matter'
        Transparent = True
      end
      object Label2: TLabel
        Left = 514
        Top = 275
        Width = 112
        Height = 15
        Caption = 'Next Archived Matter'
        Transparent = True
        Visible = False
      end
      object Label3: TLabel
        Left = 7
        Top = 138
        Width = 88
        Height = 15
        Caption = 'Minutes per Unit'
        Transparent = True
      end
      object Label5: TLabel
        Left = 510
        Top = 452
        Width = 83
        Height = 15
        Caption = 'Word Processor'
        Transparent = True
        Visible = False
      end
      object Label36: TLabel
        Left = 338
        Top = 7
        Width = 54
        Height = 15
        Caption = 'Firm Logo'
      end
      object Label70: TLabel
        Left = 11
        Top = 230
        Width = 38
        Height = 15
        Caption = 'Firm ID'
      end
      object Label75: TLabel
        Left = 7
        Top = 90
        Width = 29
        Height = 15
        Caption = 'Email'
        Transparent = True
      end
      object DBEdit4: TDBEdit
        Left = 102
        Top = 19
        Width = 222
        Height = 23
        DataField = 'ADD1'
        DataSource = dsSystemFile
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 102
        Top = 41
        Width = 222
        Height = 23
        DataField = 'ADD2'
        DataSource = dsSystemFile
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 102
        Top = 63
        Width = 125
        Height = 23
        DataField = 'SUBURB'
        DataSource = dsSystemFile
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 233
        Top = 63
        Width = 35
        Height = 23
        CharCase = ecUpperCase
        DataField = 'STATE'
        DataSource = dsSystemFile
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 274
        Top = 63
        Width = 50
        Height = 23
        DataField = 'POSTCODE'
        DataSource = dsSystemFile
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 102
        Top = 111
        Width = 69
        Height = 23
        DataField = 'NEXTMATTER'
        DataSource = dsSystemFile
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 604
        Top = 272
        Width = 69
        Height = 23
        DataField = 'NEXTARCHIVE'
        DataSource = dsSystemFile
        TabOrder = 6
        Visible = False
      end
      object DBEdit3: TDBEdit
        Left = 102
        Top = 135
        Width = 21
        Height = 23
        DataField = 'TIME_UNITS'
        DataSource = dsSystemFile
        TabOrder = 7
      end
      object dbcbWordProc: TDBComboBox
        Left = 599
        Top = 450
        Width = 125
        Height = 23
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
        Left = 102
        Top = 159
        Properties.Items.Strings = (
          'Winhelp'
          'HtmlHelp')
        Properties.OnChange = cmbHelpTypePropertiesChange
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Text = 'cmbHelpType'
        Width = 124
      end
      object cxLabel2: TcxLabel
        Left = 7
        Top = 161
        Caption = 'Help File Format:'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 102
        Top = 204
        AutoSize = False
        DataBinding.DataField = 'HOME_PAGE_URL'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Height = 22
        Width = 221
      end
      object cxLabel4: TcxLabel
        Left = 7
        Top = 205
        Caption = 'Default URL:'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 6
        Top = 274
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
        TabOrder = 13
        Height = 14
        Width = 197
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 4
        Top = 252
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
        TabOrder = 14
        Height = 19
        Width = 201
      end
      object cxGroupBox2: TcxGroupBox
        Left = 15
        Top = 423
        Caption = 'Crystal Reports Viewer Option'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 15
        Height = 48
        Width = 393
        object cbUseAxiomCrysltalViewer: TcxDBCheckBox
          Left = 7
          Top = -9
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
        end
        object cxLabel9: TcxLabel
          Left = 2
          Top = 19
          AutoSize = False
          Caption = 'Crystal Reports Viewer path:'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.WordWrap = True
          Transparent = True
          Height = 19
          Width = 102
        end
        object scmbCrystalPath: TcxDBShellComboBox
          Left = 106
          Top = 17
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
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 277
        end
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 6
        Top = 293
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
        TabOrder = 18
        Height = 20
        Width = 199
      end
      object cxDBCheckBox11: TcxDBCheckBox
        Left = 6
        Top = 314
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
        TabOrder = 19
        Height = 22
        Width = 199
      end
      object cxLabel18: TcxLabel
        Left = 7
        Top = 184
        Caption = 'Help File Path'
        Transparent = True
      end
      object edtHelpPath: TcxDBButtonEdit
        Left = 102
        Top = 183
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Height = 20
        Width = 221
      end
      object cxDBImage1: TcxDBImage
        Left = 394
        Top = 6
        DataBinding.DataField = 'LOGO_IMAGE'
        DataBinding.DataSource = dsSystemFile
        PopupMenu = dxBarPopupMenu1
        Properties.GraphicClassName = 'TdxSmartImage'
        Properties.ImmediatePost = True
        Properties.PopupMenuLayout.MenuItems = []
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 21
        Height = 139
        Width = 323
      end
      object cbEnforceClientPack: TcxDBCheckBox
        Left = 6
        Top = 337
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
        TabOrder = 22
        Height = 19
        Width = 199
      end
      object cxDBCheckBox18: TcxDBCheckBox
        Left = 6
        Top = 358
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
        TabOrder = 23
        Height = 18
        Width = 199
      end
      object cxDBCheckBox25: TcxDBCheckBox
        Left = 263
        Top = 252
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
        TabOrder = 24
        Height = 29
        Width = 199
      end
      object cxDBCheckBox28: TcxDBCheckBox
        Left = 263
        Top = 279
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
        TabOrder = 25
        Height = 31
        Width = 199
      end
      object cxDBCheckBox38: TcxDBCheckBox
        Left = 263
        Top = 305
        AutoSize = False
        Caption = 'Generate Controlled Monies Output file'
        DataBinding.DataField = 'GENERATE_INVEST_FILE'
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
        TabOrder = 26
        Height = 31
        Width = 199
      end
      object DBEdit21: TDBEdit
        Left = 102
        Top = 227
        Width = 121
        Height = 23
        DataField = 'LEDES_FIRM_ID'
        DataSource = dsSystemFile
        TabOrder = 12
      end
      object cxDBCheckBox64: TcxDBCheckBox
        Left = 263
        Top = 334
        AutoSize = False
        Caption = 'Show Document Center button'
        DataBinding.DataField = 'SHOW_DOCUMENT_CENTER'
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
        TabOrder = 27
        Height = 21
        Width = 199
      end
      object DBEdit27: TDBEdit
        Left = 102
        Top = 87
        Width = 222
        Height = 23
        DataField = 'COMPANY_EMAIL'
        DataSource = dsSystemFile
        TabOrder = 28
      end
      object cxDBMemo3: TcxDBMemo
        Left = 394
        Top = 154
        DataBinding.DataField = 'REGISTERED_MESSAGE'
        DataBinding.DataSource = dsSystemFile
        TabOrder = 29
        Height = 54
        Width = 323
      end
      object cxLabel34: TcxLabel
        Left = 329
        Top = 151
        AutoSize = False
        Caption = 'Module Registered Message'
        Properties.WordWrap = True
        Transparent = True
        Height = 57
        Width = 63
      end
      object cxDBCheckBox69: TcxDBCheckBox
        Left = 263
        Top = 354
        AutoSize = False
        Caption = 'Use Project Budgeting\Management '
        DataBinding.DataField = 'USE_PROJECT_BUDGETING'
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
        TabOrder = 31
        Height = 34
        Width = 199
      end
    end
    object tsLibraries: TcxTabSheet
      Caption = 'Libraries'
      ImageIndex = 1
      TabVisible = False
      DesignSize = (
        1076
        590)
      object lblAppName: TLabel
        Left = 6
        Top = 4
        Width = 96
        Height = 15
        Caption = 'Application Name'
        Transparent = True
      end
      object lbFileName: TLabel
        Left = 143
        Top = 4
        Width = 53
        Height = 15
        Caption = 'File Name'
        Transparent = True
      end
      object Label7: TLabel
        Left = 6
        Top = 38
        Width = 42
        Height = 15
        Caption = 'Settings'
        Transparent = True
      end
      object dbeFileName: TDBEdit
        Left = 143
        Top = 18
        Width = 111
        Height = 23
        DataField = 'VALUE'
        DataSource = dsLibraries
        TabOrder = 0
      end
      object cbAppName: TComboBox
        Left = 6
        Top = 18
        Width = 124
        Height = 23
        Style = csDropDownList
        Sorted = True
        TabOrder = 1
        OnChange = cbAppNameChange
      end
      object dbgSettings: TcxGrid
        Left = 6
        Top = 52
        Width = 1070
        Height = 534
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
        Width = 1076
        Height = 590
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
        Width = 1076
        Height = 590
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
        Left = -14
        Top = 21
        Width = 105
        Height = 15
        Alignment = taRightJustify
        Caption = 'Use Calendar Folder'
        Transparent = True
      end
      object Label8: TLabel
        Left = -11
        Top = 43
        Width = 102
        Height = 15
        Alignment = taRightJustify
        Caption = 'Appointment Form'
        Transparent = True
      end
      object Label9: TLabel
        Left = 20
        Top = 63
        Width = 44
        Height = 11
        Alignment = taRightJustify
        Caption = 'Field Names'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = -10
        Top = 79
        Width = 82
        Height = 15
        Alignment = taRightJustify
        Caption = 'Matter Number'
        Transparent = True
      end
      object Label11: TLabel
        Left = 41
        Top = 99
        Width = 31
        Height = 15
        Alignment = taRightJustify
        Caption = 'Client'
        Transparent = True
      end
      object Label12: TLabel
        Left = -14
        Top = 120
        Width = 86
        Height = 15
        Alignment = taRightJustify
        Caption = 'Client Reference'
        Transparent = True
      end
      object Label13: TLabel
        Left = -19
        Top = 140
        Width = 91
        Height = 15
        Alignment = taRightJustify
        Caption = 'Short Description'
        Transparent = True
      end
      object Label14: TLabel
        Left = -10
        Top = 162
        Width = 82
        Height = 15
        Alignment = taRightJustify
        Caption = 'Full Description'
        Transparent = True
      end
      object Label19: TLabel
        Left = 47
        Top = 182
        Width = 25
        Height = 15
        Alignment = taRightJustify
        Caption = 'Type'
        Transparent = True
      end
      object Label20: TLabel
        Left = 178
        Top = 162
        Width = 37
        Height = 15
        Alignment = taRightJustify
        Caption = 'Branch'
        Transparent = True
      end
      object Label17: TLabel
        Left = 178
        Top = 140
        Width = 37
        Height = 15
        Alignment = taRightJustify
        Caption = 'Author'
        Transparent = True
      end
      object Label18: TLabel
        Left = 168
        Top = 120
        Width = 47
        Height = 15
        Alignment = taRightJustify
        Caption = 'Operator'
        Transparent = True
      end
      object Label16: TLabel
        Left = 162
        Top = 99
        Width = 53
        Height = 15
        Alignment = taRightJustify
        Caption = 'Controller'
        Transparent = True
      end
      object Label15: TLabel
        Left = 177
        Top = 79
        Width = 38
        Height = 15
        Alignment = taRightJustify
        Caption = 'Partner'
        Transparent = True
      end
      object eCalendarFolder: TEdit
        Left = 98
        Top = 19
        Width = 119
        Height = 23
        TabOrder = 2
      end
      object eOutlookForm: TEdit
        Left = 98
        Top = 39
        Width = 207
        Height = 23
        TabOrder = 4
      end
      object eFieldMatterNumber: TEdit
        Left = 77
        Top = 75
        Width = 86
        Height = 23
        TabOrder = 5
      end
      object eFieldClient: TEdit
        Left = 77
        Top = 96
        Width = 86
        Height = 23
        TabOrder = 6
      end
      object eFieldClientRef: TEdit
        Left = 77
        Top = 116
        Width = 86
        Height = 23
        TabOrder = 7
      end
      object eFieldShortDesc: TEdit
        Left = 77
        Top = 137
        Width = 86
        Height = 23
        TabOrder = 8
      end
      object eFieldFullDesc: TEdit
        Left = 77
        Top = 158
        Width = 86
        Height = 23
        TabOrder = 9
      end
      object eFieldType: TEdit
        Left = 77
        Top = 178
        Width = 86
        Height = 23
        TabOrder = 10
      end
      object eFieldBranch: TEdit
        Left = 221
        Top = 158
        Width = 86
        Height = 23
        TabOrder = 11
      end
      object eFieldAuthor: TEdit
        Left = 221
        Top = 137
        Width = 86
        Height = 23
        TabOrder = 12
      end
      object eFieldOperator: TEdit
        Left = 221
        Top = 116
        Width = 86
        Height = 23
        TabOrder = 13
      end
      object eFieldController: TEdit
        Left = 221
        Top = 96
        Width = 86
        Height = 23
        TabOrder = 14
      end
      object eFieldPartner: TEdit
        Left = 221
        Top = 75
        Width = 86
        Height = 23
        TabOrder = 15
      end
      object cbUseOutlook: TcxCheckBox
        Left = 7
        Top = 0
        Caption = 'Use Outlook for Diary'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnClick = cbUseOutlookClick
      end
      object cbDefaultCalendar: TcxCheckBox
        Left = 129
        Top = 0
        Caption = 'Use Default Calendar'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        OnClick = cbDefaultCalendarClick
      end
      object cbAppendMatterType: TcxCheckBox
        Left = 220
        Top = 18
        Caption = 'Append Matter Type'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
    end
    object tsClients: TcxTabSheet
      Caption = 'Contact/Client'
      ImageIndex = 5
      object Label23: TLabel
        Left = 19
        Top = 50
        Width = 145
        Height = 15
        Caption = 'Multi-Client Contact Group'
        Transparent = True
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 167
        Top = 289
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 15
        Width = 194
      end
      object cxLabel3: TcxLabel
        Left = 15
        Top = 291
        Caption = 'Default Contact Group:'
        Transparent = True
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 167
        Top = 311
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 18
        Width = 194
      end
      object cxLabel8: TcxLabel
        Left = 15
        Top = 313
        Caption = 'Default Collection Template:'
        Transparent = True
      end
      object cbClientCreate: TcxCheckBox
        Left = 16
        Top = 7
        Caption = 'Limit Client Create to Contact Group'
        Properties.Alignment = taLeftJustify
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        OnClick = cbClientCreateClick
      end
      object cbSLERequired: TcxCheckBox
        Left = 19
        Top = 86
        Caption = 'SLE Date is required on matter.'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object ckUseCheckDigit: TcxCheckBox
        Left = 19
        Top = 103
        Caption = 'Use Check Digit on File ID.'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object gbMatterCarrage: TcxGroupBox
        Left = 19
        Top = 198
        Caption = 'Matter Carriage'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 13
        Height = 82
        Width = 298
        object Label30: TLabel
          Left = 8
          Top = 20
          Width = 288
          Height = 18
          AutoSize = False
          Caption = 'Limit the following to select only from the matter entity...'
          Transparent = True
          WordWrap = True
        end
        object ckCarrageLimitPartner: TcxCheckBox
          Left = 10
          Top = 41
          Caption = 'Partner'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
        end
        object ckCarrageLimitController: TcxCheckBox
          Left = 10
          Top = 58
          Caption = 'Controller'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
        end
        object ckCarrageLimitAuthor: TcxCheckBox
          Left = 155
          Top = 41
          Caption = 'Author'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
        end
        object ckCarrageLimitOperator: TcxCheckBox
          Left = 155
          Top = 58
          Caption = 'Operator'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
        end
      end
      object cxLabel11: TcxLabel
        Left = 15
        Top = 335
        Caption = 'Start of the financial year:'
        Transparent = True
      end
      object cxDBCLStartFinYear: TcxDBLookupComboBox
        Left = 167
        Top = 335
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 19
        Width = 77
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 167
        Top = 357
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 22
        Width = 194
      end
      object cxLabel20: TcxLabel
        Left = 15
        Top = 359
        Caption = 'Default Creditor Group:'
        Transparent = True
      end
      object cxLabel26: TcxLabel
        Left = 15
        Top = 380
        Caption = 'Default Matter Fee Basis:'
        Transparent = True
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 167
        Top = 380
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 23
        Width = 194
      end
      object dblClientPhonebookGroup: TcxLookupComboBox
        Left = 20
        Top = 26
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CATEGORY'
        Properties.ListColumns = <
          item
            FieldName = 'CATEGORY'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsGroups
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 186
      end
      object dblMultiClientGroup: TcxLookupComboBox
        Left = 20
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
        Width = 186
      end
      object ckHideDX: TcxDBCheckBox
        Left = 19
        Top = 119
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
      end
      object chkHideDOBPanel: TcxDBCheckBox
        Left = 19
        Top = 136
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
      end
      object cxDBCheckBox49: TcxDBCheckBox
        Left = 240
        Top = 136
        Caption = 'Enforce UPPERCASE for Suburb'
        DataBinding.DataField = 'ENFORCE_UPPER_SUBURB'
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
      end
      object cxDBCheckBox53: TcxDBCheckBox
        Left = 19
        Top = 154
        Caption = 'Hide Client "Controls" Tab'
        DataBinding.DataField = 'HIDE_CLIENT_CONTROLS_TAB'
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
      end
      object cxDBCheckBox54: TcxDBCheckBox
        Left = 240
        Top = 86
        Caption = 'Hide Code/Reference fields'
        DataBinding.DataField = 'HideCodeRefPanel'
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
        TabOrder = 9
      end
      object cxDBCheckBox55: TcxDBCheckBox
        Left = 240
        Top = 103
        Caption = 'Hide ABN/ACN fields'
        DataBinding.DataField = 'HideABNACNPanel'
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
        TabOrder = 10
      end
      object cxDBCheckBox56: TcxDBCheckBox
        Left = 240
        Top = 119
        Caption = 'Hide Occupation field'
        DataBinding.DataField = 'HideOccupationPanel'
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
      end
      object cxDBCheckBox58: TcxDBCheckBox
        Left = 240
        Top = 154
        Caption = 'Prompt for Conflict Check confirmation'
        DataBinding.DataField = 'CONFLICT_CHECK_CONFIRM'
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
        TabOrder = 12
      end
      object cxDBCheckBox65: TcxDBCheckBox
        Left = 19
        Top = 173
        Caption = 'Hide Client Deceaased Date'
        DataBinding.DataField = 'HIDE_CLIENT_DECEASEDDATE'
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
        TabOrder = 24
      end
      object cxDBCheckBox66: TcxDBCheckBox
        Left = 240
        Top = 173
        Caption = 'Hide NRIC field'
        DataBinding.DataField = 'HIDENRICPANEL'
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
        TabOrder = 25
      end
    end
    object tsOther2: TcxTabSheet
      Caption = 'Other'
      ImageIndex = 6
      OnExit = tsOther2Exit
      OnShow = tsOther2Show
      object cxGroupBox3: TcxGroupBox
        Left = 14
        Top = 6
        Caption = 'Clearance Days'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 209
        Width = 302
        object grdReceiptClerance: TcxGrid
          Left = 8
          Top = 19
          Width = 286
          Height = 185
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
            Navigator.Buttons.ConfirmDelete = True
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = dsBankClearance
            DataController.KeyFieldNames = 'CODE'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Deleting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object tvDBReceiptCleranceDESCRIPTION: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 117
            end
            object tvDBReceiptCleranceCLEARANCE_DAYS: TcxGridDBColumn
              Caption = 'Clearance Days'
              DataBinding.FieldName = 'CLEARANCE_DAYS'
              Width = 92
            end
            object tvDBReceiptCleranceCODE: TcxGridDBColumn
              Caption = 'Code'
              DataBinding.FieldName = 'CODE'
              Width = 46
            end
            object tvDBReceiptCleranceBANK_DEPOSIT: TcxGridDBColumn
              Caption = 'Bank Deposit'
              DataBinding.FieldName = 'BANK_DEPOSIT'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              Width = 51
            end
          end
          object grdReceiptCleranceLevel1: TcxGridLevel
            GridView = tvDBReceiptClerance
          end
        end
      end
      object cxDBMemo1: TcxDBMemo
        Left = 14
        Top = 234
        DataBinding.DataField = 'MATTER_CREATE_WARN_MSG'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 65
        Width = 276
      end
      object cxLabel21: TcxLabel
        Left = 13
        Top = 217
        Caption = 'Matter Creation WARNING message'
        Transparent = True
      end
      object cxLabel22: TcxLabel
        Left = 13
        Top = 302
        Caption = 'Matter Creation BAN message'
        Transparent = True
      end
      object cxDBMemo2: TcxDBMemo
        Left = 14
        Top = 320
        DataBinding.DataField = 'MATTER_CREATE_BAN_MSG'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 65
        Width = 276
      end
      object btnLoadData: TcxButton
        Left = 321
        Top = 7
        Width = 78
        Height = 20
        Caption = 'Load Details'
        LookAndFeel.NativeStyle = True
        TabOrder = 5
        Visible = False
        OnClick = btnLoadDataClick
      end
    end
    object tabMatterDefaults: TcxTabSheet
      Caption = 'Matter Defaults'
      ImageIndex = 9
      object Label50: TLabel
        Left = 405
        Top = 100
        Width = 112
        Height = 15
        Caption = 'Default Closed Status'
      end
      object Label72: TLabel
        Left = 429
        Top = 9
        Width = 88
        Height = 15
        Caption = 'Default Fee Rate:'
      end
      object cbArchiveUnclosed: TcxDBCheckBox
        Left = 16
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
      end
      object cbDisallowClose: TcxDBCheckBox
        Left = 16
        Top = 24
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
      end
      object cbWarnOnNoFees: TcxDBCheckBox
        Left = 16
        Top = 43
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
      end
      object cbAllowClosureWithUnPresCheques: TcxDBCheckBox
        Left = 16
        Top = 60
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
      end
      object cxDBCheckBox27: TcxDBCheckBox
        Left = 16
        Top = 78
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
        Height = 23
        Width = 298
      end
      object cxDBLookupComboBox9: TcxDBLookupComboBox
        Left = 523
        Top = 97
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 135
      end
      object cxDBCheckBox33: TcxDBCheckBox
        Left = 16
        Top = 98
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
        Height = 17
        Width = 302
      end
      object cxDBCheckBox35: TcxDBCheckBox
        Left = 16
        Top = 116
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
        Height = 18
        Width = 302
      end
      object cxGroupBox10: TcxGroupBox
        Left = 18
        Top = 156
        Caption = 'Archival Defaults'
        TabOrder = 9
        Height = 156
        Width = 353
        object Label51: TLabel
          Left = 14
          Top = 131
          Width = 104
          Height = 15
          Caption = 'Archive Review Age'
        end
        object cxDBSpinEdit5: TcxDBSpinEdit
          Left = 120
          Top = 128
          DataBinding.DataField = 'ARCHIVE_REVIEW_PERIOD'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 57
        end
        object cxDBCheckBox12: TcxDBCheckBox
          Left = 12
          Top = 20
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
          Height = 18
          Width = 291
        end
        object cxDBCheckBox26: TcxDBCheckBox
          Left = 12
          Top = 38
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
          Height = 18
          Width = 291
        end
        object cxDBCheckBox36: TcxDBCheckBox
          Left = 12
          Top = 56
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
          Height = 17
          Width = 291
        end
        object cxDBCheckBox37: TcxDBCheckBox
          Left = 12
          Top = 73
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
          Height = 18
          Width = 291
        end
        object cxDBCheckBox42: TcxDBCheckBox
          Left = 12
          Top = 91
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
          Height = 18
          Width = 291
        end
        object cxDBCheckBox48: TcxDBCheckBox
          Left = 12
          Top = 109
          AutoSize = False
          Caption = 'Close all outstanding Workflow tasks on Archive'
          DataBinding.DataField = 'STOP_WKFLOW_TASKS_ARCHIVE'
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
          Height = 17
          Width = 291
        end
      end
      object cxGroupBox11: TcxGroupBox
        Left = 18
        Top = 313
        Caption = 'Visibility'
        TabOrder = 10
        Height = 229
        Width = 353
        object cxDBCheckBox39: TcxDBCheckBox
          Left = 12
          Top = 19
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
          Height = 17
          Width = 256
        end
        object cxDBCheckBox40: TcxDBCheckBox
          Left = 12
          Top = 68
          Caption = 'Hide Matter "Workflow" Tab'
          DataBinding.DataField = 'HIDE_MATTER_WORKFLOW_TAB'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 1
        end
        object cxDBCheckBox41: TcxDBCheckBox
          Left = 12
          Top = 51
          Caption = 'Hide Matter "Workflow Carriage" Tab'
          DataBinding.DataField = 'HIDE_MAT_WKFLOW_CARRIAGE_TAB'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 2
        end
        object cxDBCheckBox43: TcxDBCheckBox
          Left = 12
          Top = 34
          Caption = 'Hide Matter "Budgets" Tab'
          DataBinding.DataField = 'HIDE_MATTER_BUDGETS_TAB'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 3
        end
        object cxDBCheckBox44: TcxDBCheckBox
          Left = 12
          Top = 85
          Caption = 'Hide Matter Carriage "Operator"'
          DataBinding.DataField = 'HIDE_CARRIAGE_OPERATOR'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 4
        end
        object cxDBCheckBox45: TcxDBCheckBox
          Left = 12
          Top = 103
          Caption = 'Hide Matter Matter Carriage "ParaLegal"'
          DataBinding.DataField = 'HIDE_CARRIAGE_PARALEGAL'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 5
        end
        object cxDBCheckBox46: TcxDBCheckBox
          Left = 12
          Top = 120
          Caption = 'Hide Matter Carriage "Team"'
          DataBinding.DataField = 'HIDE_CARRIAGE_TEAM'
          DataBinding.DataSource = dsSystemFile
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 6
        end
        object cxDBCheckBox50: TcxDBCheckBox
          Left = 12
          Top = 139
          AutoSize = False
          Caption = 'Hide "Label Code" field'
          DataBinding.DataField = 'HIDE_MATTER_LABEL_CODE'
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
          Height = 18
          Width = 256
        end
        object cxDBCheckBox51: TcxDBCheckBox
          Left = 12
          Top = 155
          AutoSize = False
          Caption = 'Hide "Destroyed Date" field'
          DataBinding.DataField = 'HIDE_ARCH_DESTROY_DATE'
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
          TabOrder = 8
          Height = 18
          Width = 256
        end
        object cxDBCheckBox59: TcxDBCheckBox
          Left = 12
          Top = 172
          AutoSize = False
          Caption = 'Hide "Matter Carriage Additional" Tab'
          DataBinding.DataField = 'HIDEMATTERCARRIAGEADDITIONAL'
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
          TabOrder = 9
          Height = 18
          Width = 256
        end
        object cxDBCheckBox71: TcxDBCheckBox
          Left = 12
          Top = 188
          AutoSize = False
          Caption = 'Hide "Billing Plan" and "Hourly Rate" fields'
          DataBinding.DataField = 'HIDEBILLPLANHOURLYRATE'
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
          TabOrder = 10
          Height = 18
          Width = 256
        end
        object cxDBCheckBox72: TcxDBCheckBox
          Left = 12
          Top = 205
          AutoSize = False
          Caption = 'Hide "Expected Completion" field'
          DataBinding.DataField = 'HIDEEXPECTEDCOMPLETION'
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
          TabOrder = 11
          Height = 18
          Width = 256
        end
      end
      object chkDisableClientReference: TcxDBCheckBox
        Left = 16
        Top = 135
        AutoSize = False
        Caption = 'Disable Client Reference field'
        DataBinding.DataField = 'DIS_MATTER_CLI_REF'
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
        TabOrder = 8
        Height = 17
        Width = 302
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 523
        Top = 6
        Width = 266
        Height = 23
        DataField = 'DFLT_MATTER_FEE_RATE'
        DataSource = dsSystemFile
        DropDownRows = 15
        KeyField = 'CODE'
        ListField = 'DESCR'
        ListSource = dsFeeRate
        TabOrder = 11
      end
      object cxDBCheckBox62: TcxDBCheckBox
        Left = 429
        Top = 43
        Hint = 
          'By selecting this option, Users cannot change the mode that is u' +
          'sed for document saving.'
        Margins.Left = 0
        AutoSize = False
        Caption = 'Show Barcode field in Matter'
        DataBinding.DataField = 'SHOW_BARCODE'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.BorderStyle = ebs3D
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 12
        Transparent = True
        Height = 21
        Width = 192
      end
      object cxLabel33: TcxLabel
        Left = 384
        Top = 63
        AutoSize = False
        Caption = 'Barcode Word Macro Name'
        Properties.Alignment.Horz = taRightJustify
        Properties.WordWrap = True
        Transparent = True
        Height = 34
        Width = 130
        AnchorX = 514
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 523
        Top = 69
        Hint = 'Enter macro  name used to display barcode on word document.'
        DataBinding.DataField = 'WORD_LABEL_MACRO'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 14
        Width = 183
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Accounting Defaults'
      ImageIndex = 6
      object Label56: TLabel
        Left = 11
        Top = 424
        Width = 146
        Height = 20
        AutoSize = False
        Caption = 'Debtor Template - Client'
        WordWrap = True
      end
      object Label74: TLabel
        Left = 10
        Top = 455
        Width = 147
        Height = 22
        AutoSize = False
        Caption = 'Debtor Template - Matter'
        WordWrap = True
      end
      object scmbEFTFilePath: TcxDBShellComboBox
        Left = 169
        Top = 9
        DataBinding.DataField = 'EFT_FILE_DIR'
        DataBinding.DataSource = dsSystemFile
        Properties.DropDownWidth = 350
        Properties.IncrementalSearch = True
        Properties.Root.BrowseFolder = bfCustomPath
        Properties.ShowFullPath = sfpAlways
        Properties.ValidateOnEnter = False
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 277
      end
      object cxLabel7: TcxLabel
        Left = 10
        Top = 11
        Caption = 'E.F.T. File Directory:'
        Transparent = True
      end
      object seAccountInterest: TcxDBSpinEdit
        Left = 169
        Top = 64
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 72
      end
      object cxLabel10: TcxLabel
        Left = 10
        Top = 65
        AutoSize = False
        Caption = 'Overdue Account interest:'
        Properties.WordWrap = True
        Transparent = True
        Height = 23
        Width = 147
      end
      object cbShowNetTrust: TcxDBCheckBox
        Left = 11
        Top = 98
        Hint = 
          'Display Net Client Funds (Cleared Trust less Unpaid Client Chequ' +
          'e Requisitions)'
        Caption = 
          'Display Net Client Funds (Cleared Trust less Unpaid Client Chequ' +
          'e Requisitions)'
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
        TabOrder = 5
      end
      object cbCheckTrustODraw: TcxDBCheckBox
        Left = 11
        Top = 117
        Hint = 'Check Client Funds O/Draw on TTO receipt'
        Caption = 'Check Client Funds O/Draw on TTO receipt'
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
        TabOrder = 6
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 11
        Top = 137
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
        TabOrder = 7
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 169
        Top = 157
        DataBinding.DataField = 'DR_PAYMENT_DAYS'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 57
      end
      object cxLabel14: TcxLabel
        Left = 11
        Top = 159
        Caption = 'Debtor Payment Days:'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object cxDBCostCentreAccounting: TcxDBCheckBox
        Left = 11
        Top = 179
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
        TabOrder = 10
      end
      object cmbPrependCheqReq: TcxDBCheckBox
        Left = 11
        Top = 199
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
        TabOrder = 11
      end
      object cxDBCheckBox10: TcxDBCheckBox
        Left = 11
        Top = 220
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
        TabOrder = 12
      end
      object cxLabel16: TcxLabel
        Left = 11
        Top = 325
        AutoSize = False
        Caption = 'TTO clearance days:'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
        Height = 17
        Width = 113
      end
      object sedTTOClearanceDays: TcxDBSpinEdit
        Left = 169
        Top = 325
        DataBinding.DataField = 'TTO_CLEARANCE_DAYS'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 15
        Width = 49
      end
      object cxGroupBox4: TcxGroupBox
        Left = 10
        Top = 348
        Caption = 'Interest on Disbursements Option'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 17
        Height = 69
        Width = 481
        object Label37: TLabel
          Left = 7
          Top = 21
          Width = 63
          Height = 15
          Caption = 'Sundry type'
          Transparent = True
        end
        object Label38: TLabel
          Left = 7
          Top = 44
          Width = 65
          Height = 15
          Caption = 'Interest Rate'
          Transparent = True
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 159
          Top = 18
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
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 289
        end
        object cxDBSpinEdit3: TcxDBSpinEdit
          Left = 159
          Top = 42
          DataBinding.DataField = 'DFLT_DISB_INTEREST'
          DataBinding.DataSource = dsSystemFile
          Properties.Increment = 0.100000000000000000
          Properties.LargeIncrement = 1.000000000000000000
          Properties.MaxValue = 100.000000000000000000
          Properties.ValueType = vtFloat
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 45
        end
      end
      object cxDBCheckBox32: TcxDBCheckBox
        Left = 11
        Top = 240
        Hint = 
          'Allow Client Funds Amount Editing in Bill Draft Mode  (Linked to' +
          ' Employee Type Security Option)'
        Caption = 
          'Allow Client Funds Amount Editing in Bill Draft Mode  (Linked to' +
          ' Employee Type Security Option)'
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
        TabOrder = 18
      end
      object DBEdit16: TDBEdit
        Left = 169
        Top = 421
        Width = 212
        Height = 23
        DataField = 'DR_TEMPLATE'
        DataSource = dsSystemFile
        TabOrder = 19
      end
      object cxLabel32: TcxLabel
        Left = 10
        Top = 37
        AutoSize = False
        Caption = 'Controlled Money Directory:'
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 155
      end
      object scmbControlledMoneyFilePath: TcxDBShellComboBox
        Left = 169
        Top = 36
        DataBinding.DataField = 'controlled_money_file_dir'
        DataBinding.DataSource = dsSystemFile
        Properties.DropDownWidth = 350
        Properties.IncrementalSearch = True
        Properties.Root.BrowseFolder = bfCustomPath
        Properties.ShowFullPath = sfpAlways
        Properties.ValidateOnEnter = False
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 277
      end
      object cxDBCheckBox57: TcxDBCheckBox
        Left = 11
        Top = 260
        Caption = 'Age Debtors based on Calendar Month'
        DataBinding.DataField = 'DRS_AGE_BY_MONTH'
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
        TabOrder = 21
      end
      object chkSaveCheqReaasPDF: TcxDBCheckBox
        Left = 11
        Top = 280
        Caption = 'Save CheqReq  as PDF on matter (for matter CheqReqs)'
        DataBinding.DataField = 'SAVECHEQREQ_AS_PDF'
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
        TabOrder = 14
      end
      object DBEdit26: TDBEdit
        Left = 168
        Top = 452
        Width = 212
        Height = 23
        DataField = 'DR_MATTER_TEMPLATE'
        DataSource = dsSystemFile
        TabOrder = 22
      end
      object chkPayCredFromTrust: TcxDBCheckBox
        Left = 11
        Top = 300
        Hint = 
          'Allow payment of Creditor Invoice from Client Funds by allowing ' +
          'the selection of Creditor invoice at time of creating the CheqRe' +
          'q.'
        Caption = 'Allow payment of Creditor Invoice from Client Funds'
        DataBinding.DataField = 'INVOICE_FROM_TRUST'
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
        TabOrder = 16
      end
      object cxLabel35: TcxLabel
        Left = 253
        Top = 65
        Hint = 'Client Funds Overdraw Password'
        AutoSize = False
        Caption = 'Client Funds Overdraw Password:'
        Properties.WordWrap = True
        Transparent = True
        Height = 19
        Width = 181
      end
      object cxDBTextEdit17: TcxDBTextEdit
        Left = 440
        Top = 64
        DataBinding.DataField = 'TRUST_OD_PASSWD'
        DataBinding.DataSource = dsSystemFile
        Properties.EchoMode = eemPassword
        TabOrder = 24
        Width = 116
      end
      object cxDBCheckBox70: TcxDBCheckBox
        Left = 436
        Top = 98
        Hint = 'Allow creation/editing of Cheque templates.'
        Caption = 'Allow creation/editing of Cheque templates.'
        DataBinding.DataField = 'SHOW_CHEQUE_TEMPLATE'
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
        TabOrder = 25
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Billing Defaults'
      ImageIndex = 8
      OnShow = cxTabSheet2Show
      object Label6: TLabel
        Left = 17
        Top = 174
        Width = 100
        Height = 15
        Caption = 'Draft Bill Reference'
        Transparent = True
      end
      object Label53: TLabel
        Left = 20
        Top = 338
        Width = 141
        Height = 15
        Caption = 'Default Draft Bill Template:'
      end
      object Label54: TLabel
        Left = 20
        Top = 362
        Width = 150
        Height = 15
        Caption = 'Default Memo Bill Template:'
      end
      object Label58: TLabel
        Left = 20
        Top = 290
        Width = 103
        Height = 15
        Caption = 'Bill Discount Period'
      end
      object Label59: TLabel
        Left = 20
        Top = 314
        Width = 92
        Height = 15
        Caption = 'Bill Discount Rate'
      end
      object Label62: TLabel
        Left = 17
        Top = 198
        Width = 71
        Height = 15
        Caption = 'LEDES Ref No'
        Transparent = True
      end
      object Label71: TLabel
        Left = 297
        Top = 290
        Width = 127
        Height = 15
        Caption = 'Default Dispatched Date'
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 16
        Top = 52
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
      end
      object cxDBCheckBox13: TcxDBCheckBox
        Left = 14
        Top = 33
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
      end
      object cxLabel17: TcxLabel
        Left = 17
        Top = 13
        Caption = 'BPay Code Length'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object sedBPAY_CODE_LENGTH: TcxDBSpinEdit
        Left = 130
        Top = 11
        DataBinding.DataField = 'BPAY_CODE_LENGTH'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 49
      end
      object dbchkPreassignBillNo: TcxDBCheckBox
        Left = 16
        Top = 71
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
        Height = 19
        Width = 125
      end
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 311
        Top = 45
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
        TabOrder = 5
        Height = 63
        Width = 172
      end
      object DBEdit9: TDBEdit
        Left = 124
        Top = 171
        Width = 83
        Height = 23
        DataField = 'DRAFTBILL'
        DataSource = dsSystemFile
        TabOrder = 6
      end
      object cxDBCheckBox19: TcxDBCheckBox
        Left = 14
        Top = 91
        Caption = 'Enforce Client Funds Remittance on Creditor Bills '
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
      end
      object cxDBCheckBox30: TcxDBCheckBox
        Left = 14
        Top = 111
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
      end
      object cxGroupBox7: TcxGroupBox
        Left = 18
        Top = 217
        Caption = 'Administration Fee on Bills'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Height = 67
        Width = 410
        object Label48: TLabel
          Left = 7
          Top = 19
          Width = 63
          Height = 15
          Caption = 'Sundry type'
          Transparent = True
        end
        object Label49: TLabel
          Left = 7
          Top = 43
          Width = 65
          Height = 15
          Caption = 'Interest Rate'
          Transparent = True
        end
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 106
          Top = 16
          DataBinding.DataField = 'service_fee_sundry_type'
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
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 289
        end
        object cxDBSpinEdit4: TcxDBSpinEdit
          Left = 106
          Top = 40
          DataBinding.DataField = 'SERVICE_FEE_PERCENT'
          DataBinding.DataSource = dsSystemFile
          Properties.Increment = 0.100000000000000000
          Properties.LargeIncrement = 1.000000000000000000
          Properties.MaxValue = 100.000000000000000000
          Properties.ValueType = vtFloat
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 45
        end
      end
      object cxGroupBox8: TcxGroupBox
        Left = 19
        Top = 406
        Caption = 'Bill Email Template'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 10
        DesignSize = (
          408
          151)
        Height = 151
        Width = 408
        object grdBillEmailTemplate: TcxGrid
          Left = 5
          Top = 15
          Width = 400
          Height = 130
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
        Left = 14
        Top = 130
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
      end
      object JvDBLookupComboEdit1: TJvDBLookupComboEdit
        Left = 169
        Top = 359
        Width = 217
        Height = 23
        LookupDisplay = 'ITEM_NAME'
        LookupField = 'ITEM_ID'
        LookupSource = dmAxiom.dsRB_Item
        TabOrder = 12
        Text = 'JvDBLookupComboEdit1'
        DataField = 'MEMO_BILL_DEFAULT'
        DataSource = dsSystemFile
      end
      object JvDBLookupComboEdit2: TJvDBLookupComboEdit
        Left = 169
        Top = 335
        Width = 217
        Height = 23
        LookupDisplay = 'ITEM_NAME'
        LookupField = 'ITEM_ID'
        LookupSource = dmAxiom.dsRB_Item
        TabOrder = 13
        Text = 'JvDBLookupComboEdit2'
        DataField = 'DRAFT_BILL_DEFAULT'
        DataSource = dsSystemFile
      end
      object DBCheckBox2: TDBCheckBox
        Left = 18
        Top = 152
        Width = 350
        Height = 16
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
      object DBEdit17: TDBEdit
        Left = 169
        Top = 287
        Width = 112
        Height = 23
        DataField = 'BILL_DISCOUNT_PERIOD'
        DataSource = dsSystemFile
        TabOrder = 15
      end
      object JvDBSpinEdit1: TJvDBSpinEdit
        Left = 169
        Top = 311
        Width = 112
        Height = 23
        ValueType = vtFloat
        TabOrder = 16
        DataField = 'BILL_DISCOUNT'
        DataSource = dsSystemFile
      end
      object cxDBRadioGroup2: TcxDBRadioGroup
        Left = 311
        Top = 2
        Caption = 'BPay code based on'
        DataBinding.DataField = 'BPAY_CODE_DEFAULT'
        DataBinding.DataSource = dsSystemFile
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Bill No'
            Value = 0
          end
          item
            Caption = 'Matter No'
            Value = 1
          end>
        TabOrder = 17
        Height = 37
        Width = 172
      end
      object DBEdit20: TDBEdit
        Left = 124
        Top = 195
        Width = 83
        Height = 23
        DataField = 'LEDES_FIRM_ID'
        DataSource = dsSystemFile
        TabOrder = 18
      end
      object JvDBDatePickerEdit1: TJvDBDatePickerEdit
        Left = 434
        Top = 287
        Width = 131
        Height = 23
        AllowNoDate = True
        DataField = 'DFLT_BILL_DISPATCHED_DATE'
        DataSource = dsSystemFile
        TabOrder = 19
      end
      object cxDBCheckBox67: TcxDBCheckBox
        Left = 327
        Top = 111
        Caption = 'Allow adjustment of Disbursement amount.'
        DataBinding.DataField = 'ALLOW_DISB_ADJUSTMENT'
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
        TabOrder = 20
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Fee/Time  Defaults'
      ImageIndex = 11
      object Label52: TLabel
        Left = 7
        Top = 218
        Width = 96
        Height = 15
        Caption = 'Default Time Type'
      end
      object cxDBCheckBox31: TcxDBCheckBox
        Left = 4
        Top = 19
        AutoSize = False
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
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 30
        Width = 265
      end
      object cxDBCheckBox14: TcxDBCheckBox
        Left = 4
        Top = 46
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
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Transparent = True
        Height = 25
        Width = 265
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 4
        Top = 75
        AutoSize = False
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
        Transparent = True
        Height = 16
        Width = 265
      end
      object cxDBCheckBox29: TcxDBCheckBox
        Left = 4
        Top = 98
        AutoSize = False
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
        Transparent = True
        Height = 16
        Width = 265
      end
      object cxDBComboBox2: TcxDBComboBox
        Left = 134
        Top = 216
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
        Width = 55
      end
      object cxDBCheckBox47: TcxDBCheckBox
        Left = 4
        Top = 120
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
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Transparent = True
        Height = 17
        Width = 265
      end
      object cxGroupBox1: TcxGroupBox
        Left = 7
        Top = 242
        Caption = 'Fee Earner Alerts'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 171
        Width = 371
        object Label31: TLabel
          Left = 213
          Top = 14
          Width = 111
          Height = 15
          Caption = 'Fee Earner Min Units:'
          Transparent = True
        end
        object Label32: TLabel
          Left = 198
          Top = 37
          Width = 130
          Height = 15
          Caption = 'Number of Days in Alert:'
          Transparent = True
        end
        object Label33: TLabel
          Left = 12
          Top = 16
          Width = 112
          Height = 15
          Caption = 'Send Alert after Days:'
          Transparent = True
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 11
          Top = 35
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
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 328
          Top = 11
          DataBinding.DataField = 'FEE_ALERT_MIN_UNITS'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 35
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 127
          Top = 13
          DataBinding.DataField = 'FEE_ALERT_DAY_OFFSET'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 38
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 328
          Top = 35
          DataBinding.DataField = 'FEE_ALERT_DAYS'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 35
        end
        object cxLabel36: TcxLabel
          Left = 11
          Top = 60
          Caption = 'Alert Trigger 1'
          Transparent = True
        end
        object cxLabel37: TcxLabel
          Left = 11
          Top = 87
          Caption = 'Alert Trigger 2'
          Transparent = True
        end
        object cxDBSpinEdit7: TcxDBSpinEdit
          Left = 127
          Top = 86
          DataBinding.DataField = 'FEE_ALERT_PCT2'
          DataBinding.DataSource = dsSystemFile
          TabOrder = 6
          Width = 68
        end
        object cxLabel38: TcxLabel
          Left = 11
          Top = 114
          Caption = 'Alert Trigger 3'
          Transparent = True
        end
        object cxDBSpinEdit8: TcxDBSpinEdit
          Left = 127
          Top = 113
          DataBinding.DataField = 'FEE_ALERT_PCT3'
          DataBinding.DataSource = dsSystemFile
          TabOrder = 8
          Width = 68
        end
        object cxLabel39: TcxLabel
          Left = 11
          Top = 140
          Caption = 'Alert Trigger 4'
          Transparent = True
        end
        object cxDBSpinEdit9: TcxDBSpinEdit
          Left = 127
          Top = 140
          DataBinding.DataField = 'FEE_ALERT_PCT4'
          DataBinding.DataSource = dsSystemFile
          TabOrder = 10
          Width = 68
        end
        object cxDBSpinEdit6: TcxDBSpinEdit
          Left = 127
          Top = 59
          DataBinding.DataField = 'FEE_ALERT_PCT1'
          DataBinding.DataSource = dsSystemFile
          TabOrder = 11
          Width = 68
        end
      end
      object cxDBCheckBox60: TcxDBCheckBox
        Left = 4
        Top = 143
        AutoSize = False
        Caption = 'Allow TimeSheet Author Edit'
        DataBinding.DataField = 'ALLOW_TIMESHEET_AUTH_EDIT'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Transparent = True
        Height = 16
        Width = 265
      end
      object cxDBCheckBox63: TcxDBCheckBox
        Left = 4
        Top = 166
        AutoSize = False
        Caption = 'Create Time entry from email'
        DataBinding.DataField = 'CREATE_TIME_FROM_EMAIL'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Transparent = True
        Height = 17
        Width = 265
      end
      object cxDBCheckBox68: TcxDBCheckBox
        Left = 4
        Top = 188
        AutoSize = False
        Caption = 'Use decimal units in Timesheet?'
        DataBinding.DataField = 'USE_DECIMAL_UNITS'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Transparent = True
        Height = 17
        Width = 265
      end
    end
    object tsGlStructure: TcxTabSheet
      Caption = 'GL Structure'
      ImageIndex = 7
      object Label24: TLabel
        Left = 11
        Top = 31
        Width = 45
        Height = 15
        Caption = 'Heading'
        Transparent = True
      end
      object Label25: TLabel
        Left = 11
        Top = 55
        Width = 73
        Height = 15
        Caption = 'Component 1'
        Transparent = True
      end
      object Label26: TLabel
        Left = 11
        Top = 77
        Width = 73
        Height = 15
        Caption = 'Component 2'
        Transparent = True
      end
      object Label27: TLabel
        Left = 11
        Top = 100
        Width = 73
        Height = 15
        Caption = 'Component 3'
        Transparent = True
      end
      object Label28: TLabel
        Left = 11
        Top = 123
        Width = 73
        Height = 15
        Caption = 'Component 4'
        Transparent = True
      end
      object Label29: TLabel
        Left = 11
        Top = 147
        Width = 73
        Height = 15
        Caption = 'Component 5'
        Transparent = True
      end
      object cxDBGlComponentHeading: TcxDBTextEdit
        Left = 88
        Top = 28
        DataBinding.DataField = 'COMPONENT_HEADING'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 278
      end
      object cxDBLGLComponent1: TcxDBLookupComboBox
        Left = 88
        Top = 51
        DataBinding.DataField = 'COMPONENT_TYPE_1'
        DataBinding.DataSource = dsGlComponents
        Properties.KeyFieldNames = 'type'
        Properties.ListColumns = <
          item
            FieldName = 'heading'
          end>
        Properties.ListSource = dsComponentTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 132
      end
      object cxDBLGLComponent2: TcxDBLookupComboBox
        Left = 88
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 132
      end
      object cxDBLGLComponent3: TcxDBLookupComboBox
        Left = 88
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 132
      end
      object cxDBLGLComponent4: TcxDBLookupComboBox
        Left = 88
        Top = 120
        DataBinding.DataField = 'COMPONENT_TYPE_4'
        DataBinding.DataSource = dsGlComponents
        Properties.KeyFieldNames = 'type'
        Properties.ListColumns = <
          item
            FieldName = 'heading'
          end>
        Properties.ListSource = dsComponentTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 132
      end
      object cxDBLGLComponent5: TcxDBLookupComboBox
        Left = 88
        Top = 143
        DataBinding.DataField = 'COMPONENT_TYPE_5'
        DataBinding.DataSource = dsGlComponents
        Properties.KeyFieldNames = 'type'
        Properties.ListColumns = <
          item
            FieldName = 'heading'
          end>
        Properties.ListSource = dsComponentTypes
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 132
      end
      object cxDBTGLComponentSize1: TcxDBTextEdit
        Left = 223
        Top = 51
        DataBinding.DataField = 'COMPONENT_SIZE_1'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Width = 31
      end
      object cxDBTGLComponentSize2: TcxDBTextEdit
        Left = 223
        Top = 74
        DataBinding.DataField = 'COMPONENT_SIZE_2'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Width = 31
      end
      object cxDBTGLComponentSize3: TcxDBTextEdit
        Left = 223
        Top = 97
        DataBinding.DataField = 'COMPONENT_SIZE_3'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 31
      end
      object cxDBTGLComponentSize4: TcxDBTextEdit
        Left = 223
        Top = 120
        DataBinding.DataField = 'COMPONENT_SIZE_4'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Width = 31
      end
      object cxDBTGLComponentSize5: TcxDBTextEdit
        Left = 223
        Top = 143
        DataBinding.DataField = 'COMPONENT_SIZE_5'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Width = 31
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 256
        Top = 51
        DataBinding.DataField = 'COMPONENT_DESCR_1'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Width = 110
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 256
        Top = 74
        DataBinding.DataField = 'COMPONENT_DESCR_2'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 12
        Width = 110
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 256
        Top = 97
        DataBinding.DataField = 'COMPONENT_DESCR_3'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 13
        Width = 110
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 256
        Top = 120
        DataBinding.DataField = 'COMPONENT_DESCR_4'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 14
        Width = 110
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 256
        Top = 143
        DataBinding.DataField = 'COMPONENT_DESCR_5'
        DataBinding.DataSource = dsGlComponents
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 15
        Width = 110
      end
    end
    object tabEmails: TcxTabSheet
      Caption = 'Mail Setting Defaults'
      ImageIndex = 7
      object Label34: TLabel
        Left = 13
        Top = 16
        Width = 70
        Height = 15
        Caption = 'Email Format'
        Transparent = True
      end
      object Label35: TLabel
        Left = 13
        Top = 39
        Width = 101
        Height = 15
        Caption = 'Check EMails every'
        Transparent = True
      end
      object lblEmailDefault: TLabel
        Left = 13
        Top = 62
        Width = 63
        Height = 15
        Caption = 'Mail default'
        Transparent = True
      end
      object cmbEmailFormat: TcxDBComboBox
        Left = 116
        Top = 14
        DataBinding.DataField = 'EMAIL_FORMAT'
        DataBinding.DataSource = dsSystemFile
        Properties.Items.Strings = (
          'HTML'
          'RTF')
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 104
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 116
        Top = 36
        DataBinding.DataField = 'EMAIL_CHECK_INTERVAL'
        DataBinding.DataSource = dsSystemFile
        Properties.BeepOnError = True
        Properties.MaxValue = 60.000000000000000000
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 44
      end
      object btnAddEmailFooter: TcxButton
        Left = 16
        Top = 529
        Width = 121
        Height = 22
        Caption = 'Add eMail Footer'
        LookAndFeel.NativeStyle = True
        TabOrder = 11
        Visible = False
        OnClick = btnAddEmailFooterClick
      end
      object cmbEmail: TcxDBImageComboBox
        Left = 116
        Top = 59
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 146
      end
      object cxGroupBox5: TcxGroupBox
        Left = 12
        Top = 141
        Caption = 'Default Profile settings'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 73
        Width = 379
        object Label39: TLabel
          Left = 7
          Top = 19
          Width = 48
          Height = 15
          Caption = 'Category'
        end
        object Label40: TLabel
          Left = 7
          Top = 46
          Width = 70
          Height = 15
          Caption = 'Classification'
        end
        object cmbCategory: TcxDBLookupComboBox
          Left = 87
          Top = 17
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
          Width = 269
        end
        object cmbClassification: TcxDBLookupComboBox
          Left = 87
          Top = 43
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
          Width = 269
        end
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 111
        Top = 348
        AutoSize = False
        DataBinding.DataField = 'FROM_EMAIL'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Height = 22
        Width = 193
      end
      object cxLabel6: TcxLabel
        Left = 13
        Top = 349
        Caption = 'Email From:'
        Transparent = True
      end
      object cxGroupBox9: TcxGroupBox
        Left = 12
        Top = 216
        Caption = 'Mail Server Settings'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 127
        Width = 379
        object Label60: TLabel
          Left = 13
          Top = 102
          Width = 53
          Height = 15
          Caption = 'Username'
        end
        object Label61: TLabel
          Left = 214
          Top = 102
          Width = 50
          Height = 15
          Caption = 'Password'
        end
        object cxLabel5: TcxLabel
          Left = 13
          Top = 18
          Caption = 'Mail Server :'
          Transparent = True
        end
        object DBEdit10: TDBEdit
          Left = 111
          Top = 16
          Width = 193
          Height = 23
          DataField = 'SMTP_SERVER'
          DataSource = dsSystemFile
          TabOrder = 1
        end
        object cxLabel29: TcxLabel
          Left = 13
          Top = 40
          Caption = 'SMTP Port:'
          Transparent = True
        end
        object DBEdit11: TDBEdit
          Left = 111
          Top = 38
          Width = 40
          Height = 23
          DataField = 'SMTP_PORT'
          DataSource = dsSystemFile
          TabOrder = 3
        end
        object DBCheckBox4: TDBCheckBox
          Left = 13
          Top = 61
          Width = 166
          Height = 16
          Caption = 'Server Needs Authentication'
          DataField = 'MAILSVRNEEDAUTHENTICATION'
          DataSource = dsSystemFile
          TabOrder = 4
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 13
          Top = 79
          Width = 90
          Height = 16
          Caption = 'Secure Mode'
          DataField = 'MAILSVRSECUREMODE'
          DataSource = dsSystemFile
          TabOrder = 5
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBEdit18: TDBEdit
          Left = 67
          Top = 99
          Width = 141
          Height = 23
          DataField = 'MAILSVRUSERNAME'
          DataSource = dsSystemFile
          TabOrder = 6
        end
        object DBEdit19: TDBEdit
          Left = 268
          Top = 99
          Width = 102
          Height = 20
          AutoSize = False
          DataField = 'MAILSVRPASSWORD'
          DataSource = dsSystemFile
          PasswordChar = '*'
          TabOrder = 7
        end
      end
      object DBCheckBox1: TDBCheckBox
        Left = 13
        Top = 85
        Width = 178
        Height = 15
        Caption = 'Listen for incoming eMails'
        DataField = 'EMAILS_LISTENER'
        DataSource = dsSystemFile
        TabOrder = 3
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object cxGroupBox12: TcxGroupBox
        Left = 11
        Top = 370
        Caption = 'Fee Alert Defaults'
        TabOrder = 9
        Height = 146
        Width = 350
        object grpFeeAlertRec: TcxDBCheckGroup
          Left = 9
          Top = 19
          Caption = 'Fee Alert Receipients'
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
          TabOrder = 0
          DataBinding.DataField = 'FEE_ALERT_RECEIPIENT'
          DataBinding.DataSource = dsSystemFile
          Height = 93
          Width = 184
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 104
          Top = 119
          AutoSize = False
          DataBinding.DataField = 'FEE_ALERT_EMAIL_ADDITIONAL'
          DataBinding.DataSource = dsSystemFile
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Height = 23
          Width = 193
        end
        object cxLabel31: TcxLabel
          Left = 7
          Top = 122
          Caption = 'Email To:'
          Transparent = True
        end
      end
      object DBCheckBox3: TDBCheckBox
        Left = 13
        Top = 104
        Width = 217
        Height = 16
        Caption = 'Save email attachments separately'
        DataField = 'email_separate_attachments'
        DataSource = dsSystemFile
        TabOrder = 4
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 13
        Top = 124
        Width = 217
        Height = 15
        Caption = 'Use eMail subject as Document Name'
        DataField = 'USE_MAIL_SUBJECT_AS_NAME'
        DataSource = dsSystemFile
        TabOrder = 5
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object cxLabel40a: TcxLabel
        Left = 280
        Top = 60
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Matter Email Subject'
        Transparent = True
      end
      object cxDBTextEdit18: TcxDBTextEdit
        Left = 397
        Top = 61
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        DataBinding.DataField = 'MATTER_EMAIL_SUBJECT'
        DataBinding.DataSource = dsSystemFile
        TabOrder = 13
        Width = 292
      end
      object cxLabel41: TcxLabel
        Left = 299
        Top = 88
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Bill Email Subject'
        Transparent = True
      end
      object cxDBTextEdit19: TcxDBTextEdit
        Left = 397
        Top = 87
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        DataBinding.DataField = 'BILL_EMAIL_SUBJECT'
        DataBinding.DataSource = dsSystemFile
        TabOrder = 15
        Width = 292
      end
      object DBCheckBox7: TDBCheckBox
        Left = 397
        Top = 123
        Width = 220
        Height = 17
        Caption = 'Synchronise Outlook Calendar Items'
        DataField = 'OUTLOOK_SYNCHRONISE'
        DataSource = dsSystemFile
        TabOrder = 16
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
    end
    object tabDocuments: TcxTabSheet
      Caption = 'Document Defaults'
      ImageIndex = 8
      object Label55: TLabel
        Left = 208
        Top = 207
        Width = 195
        Height = 45
        Caption = 
          'If Doc Sequences are appended to the document name, versioning m' +
          'ay not work as expected.'
        WordWrap = True
      end
      object Label57: TLabel
        Left = 9
        Top = 364
        Width = 149
        Height = 18
        Hint = 'Default Merge Data Path used to store Word merge data files.'
        AutoSize = False
        Caption = 'Default Merge Data Path'
        WordWrap = True
      end
      object Label63: TLabel
        Left = 9
        Top = 422
        Width = 124
        Height = 17
        AutoSize = False
        Caption = 'Scan Folder Path'
        WordWrap = True
      end
      object Label68: TLabel
        Left = 616
        Top = 4
        Width = 334
        Height = 29
        AutoSize = False
        Caption = 
          'This value is used by Workflow/Precedent document creation and w' +
          'ill usually be the directory and document name structure.'
        WordWrap = True
      end
      object Label69: TLabel
        Left = 463
        Top = 169
        Width = 342
        Height = 29
        AutoSize = False
        Caption = 
          'This is the directory where documents are saved by default.  Thi' +
          's includes emails and documents added via DragON.'
        WordWrap = True
      end
      object cxLabel12: TcxLabel
        Left = 8
        Top = 3
        AutoSize = False
        Caption = 'Documents Default File Directory/Name:'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.WordWrap = True
        Transparent = True
        Height = 34
        Width = 173
      end
      object btnedtDefaultDocDir: TcxDBButtonEdit
        Left = 182
        Top = 9
        Hint = 
          'Macros Available'#13#10'[USERHOME] = User Home Directory'#13#10'[NMATTER] = ' +
          'Matter Number'#13#10'[TEMPDIR] = User'#39's Temp Directory'#13#10'[TEMPFILE] = M' +
          'ake a Temporary File'#13#10'[DATE] = System Date'#13#10'[TIME] = System Time' +
          #13#10'[DATETIME] = System Date and Time'#13#10'[CLIENTID] = Client Code'#13#10'[' +
          'FILEID]=File Number'#13#10'[AUTHOR]=Matter Author'#13#10'[USERINITIALS]=Axio' +
          'm User Code '#13#10'[DOCSEQUENCE]=Document Number'#13#10'[DOCDESCR]=Document' +
          ' Name/Document Description'
        DataBinding.DataField = 'DOC_DEFAULT_DIRECTORY'
        DataBinding.DataSource = dsSystemFile
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424DD60200000000000036000000280000000E0000000C000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF808080FF000000FFFF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFF000000FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00
              FF00000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00000000FFFFFF
              FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFF00FF00FF00FF00FF00FF00000000FFFF00FF00000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 417
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 182
        Top = 37
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 104
      end
      object cxLabel13: TcxLabel
        Left = 8
        Top = 39
        AutoSize = False
        Caption = 'Documents Default Save Mode:'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.WordWrap = True
        Transparent = True
        Height = 18
        Width = 169
      end
      object btnedtISYSIndex: TcxDBButtonEdit
        Left = 182
        Top = 446
        DataBinding.DataField = 'ISYS_INDEX_PATH'
        DataBinding.DataSource = dsSystemFile
        Properties.Buttons = <
          item
            ContentAlignment = taRightJustify
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424DD60200000000000036000000280000000E0000000C000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF808080FF000000FFFF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFF000000FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00
              FF00000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00000000FFFFFF
              FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFF00FF00FF00FF00FF00FF00000000FFFF00FF00000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
            Stretchable = False
          end>
        Properties.OnButtonClick = btnedtISYSIndexPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Width = 276
      end
      object cxLabel19: TcxLabel
        Left = 8
        Top = 447
        AutoSize = False
        Caption = 'Index Path'
        Transparent = True
        Height = 17
        Width = 107
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 182
        Top = 65
        Hint = 
          'This field should only be populated if you are running Oracle on' +
          ' a Linux server and are using Insights'#39' search facility.  The fo' +
          'rmat is /mountname/share.  Do not add a / at the end.'
        DataBinding.DataField = 'DOC_SHARE_PATH'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 184
      end
      object cxLabel23: TcxLabel
        Left = 8
        Top = 66
        AutoSize = False
        Caption = 'Document Share Path'
        Properties.WordWrap = True
        Transparent = True
        Height = 20
        Width = 164
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 182
        Top = 146
        Hint = 
          'This field should only be populated if you are running Oracle on' +
          ' a Linux server and are using Axioms'#39' search facility.  The form' +
          'at is /mountname/share.  Do not add a / at the end.'
        DataBinding.DataField = 'WKFLOW_SHARE_PATH'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 184
      end
      object cxLabel24: TcxLabel
        Left = 8
        Top = 146
        AutoSize = False
        Caption = 'Workflow Doc Share Path'
        Properties.WordWrap = True
        Transparent = True
        Height = 20
        Width = 169
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 182
        Top = 92
        DataBinding.DataField = 'DEFAULT_DOC_EXT'
        DataBinding.DataSource = dsSystemFile
        Properties.Items.Strings = (
          'doc'
          'docx')
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 66
      end
      object cxLabel25: TcxLabel
        Left = 8
        Top = 93
        AutoSize = False
        Caption = 'Default Document Ext'
        Properties.WordWrap = True
        Transparent = True
        Height = 21
        Width = 150
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 182
        Top = 119
        Hint = 
          'This field should only be populated if you are running Oracle on' +
          ' a Linux server and are using Axioms'#39' search facility.  The form' +
          'at is /mountname/share.  Do not add a / at the end.'
        DataBinding.DataField = 'WORD_SAVE_MACRO'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 184
      end
      object cxLabel27: TcxLabel
        Left = 8
        Top = 120
        AutoSize = False
        Caption = 'Word Macro Name'
        Properties.WordWrap = True
        Transparent = True
        Height = 20
        Width = 159
      end
      object cxLabel28: TcxLabel
        Left = 8
        Top = 173
        Hint = 
          'This should be a directory only entry.  Please do not include Fi' +
          'le name or File name rules.'
        AutoSize = False
        Caption = 'Documents Default Directory'
        Properties.WordWrap = True
        Transparent = True
        Height = 23
        Width = 169
      end
      object cxDBButtonEdit1: TcxDBButtonEdit
        Left = 182
        Top = 173
        Hint = 
          'INCLUDE only the path.'#13#10#13#10'Macros Available'#13#10'[USERHOME] = User Ho' +
          'me Directory'#13#10'[NMATTER] = Matter Number'#13#10'[TEMPDIR] = User'#39's Temp' +
          ' Directory'#13#10'[TEMPFILE] = Make a Temporary File'#13#10'[DATE] = System ' +
          'Date'#13#10'[TIME] = System Time'#13#10'[DATETIME] = System Date and Time'#13#10'[' +
          'CLIENTID] = Client Code'#13#10'[FILEID]=File Number'#13#10'[AUTHOR]=Matter A' +
          'uthor'#13#10'[USERINITIALS]=Axiom User Code '#13#10'[DOCSEQUENCE]=Document N' +
          'umber'#13#10'[DOCDESCR]=Document Name/Document Description'
        DataBinding.DataField = 'DRAG_DEFAULT_DIRECTORY'
        DataBinding.DataSource = dsSystemFile
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424DD60200000000000036000000280000000E0000000C000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF808080FF000000FFFF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFF000000FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00
              FF00000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00000000FFFFFF
              FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFF00FF00FF00FF00FF00FF00000000FFFF00FF00000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Width = 276
      end
      object cxDBCheckBox21: TcxDBCheckBox
        Left = 296
        Top = 37
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 16
        Transparent = True
      end
      object cxDBCheckBox22: TcxDBCheckBox
        Left = 9
        Top = 207
        Hint = 
          'By appending the document sequence you can ensure that documents' +
          ' will be unique.  There is less likelyhood of document being ove' +
          'rwritten.'
        AutoSize = False
        Caption = 'Append Document Sequence to Document Name'
        DataBinding.DataField = 'doc_seq_append'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 17
        Transparent = True
        Height = 37
        Width = 189
      end
      object cxGroupBox6: TcxGroupBox
        Left = 9
        Top = 254
        Caption = 'Default Profile settings'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 18
        Height = 73
        Width = 449
        object Label46: TLabel
          Left = 4
          Top = 19
          Width = 48
          Height = 15
          Caption = 'Category'
        end
        object Label47: TLabel
          Left = 4
          Top = 46
          Width = 70
          Height = 15
          Caption = 'Classification'
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 173
          Top = 17
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
          Width = 270
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 173
          Top = 43
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
          Width = 270
        end
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 182
        Top = 333
        DataBinding.DataField = 'DFLT_DOC_LIST'
        DataBinding.DataSource = dsSystemFile
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 19
        Width = 275
      end
      object cxLabel30: TcxLabel
        Left = 9
        Top = 334
        Hint = 
          'Default Doc Path. Used for saving documets where there is not se' +
          't naming convention such as Contact/Client documents.'
        AutoSize = False
        Caption = 'Default Doc Path'
        Transparent = True
        Height = 17
        Width = 138
      end
      object cxDBButtonEdit2: TcxDBButtonEdit
        Left = 182
        Top = 361
        Hint = 
          'INCLUDE path and file name.'#13#10#13#10'Macros Available'#13#10'[USERHOME] = Us' +
          'er Home Directory'#13#10'[NMATTER] = Matter Number'#13#10'[TEMPDIR] = User'#39's' +
          ' Temp Directory'#13#10'[TEMPFILE] = Make a Temporary File'#13#10'[DATE] = Sy' +
          'stem Date'#13#10'[TIME] = System Time'#13#10'[DATETIME] = System Date and Ti' +
          'me'#13#10'[CLIENTID] = Client Code'#13#10'[FILEID]=File Number'#13#10'[AUTHOR]=Mat' +
          'ter Author'#13#10'[USERINITIALS]=Axiom User Code '#13#10'[DOCSEQUENCE]=Docum' +
          'ent Number'#13#10'[DOCDESCR]=Document Name/Document Description'
        DataBinding.DataField = 'DFLT_MERGE_DATA_PATH'
        DataBinding.DataSource = dsSystemFile
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424DD60200000000000036000000280000000E0000000C000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF808080FF000000FFFF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFF000000FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00
              FF00000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00000000FFFFFF
              FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFF00FF00FF00FF00FF00FF00000000FFFF00FF00000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 21
        Width = 276
      end
      object cxDBCheckBox52: TcxDBCheckBox
        Left = 7
        Top = 387
        AutoSize = False
        Caption = 'Use Email Subject as document name '
        DataBinding.DataField = 'USE_MAIL_SUBJECT_AS_NAME'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 22
        Transparent = True
        Height = 31
        Width = 191
      end
      object btneditSanDir: TcxDBButtonEdit
        Left = 182
        Top = 420
        DataBinding.DataField = 'SCANNED_DOC_DIR'
        DataBinding.DataSource = dsSystemFile
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424DD60200000000000036000000280000000E0000000C000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF808080FF000000FFFF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFF000000FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00
              FF00000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00000000FFFFFF
              FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFF00FF00FF00FF00FF00FF00000000FFFF00FF00000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = btneditSanDirPropertiesButtonClick
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 23
        Width = 276
      end
      object cxLabel40: TcxLabel
        Left = 9
        Top = 474
        AutoSize = False
        Caption = 'Conflict Document Path'
        Transparent = True
        Height = 17
        Width = 149
      end
      object cxDBButtonEdit3: TcxDBButtonEdit
        Left = 183
        Top = 473
        DataBinding.DataField = 'CONFLICT_DOC_FOLDER'
        DataBinding.DataSource = dsSystemFile
        Properties.Buttons = <
          item
            ContentAlignment = taRightJustify
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424DD60200000000000036000000280000000E0000000C000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF808080FF000000FFFF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFF000000FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00
              FF00000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00000000FFFFFF
              FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFF00FF00FF00FF00FF00FF00000000FFFF00FF00000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
            Stretchable = False
          end>
        Properties.OnButtonClick = btnedtISYSIndexPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 25
        Width = 275
      end
    end
    object tabWorkflow: TcxTabSheet
      Caption = 'WorkFlow Defaults'
      ImageIndex = 7
      object cxDBCheckBox15: TcxDBCheckBox
        Left = 20
        Top = 16
        AutoSize = False
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
        Height = 20
        Width = 321
      end
      object cxDBCheckBox16: TcxDBCheckBox
        Left = 20
        Top = 41
        AutoSize = False
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
        Height = 20
        Width = 321
      end
      object cxLabel1: TcxLabel
        Left = 22
        Top = 74
        AutoSize = False
        Caption = 'Workflow Task default:'
        Transparent = True
        Height = 16
        Width = 159
      end
      object cmbWorkflowTaskDefault: TcxDBLookupComboBox
        Left = 243
        Top = 72
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 193
      end
      object cxLabel15: TcxLabel
        Left = 22
        Top = 101
        AutoSize = False
        Caption = 'Default Matter Precedent Workflow'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.WordWrap = True
        Transparent = True
        Height = 21
        Width = 206
      end
      object cmbMatterWorkFlow: TcxDBLookupComboBox
        Left = 243
        Top = 100
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
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 193
      end
      object cxDBCheckBox8: TcxDBCheckBox
        Left = 20
        Top = 126
        AutoSize = False
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
        Height = 20
        Width = 321
      end
      object cxDBCheckBox9: TcxDBCheckBox
        Left = 20
        Top = 150
        AutoSize = False
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
        Height = 20
        Width = 321
      end
      object cxDBCheckBox17: TcxDBCheckBox
        Left = 20
        Top = 202
        AutoSize = False
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
        TabOrder = 9
        Height = 20
        Width = 321
      end
      object cxDBCheckBox20: TcxDBCheckBox
        Left = 20
        Top = 226
        AutoSize = False
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
        TabOrder = 10
        Height = 46
        Width = 321
      end
      object cxDBCheckBox23: TcxDBCheckBox
        Left = 20
        Top = 280
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
        TabOrder = 11
        Height = 35
        Width = 321
      end
      object cxDBCheckBox24: TcxDBCheckBox
        Left = 20
        Top = 171
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
        TabOrder = 8
        Height = 29
        Width = 321
      end
      object cxDBCheckBox61: TcxDBCheckBox
        Left = 22
        Top = 320
        AutoSize = False
        Caption = 'Allow completion of Critical Date Tasks'
        DataBinding.DataField = 'ALLOW_CRITICAL_DATE_COMPLETION'
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
        TabOrder = 12
        Height = 19
        Width = 320
      end
      object cxDBCheckBox73: TcxDBCheckBox
        Left = 480
        Top = 288
        Caption = 'cxDBCheckBox73'
        TabOrder = 14
      end
      object cxDBCheckBox74: TcxDBCheckBox
        Left = 22
        Top = 345
        AutoSize = False
        Caption = 'Set Document Description as File Name'
        DataBinding.DataSource = dsSystemFile
        Properties.Alignment = taRightJustify
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        TabOrder = 13
        Height = 23
        Width = 319
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'SMS Settings'
      ImageIndex = 10
      object Label41: TLabel
        Left = 23
        Top = 26
        Width = 30
        Height = 15
        Caption = 'U.R.L.'
      end
      object Label42: TLabel
        Left = 23
        Top = 56
        Width = 56
        Height = 15
        Caption = 'Username:'
      end
      object Label43: TLabel
        Left = 23
        Top = 81
        Width = 53
        Height = 15
        Caption = 'Password:'
      end
      object Label44: TLabel
        Left = 23
        Top = 109
        Width = 59
        Height = 15
        Caption = 'Mobile No:'
      end
      object Button1: TButton
        Left = 89
        Top = 138
        Width = 87
        Height = 24
        Caption = 'Test Settings'
        Enabled = False
        TabOrder = 0
        Visible = False
        OnClick = Button1Click
      end
      object DBEdit12: TDBEdit
        Left = 90
        Top = 23
        Width = 579
        Height = 23
        DataField = 'SMS_URL'
        DataSource = dsSystemFile
        TabOrder = 1
      end
      object DBEdit13: TDBEdit
        Left = 90
        Top = 51
        Width = 112
        Height = 23
        DataField = 'SMS_USER'
        DataSource = dsSystemFile
        TabOrder = 2
      end
      object DBEdit14: TDBEdit
        Left = 90
        Top = 79
        Width = 112
        Height = 23
        DataField = 'SMS_PASSWORD'
        DataSource = dsSystemFile
        PasswordChar = '*'
        TabOrder = 3
      end
      object DBEdit15: TDBEdit
        Left = 90
        Top = 107
        Width = 112
        Height = 23
        DataField = 'SMS_ORIGINATOR'
        DataSource = dsSystemFile
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 239
        Top = 49
        Width = 186
        Height = 56
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clInfoBk
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object Label45: TLabel
          Left = 5
          Top = 4
          Width = 171
          Height = 47
          AutoSize = False
          Caption = 
            'SMS is only supported on the SMSGlobal SMS gateway.  http:\\www.' +
            'smsglobal.com'
          ShowAccelChar = False
          WordWrap = True
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'InfoTrack Details'
      ImageIndex = 12
      object Label64: TLabel
        Left = 23
        Top = 20
        Width = 42
        Height = 15
        Caption = 'Website'
      end
      object Label65: TLabel
        Left = 23
        Top = 47
        Width = 53
        Height = 15
        Caption = 'Username'
      end
      object Label66: TLabel
        Left = 23
        Top = 74
        Width = 50
        Height = 15
        Caption = 'Password'
      end
      object Label67: TLabel
        Left = 23
        Top = 101
        Width = 76
        Height = 15
        Caption = 'Staging Folder'
      end
      object Label73: TLabel
        Left = 23
        Top = 128
        Width = 84
        Height = 15
        Caption = 'Default Creditor'
      end
      object Label76: TLabel
        Left = 23
        Top = 156
        Width = 89
        Height = 15
        Caption = 'UNC/Server Path'
      end
      object Label77: TLabel
        Left = 502
        Top = 148
        Width = 256
        Height = 30
        Caption = 
          'This entry should be either a UNC or a drive that is visible to ' +
          'the server. NOT a mapped drive.'
        WordWrap = True
      end
      object DBEdit22: TDBEdit
        Left = 127
        Top = 17
        Width = 579
        Height = 23
        DataField = 'INFOTRACK_URL'
        DataSource = dsSystemFile
        TabOrder = 0
      end
      object DBEdit23: TDBEdit
        Left = 127
        Top = 44
        Width = 242
        Height = 23
        DataField = 'INFOTRACK_USER'
        DataSource = dsSystemFile
        TabOrder = 1
      end
      object DBEdit24: TDBEdit
        Left = 127
        Top = 71
        Width = 112
        Height = 23
        DataField = 'INFOTRACK_PASSWORD'
        DataSource = dsSystemFile
        PasswordChar = '*'
        TabOrder = 2
      end
      object DBEdit25: TDBEdit
        Left = 127
        Top = 98
        Width = 348
        Height = 23
        DataField = 'INFOTRACK_STAGING_FLDR'
        DataSource = dsSystemFile
        TabOrder = 3
      end
      object btnCreditorSearch: TBitBtn
        Left = 475
        Top = 125
        Width = 28
        Height = 22
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 4
        OnClick = btnCreditorSearchClick
      end
      object edtCreditor: TEdit
        Left = 127
        Top = 125
        Width = 348
        Height = 23
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit28: TDBEdit
        Left = 127
        Top = 153
        Width = 348
        Height = 23
        DataField = 'INFOTRACK_DEFAULT_DIRECTORY'
        DataSource = dsSystemFile
        TabOrder = 6
      end
    end
  end
  object qrySystemFile: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT S.*, S.ROWID FROM SYSTEMFILE S')
    CachedUpdates = True
    AfterOpen = qrySystemFileAfterOpen
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
    Left = 711
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OWNER'
        Value = nil
      end>
  end
  object dsSettings: TUniDataSource
    DataSet = qrySettings
    Left = 747
    Top = 350
  end
  object qryLibraries: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT S.*, S.ROWID FROM SETTINGS S'
      'WHERE S.EMP = '#39'sys'#39
      '  AND S.OWNER = '#39'APPLICATION'#39)
    Left = 616
    Top = 464
  end
  object dsLibraries: TUniDataSource
    DataSet = qryLibraries
    Left = 602
    Top = 478
  end
  object dsDataFieldMapping: TUniDataSource
    DataSet = qryDataFieldMapping
    Left = 1101
    Top = 490
  end
  object qryDataFieldMapping: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.AXIOMCODE as AXIOMCODE,D.FOREIGNCODE, D.ROWID'
      'FROM DATAFIELDMAPPING D'
      'ORDER BY 1')
    BeforeInsert = qrySettingsBeforeInsert
    Left = 1019
    Top = 155
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
    Left = 1171
    Top = 253
  end
  object qryWorkflowTypes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM WORKFLOWTYPE')
    Left = 659
    Top = 302
  end
  object qGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PBGROUP ORDER BY CATEGORY')
    Left = 1178
    Top = 330
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
      'and code is not null'
      'and acct = :entity')
    Left = 878
    Top = 132
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
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
    Left = 1174
    Top = 402
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
    Left = 888
    Top = 72
    PixelsPerInch = 96
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
          ItemName = 'btnOK'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSave'
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
    object btnOK: TdxBarButton
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
    object btnSave: TdxBarButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
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
    Left = 1097
    Top = 104
  end
  object dsGlComponents: TUniDataSource
    DataSet = qryGlComponents
    Left = 1091
    Top = 415
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
    Left = 1172
    Top = 172
    Data = {
      04000200070048656164696E6701001400000000000400747970650100140000
      000000000000000000}
  end
  object dsComponentTypes: TUniDataSource
    DataSet = vtComponentTypes
    Left = 1010
    Top = 104
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1086
    Top = 334
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
    Left = 704
    Top = 288
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
    Left = 576
    Top = 291
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
    Left = 457
    Top = 538
    Data = {
      0400020005004D6F6E7468030000000000000005004465736372010024000000
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
    Left = 618
    Top = 330
  end
  object dlFile: TOpenDialog
    Filter = 'JPG|*.jpg|HTML|*.html'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Title = 'Select document template'
    Left = 544
    Top = 349
  end
  object dlDocTemplate: TcxShellBrowserDialog
    LookAndFeel.NativeStyle = True
    Left = 569
    Top = 411
  end
  object OpenDialog: TOpenDialog
    Filter = 'ISYS Index|*.ixa'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 874
    Top = 348
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
    Left = 910
    Top = 291
    PixelsPerInch = 96
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
    Left = 911
    Top = 390
  end
  object dsDataForm: TUniDataSource
    DataSet = qryDataForm
    Left = 874
    Top = 402
  end
  object qrySundries: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from sundrytype'
      'where'
      'active = '#39'Y'#39)
    Left = 491
    Top = 521
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
    Left = 441
    Top = 288
  end
  object dsPRECCLASSIFICATION: TUniDataSource
    DataSet = qryPRECCLASSIFICATION
    Left = 257
    Top = 491
  end
  object qryBankClearance: TUniQuery
    KeyFields = 'code'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select BANK_CLEARANCE_DAYS.*, BANK_CLEARANCE_DAYS.rowid'
      'from'
      'BANK_CLEARANCE_DAYS')
    Left = 781
    Top = 226
  end
  object dsBankClearance: TUniDataSource
    DataSet = qryBankClearance
    Left = 865
    Top = 461
  end
  object qryMatterStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from matterstatus')
    Left = 1077
    Top = 210
  end
  object dsMatterStatus: TUniDataSource
    DataSet = qryMatterStatus
    Left = 1058
    Top = 261
  end
  object qryFeeRate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT F.*, F.ROWID'
      'FROM FEECODE F '
      'ORDER BY F.CODE')
    Left = 599
    Top = 537
  end
  object dsFeeRate: TUniDataSource
    DataSet = qryFeeRate
    Left = 666
    Top = 540
  end
  object popMenuMatterMacroList: TPopupMenu
    OnPopup = popMenuMatterMacroListPopup
    Left = 695
    Top = 209
  end
  object popMenuBillMacroList: TPopupMenu
    OnPopup = popMenuBillMacroListPopup
    Left = 562
    Top = 204
  end
end
