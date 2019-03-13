object frmDocSearch: TfrmDocSearch
  Left = 138
  Top = 203
  Caption = 'Document Selection'
  ClientHeight = 673
  ClientWidth = 1142
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 10
    Top = 68
    Width = 51
    Height = 15
    Caption = 'Keywords'
    Transparent = True
  end
  object Label15: TLabel
    Left = 25
    Top = 246
    Width = 37
    Height = 15
    Caption = 'Author'
    Transparent = True
  end
  object pageSearch: TJvPageControl
    Left = 0
    Top = 28
    Width = 1142
    Height = 645
    ActivePage = tabFilters
    Align = alClient
    OwnerDraw = True
    TabOrder = 4
    OnChange = JvPageControl1Change
    OnChanging = pageSearchChanging
    TabPainter = JvTabDefaultPainter1
    ReduceMemoryUse = True
    object tabGrid: TTabSheet
      Caption = 'Documents'
      object dbgrDocs: TcxGrid
        Left = 0
        Top = 0
        Width = 1134
        Height = 596
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvDocs: TcxGridDBTableView
          OnDblClick = tvDocsDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsDocs
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnCompare = tvDocsDataControllerCompare
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 55
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
          Styles.Group = dmAxiom.UnreadStyle
          object tvDocsDOCID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'DOCID'
            MinWidth = 45
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 45
          end
          object tvDocsDESCR1: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            PropertiesClassName = 'TcxRichEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Styles.Header = cxStyle1
            Width = 236
          end
          object tvDocsFILEID1: TcxGridDBColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Styles.Header = cxStyle2
            Width = 50
          end
          object tvDocsCLIENT: TcxGridDBColumn
            Caption = 'Client'
            DataBinding.FieldName = 'CLIENT'
            Width = 86
          end
          object tvDocsAUTH11: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTH1'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Styles.Header = cxStyle3
            Width = 36
          end
          object tvDocsD_CREATE: TcxGridDBColumn
            Caption = 'Created'
            DataBinding.FieldName = 'D_CREATE'
          end
          object tvDocsD_MODIF1: TcxGridDBColumn
            Caption = 'Modified'
            DataBinding.FieldName = 'D_MODIF'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Styles.Header = cxStyle4
            Width = 62
          end
          object tvDocsDOC_NAME1: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'DOC_NAME'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Styles.Header = cxStyle5
            Width = 118
          end
          object tvDocsURL: TcxGridDBColumn
            DataBinding.FieldName = 'URL'
            PropertiesClassName = 'TcxHyperLinkEditProperties'
            Width = 35
          end
          object tvDocsKEYWORDS: TcxGridDBColumn
            Caption = 'Keywords'
            DataBinding.FieldName = 'KEYWORDS'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 74
          end
          object tvDocsCAT_DESCR: TcxGridDBColumn
            Caption = 'Category'
            DataBinding.FieldName = 'CAT_DESCR'
            Width = 52
          end
          object tvDocsCLASS_DESCR: TcxGridDBColumn
            Caption = 'Classification'
            DataBinding.FieldName = 'CLASS_DESCR'
            Width = 40
          end
          object tvDocsDEPT: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'DEPT'
            Width = 39
          end
          object tvDocsEXTERNAL_ACCESS: TcxGridDBColumn
            Caption = 'Portal Access'
            DataBinding.FieldName = 'EXTERNAL_ACCESS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            MinWidth = 75
            Width = 75
          end
          object tvDocsRELEVANCE: TcxGridDBColumn
            Caption = 'Relevance %'
            DataBinding.FieldName = 'RELEVANCE'
            PropertiesClassName = 'TcxProgressBarProperties'
            OnGetDisplayText = tvDocsRELEVANCEGetDisplayText
            GroupIndex = 0
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            SortIndex = 0
            SortOrder = soDescending
            Width = 42
          end
        end
        object tvDocVersion: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsView.NavigatorOffset = 55
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
        end
        object dbgrDocsLevel1: TcxGridLevel
          GridView = tvDocs
        end
      end
      object StatusBar: TJvStatusBar
        Left = 0
        Top = 596
        Width = 1134
        Height = 19
        Panels = <
          item
            Width = 50
          end>
      end
    end
    object tabFilters: TTabSheet
      Caption = 'Filters'
      ImageIndex = 1
      object cxGroupBox1: TcxGroupBox
        Left = 11
        Top = 8
        Caption = 'Document'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 250
        Width = 563
        object Label5: TLabel
          Left = 9
          Top = 20
          Width = 60
          Height = 15
          Caption = 'Description'
          Transparent = True
        end
        object Label4: TLabel
          Left = 9
          Top = 45
          Width = 21
          Height = 15
          Caption = 'Text'
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 145
          Width = 37
          Height = 15
          Caption = 'Author'
          Transparent = True
        end
        object Label8: TLabel
          Left = 9
          Top = 95
          Width = 51
          Height = 15
          Caption = 'Keywords'
          Transparent = True
        end
        object Label9: TLabel
          Left = 9
          Top = 70
          Width = 40
          Height = 15
          Caption = 'Exclude'
          Transparent = True
        end
        object Label14: TLabel
          Left = 9
          Top = 120
          Width = 32
          Height = 15
          Caption = 'Name'
          Transparent = True
        end
        object Label12: TLabel
          Left = 9
          Top = 170
          Width = 58
          Height = 15
          Caption = 'Email from'
          Transparent = True
        end
        object Label16: TLabel
          Left = 9
          Top = 196
          Width = 45
          Height = 15
          Caption = 'Email To'
          Transparent = True
        end
        object Label17: TLabel
          Left = 10
          Top = 221
          Width = 31
          Height = 15
          Caption = 'Notes'
          Transparent = True
        end
        object edDescr: TcxTextEdit
          Left = 112
          Top = 16
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 269
        end
        object edContains: TcxTextEdit
          Left = 112
          Top = 41
          Properties.OnChange = edContainsPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 269
        end
        object gbModified: TcxGroupBox
          Left = 389
          Top = 9
          Caption = 'Modified'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Height = 72
          Width = 166
          object Label19: TLabel
            Left = 8
            Top = 19
            Width = 28
            Height = 15
            Caption = 'Since'
            Transparent = True
          end
          object Label20: TLabel
            Left = 8
            Top = 43
            Width = 34
            Height = 15
            Caption = 'Before'
            Transparent = True
          end
          object dtpSince: TDateTimePicker
            Left = 74
            Top = 16
            Width = 85
            Height = 22
            Date = 36285.638676412010000000
            Time = 36285.638676412010000000
            Enabled = False
            TabOrder = 0
            OnClick = dtpSinceClick
          end
          object dtpBefore: TDateTimePicker
            Left = 74
            Top = 43
            Width = 85
            Height = 22
            Date = 36285.638676412010000000
            Time = 36285.638676412010000000
            Enabled = False
            TabOrder = 1
          end
          object chkSince: TCheckBox
            Left = 56
            Top = 19
            Width = 15
            Height = 17
            Color = clBtnFace
            ParentColor = False
            TabOrder = 2
            OnClick = chkSinceClick
          end
          object chkBefore: TCheckBox
            Left = 56
            Top = 44
            Width = 15
            Height = 17
            Color = clBtnFace
            ParentColor = False
            TabOrder = 3
            OnClick = chkBeforeClick
          end
        end
        object gbCreated: TcxGroupBox
          Left = 389
          Top = 83
          Caption = 'Created'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Height = 76
          Width = 166
          object Label6: TLabel
            Left = 8
            Top = 24
            Width = 28
            Height = 15
            Caption = 'Since'
            Transparent = True
          end
          object Label7: TLabel
            Left = 8
            Top = 48
            Width = 34
            Height = 15
            Caption = 'Before'
            Transparent = True
          end
          object dtpCreatedSince: TDateTimePicker
            Left = 74
            Top = 20
            Width = 85
            Height = 22
            Date = 36285.638676412010000000
            Time = 36285.638676412010000000
            Enabled = False
            TabOrder = 0
          end
          object dtpCreatedBefore: TDateTimePicker
            Left = 74
            Top = 46
            Width = 85
            Height = 22
            Date = 36285.638676412010000000
            Time = 36285.638676412010000000
            Enabled = False
            TabOrder = 1
          end
          object chkCreatedSince: TCheckBox
            Left = 55
            Top = 23
            Width = 15
            Height = 17
            Color = clBtnFace
            ParentColor = False
            TabOrder = 2
            OnClick = chkCreatedSinceClick
          end
          object chkCreatedBefore: TCheckBox
            Left = 55
            Top = 48
            Width = 15
            Height = 17
            Color = clBtnFace
            ParentColor = False
            TabOrder = 3
            OnClick = chkCreatedBeforeClick
          end
        end
        object edKeywords: TcxTextEdit
          Left = 112
          Top = 91
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 269
        end
        object edExclude: TcxTextEdit
          Left = 112
          Top = 66
          Enabled = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 269
        end
        object cbAuthor: TcxLookupComboBox
          Left = 112
          Top = 141
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmployee
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 93
        end
        object cmbConditionOne: TcxComboBox
          Left = 57
          Top = 41
          Properties.Items.Strings = (
            'All'
            'Any')
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Text = 'All'
          Width = 51
        end
        object cmbConditionEx: TcxComboBox
          Left = 57
          Top = 66
          Enabled = False
          Properties.Items.Strings = (
            'All'
            'Any')
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Text = 'All'
          Width = 51
        end
        object edURL: TcxTextEdit
          Left = 112
          Top = 116
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          Visible = False
          Width = 269
        end
        object cmbConditionURL: TcxComboBox
          Left = 57
          Top = 116
          Properties.Items.Strings = (
            'All'
            'Any')
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Text = 'All'
          Visible = False
          Width = 51
        end
        object edDocName: TcxTextEdit
          Left = 112
          Top = 116
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 269
        end
        object edEmailFrom: TcxTextEdit
          Left = 112
          Top = 166
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          Width = 269
        end
        object edEmailTo: TcxTextEdit
          Left = 112
          Top = 192
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          Width = 269
        end
        object edNotes: TcxTextEdit
          Left = 112
          Top = 218
          TabOrder = 14
          Width = 268
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 580
        Top = 8
        Caption = 'Matter'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 250
        Width = 214
        object Label2: TLabel
          Left = 4
          Top = 48
          Width = 44
          Height = 15
          Caption = 'Number'
          Transparent = True
        end
        object Label10: TLabel
          Left = 4
          Top = 75
          Width = 37
          Height = 15
          Caption = 'Author'
        end
        object Label11: TLabel
          Left = 4
          Top = 101
          Width = 25
          Height = 15
          Caption = 'Type'
        end
        object Label13: TLabel
          Left = 4
          Top = 21
          Width = 31
          Height = 15
          Caption = 'Client'
          Transparent = True
        end
        object edFileID: TcxButtonEdit
          Left = 53
          Top = 44
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.CharCase = ecUpperCase
          Properties.OnButtonClick = edFileIDPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 151
        end
        object cmbMatterType: TcxLookupComboBox
          Left = 53
          Top = 97
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsMatterType
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 151
        end
        object cmbMatterAuthor: TcxLookupComboBox
          Left = 53
          Top = 71
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              MinWidth = 65
              Width = 65
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmployee
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 151
        end
        object edClientID: TcxButtonEdit
          Left = 53
          Top = 17
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 151
        end
        object cbPortalOnly: TcxCheckBox
          Left = 49
          Top = 122
          Caption = 'Client Portal Only'
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
        end
      end
      object gbGroups: TcxGroupBox
        Left = 9
        Top = 264
        Caption = 'Categories'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        DesignSize = (
          389
          293)
        Height = 293
        Width = 389
        object clbGroups: TcxCheckListBox
          Left = 6
          Top = 38
          Width = 376
          Height = 250
          Anchors = [akLeft, akTop, akRight, akBottom]
          EditValueFormat = cvfStatesString
          Items = <>
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          ExplicitHeight = 278
        end
        object btnGroupsRefresh: TcxButton
          Left = 282
          Top = 10
          Width = 101
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Refresh List'
          LookAndFeel.NativeStyle = True
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF007070708FB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCC
            CC33FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B
            33CC8080807FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF009900FF009900FF009900FF009900FF009900FF009900FF007C
            00FF333B33CCA5A5A55AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF009900FF009900FF009900FF109F10EF40B240BF20A520DF0099
            00FF007300FF404040BFF2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20FFFFFF009FD8
            9F60109F10EF335933CCB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF009900FF009900FF009900FF005600FF454545BAFFFFFF00FFFF
            FF00BFE5BF40006900FF7373738CFFFFFF00FFFFFF00FFFFFF00B2B2B24DFFFF
            FF00009900FF009900FF009900FF009900FF009900FF009900FF303030CFFFFF
            FF00FFFFFF0060BF609F666D6699FFFFFF00FFFFFF00FFFFFF00334A33CCB2B2
            B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00DFF2DF20A5C3A55AFFFFFF00FFFFFF00FFFFFF00107810EF4040
            40BFF2F2F20DFFFFFF00FFFFFF00378937C8136313EC114B11EE114311EE1134
            11EE243524DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BF609F0043
            00FF595959A6E5E5E51AFFFFFF00E5F4E51A109F10EF009900FF009900FF0099
            00FF184718E7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFE5BF400099
            00FF004D00FF404040BF8080807F99999966105210EF009900FF009900FF0099
            00FF154515EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0050B9
            50AF009900FF008600FF004D00FF005600FF008F00FF009900FF009900FF0099
            00FF144414EBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8
            EF1030AC30CF009900FF009900FF009900FF009900FF009900FF009900FF0099
            00FF164516E9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00EFF8EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F800099
            00FF194719E6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008FD2
            8F703D743DC2FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          TabOrder = 1
          OnClick = btnGroupsRefreshClick
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 405
        Top = 264
        Caption = 'Classification'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        DesignSize = (
          389
          293)
        Height = 293
        Width = 389
        object clbCategories: TcxCheckListBox
          Left = 6
          Top = 38
          Width = 376
          Height = 250
          Anchors = [akLeft, akTop, akRight, akBottom]
          EditValueFormat = cvfStatesString
          Items = <>
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          ExplicitHeight = 278
        end
        object btnRefreshClassification: TcxButton
          Left = 282
          Top = 10
          Width = 101
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Refresh List'
          LookAndFeel.NativeStyle = True
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF007070708FB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCC
            CC33FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B
            33CC8080807FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF009900FF009900FF009900FF009900FF009900FF009900FF007C
            00FF333B33CCA5A5A55AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF009900FF009900FF009900FF109F10EF40B240BF20A520DF0099
            00FF007300FF404040BFF2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20FFFFFF009FD8
            9F60109F10EF335933CCB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00009900FF009900FF009900FF009900FF005600FF454545BAFFFFFF00FFFF
            FF00BFE5BF40006900FF7373738CFFFFFF00FFFFFF00FFFFFF00B2B2B24DFFFF
            FF00009900FF009900FF009900FF009900FF009900FF009900FF303030CFFFFF
            FF00FFFFFF0060BF609F666D6699FFFFFF00FFFFFF00FFFFFF00334A33CCB2B2
            B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00DFF2DF20A5C3A55AFFFFFF00FFFFFF00FFFFFF00107810EF4040
            40BFF2F2F20DFFFFFF00FFFFFF00378937C8136313EC114B11EE114311EE1134
            11EE243524DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BF609F0043
            00FF595959A6E5E5E51AFFFFFF00E5F4E51A109F10EF009900FF009900FF0099
            00FF184718E7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFE5BF400099
            00FF004D00FF404040BF8080807F99999966105210EF009900FF009900FF0099
            00FF154515EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0050B9
            50AF009900FF008600FF004D00FF005600FF008F00FF009900FF009900FF0099
            00FF144414EBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8
            EF1030AC30CF009900FF009900FF009900FF009900FF009900FF009900FF0099
            00FF164516E9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00EFF8EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F800099
            00FF194719E6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008FD2
            8F703D743DC2FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          TabOrder = 1
          OnClick = btnRefreshClassificationClick
        end
      end
    end
  end
  object qryDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT DOC_NAME, AUTH1, D_MODIF, DOC.DESCR, DOC.PATH, DOC.FILEID' +
        ', DOCID, DOCUMENT, FILE_EXTENSION, KEYWORDS, SEARCH, '#39'a'#39' as clas' +
        's_descr,'
      
        #39'b'#39' as cat_descr, url, '#39'c'#39' as dept, '#39'd'#39' as client, external_acce' +
        'ss, D_CREATE'
      'FROM  DOC  '
      'WHERE DOC.FILEID LIKE '#39'080320%'#39
      ' ORDER BY 1 desc, 2'
      ''
      '/*'
      
        'SELECT DOC_NAME, AUTH1, D_MODIF, DESCR, PATH, FILEID, DOCID, DOC' +
        'UMENT, FILE_EXTENSION, KEYWORDS, 1 as RELEVANCE'
      ' FROM DOC'
      '*/')
    Left = 279
    Top = 5
  end
  object dsDocs: TUniDataSource
    AutoEdit = False
    DataSet = qryDocs
    Left = 336
    Top = 7
  end
  object qryPrecCategory: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PRECCATEGORY ORDER BY DESCR')
    Left = 419
    Top = 2
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Popup'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 195
    Top = 8
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
      FloatLeft = 536
      FloatTop = 309
      FloatClientWidth = 23
      FloatClientHeight = 72
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object btnSendAsLink: TdxBarButton
      Caption = 'eMail Document as a Link (Internal)'
      Category = 0
      Hint = 'eMail Document as a Link (Internal)'
      Visible = ivAlways
      ImageIndex = 37
      OnClick = btnSendAsLinkClick
    end
    object btnSendAsAttachment: TdxBarButton
      Caption = 'eMail as Attachment (External)...'
      Category = 0
      Hint = 'eMail as Attachment (External)'
      Visible = ivAlways
      ImageIndex = 34
      OnClick = btnSendAsAttachmentClick
    end
    object btnProfile: TdxBarButton
      Caption = 'Edit'
      Category = 0
      Hint = 'Edit'
      Visible = ivAlways
      ImageIndex = 35
      OnClick = btnProfileClick
    end
    object btnOpen: TdxBarButton
      Caption = 'Open'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      ImageIndex = 36
      OnClick = btnOpenClick
    end
    object btnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 1
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 21
      OnClick = btnRefreshClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Clear All'
      Category = 1
      Hint = 'Clear All'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btnClearAllClick
    end
    object btnWP: TdxBarButton
      Caption = 'New Item'
      Category = 1
      Hint = 'Open Document'
      Visible = ivAlways
      ImageIndex = 14
      OnClick = btnWPClick
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close Form'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton1Click
    end
    object btnPrint: TdxBarButton
      Caption = 'Print'
      Category = 1
      Enabled = False
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 29
      PaintStyle = psCaptionGlyph
      OnClick = btnPrintClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 337
    Top = 161
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object styContent: TcxStyle
      AssignedValues = [svColor]
      Color = clBlack
    end
  end
  object tblEmployee: TUniTable
    TableName = 'EMPLOYEE'
    Connection = dmAxiom.uniInsight
    KeyFields = 'CODE'
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 825
    Top = 129
  end
  object dsEmployee: TUniDataSource
    DataSet = tblEmployee
    Left = 709
    Top = 198
  end
  object qryClassification: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PRECCLASSIFICATION ORDER BY DESCR')
    Left = 538
    Top = 9
  end
  object qryMatterType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from mattertype order by descr')
    Left = 545
    Top = 526
  end
  object dsMatterType: TUniDataSource
    DataSet = qryMatterType
    Left = 623
    Top = 522
  end
  object OraStoredProc: TUniStoredProc
    StoredProcName = 'MATTER_DOC_ACCESS'
    Connection = dmAxiom.uniInsight
    Left = 168
    Top = 406
  end
  object popEmailDoc: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'btnSendAsAttachment'
      end
      item
        Visible = True
        ItemName = 'btnSendAsLink'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnProfile'
      end
      item
        Visible = True
        ItemName = 'btnOpen'
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end>
    UseOwnFont = False
    Left = 484
    Top = 415
    PixelsPerInch = 96
  end
  object qrySingleDoc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select doc.*, doc.rowid'
      'from doc'
      'where docid = :docid'
      '')
    Left = 849
    Top = 303
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 765
    Top = 164
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 6700
      PrinterPage.Margins.Right = 6700
      PrinterPage.Margins.Top = 12600
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41404.502220115740000000
      TimeFormat = 0
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object qryTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT COUNT(NMATTER) AS CNT FROM MATTER')
    Left = 699
    Top = 10
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = popEmailDoc
      end>
    Left = 151
    Top = 118
  end
  object FormMgr: TRwMAPIFormManager
    MAPISession = dmAxiom.MapiSession
    OnCreateMessage = FormMgrCreateMessage
    BeforeSubmitMessage = FormMgrBeforeSubmitMessage
    OnShutDown = FormMgrShutDown
    OnNewMessage = FormMgrNewMessage
    Left = 836
    Top = 224
  end
  object JvTabDefaultPainter1: TJvTabDefaultPainter
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clHighlight
    ActiveFont.Height = -11
    ActiveFont.Name = 'Segoe UI'
    ActiveFont.Style = []
    InactiveFont.Charset = DEFAULT_CHARSET
    InactiveFont.Color = clWindowText
    InactiveFont.Height = -11
    InactiveFont.Name = 'Segoe UI'
    InactiveFont.Style = []
    DisabledFont.Charset = DEFAULT_CHARSET
    DisabledFont.Color = clGrayText
    DisabledFont.Height = -11
    DisabledFont.Name = 'Segoe UI'
    DisabledFont.Style = []
    Divider = True
    ShowFocus = True
    Left = 864
    Top = 392
  end
end
