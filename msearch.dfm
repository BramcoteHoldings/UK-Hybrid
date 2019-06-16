object frmMatterSearch: TfrmMatterSearch
  Left = 919
  Top = 306
  Width = 1304
  Height = 731
  AutoScroll = True
  Caption = 'Matter Search'
  Color = clBtnFace
  Constraints.MinHeight = 548
  Constraints.MinWidth = 702
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label33: TLabel
    Left = 8
    Top = 27
    Width = 24
    Height = 15
    Caption = 'Date'
    Transparent = True
  end
  object sbarFilter: TStatusBar
    Left = 0
    Top = 669
    Width = 1288
    Height = 23
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'Matters'
        Width = 100
      end
      item
        Text = 'Filter'
        Width = 50
      end>
  end
  object pageSearch: TcxPageControl
    Left = 0
    Top = 53
    Width = 1288
    Height = 616
    Align = alClient
    TabOrder = 3
    Properties.ActivePage = tabGrid
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    OnChange = pageSearchChange
    ClientRectBottom = 612
    ClientRectLeft = 4
    ClientRectRight = 1284
    ClientRectTop = 26
    object tabGrid: TcxTabSheet
      Caption = '&Matters'
      ImageIndex = 0
      OnShow = tabGridShow
      object dbgrMatters: TcxGrid
        Left = 0
        Top = 0
        Width = 1280
        Height = 542
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object vMatters: TcxGridDBTableView
          OnDblClick = dbgrMatters1DblClick
          Navigator.Buttons.CustomButtons = <>
          OnCanSelectRecord = vMattersCanSelectRecord
          OnCustomDrawCell = vMattersCustomDrawCell
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsMatters
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'NMATTER'
          DataController.MasterKeyFieldNames = 'NMATTER'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 21
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          Styles.Content = styDebtorStatus
          Styles.ContentOdd = styBand
          Styles.OnGetContentStyle = vMattersStylesGetContentStyle
          Styles.Header = styHeader
          OnColumnHeaderClick = vMattersColumnHeaderClick
          object vMattersPARENT: TcxGridDBColumn
            DataBinding.FieldName = 'PARENT'
            Visible = False
            VisibleForCustomization = False
          end
          object vMattersTITLE: TcxGridDBColumn
            Caption = 'Client'
            DataBinding.FieldName = 'TITLE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 85
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 50
          end
          object vMattersFILEID: TcxGridDBColumn
            Caption = 'Matter No'
            DataBinding.FieldName = 'FILEID'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 52
          end
          object vMattersSHORTDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'SHORTDESCR'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 60
            Properties.ReadOnly = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 160
          end
          object vMattersPARTNER: TcxGridDBColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'PARTNER'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 3
            Properties.ReadOnly = False
            Options.Filtering = False
            Styles.OnGetHeaderStyle = vMattersPARTNERStylesGetHeaderStyle
            Width = 76
          end
          object vMattersAUTHOR: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTHOR'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 3
            Properties.ReadOnly = False
            MinWidth = 15
            Options.Filtering = False
            Styles.OnGetHeaderStyle = vMattersAUTHORStylesGetHeaderStyle
            Width = 33
          end
          object vMattersCONTROLLER: TcxGridDBColumn
            Caption = 'Controller'
            DataBinding.FieldName = 'CONTROLLER'
            MinWidth = 15
          end
          object vMattersWIP: TcxGridDBColumn
            DataBinding.FieldName = 'WIP'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object vMattersDEBTORS: TcxGridDBColumn
            Caption = 'Debtors'
            DataBinding.FieldName = 'DEBTORS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object vMattersTRUST: TcxGridDBColumn
            Caption = 'Trust'
            DataBinding.FieldName = 'TRUST'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object vMattersTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 5
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 59
          end
          object vMattersCLIENTID: TcxGridDBColumn
            Caption = 'Client ID'
            DataBinding.FieldName = 'CLIENTID'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 35
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 61
          end
          object vMattersARCHIVEBOX: TcxGridDBColumn
            Caption = 'Box'
            DataBinding.FieldName = 'ARCHIVEBOX'
            Options.Filtering = False
            Width = 62
          end
          object vMattersARCHIVENUM: TcxGridDBColumn
            Caption = 'Archived/Closed No'
            DataBinding.FieldName = 'ARCHIVENUM'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 59
          end
          object vMattersARCHIVEREVIEW: TcxGridDBColumn
            Caption = 'Review Date'
            DataBinding.FieldName = 'ARCHIVEREVIEW'
            Options.Filtering = False
            Width = 57
          end
          object vMattersARCHIVEDEST: TcxGridDBColumn
            Caption = 'Destroy Date'
            DataBinding.FieldName = 'ARCHIVEDEST'
            Options.Filtering = False
            Width = 59
          end
          object vMattersSTATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'DESCR'
              end>
            Properties.ListSource = dsMatterStatus
            Options.Filtering = False
            Width = 29
          end
          object vMattersDESCRIPTION: TcxGridDBColumn
            Caption = 'Debtor Status'
            DataBinding.FieldName = 'DESCRIPTION'
            MinWidth = 80
            Options.Filtering = False
            Width = 90
          end
          object vMattersARCHVLOCN: TcxGridDBColumn
            Caption = 'Location'
            DataBinding.FieldName = 'ARCHVLOCN'
            MinWidth = 85
            Options.Filtering = False
            Width = 101
          end
          object vMattersBILL_AMOUNT: TcxGridDBColumn
            Caption = 'Bill Target'
            DataBinding.FieldName = 'BILL_AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 50
          end
          object vMattersLONGDESCR: TcxGridDBColumn
            Caption = 'Long Description'
            DataBinding.FieldName = 'LONGDESCR'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 400
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
            Width = 1169
          end
          object vMattersNMATTER: TcxGridDBColumn
            DataBinding.FieldName = 'NMATTER'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 42
          end
          object vMattersSUBTYPE: TcxGridDBColumn
            Caption = 'Sub Type'
            DataBinding.FieldName = 'SUBTYPE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 52
          end
          object vMattersJURISDICTION: TcxGridDBColumn
            DataBinding.FieldName = 'JURISDICTION'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 52
          end
          object vMattersMATTERSTATUS2: TcxGridDBColumn
            DataBinding.FieldName = 'MATTERSTATUS2'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 60
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 160
          end
          object vMattersROW_COLOUR: TcxGridDBColumn
            DataBinding.FieldName = 'ROW_COLOUR'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object vMattersRESTRICT_ACCESS: TcxGridDBColumn
            DataBinding.FieldName = 'RESTRICT_ACCESS'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object tvMatterArch: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsMatterArch
          DataController.DetailKeyFieldNames = 'NMATTER'
          DataController.KeyFieldNames = 'NMATTER'
          DataController.MasterKeyFieldNames = 'NMATTER'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          object tvMatterArchCREATED: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'CREATED'
          end
          object tvMatterArchBARCODE: TcxGridDBColumn
            DataBinding.FieldName = 'BARCODE'
          end
          object tvMatterArchFOLDER_DTLS: TcxGridDBColumn
            Caption = 'Folder Details'
            DataBinding.FieldName = 'FOLDER_DTLS'
          end
          object tvMatterArchARCHIVEBOX: TcxGridDBColumn
            Caption = 'Box'
            DataBinding.FieldName = 'ARCHIVEBOX'
          end
          object tvMatterArchBOX_DESTROY_DATE: TcxGridDBColumn
            Caption = 'Destroy Date'
            DataBinding.FieldName = 'BOX_DESTROY_DATE'
          end
          object tvMatterArchAUTHORISED_BY: TcxGridDBColumn
            Caption = 'Authorised By'
            DataBinding.FieldName = 'AUTHORISED_BY'
          end
          object tvMatterArchCHECKED_BY_1: TcxGridDBColumn
            Caption = 'Checked by 1'
            DataBinding.FieldName = 'CHECKED_BY_1'
          end
          object tvMatterArchCHECKED_BY_2: TcxGridDBColumn
            Caption = 'Checked by 2'
            DataBinding.FieldName = 'CHECKED_BY_2'
          end
          object tvMatterArchARCHVLOCN: TcxGridDBColumn
            Caption = 'Location'
            DataBinding.FieldName = 'ARCHVLOCN'
          end
          object tvMatterArchCREATED_BY: TcxGridDBColumn
            Caption = 'By'
            DataBinding.FieldName = 'CREATED_BY'
          end
          object tvMatterArchNMATTER: TcxGridDBColumn
            DataBinding.FieldName = 'NMATTER'
            Visible = False
            VisibleForCustomization = False
          end
          object tvMatterArchNARCH_LOC: TcxGridDBColumn
            DataBinding.FieldName = 'NARCH_LOC'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object dbgrMattersLevel1: TcxGridLevel
          GridView = vMatters
          object dbgrMattersLevel2: TcxGridLevel
            GridView = tvMatterArch
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 542
        Width = 1280
        Height = 44
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          1280
          44)
        object Label9: TLabel
          Left = 2
          Top = 0
          Width = 125
          Height = 15
          Anchors = [akLeft, akBottom]
          Caption = 'Search for Client Name '
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label8: TLabel
          Left = 150
          Top = 0
          Width = 130
          Height = 15
          Hint = 
            'Searches Matter Number, Matter Description, Client Code, Client ' +
            'Lastname and Client Search key'
          Anchors = [akLeft, akBottom]
          Caption = 'Search Matter and Client'
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object lblArchiveSearch: TLabel
          Left = 651
          Top = 1
          Width = 96
          Height = 15
          Caption = 'Search for Archive'
          Transparent = True
          Visible = False
        end
        object Label39: TLabel
          Left = 490
          Top = 1
          Width = 53
          Height = 15
          Caption = 'Barcode #'
          Transparent = True
        end
        object tbClientSearch: TcxTextEdit
          Left = 3
          Top = 16
          Anchors = [akLeft, akBottom]
          ParentShowHint = False
          Properties.OnChange = tbClientSearchChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 131
        end
        object tbClientMatterSearch: TcxTextEdit
          Left = 149
          Top = 16
          Hint = 
            'Searches Matter Number, Matter description, Client Code, Client ' +
            'Lastname and Client Search key'
          Anchors = [akLeft, akBottom]
          ParentShowHint = False
          Properties.OnChange = tbClientSearchChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 191
        end
        object cbShowChildren: TcxCheckBox
          Left = 348
          Top = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Include Other-Names'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnClick = EnableTimer
        end
        object tbArchiveSearch: TEdit
          Left = 651
          Top = 16
          Width = 105
          Height = 23
          TabOrder = 3
          Visible = False
          OnChange = EnableTimer
        end
        object bnOk: TcxButton
          Left = 1433
          Top = 15
          Width = 81
          Height = 27
          Anchors = [akRight, akBottom]
          Caption = '&OK'
          Default = True
          LookAndFeel.NativeStyle = True
          ModalResult = 1
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D560A00000000000036000000280000002400000012000000010020000000
            000000000000C40E0000C40E0000000000000000000000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000FFFFFFFF00808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000800000FF800000FF0080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000800000FF008000FF0080
            00FF800000FF0080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080008080
            80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000808080FF008080000080800000808000008080008080
            80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
            8000008080000080800000808000800000FF008000FF008000FF008000FF0080
            00FF008000FF008000FF800000FF008080000080800000808000008080000080
            80000080800000808000008080000080800000808000808080FF008080000080
            800000808000008080000080800000808000808080FFFFFFFFFF008080000080
            8000008080000080800000808000008080000080800000808000800000FF0080
            00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
            00FF008080000080800000808000008080000080800000808000008080000080
            8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
            800000808000808080FFFFFFFFFF008080000080800000808000008080000080
            80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
            00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
            800000808000008080000080800000808000808080FFFFFFFFFF008080008080
            80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
            800000808000008080000080800000808000008080000080800000FF00FF0080
            00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
            00FF800000FF0080800000808000008080000080800000808000008080000080
            8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
            FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
            800000808000008080000080800000FF00FF0080800000808000008080000080
            80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
            80000080800000808000008080000080800000808000808080FF008080000080
            8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
            80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000008080000080800000FF00FF0080
            00FF008000FF008000FF800000FF008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
            00FF008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
            800000808000808080FFFFFFFFFF008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
            FFFF008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000FF00FF008000FF0080
            00FF008000FF800000FF00808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080008080
            80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000808080FFFFFFFFFF008080008080
            80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000008080000080800000FF
            00FF008000FF008000FF00808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000FF00FF00808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000808080FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000}
          OptionsImage.NumGlyphs = 2
          OptionsImage.Spacing = 5
          TabOrder = 4
        end
        object bnCancel: TcxButton
          Left = 1517
          Top = 15
          Width = 80
          Height = 27
          Action = aFileExit
          Anchors = [akRight, akBottom]
          LookAndFeel.NativeStyle = True
          ModalResult = 2
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D560A00000000000036000000280000002400000012000000010020000000
            000000000000C40E0000C40E0000000000000000000000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000808080FF808080FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000FFFFFFFF0080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
            8000008080000000FFFF808080FF008080000080800000808000008080000080
            8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
            800000808000008080000080800000808000FFFFFFFF00808000008080000080
            8000008080000080800000808000008080000000FFFF000080FF000080FF0000
            80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
            80FF008080000080800000808000008080000080800000808000808080FFFFFF
            FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
            80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
            80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
            FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
            80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
            FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
            800000808000008080000080800000808000008080000000FFFF000080FF0000
            80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
            80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
            FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
            80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
            800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
            80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
            8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
            8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
            8000008080000080800000808000008080000080800000808000008080000000
            FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
            8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
            800000808000008080000080800000808000000080FF000080FF000080FF0000
            80FF000080FF808080FF00808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
            800000808000008080000080800000808000808080FF00808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
            80FF008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
            80FF000080FF808080FF00808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000808080FF0080
            8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
            80000080800000808000008080000080800000808000008080000000FFFF0000
            80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000808080FF00808000008080000080800000808000008080008080
            80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
            8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
            FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
            800000808000008080000080800000808000808080FF00808000008080000080
            8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
            800000808000008080000080800000808000008080000000FFFF000080FF0000
            80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
            80FF808080FF0080800000808000008080000080800000808000008080008080
            80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
            800000808000808080FFFFFFFFFF008080000080800000808000008080000080
            800000808000008080000000FFFF000080FF0080800000808000008080000080
            8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
            8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
            80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
            FFFF008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000008080000000FFFF0000
            80FF0000FFFF0080800000808000008080000080800000808000008080000080
            8000808080FF808080FF00808000008080000080800000808000008080008080
            80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000808080FF808080FF808080FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000}
          OptionsImage.NumGlyphs = 2
          OptionsImage.Spacing = 5
          TabOrder = 5
        end
        object edtBarcodeSearch: TcxTextEdit
          Left = 491
          Top = 16
          Properties.OnChange = edtBarcodeSearchPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 138
        end
      end
    end
    object tabFilters: TcxTabSheet
      Caption = '&Filter'
      ImageIndex = 1
      OnShow = tabFiltersShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        1280
        586)
      object Label14: TLabel
        Left = 30
        Top = 542
        Width = 90
        Height = 15
        Anchors = [akLeft, akBottom]
        Caption = '&Search for Client '
        FocusControl = edtClientSearch
        Transparent = True
        ExplicitTop = 377
      end
      object Label21: TLabel
        Left = 215
        Top = 542
        Width = 74
        Height = 15
        Anchors = [akLeft, akBottom]
        Caption = 'S&earch for File'
        FocusControl = edtFileSearch
        Transparent = True
        ExplicitTop = 377
      end
      object cbShowRecentlyAccessed: TcxCheckBox
        Left = 512
        Top = 378
        Caption = 'Recently accessed Matters'
        Properties.MultiLine = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnClick = FilterItemChange
        Width = 114
      end
      object edtClientSearch: TEdit
        Left = 30
        Top = 557
        Width = 130
        Height = 23
        Anchors = [akLeft, akBottom]
        TabOrder = 1
        OnChange = FilterItemChange
      end
      object edtFileSearch: TEdit
        Left = 215
        Top = 557
        Width = 103
        Height = 23
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = FilterItemChange
      end
      object gbOpened: TcxGroupBox
        Left = 511
        Top = 6
        Caption = 'Opened'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 71
        Width = 172
        object Label19: TLabel
          Left = 9
          Top = 18
          Width = 28
          Height = 15
          Caption = 'Since'
          Transparent = True
        end
        object Label20: TLabel
          Left = 9
          Top = 45
          Width = 34
          Height = 15
          Caption = 'Before'
          Transparent = True
        end
        object dtpOpenedSince: TDateTimePicker
          Left = 74
          Top = 15
          Width = 90
          Height = 23
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 0
          OnChange = FilterItemChange
        end
        object dtpOpenedBefore: TDateTimePicker
          Left = 74
          Top = 41
          Width = 90
          Height = 23
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 1
          OnChange = FilterItemChange
        end
        object chkOpenedSince: TCheckBox
          Left = 56
          Top = 17
          Width = 16
          Height = 18
          TabOrder = 2
          OnClick = chkOpenedSinceClick
        end
        object chkOpenedBefore: TCheckBox
          Left = 56
          Top = 42
          Width = 16
          Height = 19
          TabOrder = 3
          OnClick = chkOpenedBeforeClick
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 511
        Top = 77
        Caption = 'Search Option'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 143
        Width = 172
        object chkEntity: TcxCheckBox
          Left = 17
          Top = 119
          Caption = 'Only current entity'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnClick = FilterItemChange
        end
        object rgMatterOptions: TcxRadioGroup
          Left = 11
          Top = 15
          Caption = 'Matters'
          Properties.Items = <
            item
              Caption = 'Open'
            end
            item
              Caption = 'Closed'
            end
            item
              Caption = 'All'
            end
            item
              Caption = 'Archived'
            end
            item
              Caption = 'Prospective'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnClick = rgMatterOptionsClick
          Height = 106
          Width = 150
        end
      end
      object gbCompleted: TcxGroupBox
        Left = 511
        Top = 221
        Caption = 'Completed'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Height = 73
        Width = 172
        object Label27: TLabel
          Left = 9
          Top = 23
          Width = 28
          Height = 15
          Caption = 'Since'
          Transparent = True
        end
        object Label28: TLabel
          Left = 9
          Top = 48
          Width = 34
          Height = 15
          Caption = 'Before'
          Transparent = True
        end
        object dtpCompletedSince: TDateTimePicker
          Left = 74
          Top = 18
          Width = 90
          Height = 23
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 0
          OnChange = FilterItemChange
        end
        object dtpCompletedBefore: TDateTimePicker
          Left = 74
          Top = 45
          Width = 90
          Height = 23
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 1
          OnChange = FilterItemChange
        end
        object chkCompletedSince: TCheckBox
          Left = 56
          Top = 20
          Width = 16
          Height = 18
          TabOrder = 2
          OnClick = chkCompletedSinceClick
        end
        object chkCompletedBefore: TCheckBox
          Left = 56
          Top = 46
          Width = 16
          Height = 19
          TabOrder = 3
          OnClick = chkCompletedBeforeClick
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 511
        Top = 302
        Caption = 'S.L.E. Date'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 78
        Width = 172
        object Label30: TLabel
          Left = 9
          Top = 25
          Width = 28
          Height = 15
          Caption = 'Since'
          Transparent = True
        end
        object Label29: TLabel
          Left = 9
          Top = 50
          Width = 34
          Height = 15
          Caption = 'Before'
          Transparent = True
        end
        object dtpSLESince: TDateTimePicker
          Left = 74
          Top = 20
          Width = 90
          Height = 23
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 0
          OnChange = FilterItemChange
        end
        object dtpSLEBefore: TDateTimePicker
          Left = 74
          Top = 46
          Width = 90
          Height = 23
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 1
          OnChange = FilterItemChange
        end
        object chkSLESince: TCheckBox
          Left = 55
          Top = 21
          Width = 16
          Height = 19
          TabOrder = 2
          OnClick = chkSLESinceClick
        end
        object chkSLEBefore: TCheckBox
          Left = 54
          Top = 48
          Width = 16
          Height = 18
          TabOrder = 3
          OnClick = chkSLEBeforeClick
        end
      end
      object gbBalances: TcxGroupBox
        Left = 315
        Top = 221
        Caption = 'Balances greater than'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 189
        Width = 191
        object Label10: TLabel
          Left = 5
          Top = 21
          Width = 89
          Height = 15
          Caption = 'Work in Progress'
          Transparent = True
        end
        object Label18: TLabel
          Left = 5
          Top = 162
          Width = 56
          Height = 15
          Caption = 'Clear Trust'
          Transparent = True
        end
        object lblTrust: TLabel
          Left = 5
          Top = 138
          Width = 26
          Height = 15
          Caption = 'Trust'
          Transparent = True
        end
        object Label15: TLabel
          Left = 5
          Top = 115
          Width = 92
          Height = 15
          Caption = 'Unbilled Sundries'
          Transparent = True
        end
        object Label13: TLabel
          Left = 5
          Top = 92
          Width = 55
          Height = 15
          Caption = 'Fees Billed'
          Transparent = True
        end
        object Label12: TLabel
          Left = 5
          Top = 69
          Width = 78
          Height = 15
          Caption = 'Disbursements'
          Transparent = True
        end
        object Label11: TLabel
          Left = 5
          Top = 46
          Width = 41
          Height = 15
          Caption = 'Debtors'
          Transparent = True
        end
        object neWIP: TNumberEdit
          Left = 115
          Top = 17
          Width = 70
          Height = 21
          Alignment = taRightJustify
          DecimalPlaces = 2
          DisplayFormat = dfCurrency
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
          TabOrder = 0
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object neDebtors: TNumberEdit
          Left = 115
          Top = 41
          Width = 70
          Height = 21
          Alignment = taRightJustify
          DecimalPlaces = 2
          DisplayFormat = dfCurrency
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
          TabOrder = 1
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object neDisb: TNumberEdit
          Left = 115
          Top = 65
          Width = 70
          Height = 21
          Alignment = taRightJustify
          DecimalPlaces = 2
          DisplayFormat = dfCurrency
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
          TabOrder = 2
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object neFeesBilled: TNumberEdit
          Left = 115
          Top = 89
          Width = 70
          Height = 21
          Alignment = taRightJustify
          DecimalPlaces = 2
          DisplayFormat = dfCurrency
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
          TabOrder = 3
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object neSund: TNumberEdit
          Left = 115
          Top = 111
          Width = 70
          Height = 21
          Alignment = taRightJustify
          DecimalPlaces = 2
          DisplayFormat = dfCurrency
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
          TabOrder = 4
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object neTrust: TNumberEdit
          Left = 115
          Top = 135
          Width = 70
          Height = 21
          Alignment = taRightJustify
          DecimalPlaces = 2
          DisplayFormat = dfCurrency
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
          TabOrder = 5
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object neClearTrust: TNumberEdit
          Left = 115
          Top = 159
          Width = 70
          Height = 21
          Alignment = taRightJustify
          DecimalPlaces = 2
          DisplayFormat = dfCurrency
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
          TabOrder = 6
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
      end
      object fraIncludes: TcxGroupBox
        Left = 8
        Top = 221
        Caption = 'Select Containing'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Height = 189
        Width = 303
        object Label5: TLabel
          Left = 9
          Top = 20
          Width = 60
          Height = 15
          Hint = 'Enter any part of a Description to filter by that description.'
          Caption = 'Description'
          Transparent = True
        end
        object Label23: TLabel
          Left = 9
          Top = 45
          Width = 94
          Height = 15
          Hint = 
            'Enter any part of the Reference number used by your Client to lo' +
            'cate matters using that reference.'
          Caption = 'Client'#39's Reference'
          Transparent = True
        end
        object Label16: TLabel
          Left = 9
          Top = 95
          Width = 42
          Height = 15
          Hint = 
            'Enter any part of the Contact Name to locate matters associated ' +
            'with that contact.'
          Caption = 'Contact'
          Transparent = True
        end
        object Label25: TLabel
          Left = 9
          Top = 117
          Width = 32
          Height = 15
          Hint = 
            'Enter any part of the Notes to locate matters containing that st' +
            'ring within the notes field.'
          Caption = 'Bill To'
          Transparent = True
        end
        object Label22: TLabel
          Left = 9
          Top = 140
          Width = 31
          Height = 15
          Hint = 
            'Enter any part of the Notes to locate matters containing that st' +
            'ring within the notes field.'
          Caption = 'Notes'
          Transparent = True
        end
        object Label7: TLabel
          Left = 8
          Top = 164
          Width = 62
          Height = 15
          Hint = 
            'Enter any part of the Notes to locate matters containing that st' +
            'ring within the notes field.'
          Caption = 'Client Code'
          Transparent = True
        end
        object tbDesc: TEdit
          Left = 155
          Top = 17
          Width = 136
          Height = 23
          TabOrder = 0
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object tbOPRef: TEdit
          Left = 155
          Top = 41
          Width = 136
          Height = 23
          TabOrder = 1
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object tbOtherParty: TEdit
          Left = 155
          Top = 65
          Width = 136
          Height = 23
          TabOrder = 2
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object tbContact: TEdit
          Left = 155
          Top = 89
          Width = 136
          Height = 23
          TabOrder = 3
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object edBillTo: TEdit
          Left = 155
          Top = 111
          Width = 136
          Height = 23
          TabOrder = 4
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object tbNotes: TEdit
          Left = 155
          Top = 135
          Width = 136
          Height = 23
          TabOrder = 5
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object tbClientCode: TEdit
          Left = 155
          Top = 159
          Width = 136
          Height = 23
          TabOrder = 6
          OnChange = FilterItemChange
          OnKeyPress = CheckReturn
        end
        object cmbOPCategory: TComboBox
          Left = 8
          Top = 65
          Width = 141
          Height = 23
          Style = csDropDownList
          Color = clMenu
          TabOrder = 7
          OnChange = cmbOPCategoryChange
          Items.Strings = (
            'Other Parties')
        end
      end
      object bnClearAll: TcxButton
        Left = 1193
        Top = 551
        Width = 81
        Height = 29
        Action = aClearAll
        Anchors = [akRight, akBottom]
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360800000000000036000000280000002000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF008080000080800000808000008080000080800000808000008080000080
          800000808000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000FFFFFFFF808080FF808080FF808080FF808080FF808080FFFFFF
          FFFFFFFFFFFFFFFFFFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000080
          8000808080FF808080FF808080FF008080000080800000808000808080FF8080
          80FF808080FFFFFFFFFFFFFFFFFF008080000080800000808000008080000000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080008080
          80FF808080FFFFFFFFFFFFFFFFFF008080000080800000808000008080000080
          8000808080FF808080FFFFFFFFFFFFFFFFFF00808000008080000000FFFF0000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF008080000080800000808000808080FF8080
          80FF808080FF808080FFFFFFFFFFFFFFFFFF0080800000808000008080000080
          800000808000808080FF808080FFFFFFFFFF00808000008080000000FFFF0080
          80000000FFFF0000FFFF0000FFFF008080000080800000808000008080000080
          8000008080000000FFFF0000FFFF008080000080800000808000808080FFFFFF
          FFFF808080FF808080FF808080FFFFFFFFFFFFFFFFFF00808000008080000080
          80000080800000808000808080FFFFFFFFFFFFFFFFFF0000FFFF0000FFFF0080
          8000008080000000FFFF0000FFFF0000FFFF0080800000808000008080000080
          800000808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFF00808000808080FF808080FF808080FFFFFFFFFFFFFFFFFF008080000080
          80000080800000808000808080FF808080FFFFFFFFFF0000FFFF0000FFFF0080
          800000808000008080000000FFFF0000FFFF0000FFFF00808000008080000080
          800000808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFF0080800000808000808080FF808080FF808080FFFFFFFFFFFFFFFFFF0080
          80000080800000808000808080FF808080FFFFFFFFFF0000FFFF0000FFFF0080
          80000080800000808000008080000000FFFF0000FFFF0000FFFF008080000080
          800000808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFF008080000080800000808000808080FF808080FF808080FFFFFFFFFFFFFF
          FFFF0080800000808000808080FF808080FFFFFFFFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000000FFFF0000FFFF0000FFFF0080
          800000808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFF00808000008080000080800000808000808080FF808080FF808080FFFFFF
          FFFFFFFFFFFF00808000808080FF808080FFFFFFFFFF0000FFFF0000FFFF0080
          800000808000008080000080800000808000008080000000FFFF0000FFFF0000
          FFFF00808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFFFFFFFFFF00808000008080000080800000808000808080FF808080FF8080
          80FFFFFFFFFFFFFFFFFF808080FF808080FF00808000008080000000FFFF0000
          FFFF0080800000808000008080000080800000808000008080000000FFFF0000
          FFFF0000FFFF008080000000FFFF008080000080800000808000808080FF0080
          8000FFFFFFFFFFFFFFFF00808000008080000080800000808000808080FF8080
          80FF808080FFFFFFFFFF808080FFFFFFFFFF00808000008080000000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF0000FFFF008080000080800000808000808080FF8080
          80FF00808000FFFFFFFFFFFFFFFF008080000080800000808000008080008080
          80FF808080FF808080FF808080FF008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF00808000008080000080800000808000008080008080
          80FF808080FF00808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF808080FF808080FF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000080
          8000808080FF808080FF808080FF008080000080800000808000808080FF8080
          80FF808080FF0080800000808000008080000080800000808000008080000080
          800000808000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000808080FF808080FF808080FF808080FF808080FF0080
          80000080800000808000008080000080800000808000}
        OptionsImage.NumGlyphs = 2
        OptionsImage.Spacing = 5
        TabOrder = 9
      end
      object fraEqual: TcxGroupBox
        Left = 8
        Top = 6
        Caption = 'Select Equal to'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Height = 214
        Width = 499
        object lblPartner: TLabel
          Left = 9
          Top = 16
          Width = 38
          Height = 15
          Caption = 'Partner'
          Transparent = True
        end
        object lblController: TLabel
          Left = 9
          Top = 41
          Width = 53
          Height = 15
          Caption = 'Controller'
          Transparent = True
        end
        object lblAuthor: TLabel
          Left = 9
          Top = 65
          Width = 37
          Height = 15
          Caption = 'Author'
          Transparent = True
        end
        object lblOperator: TLabel
          Left = 9
          Top = 90
          Width = 47
          Height = 15
          Caption = 'Operator'
          Transparent = True
        end
        object Label6: TLabel
          Left = 9
          Top = 140
          Width = 53
          Height = 15
          Caption = 'WorkFlow'
          Transparent = True
        end
        object Label3: TLabel
          Left = 206
          Top = 16
          Width = 25
          Height = 15
          Caption = 'Type'
          Transparent = True
        end
        object Label4: TLabel
          Left = 206
          Top = 41
          Width = 43
          Height = 15
          Caption = 'Subtype'
          Transparent = True
        end
        object Label24: TLabel
          Left = 206
          Top = 65
          Width = 37
          Height = 15
          Caption = 'Branch'
          Transparent = True
        end
        object Label1: TLabel
          Left = 206
          Top = 90
          Width = 60
          Height = 15
          Caption = 'Jurisdiction'
          Transparent = True
        end
        object Label2: TLabel
          Left = 206
          Top = 114
          Width = 32
          Height = 15
          Caption = 'Status'
          Transparent = True
        end
        object lblParaLegal: TLabel
          Left = 10
          Top = 114
          Width = 54
          Height = 15
          Caption = 'Para Legal'
          Transparent = True
        end
        object cbOperator: TcxLookupComboBox
          Left = 130
          Top = 87
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsOperator
          Properties.OnChange = FilterItemChange
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          OnEnter = cbOperatorEnter
          Width = 70
        end
        object cbAuthor: TcxLookupComboBox
          Left = 130
          Top = 62
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsAuthor
          Properties.OnChange = FilterItemChange
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnEnter = cbAuthorEnter
          Width = 70
        end
        object cbController: TcxLookupComboBox
          Left = 130
          Top = 38
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsController
          Properties.OnChange = FilterItemChange
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnEnter = cbControllerEnter
          Width = 70
        end
        object cbPartner: TcxLookupComboBox
          Left = 130
          Top = 14
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsPartner
          Properties.OnChange = FilterItemChange
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnEnter = cbPartnerEnter
          Width = 70
        end
        object cbType: TcxLookupComboBox
          Left = 279
          Top = 14
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsMatterType1
          Properties.OnChange = cbTypeChange
          Properties.OnInitPopup = cbTypePropertiesInitPopup
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 213
        end
        object cbSubType: TcxLookupComboBox
          Left = 279
          Top = 38
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsMatterSubType
          Properties.OnChange = cbSubTypeChange
          Properties.OnInitPopup = cbSubTypePropertiesInitPopup
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 213
        end
        object cbBranch: TcxLookupComboBox
          Left = 279
          Top = 62
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsBranch
          Properties.OnChange = cbBranchChange
          Properties.OnInitPopup = cbBranchPropertiesInitPopup
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 213
        end
        object cbJurisdiction: TcxLookupComboBox
          Left = 279
          Top = 87
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsJurisdiction
          Properties.OnChange = cbJurisdictionChange
          Properties.OnInitPopup = cbJurisdictionPropertiesInitPopup
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 213
        end
        object cbStatus: TcxLookupComboBox
          Left = 279
          Top = 111
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsMatterStatus
          Properties.OnChange = cbStatusChange
          Properties.OnInitPopup = cbStatusPropertiesInitPopup
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 213
        end
        object cmbDepartment: TcxLookupComboBox
          Left = 130
          Top = 161
          Properties.ClearKey = 46
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsDepartment
          Properties.OnChange = cmbDepartmentPropertiesChange
          Properties.OnInitPopup = cmbDepartmentPropertiesInitPopup
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Width = 362
        end
        object cxLabel1: TcxLabel
          Left = 9
          Top = 162
          Caption = 'Department'
          Properties.Orientation = cxoLeft
          Transparent = True
        end
        object cbWorkFlowType: TcxLookupComboBox
          Left = 130
          Top = 136
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 10
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Type'
              FieldName = 'CODE'
            end
            item
              Caption = 'Description'
              FieldName = 'DESCR'
            end>
          Properties.ListSource = dsWorkFlowType
          Properties.OnChange = cbWorkFlowTypeChange
          Properties.OnInitPopup = cxLookupComboBox1PropertiesInitPopup
          Style.BorderStyle = ebs3D
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Width = 362
        end
        object cmbParaLegal: TcxLookupComboBox
          Left = 130
          Top = 111
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsParaLegal
          Properties.OnChange = FilterItemChange
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          OnEnter = cmbParaLegalEnter
          Width = 70
        end
        object cmbDebtorStatus: TcxLookupComboBox
          Left = 130
          Top = 185
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'DEBTORSTATUS'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRIPTION'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsDebtorStatus
          Properties.OnChange = cmbDepartmentPropertiesChange
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          Width = 362
        end
        object cxLabel2: TcxLabel
          Left = 9
          Top = 186
          Caption = 'Debtor Status'
          Properties.Orientation = cxoLeft
          Transparent = True
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 8
        Top = 414
        Caption = 'Archive Box/Item Details'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Height = 69
        Width = 673
        object Label26: TLabel
          Left = 8
          Top = 20
          Width = 28
          Height = 15
          Caption = 'From'
          Transparent = True
        end
        object Label31: TLabel
          Left = 182
          Top = 20
          Width = 31
          Height = 15
          Caption = 'Notes'
          Transparent = True
        end
        object Label32: TLabel
          Left = 525
          Top = 20
          Width = 29
          Height = 15
          Caption = 'Box #'
          Transparent = True
        end
        object Label34: TLabel
          Left = 9
          Top = 44
          Width = 13
          Height = 15
          Caption = 'To'
          Transparent = True
        end
        object lblArchivedNo: TLabel
          Left = 165
          Top = 38
          Width = 50
          Height = 27
          AutoSize = False
          Caption = 'Archive Number'
          Transparent = True
          WordWrap = True
        end
        object Label38: TLabel
          Left = 331
          Top = 44
          Width = 53
          Height = 15
          Caption = 'Barcode #'
          Transparent = True
        end
        object chkArchivedDate: TCheckBox
          Left = 38
          Top = 18
          Width = 18
          Height = 18
          TabOrder = 0
          OnClick = chkArchivedDateClick
        end
        object dtpArchivedDate: TDateTimePicker
          Left = 56
          Top = 16
          Width = 99
          Height = 23
          Date = 40909.638676412010000000
          Time = 40909.638676412010000000
          Enabled = False
          TabOrder = 1
          OnChange = FilterItemChange
        end
        object edArchivedNotes: TcxTextEdit
          Left = 221
          Top = 16
          Properties.OnChange = edBoxNumberPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 285
        end
        object edBoxNumber: TcxTextEdit
          Left = 564
          Top = 16
          Properties.OnChange = edBoxNumberPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 101
        end
        object chkArchivedDateTo: TCheckBox
          Left = 38
          Top = 41
          Width = 18
          Height = 18
          TabOrder = 4
          OnClick = chkArchivedDateToClick
        end
        object dtpArchivedDateTo: TDateTimePicker
          Left = 55
          Top = 41
          Width = 100
          Height = 23
          Date = 40909.638676412010000000
          Time = 40909.638676412010000000
          Enabled = False
          TabOrder = 5
          OnChange = FilterItemChange
        end
        object edtArchiveNumber: TcxTextEdit
          Left = 221
          Top = 41
          Properties.OnChange = edBoxNumberPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 102
        end
        object edtBarcode: TcxTextEdit
          Left = 393
          Top = 41
          Properties.OnChange = edtBarcodePropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 113
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 8
        Top = 488
        Caption = 'Original Matter Archive date'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 12
        Height = 49
        Width = 387
        object Label35: TLabel
          Left = 9
          Top = 23
          Width = 28
          Height = 15
          Caption = 'Since'
          Transparent = True
        end
        object Label36: TLabel
          Left = 196
          Top = 23
          Width = 34
          Height = 15
          Caption = 'Before'
          Transparent = True
        end
        object dtpArchivedSince: TDateTimePicker
          Left = 74
          Top = 18
          Width = 101
          Height = 23
          Date = 40909.638676412010000000
          Time = 40909.638676412010000000
          Enabled = False
          TabOrder = 0
          OnChange = FilterItemChange
        end
        object dtpArchivedBefore: TDateTimePicker
          Left = 260
          Top = 18
          Width = 102
          Height = 23
          Date = 40909.638676412010000000
          Time = 40909.638676412010000000
          Enabled = False
          TabOrder = 1
          OnChange = FilterItemChange
        end
        object chkArchivedSince: TCheckBox
          Left = 56
          Top = 20
          Width = 16
          Height = 19
          TabOrder = 2
          OnClick = chkArchivedSinceClick
        end
        object chkArchivedBefore: TCheckBox
          Left = 243
          Top = 20
          Width = 17
          Height = 19
          TabOrder = 3
          OnClick = chkArchivedBeforeClick
        end
      end
    end
  end
  object qryMatters1: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT FILEID, TITLE, SHORTDESCR, LONGDESCR, NMATTER, PARTNER, '
      'AUTHOR, TYPE, CLIENTID, ARCHIVENUM, nvl(STATUS,0) as STATUS, '
      'nvl(JURISDICTION,0) as JURISDICTION, nvl(SUBTYPE,0) as SUBTYPE,'
      'MATTERSTATUS.DESCR AS MATTERSTATUS2'
      'FROM MATTER, MATTERSTATUS'
      'WHERE MATTER.STATUS = MATTERSTATUS.CODE'
      'ORDER BY TITLE, SHORTDESCR, FILEID')
    Left = 245
    Top = 65533
  end
  object dsMatters: TDataSource
    AutoEdit = False
    DataSet = dmAxiom.qryMSearch
    Left = 876
    Top = 151
  end
  object ilstToolbar: TImageList
    Left = 607
    Top = 12
    Bitmap = {
      494C01010F001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000007070
      7000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099333300993333009933330099330000993300009933
      0000993300009933000066330000663300000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000333B3300A5A5A50073737300666666006666660073737300CCCCCC000000
      000000000000000000000000000000000000CC663300FF999900FF999900FF99
      9900CC999900CC999900CC999900CC999900CC999900CC996600CC996600CC99
      6600CC996600CC996600CC996600663300000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      000000600000337733000073000000990000007C0000004D0000333B33008080
      800000000000000000000000000000000000CC663300F0CAA600F8F8F800F8F8
      F800F8F8F800F8F8F800F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EAEA
      EA00EAEAEA00EAEAEA00CC99660099330000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000007C0000333B
      3300A5A5A500000000000000000000000000CC663300F0CAA600F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EAEAEA00EAEAEA00CC996600993300000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000109F100040B2400020A52000009900000073
      000040404000F2F2F2000000000000000000CC663300F0CAA600F8F8F8000000
      000099333300C0C0C000F8F8F800F8F8F8000000000066330000A4A0A000F1F1
      F100F1F1F100EAEAEA00CC9966009933000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00000099000000990000008F00003E3E3E00DFDFDF00000000009FD89F00109F
      100033593300B2B2B2000000000000000000CC663300F0CAA600FFFFFF00CC66
      6600CC66330099333300EAEAEA00F1F1F100CC6633009933330066330000E3E3
      E300F1F1F100F1F1F100CC9966009933000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      000000990000009900000099000000560000454545000000000000000000BFE5
      BF0000690000737373000000000000000000CC666600F0CAA600FFFFFF00CC99
      6600CC996600CC66330099333300D7D7D700CC666600CC663300993333009999
      6600F1F1F100F1F1F100CC9966009933000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200000000000099
      0000009900000099000000990000009900000099000030303000000000000000
      000060BF6000666D66000000000000000000CC666600F0CAA600FFFFFF00CC99
      6600CC666600CC999900CC66330099333300CC663300CC996600CC6633006633
      0000E3E3E300F1F1F100CC99660099330000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000806060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000334A3300B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF00A5C3A5000000000000000000CC996600F0CAA600FFFFFF00CC99
      6600CC666600F0CAA600CC996600CC66330099333300CC999900CC6633009933
      330099996600F1F1F100CC999900993333000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C00080606000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001078100040404000F2F2
      F20000000000000000003789370013631300114B110011431100113411002435
      240000000000000000000000000000000000CC996600F0CAA600FFFFFF00CC99
      9900CC666600EAEAEA00CC999900CC99990099333300CCCCCC00F0CAA600CC66
      330066330000F1F1F100CC999900000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      8000806060008060600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060BF6000004300005959
      5900E5E5E50000000000E5F4E500109F10000099000000990000009900001847
      180000000000000000000000000000000000CC996600F0CAA600CC996600CC99
      9900CC99990099666600FFFFFF00CC99660099333300CCCCCC00CC999900CC99
      6600CC663300CC999900CC999900000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFE5BF0000990000004D
      0000404040008080800099999900105210000099000000990000009900001545
      150000000000000000000000000000000000CC996600FFCCCC00CC996600CC99
      6600CC996600CC666600F0CAA600FFFFFF0000000000F8F8F800CC666600CC66
      6600CC666600CC663300CC99990000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000050B950000099
      000000860000004D000000560000008F00000099000000990000009900001444
      140000000000000000000000000000000000CC996600FFCCCC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800F8F8
      F800F8F8F800F8F8F800CC99990000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF8EF0030AC
      3000009900000099000000990000009900000099000000990000009900001645
      160000000000000000000000000000000000FF996600FFCCCC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F8F8F800F8F8F800FF999900000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF8
      EF0060BF600000990000009900000099000030AC30007FCB7F00009900001947
      190000000000000000000000000000000000FF996600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600FF999900000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F003D74
      3D0000000000000000000000000000000000FF996600FF996600FF996600FF99
      6600CC996600CC996600CC996600CC996600CC996600CC666600CC666600CC66
      3300CC663300CC663300CC663300000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00C6C6
      C60084848400C6C6C600FFFFFF00C6C6C6000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000080000000800080808000000000000000000000000000000000000000
      00000000FF008080800000000000000000000000000000000000000000000000
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F900000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840084848400FFFF
      FF0084848400FFFFFF0084848400848484000000000000000000000000000000
      0000800000000080000000800000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000080000000800000008000808080000000000000000000000000000000
      FF0000008000000080008080800000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D4000000000000000000000000008400000084000000840000008400
      00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000000000000000000000000000008000
      0000008000000080000000800000008000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000800000008000000080000000800080808000000000000000FF000000
      8000000080000000800000008000808080000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C20000000000000000000000000000000000000000008400
      0000FF00000084000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000800000000080
      0000008000000080000000800000008000000080000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000800000008000000080000000800080808000000080000000
      80000000800000008000000080008080800000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D600000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000080000000008000000080
      00000080000000FF000000800000008000000080000000800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000800000008000000080000000
      800000008000000080008080800000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C000101520071717100000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000800000008000000080
      000000FF00000000000000FF0000008000000080000000800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000080000000
      800000008000808080000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E4500000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000840000000000000000000000000000000000000000FF00000080000000FF
      000000000000000000000000000000FF00000080000000800000008000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000008000000080000000
      8000808080000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D00000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000000000000000000000000000000000000000000000FF00000000
      00000000000000000000000000000000000000FF000000800000008000000080
      0000800000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000800000008000000080000000
      8000808080000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E00000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008000000080
      0000008000008000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000080000000
      8000808080000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B80011117800000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000800080808000000080000000
      8000000080008080800000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008000000080000000800000800000000000000000000000000000000000
      00000000FF0000008000000080000000800080808000000000000000FF000000
      800000008000000080008080800000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000080000000800000008000000000000000000000000000000000
      00000000FF000000800000008000808080000000000000000000000000000000
      FF0000008000000080000000800080808000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000800000008000000000000000000000000000000000
      0000000000000000FF0000008000000000000000000000000000000000000000
      00000000FF0000008000000080000000800000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA70000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00000080000000FF000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000008400000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000084
      0000008400000084000000840000840000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000008400000084
      0000008400000084000000840000008400008400000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00000000000000000000000000000000008400000000840000008400000084
      000000FF00000084000000840000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF0000000000000000000000000000840000008400000084000000FF
      00000000000000FF000000840000008400000084000084000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF00000000000000000000FF00000084000000FF00000000
      0000000000000000000000FF0000008400000084000000840000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      000000000000000000000000000000FF00000084000000840000008400008400
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400000084
      0000840000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000008400008400000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      840000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400000084000084000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      84000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400000084000000840000840000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000084000000840000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000008484000084
      840000FFFF0000000000FFFFFF00000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000FFFF00008484000084840000FF
      FF0000000000FFFFFF000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FFFF00008484000084840000FFFF000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FFFF0000848400008484000000000000000000FFFF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF00000000FFFF00008484000084840000FFFF000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      000000FFFF00008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000FF00000000000000000000000084
      84000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF00
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000000000000084
      840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000084848400C6C6C60000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C6000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00E7FFFC00F03F0000E01F0000E0070000
      E00F0000C0000000E007000080000000E003108000000000E043000000000000
      E063000000000000A0330000800000009FF30000E00100008C0F0001F0030000
      840F0001F01F0000800F0081E03F0000C00F0001E03F0000C00F0001C03F0000
      E00F0001C07F0000FFCF0001F8FF00000000F9FFE1F3F80F0000F0FFE0E1E007
      0000E07FE040C003E007C03FF0008001E007801FF8018001E007841FFC030001
      E0078E0FFE070001E007DF07FE070001E007FF83FC070001E007FFC1F8030001
      E007FFE0F0410001FFFFFFF0F0E00001F81FFFF8F9F08003F81FFFFCFFF8C003
      F81FFFFEFFFFE00FFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFC007FE7FFFFFF3FF
      8003FC3FFFFFE1FF0001FC3FFFFFC0FF0001FE7FC00F807F0001FC3F8007003F
      0000FC3F8003083F0000FC3F80011C1F8000FC1F8001BE0FC000F20F800FFF07
      E001E107800FFF83E007E187801FFFC1F007E007C0FFFFE0F003F00FC0FFFFF0
      F803F81FFFFFFFF8FFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFCFFFF83FFC7F3FFB
      8007E00FF83F07C10003CFC7F81F0303800187E3F0070003CFF1A3F3F0030003
      EFF131F9E0030007FFF138F9E00300078FFF3C79C003000F8FF73E39C003000F
      8FF33F19C003000780019F8BE0030003C0008FC3F8030003E001C7E7FC030003
      FFF3E00FFF830001FFF7F83FFFC3000100000000000000000000000000000000
      000000000000}
  end
  object qryTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT COUNT(NMATTER) AS CNT FROM MATTER')
    Left = 353
    Top = 110
  end
  object tmrSearch: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = tmrSearchTimer
    Left = 313
    Top = 152
  end
  object dsMatterType: TUniDataSource
    DataSet = dmTableCache.vtMatterType
    Left = 320
    Top = 10
  end
  object qPartner: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND ISPARTNER ' +
        '= '#39'Y'#39
      'ORDER BY CODE')
    Left = 757
    Top = 23
    object qPartnerCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object qPartnerNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsPartner: TDataSource
    AutoEdit = False
    DataSet = qPartner
    Left = 667
    Top = 10
  end
  object qController: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND ISCONTROLL' +
        'ER = '#39'Y'#39
      'ORDER BY CODE')
    Left = 231
    Top = 444
    object qControllerCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object qControllerNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsController: TDataSource
    AutoEdit = False
    DataSet = qController
    Left = 271
    Top = 455
  end
  object qAuthor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND ISAUTHOR =' +
        ' '#39'Y'#39
      'ORDER BY CODE')
    Left = 285
    Top = 727
    object StringField1: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsAuthor: TDataSource
    AutoEdit = False
    DataSet = qAuthor
    Left = 327
    Top = 724
  end
  object qOperator: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND '
      'ISOPERATOR = '#39'Y'#39
      'ORDER BY CODE')
    Left = 295
    Top = 599
    object StringField3: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsOperator: TDataSource
    AutoEdit = False
    DataSet = qOperator
    Left = 357
    Top = 611
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Action = aRefresh
            Caption = '&Refresh'
            ImageIndex = 0
          end
          item
            Action = aClearAll
            Caption = '&Clear All'
            ImageIndex = 1
          end
          item
            Caption = '-'
          end
          item
            Action = aMerge
            Caption = '&Merge'
            ImageIndex = 2
          end
          item
            Action = aPrint
            Caption = '&Print'
            ImageIndex = 4
          end
          item
            Caption = '-'
          end
          item
            Action = aHelp
            Caption = '&Help'
            ImageIndex = 5
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = aButtonOk
                Caption = '&Open'
                ImageIndex = 9
              end
              item
                Caption = '-'
              end
              item
                Action = aRefresh
                Caption = '&Refresh'
                ImageIndex = 0
              end
              item
                Action = aClearAll
                Caption = '&Clear All'
                ImageIndex = 1
              end
              item
                Caption = '-'
              end
              item
                Action = aMerge
                Caption = '&Merge'
                ImageIndex = 2
              end
              item
                Items = <
                  item
                    Action = aPrintLabelsAll
                    Caption = '&Labels - All'
                  end
                  item
                    Action = qPrintLabelsSelected
                    Caption = 'L&abels - Selected'
                  end
                  item
                    Action = aPrintDetails
                    Caption = '&Details'
                  end
                  item
                    Action = aPrintStatus
                    Caption = '&Status - No Description'
                  end>
                Caption = 'Pr&int'
                ImageIndex = 4
                UsageCount = 1
              end
              item
                Caption = '-'
              end
              item
                Action = aFileExit
                Caption = '&Exit'
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = aRecentHolder
                Caption = '&RecentHolder'
              end>
            Caption = 'Rece&nt'
            UsageCount = 1
          end
          item
            Items = <
              item
                Action = aHelp
                Caption = '&Help'
                ImageIndex = 5
              end>
            Caption = '&Help'
          end>
      end>
    Images = ilstToolbar
    Left = 879
    Top = 130
    StyleName = 'XP Style'
    object aRefresh: TAction
      Category = 'File'
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 0
      OnExecute = aRefreshExecute
      OnUpdate = OnUpdatePage
    end
    object aClearAll: TAction
      Category = 'File'
      Caption = 'Clear All'
      Hint = 'Clear All'
      ImageIndex = 1
      OnExecute = aClearAllExecute
    end
    object aMerge: TAction
      Category = 'File'
      Caption = 'Merge'
      Hint = 'Merge'
      ImageIndex = 2
      OnExecute = aMergeExecute
      OnUpdate = OnUpdatePage
    end
    object aPrint: TAction
      Category = 'File'
      Caption = 'Print'
      Hint = 'Print'
      ImageIndex = 4
      OnExecute = aPrintExecute
      OnUpdate = OnUpdatePage
    end
    object aHelp: TAction
      Category = 'Help'
      Caption = 'Help'
      ImageIndex = 5
    end
    object aFileExit: TWindowClose
      Category = 'File'
      Caption = 'Exit'
      Hint = 'Exit'
      OnExecute = aFileExitExecute
      OnUpdate = aFileExitUpdate
    end
    object aPrintLabelsAll: TAction
      Category = 'Print'
      Caption = 'Labels - All'
      Enabled = False
      OnExecute = aPrintLabels
      OnUpdate = OnUpdatePage
    end
    object qPrintLabelsSelected: TAction
      Category = 'Print'
      Caption = 'Labels - Selected'
      Enabled = False
      OnExecute = aPrintLabels
      OnUpdate = OnUpdatePage
    end
    object aPrintDetails: TAction
      Category = 'Print'
      Caption = 'Details'
      Enabled = False
      OnExecute = aPrintExecute
      OnUpdate = OnUpdatePage
    end
    object aPrintStatus: TAction
      Category = 'Print'
      Caption = 'Status - No Description'
      Enabled = False
      OnExecute = aPrintStatusExecute
      OnUpdate = OnUpdatePage
    end
    object aButtonOk: TAction
      Caption = 'Open'
      Enabled = False
      Hint = 'Open Matter'
      ImageIndex = 9
      OnExecute = aButtonOkExecute
      OnUpdate = OnUpdatePage
    end
    object aRecentHolder: TAction
      Category = 'Recent'
      Caption = 'RecentHolder'
      Enabled = False
      OnExecute = aRecentHolderExecute
    end
    object aPrintGrid: TAction
      Category = 'Print'
      Caption = 'Print Grid'
      Enabled = False
      OnExecute = aPrintGridExecute
      OnUpdate = OnUpdatePage
    end
    object aPrinttoXL: TAction
      Category = 'Print'
      Caption = 'Export to Excel'
      Enabled = False
      OnExecute = aPrinttoXLExecute
      OnUpdate = OnUpdatePage
    end
    object aWIPNotes: TAction
      Caption = 'Add WIP Notes'
      ImageIndex = 3
      OnExecute = aWIPNotesExecute
    end
  end
  object rptMatterList: TppReport
    AutoStop = False
    DataPipeline = plMatters
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 4350
    PrinterSetup.mmMarginRight = 5350
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
    OutlineSettings.Enabled = False
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 251
    Top = 268
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plMatters'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 35983
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 35190
        mmWidth = 200300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 30956
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 38894
        mmTop = 30956
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 111919
        mmTop = 30956
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Partner'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 132301
        mmTop = 30956
        mmWidth = 9786
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Author'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 143941
        mmTop = 30956
        mmWidth = 8728
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 154523
        mmTop = 30956
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matters Listing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4784
        mmLeft = 0
        mmTop = 16933
        mmWidth = 200290
        BandType = 0
        LayerName = Foreground1
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable1'
        OnGetText = ppVariable1GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10848
        mmWidth = 200026
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 189971
        mmTop = 1852
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Printed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 1852
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd-mmm-yyyy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 1852
        mmWidth = 37042
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Archive #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 184415
        mmTop = 30956
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label103'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Destroy Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 163777
        mmTop = 30956
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6679
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region1'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 6604
        mmLeft = 0
        mmTop = 75
        mmWidth = 200300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'FILEID'
          DataPipeline = plMatters
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMatters'
          mmHeight = 3704
          mmLeft = 111919
          mmTop = 604
          mmWidth = 18263
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PARTNER'
          DataPipeline = plMatters
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMatters'
          mmHeight = 3704
          mmLeft = 132301
          mmTop = 604
          mmWidth = 9788
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText4'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'AUTHOR'
          DataPipeline = plMatters
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMatters'
          mmHeight = 3704
          mmLeft = 143941
          mmTop = 604
          mmWidth = 8730
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBMemo2: TppDBMemo
          DesignLayer = ppDesignLayer2
          UserName = 'DBMemo2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          CharWrap = True
          DataField = 'TYPE'
          DataPipeline = plMatters
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plMatters'
          mmHeight = 3704
          mmLeft = 154523
          mmTop = 604
          mmWidth = 7408
          BandType = 4
          LayerName = Foreground1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'ARCHIVENUM'
          DataPipeline = plMatters
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plMatters'
          mmHeight = 3704
          mmLeft = 184680
          mmTop = 604
          mmWidth = 14288
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBMemo1: TppDBMemo
          DesignLayer = ppDesignLayer2
          UserName = 'DBMemo1'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'LONGDESCR'
          DataPipeline = plMatters
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plMatters'
          mmHeight = 3704
          mmLeft = 38894
          mmTop = 604
          mmWidth = 70641
          BandType = 4
          LayerName = Foreground1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBMemo4: TppDBMemo
          DesignLayer = ppDesignLayer2
          UserName = 'DBMemo3'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'TITLE'
          DataPipeline = plMatters
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plMatters'
          mmHeight = 3704
          mmLeft = 794
          mmTop = 604
          mmWidth = 37306
          BandType = 4
          LayerName = Foreground1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'ARCHIVEDEST'
          DataPipeline = plMatters
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plMatters'
          mmHeight = 3704
          mmLeft = 163777
          mmTop = 604
          mmWidth = 19050
          BandType = 4
          LayerName = Foreground1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          Pen.Color = clSilver
          Pen.Style = psDash
          Weight = 1.000000000000000000
          mmHeight = 1058
          mmLeft = 1852
          mmTop = 5292
          mmWidth = 196586
          BandType = 4
          LayerName = Foreground1
        end
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppVariable4: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable4'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtInteger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        OnCalc = ppVariable4Calc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 23019
        mmTop = 529
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 39158
        mmTop = 529
        mmWidth = 13494
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 0
        mmWidth = 200300
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DetailBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DetailBeforePrint;'#13#10'begin'#13#10'{   Shape1.Visible := (Deta' +
          'il.Count mod 2) = 1;}'#13#10'end;'#13#10
        raProgram.ComponentName = 'Detail'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
      end
    end
    object TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppBDEPipeline2: TppBDEPipeline
    DataSource = dsMatters
    UserName = 'BDEPipeline2'
    Left = 707
    Top = 336
  end
  object rptMatterStatus: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OnPreviewFormCreate = rptMatterStatusPreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\MatterSearch.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 626
    Top = 339
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline2'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 33338
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 32544
        mmWidth = 197379
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Printed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 1852
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd-mmm-yyyy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 16404
        mmTop = 1852
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 178065
        mmTop = 1852
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 187325
        mmTop = 1852
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        OnGetText = ppVariable1GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 92340
        mmTop = 10848
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter Selection'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 16933
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 27517
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 70116
        mmTop = 27517
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Partner'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 173309
        mmTop = 27517
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Author'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 185211
        mmTop = 27517
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 95796
        mmTop = 27517
        mmWidth = 8203
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Jurisdiction'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 143416
        mmTop = 27517
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Ftype'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 161402
        mmTop = 27517
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLIENTID'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4149
        mmLeft = 265
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo3: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        ForceJustifyLastLine = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'TITLE'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 17723
        mmTop = 265
        mmWidth = 49480
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBFileId: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBFileId'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4149
        mmLeft = 70116
        mmTop = 265
        mmWidth = 22768
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'STATUS'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4149
        mmLeft = 95796
        mmTop = 265
        mmWidth = 7405
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        CharWrap = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'MATTERSTATUS2'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 103995
        mmTop = 265
        mmWidth = 36773
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'JURISDICTION'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4149
        mmLeft = 143416
        mmTop = 265
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PARTNER'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4149
        mmLeft = 173309
        mmTop = 265
        mmWidth = 9519
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AUTHOR'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4149
        mmLeft = 185211
        mmTop = 265
        mmWidth = 8728
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TYPE'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4149
        mmLeft = 161402
        mmTop = 265
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 529
        mmWidth = 197379
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtInteger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        OnCalc = ppVariable3Calc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 24342
        mmTop = 1588
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 39688
        mmTop = 1588
        mmWidth = 13229
        BandType = 7
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
    object ppParameterList2: TppParameterList
    end
  end
  object qryMatterType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from mattertype order by descr')
    Left = 455
    Top = 496
  end
  object dsMatterType1: TUniDataSource
    DataSet = qryMatterType
    Left = 754
    Top = 471
  end
  object qryMatterSubType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from mattersubtype'
      'where mattertype = :mattertype'
      'order by descr')
    Left = 683
    Top = 642
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mattertype'
        Value = nil
      end>
  end
  object dsMatterSubType: TUniDataSource
    DataSet = qryMatterSubType
    Left = 748
    Top = 659
  end
  object qryBranch: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from branch '
      'where entity = :entity'
      'order by descr')
    Left = 393
    Top = 506
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsBranch: TUniDataSource
    DataSet = qryBranch
    Left = 504
    Top = 428
  end
  object qryJurisdiction: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from jurisdiction order by descr')
    Left = 443
    Top = 164
  end
  object qryMatterStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from matterstatus order by descr')
    Left = 645
    Top = 554
  end
  object dsJurisdiction: TUniDataSource
    DataSet = qryJurisdiction
    Left = 443
    Top = 108
  end
  object dsMatterStatus: TUniDataSource
    DataSet = qryMatterStatus
    Left = 211
    Top = 204
  end
  object StyleRepository: TcxStyleRepository
    Left = 928
    Top = 132
    PixelsPerInch = 96
    object styBand: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object styHeader: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stySelection: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
    object styContent: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientActiveCaption
    end
    object styChildBitmap: TcxStyle
      AssignedValues = [svBitmap]
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555000050000005555544F00BFBFBF0555544F0BFBF0000055544F0FBFBFBFB
        F05544F0BFBF0000000544F0F000FBFBF00544F0B0B000000F000000F0F000FB
        FB0F555500BFBFBFB0F455555500FBFB0F44555555550000F44455555555550F
        4444555555555550044455555555555550045555555555555550}
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object styDebtorStatus: TcxStyle
    end
    object styArchivedMatter: TcxStyle
      AssignedValues = [svColor]
      Color = 36095
    end
  end
  object qryGetLabelName: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select getlabelname(:Class, :Name) AS fieldname from dual')
    Left = 241
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Class'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Name'
        Value = nil
      end>
    object qryGetLabelNameFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 4000
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Print'
      'File'
      'menu'
      'Default')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 447
    Top = 19
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      53
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 35
      FloatClientHeight = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end>
      MultiLine = True
      NotDocking = [dsNone]
      OldName = 'Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 150
      FloatTop = 313
      FloatClientWidth = 23
      FloatClientHeight = 44
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnMSWord'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnWIPNotes'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 1
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton5: TdxBarButton
      Action = aPrintLabelsAll
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = qPrintLabelsSelected
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = aPrintDetails
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = aPrintStatus
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = aPrintGrid
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = aPrinttoXL
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = aButtonOk
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = aMerge
      Category = 1
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Print'
      Category = 1
      Hint = 'Print'
      Visible = ivAlways
      ItemLinks = <
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
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end>
    end
    object bbtnMSWord: TdxBarButton
      Caption = 'Word'
      Category = 1
      Enabled = False
      Hint = 'Word'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = bbtnMSWordClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'File'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Recent'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarMRUListMatters'
        end>
      OnPopup = dxBarSubItem2Popup
    end
    object dxBarButton3: TdxBarButton
      Action = aRefresh
      Category = 3
      ImageIndex = 12
    end
    object dxBarButton4: TdxBarButton
      Action = aClearAll
      Category = 3
    end
    object dxBarButton9: TdxBarButton
      Action = aPrint
      Category = 3
      ImageIndex = 14
    end
    object dxBarMRUListMatters: TdxBarMRUListItem
      Caption = 'Reopen'
      Category = 3
      Visible = ivAlways
      OnClick = aRecentHolderExecute
    end
    object dxBarButton10: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 3
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton10Click
    end
    object bbtnWIPNotes: TdxBarButton
      Action = aWIPNotes
      Category = 3
      Hint = 'Add WIP Notes for selected matter'
    end
  end
  object qryDepartment: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, descr'
      'FROM empdept'
      'ORDER BY code')
    Left = 664
    Top = 245
  end
  object dsDepartment: TUniDataSource
    DataSet = qryDepartment
    Left = 714
    Top = 271
  end
  object qryWorkFlowType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from workflowtype')
    Left = 63
    Top = 610
  end
  object dsWorkFlowType: TUniDataSource
    DataSet = qryWorkFlowType
    Left = 163
    Top = 617
  end
  object qParaLegal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND ISPARALEGA' +
        'L = '#39'Y'#39
      'ORDER BY CODE')
    Left = 47
    Top = 375
  end
  object dsParaLegal: TUniDataSource
    DataSet = qParaLegal
    Left = 92
    Top = 388
  end
  object cxGridPopupMenu: TcxGridPopupMenu
    Grid = dbgrMatters
    PopupMenus = <>
    Left = 720
    Top = 182
  end
  object qryDebtorStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  DEBTORSTATUS.DEBTORSTATUS,'
      '  DEBTORSTATUS.DESCRIPTION'
      'FROM'
      '  DEBTORSTATUS')
    Left = 820
    Top = 527
  end
  object dsDebtorStatus: TUniDataSource
    DataSet = qryDebtorStatus
    Left = 876
    Top = 547
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = GridReportLink
    Version = 1
    Left = 879
    Top = 288
    PixelsPerInch = 96
    object GridReportLink: TdxGridReportLink
      Component = dbgrMatters
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 40935.459825416670000000
      TimeFormat = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsFormatting.LookAndFeelKind = lfStandard
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofNoChangeDir, ofPathMustExist, ofEnableSizing]
    Title = 'Save'
    Left = 704
    Top = 426
  end
  object dsArchiveExp: TUniDataSource
    DataSet = qryArchiveExp
    Left = 828
    Top = 375
  end
  object qryArchiveExp: TUniQuery
    Connection = dmAxiom.uniInsight
    SpecificOptions.Strings = (
      'Oracle.ExtendedFieldsInfo=True')
    Left = 774
    Top = 420
  end
  object qryMatterArch: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  ARCHIVE_LOCATION.*'
      'FROM'
      '  ARCHIVE_LOCATION'
      'ORDER BY NMATTER')
    IndexFieldNames = 'nmatter'
    Left = 550
    Top = 523
  end
  object dsMatterArch: TUniDataSource
    DataSet = qryMatterArch
    Left = 609
    Top = 464
  end
  object plMatters: TppDBPipeline
    DataSource = dsMattersRpt
    UserName = 'plMatters'
    Left = 235
    Top = 314
    object plMattersppField1: TppField
      FieldAlias = 'PARENT'
      FieldName = 'PARENT'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plMattersppField2: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plMattersppField3: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 85
      DisplayWidth = 85
      Position = 2
    end
    object plMattersppField4: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plMattersppField5: TppField
      FieldAlias = 'LONGDESCR'
      FieldName = 'LONGDESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 4
    end
    object plMattersppField6: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
    object plMattersppField7: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object plMattersppField8: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object plMattersppField9: TppField
      FieldAlias = 'TYPE_DESC'
      FieldName = 'TYPE_DESC'
      FieldLength = 5
      DisplayWidth = 5
      Position = 8
    end
    object plMattersppField10: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 9
    end
    object plMattersppField11: TppField
      FieldAlias = 'CLIENTID'
      FieldName = 'CLIENTID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object plMattersppField12: TppField
      FieldAlias = 'ARCHIVENUM'
      FieldName = 'ARCHIVENUM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object plMattersppField13: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plMattersppField14: TppField
      FieldAlias = 'JURISDICTION'
      FieldName = 'JURISDICTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plMattersppField15: TppField
      FieldAlias = 'SUBTYPE'
      FieldName = 'SUBTYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object plMattersppField16: TppField
      FieldAlias = 'MATTERSTATUS2'
      FieldName = 'MATTERSTATUS2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 15
    end
    object plMattersppField17: TppField
      FieldAlias = 'ACCT'
      FieldName = 'ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 16
    end
    object plMattersppField18: TppField
      FieldAlias = 'DESCRIPTION'
      FieldName = 'DESCRIPTION'
      FieldLength = 12
      DisplayWidth = 12
      Position = 17
    end
    object plMattersppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROW_COLOUR'
      FieldName = 'ROW_COLOUR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object plMattersppField20: TppField
      FieldAlias = 'ARCHIVEREVIEW'
      FieldName = 'ARCHIVEREVIEW'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 19
    end
    object plMattersppField21: TppField
      FieldAlias = 'ARCHIVEDEST'
      FieldName = 'ARCHIVEDEST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 20
    end
    object plMattersppField22: TppField
      FieldAlias = 'ARCHVLOCN'
      FieldName = 'ARCHVLOCN'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
    object plMattersppField23: TppField
      FieldAlias = 'ARCHIVEBOX'
      FieldName = 'ARCHIVEBOX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object plMattersppField24: TppField
      FieldAlias = 'DUMMY'
      FieldName = 'DUMMY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object plMattersppField25: TppField
      FieldAlias = 'RESTRICT_ACCESS'
      FieldName = 'RESTRICT_ACCESS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
  end
  object qryMattersRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT '#39'P'#39' as PARENT, FILEID, TITLE, SHORTDESCR, LONGDESCR, NMAT' +
        'TER, M.PARTNER,'
      
        'AUTHOR, M.TYPE "TYPE_DESC",M.TYPE, CLIENTID, ARCHIVENUM, nvl(M.S' +
        'TATUS,0) as STATUS, '
      'nvl(JURISDICTION,0) as JURISDICTION, nvl(SUBTYPE,0) as SUBTYPE,'
      
        'MS.DESCR AS MATTERSTATUS2, ACCT, '#39'DEBTORSTATUS'#39' "DESCRIPTION", 0' +
        ' "ROW_COLOUR",'
      
        'archivereview, archivedest, archvlocn, archivebox, m.dummy, M.RE' +
        'STRICT_ACCESS'
      'FROM MATTER M, MATTERSTATUS MS'
      'WHERE M.STATUS = MS.CODE'
      'ORDER BY TITLE, SHORTDESCR, FILEID')
    Left = 121
    Top = 311
  end
  object dsMattersRpt: TUniDataSource
    DataSet = qryMattersRpt
    Left = 183
    Top = 315
  end
  object scExcelExport: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = 1
    FontHeader.Name = 'Tahoma'
    FontHeader.Orientation = 0
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    BorderHeader.BackAlternateColor = clBlack
    MergeHeaderCells = True
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = 1
    FontTitles.Name = 'Tahoma'
    FontTitles.Orientation = 0
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    BorderTitles.BackAlternateColor = clBlack
    AutoFilter = False
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = 1
    FontData.Name = 'Tahoma'
    FontData.Orientation = 0
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = 1
    FontSummary.Name = 'Tahoma'
    FontSummary.Orientation = 0
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    BorderSummary.BackAlternateColor = clBlack
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = 1
    FontFooter.Name = 'Tahoma'
    FontFooter.Orientation = 0
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    BorderFooter.BackAlternateColor = clBlack
    MergeFooterCells = True
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = 1
    FontGroup.Name = 'Tahoma'
    FontGroup.Orientation = 0
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    BorderGroup.BackAlternateColor = clBlack
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 643
    Top = 526
  end
end
