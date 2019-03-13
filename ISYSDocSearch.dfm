object frmISYSSearch: TfrmISYSSearch
  Left = 636
  Top = 247
  Width = 870
  Height = 640
  Caption = 'File Search (ISYS)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pagISYSSearch: TcxPageControl
    Left = 0
    Top = 28
    Width = 854
    Height = 554
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabSheet2
    Properties.ShowFrame = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    TabSlants.Kind = skCutCorner
    OnChange = pagISYSSearchChange
    ClientRectBottom = 553
    ClientRectLeft = 1
    ClientRectRight = 853
    ClientRectTop = 20
    object cxTabSheet1: TcxTabSheet
      Caption = 'Results'
      ImageIndex = 0
      object grdISYSDocs: TcxGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 533
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvISYSDocs: TcxGridTableView
          OnDblClick = tvISYSDocsDblClick
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '## item(s)'
              Kind = skCount
              Column = tvISYSDocsRelevance
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnCompare = tvISYSDocsDataControllerCompare
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.HeaderEndEllipsis = True
          Styles.Group = dmAxiom.UnreadStyle
          OnColumnHeaderClick = tvISYSDocsColumnHeaderClick
          object tvISYSDocsMatter: TcxGridColumn
            Caption = 'Matter'
          end
          object tvISYSDocsTitle: TcxGridColumn
            Tag = 12
            Caption = 'Title'
            Width = 296
          end
          object tvISYSDocsFilename: TcxGridColumn
            Tag = 6
            Caption = 'In Folder'
            Width = 338
          end
          object tvISYSDocsRelevance: TcxGridColumn
            Tag = 8
            Caption = 'Relevance'
            DataBinding.ValueType = 'Integer'
            PropertiesClassName = 'TcxProgressBarProperties'
            Properties.AssignedValues.Min = True
            Properties.BarStyle = cxbsGradient
            Properties.BorderWidth = 1
            Properties.EndColor = clBlue
            Properties.Max = 100.000000000000000000
            Properties.ShowText = False
            OnGetDisplayText = tvISYSDocsRelevanceGetDisplayText
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soDescending
            Width = 178
          end
          object tvISYSDocsHits: TcxGridColumn
            Tag = 2
            Caption = 'Hits'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.SpinButtons.Visible = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 46
          end
          object tvISYSDocsRelevanceNo: TcxGridColumn
            Tag = 1
            Caption = 'Relevance No'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '##%'
            Properties.SpinButtons.Visible = False
            Properties.ValueType = vtFloat
            OnGetDisplayText = tvISYSDocsRelevanceGetDisplayText
            Options.Grouping = False
            Options.Sorting = False
          end
          object tvISYSDocsDocumentNo: TcxGridColumn
            Visible = False
            VisibleForCustomization = False
          end
        end
        object grdISYSDocsLevel1: TcxGridLevel
          GridView = tvISYSDocs
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      object cxGroupBox1: TcxGroupBox
        Left = 8
        Top = 13
        Caption = 'Document'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 164
        Width = 563
        object Label4: TLabel
          Left = 9
          Top = 17
          Width = 21
          Height = 13
          Caption = 'Text'
          Transparent = True
        end
        object Label9: TLabel
          Left = 9
          Top = 42
          Width = 38
          Height = 13
          Caption = 'Exclude'
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 67
          Width = 89
          Height = 13
          AutoSize = False
          Caption = 'Filename Like:'
        end
        object Label1: TLabel
          Left = 8
          Top = 93
          Width = 89
          Height = 13
          AutoSize = False
          Caption = 'Filename Unlike:'
        end
        object edContains: TcxTextEdit
          Left = 112
          Top = 13
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 269
        end
        object gbCreated: TcxGroupBox
          Left = 389
          Top = 9
          Caption = 'File Date'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Height = 76
          Width = 166
          object Label6: TLabel
            Left = 8
            Top = 24
            Width = 27
            Height = 13
            Caption = 'Since'
            Transparent = True
          end
          object Label7: TLabel
            Left = 8
            Top = 48
            Width = 31
            Height = 13
            Caption = 'Before'
            Transparent = True
          end
          object dtpCreatedSince: TDateTimePicker
            Left = 48
            Top = 24
            Width = 105
            Height = 21
            Date = 36285.638676412000000000
            Time = 36285.638676412000000000
            ShowCheckbox = True
            Checked = False
            TabOrder = 0
          end
          object dtpCreatedBefore: TDateTimePicker
            Left = 48
            Top = 48
            Width = 105
            Height = 21
            Date = 36285.638676412000000000
            Time = 36285.638676412000000000
            ShowCheckbox = True
            Checked = False
            TabOrder = 1
          end
        end
        object edExclude: TcxTextEdit
          Left = 112
          Top = 38
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 269
        end
        object cbConflate: TcxCheckBox
          Left = 14
          Top = 134
          Caption = 'Word Conflation (Stemming)'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 163
        end
        object cbQueryExp: TcxCheckBox
          Left = 199
          Top = 134
          Caption = 'Synonym Expansion'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 121
        end
        object edtFilenameLike: TcxTextEdit
          Left = 112
          Top = 63
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 269
        end
        object edtFilenameUnlike: TcxTextEdit
          Left = 112
          Top = 89
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 269
        end
        object cmbConditionOne: TcxComboBox
          Left = 57
          Top = 13
          Properties.Items.Strings = (
            'All'
            'Any')
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Text = 'All'
          Width = 51
        end
        object cmbConditionEx: TcxComboBox
          Left = 57
          Top = 38
          Properties.Items.Strings = (
            'All'
            'Any')
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Text = 'All'
          Width = 51
        end
      end
    end
  end
  object statusBar: TdxStatusBar
    Left = 0
    Top = 582
    Width = 854
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
    Left = 653
    Top = 105
    DockControlHeights = (
      0
      0
      28
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
end
