object frmdtSearch: TfrmdtSearch
  Left = 636
  Top = 247
  ActiveControl = btnSearch
  Caption = 'File Search'
  ClientHeight = 1055
  ClientWidth = 1635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 19
  object pagdtSearch: TcxPageControl
    Left = 0
    Top = 32
    Width = 1635
    Height = 993
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    TabSlants.Kind = skCutCorner
    OnChange = pagdtSearchChange
    ClientRectBottom = 992
    ClientRectLeft = 1
    ClientRectRight = 1634
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Results'
      ImageIndex = 0
      object grddtDocs: TcxGrid
        Left = 0
        Top = 233
        Width = 1633
        Height = 733
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvdtDocs: TcxGridTableView
          OnDblClick = tvdtDocsDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '## item(s)'
              Kind = skCount
              Column = tvdtDocsRelevance
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 9
          FixedDataRows.SeparatorWidth = 9
          NewItemRow.SeparatorWidth = 9
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 73
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.HeaderEndEllipsis = True
          OptionsView.IndicatorWidth = 18
          Preview.LeftIndent = 29
          Preview.RightIndent = 7
          Styles.Group = dmAxiom.UnreadStyle
          object tvdtDocsMatter: TcxGridColumn
            Caption = 'Matter'
            Visible = False
            MinWidth = 29
            VisibleForCustomization = False
          end
          object tvdtDocsTitle: TcxGridColumn
            Tag = 12
            Caption = 'Title'
            MinWidth = 29
            Width = 433
          end
          object tvdtDocsFilename: TcxGridColumn
            Tag = 6
            Caption = 'In Folder'
            MinWidth = 29
            Width = 494
          end
          object tvdtDocsRelevance: TcxGridColumn
            Tag = 8
            Caption = 'Relevance'
            DataBinding.ValueType = 'Integer'
            PropertiesClassName = 'TcxProgressBarProperties'
            Properties.AssignedValues.Min = True
            Properties.BarStyle = cxbsGradient
            Properties.BorderWidth = 1
            Properties.EndColor = clBlue
            Properties.Max = 100.000000000000000000
            Properties.PeakSize = 3
            Properties.ShowText = False
            Visible = False
            GroupIndex = 0
            MinWidth = 29
            SortIndex = 0
            SortOrder = soDescending
            Width = 260
          end
          object tvdtDocsHits: TcxGridColumn
            Tag = 2
            Caption = 'Hits'
            PropertiesClassName = 'TcxTextEditProperties'
            MinWidth = 29
            Options.Grouping = False
            Options.Sorting = False
            Width = 67
          end
          object tvdtDocsRelevanceNo: TcxGridColumn
            Tag = 1
            Caption = 'Relevance No'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '##%'
            Properties.SpinButtons.Visible = False
            Properties.ValueType = vtFloat
            Visible = False
            MinWidth = 29
            Options.Grouping = False
            Options.Sorting = False
          end
          object tvdtDocsDocumentNo: TcxGridColumn
            Visible = False
            MinWidth = 29
            VisibleForCustomization = False
          end
        end
        object grddtDocsLevel1: TcxGridLevel
          GridView = tvdtDocs
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1633
        Height = 233
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 13
          Top = 80
          Width = 130
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          AutoSize = False
          Caption = 'Filename Like:'
        end
        object Label4: TLabel
          Left = 13
          Top = 46
          Width = 24
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Text'
          Transparent = True
        end
        object Versiontext: TLabel
          Left = 1498
          Top = 175
          Width = 18
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'xxx'
        end
        object Label1: TLabel
          Left = 13
          Top = 14
          Width = 77
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Search Index'
          Transparent = True
        end
        object FuzzySearching: TCheckBox
          Left = 13
          Top = 167
          Width = 143
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Fuzzy Searching'
          TabOrder = 0
        end
        object PhonicSearching: TCheckBox
          Left = 13
          Top = 194
          Width = 200
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Phonic Searching'
          TabOrder = 1
        end
        object Stemming: TCheckBox
          Left = 13
          Top = 141
          Width = 173
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Stemming'
          TabOrder = 2
        end
        object NaturalLanguage: TCheckBox
          Left = 13
          Top = 113
          Width = 181
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Natural Language'
          TabOrder = 3
        end
        object MatchFilename: TCheckBox
          Left = 567
          Top = 78
          Width = 200
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Match filename pattern'
          TabOrder = 4
        end
        object edtFilenameLike: TcxTextEdit
          Left = 164
          Top = 74
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 393
        end
        object edContains: TcxTextEdit
          Left = 164
          Top = 40
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 393
        end
        object btnSearch: TBitBtn
          Left = 566
          Top = 5
          Width = 138
          Height = 34
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Search'
          Default = True
          TabOrder = 7
          OnClick = btnSearchClick
        end
        object rgSearchfor: TRadioGroup
          Left = 266
          Top = 113
          Width = 291
          Height = 97
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Search for'
          ItemIndex = 0
          Items.Strings = (
            'Any words'
            'All words'
            'Boolean Search (and, or, not,...)')
          TabOrder = 8
        end
        object gbCreated: TcxGroupBox
          Left = 566
          Top = 113
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'File Date'
          PanelStyle.CaptionIndent = 3
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Visible = False
          Height = 97
          Width = 242
          object Label6: TLabel
            Left = 12
            Top = 28
            Width = 31
            Height = 19
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Since'
            Transparent = True
          end
          object Label7: TLabel
            Left = 12
            Top = 66
            Width = 39
            Height = 19
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Before'
            Transparent = True
          end
          object dtpCreatedSince: TDateTimePicker
            Left = 70
            Top = 23
            Width = 154
            Height = 27
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Date = 36285.638676412000000000
            Time = 36285.638676412000000000
            ShowCheckbox = True
            Checked = False
            TabOrder = 0
          end
          object dtpCreatedBefore: TDateTimePicker
            Left = 70
            Top = 60
            Width = 154
            Height = 27
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Date = 36285.638676412000000000
            Time = 36285.638676412000000000
            ShowCheckbox = True
            Checked = False
            TabOrder = 1
          end
        end
        object lkupIndex: TcxLookupComboBox
          Left = 164
          Top = 5
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Properties.KeyFieldNames = 'NDOCINDEX'
          Properties.ListColumns = <
            item
              Caption = 'Index Name'
              MinWidth = 50
              FieldName = 'INDEXNAME'
            end
            item
              Caption = 'Description'
              FieldName = 'DESCRIPTION'
            end
            item
              Caption = 'Location'
              FieldName = 'LOCATION'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSearchIndex
          Properties.OnEditValueChanged = cxLookupComboBox1PropertiesEditValueChanged
          TabOrder = 10
          Width = 393
        end
      end
    end
  end
  object statusBar: TdxStatusBar
    Left = 0
    Top = 1025
    Width = 1635
    Height = 30
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsXP
    UseSystemFont = True
    Left = 959
    Top = 76
    PixelsPerInch = 120
    DockControlHeights = (
      0
      0
      32
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 54
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnClose'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnClose: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btnCloseClick
    end
  end
  object qrySearchIndex: TUniQuery
    KeyFields = 'ndocindex'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from DocIndex'
      
        'where NDocIndex in (select NDocIndex from DocIndexUser where Use' +
        'rID = :UserID)')
    Left = 816
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UserID'
        Value = nil
      end>
  end
  object dsSearchIndex: TUniDataSource
    DataSet = qrySearchIndex
    Left = 928
    Top = 544
  end
end
