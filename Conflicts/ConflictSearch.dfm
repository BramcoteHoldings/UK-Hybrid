object frmConflictSearch: TfrmConflictSearch
  Left = 549
  Top = 309
  Width = 1304
  Height = 731
  AutoScroll = True
  Caption = 'Conflict Search'
  Color = clBtnFace
  Constraints.MinHeight = 731
  Constraints.MinWidth = 936
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 15
  object Label33: TLabel
    Left = 11
    Top = 36
    Width = 24
    Height = 15
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Date'
    Transparent = True
  end
  object sbarFilter: TStatusBar
    Left = 0
    Top = 669
    Width = 1288
    Height = 23
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <
      item
        Alignment = taRightJustify
        Width = 100
      end
      item
        Text = 'Count'
        Width = 50
      end>
  end
  object pageSearch: TcxPageControl
    Left = 0
    Top = 28
    Width = 1288
    Height = 641
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 3
    Properties.ActivePage = tabGrid
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 637
    ClientRectLeft = 4
    ClientRectRight = 1284
    ClientRectTop = 26
    object tabGrid: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Conficts'
      ImageIndex = 0
      OnShow = tabGridShow
      object Panel1: TPanel
        Left = 0
        Top = 567
        Width = 1280
        Height = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1280
          44)
        object Label9: TLabel
          Left = 0
          Top = 13
          Width = 103
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akLeft, akBottom]
          Caption = 'Search for Conflicts'
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          ExplicitTop = 24
        end
        object edtConflictSearch: TcxTextEdit
          Left = 155
          Top = 10
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akLeft, akBottom]
          ParentShowHint = False
          Properties.OnChange = edtConflictSearchPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 173
        end
        object bnCancel: TcxButton
          Left = 1168
          Top = 9
          Width = 106
          Height = 29
          Hint = 'Exit'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akRight, akBottom]
          Caption = 'Exit'
          LookAndFeel.NativeStyle = True
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
          OptionsImage.Spacing = 7
          TabOrder = 1
          OnClick = aFileExitExecute
        end
        object btnCreateClient: TcxButton
          Left = 424
          Top = 8
          Width = 108
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akRight, akBottom]
          Caption = 'New Client'
          LookAndFeel.NativeStyle = True
          OptionsImage.Spacing = 7
          TabOrder = 2
          Visible = False
          OnClick = btnCreateClientClick
        end
        object btnCreateMatter: TcxButton
          Left = 540
          Top = 8
          Width = 109
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akRight, akBottom]
          Caption = 'New Matter'
          LookAndFeel.NativeStyle = True
          OptionsImage.Spacing = 7
          TabOrder = 3
          Visible = False
        end
      end
      object dbGrConflicts: TcxGrid
        Left = 0
        Top = 0
        Width = 1280
        Height = 567
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        object vConflicts: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = vConflictsCellDblClick
          OnEditDblClick = vConflictsEditDblClick
          DataController.DataSource = dsConflicts
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                end>
              SummaryItems = <
                item
                  Kind = skCount
                end>
            end>
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.NavigatorOffset = 63
          OptionsView.ColumnAutoWidth = True
          OptionsView.IndicatorWidth = 15
          Preview.LeftIndent = 25
          Preview.RightIndent = 7
          object vConflictsWhereFound: TcxGridDBColumn
            Caption = 'Where Found'
            DataBinding.FieldName = 'cat'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 85
          end
          object vConflictsFileID: TcxGridDBColumn
            Caption = 'File ID'
            DataBinding.FieldName = 'FileID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 74
          end
          object vConflictsClientName: TcxGridDBColumn
            Caption = 'Client Name'
            DataBinding.FieldName = 'ClientName'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 239
          end
          object vConflictsMatterDesc: TcxGridDBColumn
            Caption = 'Matter Description'
            DataBinding.FieldName = 'matterdesc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 363
          end
          object vConflictsDataFieldName: TcxGridDBColumn
            Caption = 'Field Name'
            DataBinding.FieldName = 'DataFieldName'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 183
          end
          object vConflictsData: TcxGridDBColumn
            Caption = 'Field TextValue'
            DataBinding.FieldName = 'Data'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 229
          end
          object vConflictsExclude: TcxGridDBColumn
            Caption = 'No Conflict'
            DataBinding.FieldName = 'EXCLUDE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Sorting = False
            VisibleForEditForm = bFalse
            Width = 105
          end
          object vConflictsClientID: TcxGridDBColumn
            DataBinding.FieldName = 'nclient'
            Visible = False
            IsCaptionAssigned = True
          end
          object vConflictsNMatter: TcxGridDBColumn
            DataBinding.FieldName = 'NMATTER'
            Visible = False
          end
        end
        object dbGrConflictsLevel1: TcxGridLevel
          GridView = vConflicts
        end
      end
    end
    object tabFilters: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Filter'
      ImageIndex = 1
      TabVisible = False
      DesignSize = (
        1280
        611)
      object Label14: TLabel
        Left = 40
        Top = 553
        Width = 90
        Height = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akBottom]
        Caption = '&Search for Client '
        FocusControl = edtClientSearch
        Transparent = True
        ExplicitTop = 548
      end
      object Label21: TLabel
        Left = 287
        Top = 553
        Width = 74
        Height = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akBottom]
        Caption = 'S&earch for File'
        FocusControl = edtFileSearch
        Transparent = True
        ExplicitTop = 548
      end
      object cbShowRecentlyAccessed: TcxCheckBox
        Left = 683
        Top = 504
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        Width = 74
      end
      object edtClientSearch: TEdit
        Left = 40
        Top = 573
        Width = 173
        Height = 23
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akBottom]
        TabOrder = 1
      end
      object edtFileSearch: TEdit
        Left = 287
        Top = 573
        Width = 137
        Height = 23
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object gbOpened: TcxGroupBox
        Left = 681
        Top = 8
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Opened'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 95
        Width = 230
        object Label19: TLabel
          Left = 12
          Top = 24
          Width = 28
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Since'
          Transparent = True
        end
        object Label20: TLabel
          Left = 12
          Top = 60
          Width = 34
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Before'
          Transparent = True
        end
        object dtpOpenedSince: TDateTimePicker
          Left = 99
          Top = 20
          Width = 120
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 0
        end
        object dtpOpenedBefore: TDateTimePicker
          Left = 99
          Top = 55
          Width = 120
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 1
        end
        object chkOpenedSince: TCheckBox
          Left = 75
          Top = 23
          Width = 21
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 2
        end
        object chkOpenedBefore: TCheckBox
          Left = 75
          Top = 56
          Width = 21
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 3
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 681
        Top = 103
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Search Option'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 190
        Width = 230
        object chkEntity: TcxCheckBox
          Left = 23
          Top = 159
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Only current entity'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
        end
        object rgMatterOptions: TcxRadioGroup
          Left = 15
          Top = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Height = 141
          Width = 200
        end
      end
      object gbCompleted: TcxGroupBox
        Left = 681
        Top = 295
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Completed'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Height = 97
        Width = 230
        object Label27: TLabel
          Left = 12
          Top = 31
          Width = 28
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Since'
          Transparent = True
        end
        object Label28: TLabel
          Left = 12
          Top = 64
          Width = 34
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Before'
          Transparent = True
        end
        object dtpCompletedSince: TDateTimePicker
          Left = 99
          Top = 24
          Width = 120
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 0
        end
        object dtpCompletedBefore: TDateTimePicker
          Left = 99
          Top = 60
          Width = 120
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 1
        end
        object chkCompletedSince: TCheckBox
          Left = 75
          Top = 27
          Width = 21
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 2
        end
        object chkCompletedBefore: TCheckBox
          Left = 75
          Top = 61
          Width = 21
          Height = 26
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 3
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 681
        Top = 403
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'S.L.E. Date'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 104
        Width = 230
        object Label30: TLabel
          Left = 12
          Top = 33
          Width = 28
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Since'
          Transparent = True
        end
        object Label29: TLabel
          Left = 12
          Top = 67
          Width = 34
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Before'
          Transparent = True
        end
        object dtpSLESince: TDateTimePicker
          Left = 99
          Top = 27
          Width = 120
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 0
        end
        object dtpSLEBefore: TDateTimePicker
          Left = 99
          Top = 61
          Width = 120
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 36285.638676412010000000
          Time = 36285.638676412010000000
          Enabled = False
          TabOrder = 1
        end
        object chkSLESince: TCheckBox
          Left = 73
          Top = 28
          Width = 22
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 2
        end
        object chkSLEBefore: TCheckBox
          Left = 72
          Top = 64
          Width = 21
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 3
        end
      end
      object gbBalances: TcxGroupBox
        Left = 420
        Top = 295
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Balances greater than'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 252
        Width = 255
        object Label10: TLabel
          Left = 7
          Top = 28
          Width = 89
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Work in Progress'
          Transparent = True
        end
        object Label18: TLabel
          Left = 7
          Top = 216
          Width = 56
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Clear Trust'
          Transparent = True
        end
        object lblTrust: TLabel
          Left = 7
          Top = 184
          Width = 26
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Trust'
          Transparent = True
        end
        object Label15: TLabel
          Left = 7
          Top = 153
          Width = 92
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Unbilled Sundries'
          Transparent = True
        end
        object Label13: TLabel
          Left = 7
          Top = 123
          Width = 55
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Fees Billed'
          Transparent = True
        end
        object Label12: TLabel
          Left = 7
          Top = 92
          Width = 78
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Disbursements'
          Transparent = True
        end
        object Label11: TLabel
          Left = 7
          Top = 61
          Width = 41
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Debtors'
          Transparent = True
        end
        object neWIP: TNumberEdit
          Left = 153
          Top = 23
          Width = 94
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          OnKeyPress = CheckReturn
        end
        object neDebtors: TNumberEdit
          Left = 153
          Top = 55
          Width = 94
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          OnKeyPress = CheckReturn
        end
        object neDisb: TNumberEdit
          Left = 153
          Top = 87
          Width = 94
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          OnKeyPress = CheckReturn
        end
        object neFeesBilled: TNumberEdit
          Left = 153
          Top = 119
          Width = 94
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          OnKeyPress = CheckReturn
        end
        object neSund: TNumberEdit
          Left = 153
          Top = 148
          Width = 94
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          OnKeyPress = CheckReturn
        end
        object neTrust: TNumberEdit
          Left = 153
          Top = 180
          Width = 94
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          OnKeyPress = CheckReturn
        end
        object neClearTrust: TNumberEdit
          Left = 153
          Top = 212
          Width = 94
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          OnKeyPress = CheckReturn
        end
      end
      object fraIncludes: TcxGroupBox
        Left = 11
        Top = 295
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Select Containing'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Height = 252
        Width = 404
        object Label5: TLabel
          Left = 12
          Top = 27
          Width = 60
          Height = 15
          Hint = 'Enter any part of a Description to filter by that description.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Description'
          Transparent = True
        end
        object Label23: TLabel
          Left = 12
          Top = 60
          Width = 94
          Height = 15
          Hint = 
            'Enter any part of the Reference number used by your Client to lo' +
            'cate matters using that reference.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Client'#39's Reference'
          Transparent = True
        end
        object Label16: TLabel
          Left = 12
          Top = 127
          Width = 42
          Height = 15
          Hint = 
            'Enter any part of the Contact Name to locate matters associated ' +
            'with that contact.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Contact'
          Transparent = True
        end
        object Label25: TLabel
          Left = 12
          Top = 156
          Width = 32
          Height = 15
          Hint = 
            'Enter any part of the Notes to locate matters containing that st' +
            'ring within the notes field.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Bill To'
          Transparent = True
        end
        object Label22: TLabel
          Left = 12
          Top = 187
          Width = 31
          Height = 15
          Hint = 
            'Enter any part of the Notes to locate matters containing that st' +
            'ring within the notes field.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Notes'
          Transparent = True
        end
        object Label7: TLabel
          Left = 11
          Top = 219
          Width = 62
          Height = 15
          Hint = 
            'Enter any part of the Notes to locate matters containing that st' +
            'ring within the notes field.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Client Code'
          Transparent = True
        end
        object tbDesc: TEdit
          Left = 207
          Top = 23
          Width = 181
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 0
          OnKeyPress = CheckReturn
        end
        object tbOPRef: TEdit
          Left = 207
          Top = 55
          Width = 181
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 1
          OnKeyPress = CheckReturn
        end
        object tbOtherParty: TEdit
          Left = 207
          Top = 87
          Width = 181
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 2
          OnKeyPress = CheckReturn
        end
        object tbContact: TEdit
          Left = 207
          Top = 119
          Width = 181
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 3
          OnKeyPress = CheckReturn
        end
        object edBillTo: TEdit
          Left = 207
          Top = 148
          Width = 181
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 4
          OnKeyPress = CheckReturn
        end
        object tbNotes: TEdit
          Left = 207
          Top = 180
          Width = 181
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 5
          OnKeyPress = CheckReturn
        end
        object tbClientCode: TEdit
          Left = 207
          Top = 212
          Width = 181
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 6
          OnKeyPress = CheckReturn
        end
        object cmbOPCategory: TComboBox
          Left = 11
          Top = 87
          Width = 188
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          Color = clMenu
          TabOrder = 7
          OnChange = cmbOPCategoryChange
          Items.Strings = (
            'Other Parties')
        end
      end
      object bnClearAll: TcxButton
        Left = 1164
        Top = 565
        Width = 108
        Height = 39
        Hint = 'Clear All'
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akRight, akBottom]
        Caption = 'Clear All'
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
        OptionsImage.ImageIndex = 1
        OptionsImage.NumGlyphs = 2
        OptionsImage.Spacing = 7
        TabOrder = 9
      end
      object fraEqual: TcxGroupBox
        Left = 11
        Top = 8
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Select Equal to'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Height = 285
        Width = 665
        object lblPartner: TLabel
          Left = 12
          Top = 21
          Width = 38
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Partner'
          Transparent = True
        end
        object lblController: TLabel
          Left = 12
          Top = 55
          Width = 53
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Controller'
          Transparent = True
        end
        object lblAuthor: TLabel
          Left = 12
          Top = 87
          Width = 37
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Author'
          Transparent = True
        end
        object lblOperator: TLabel
          Left = 12
          Top = 120
          Width = 47
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Operator'
          Transparent = True
        end
        object Label6: TLabel
          Left = 12
          Top = 187
          Width = 53
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'WorkFlow'
          Transparent = True
        end
        object Label3: TLabel
          Left = 275
          Top = 21
          Width = 25
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Type'
          Transparent = True
        end
        object Label4: TLabel
          Left = 275
          Top = 55
          Width = 43
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Subtype'
          Transparent = True
        end
        object Label24: TLabel
          Left = 275
          Top = 87
          Width = 37
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Branch'
          Transparent = True
        end
        object Label1: TLabel
          Left = 275
          Top = 120
          Width = 60
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Jurisdiction'
          Transparent = True
        end
        object Label2: TLabel
          Left = 275
          Top = 152
          Width = 32
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Status'
          Transparent = True
        end
        object lblParaLegal: TLabel
          Left = 13
          Top = 152
          Width = 54
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Para Legal'
          Transparent = True
        end
        object cbOperator: TcxLookupComboBox
          Left = 173
          Top = 116
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 94
        end
        object cbAuthor: TcxLookupComboBox
          Left = 173
          Top = 83
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 94
        end
        object cbController: TcxLookupComboBox
          Left = 173
          Top = 51
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 94
        end
        object cbPartner: TcxLookupComboBox
          Left = 173
          Top = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 94
        end
        object cbType: TcxLookupComboBox
          Left = 372
          Top = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 284
        end
        object cbSubType: TcxLookupComboBox
          Left = 372
          Top = 51
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 284
        end
        object cbBranch: TcxLookupComboBox
          Left = 372
          Top = 83
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 284
        end
        object cbJurisdiction: TcxLookupComboBox
          Left = 372
          Top = 116
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 284
        end
        object cbStatus: TcxLookupComboBox
          Left = 372
          Top = 148
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 284
        end
        object cmbDepartment: TcxLookupComboBox
          Left = 173
          Top = 215
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Properties.ClearKey = 46
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Width = 483
        end
        object cxLabel1: TcxLabel
          Left = 12
          Top = 216
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Department'
          Properties.Orientation = cxoLeft
          Transparent = True
        end
        object cbWorkFlowType: TcxLookupComboBox
          Left = 173
          Top = 181
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Width = 483
        end
        object cmbParaLegal: TcxLookupComboBox
          Left = 173
          Top = 148
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          Width = 94
        end
        object cmbDebtorStatus: TcxLookupComboBox
          Left = 173
          Top = 247
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          Width = 483
        end
        object cxLabel2: TcxLabel
          Left = 12
          Top = 248
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Debtor Status'
          Properties.Orientation = cxoLeft
          Transparent = True
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 11
        Top = 552
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Archive Box/Item Details'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Height = 92
        Width = 897
        object Label26: TLabel
          Left = 11
          Top = 27
          Width = 28
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'From'
          Transparent = True
        end
        object Label31: TLabel
          Left = 243
          Top = 27
          Width = 31
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Notes'
          Transparent = True
        end
        object Label32: TLabel
          Left = 700
          Top = 27
          Width = 29
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Box #'
          Transparent = True
        end
        object Label34: TLabel
          Left = 12
          Top = 59
          Width = 13
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'To'
          Transparent = True
        end
        object lblArchivedNo: TLabel
          Left = 220
          Top = 51
          Width = 67
          Height = 36
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          AutoSize = False
          Caption = 'Archive Number'
          Transparent = True
          WordWrap = True
        end
        object Label38: TLabel
          Left = 441
          Top = 59
          Width = 53
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Barcode #'
          Transparent = True
        end
        object chkArchivedDate: TCheckBox
          Left = 51
          Top = 24
          Width = 24
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 0
        end
        object dtpArchivedDate: TDateTimePicker
          Left = 75
          Top = 21
          Width = 132
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 40909.638676412010000000
          Time = 40909.638676412010000000
          Enabled = False
          TabOrder = 1
        end
        object edArchivedNotes: TcxTextEdit
          Left = 295
          Top = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 380
        end
        object edBoxNumber: TcxTextEdit
          Left = 752
          Top = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 135
        end
        object chkArchivedDateTo: TCheckBox
          Left = 51
          Top = 55
          Width = 24
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 4
        end
        object dtpArchivedDateTo: TDateTimePicker
          Left = 73
          Top = 55
          Width = 134
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 40909.638676412010000000
          Time = 40909.638676412010000000
          Enabled = False
          TabOrder = 5
        end
        object edtArchiveNumber: TcxTextEdit
          Left = 295
          Top = 55
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 136
        end
        object edtBarcode: TcxTextEdit
          Left = 524
          Top = 55
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 151
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 11
        Top = 651
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Original Matter Archive date'
        PanelStyle.CaptionIndent = 3
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 12
        Height = 65
        Width = 516
        object Label35: TLabel
          Left = 12
          Top = 31
          Width = 28
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Since'
          Transparent = True
        end
        object Label36: TLabel
          Left = 261
          Top = 31
          Width = 34
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Before'
          Transparent = True
        end
        object dtpArchivedSince: TDateTimePicker
          Left = 99
          Top = 24
          Width = 134
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 40909.638676412010000000
          Time = 40909.638676412010000000
          Enabled = False
          TabOrder = 0
        end
        object dtpArchivedBefore: TDateTimePicker
          Left = 347
          Top = 24
          Width = 136
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 40909.638676412010000000
          Time = 40909.638676412010000000
          Enabled = False
          TabOrder = 1
        end
        object chkArchivedSince: TCheckBox
          Left = 75
          Top = 27
          Width = 21
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 2
        end
        object chkArchivedBefore: TCheckBox
          Left = 324
          Top = 27
          Width = 23
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 3
        end
      end
    end
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
  object tmrSearch: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = tmrSearchTimer
    Left = 385
    Top = 312
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
  object StyleRepository: TcxStyleRepository
    Left = 968
    Top = 164
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
      28
      0)
    object dxBarManager1Bar2: TdxBar
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
          ItemName = 'dxBarButton9'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Print Grid'
      Category = 0
      Enabled = False
      Visible = ivAlways
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Print'
      Category = 1
      Hint = 'Print'
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Print'
      Category = 3
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 14
      OnClick = aPrintExecute
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
    object dxBarButton13: TdxBarButton
      Caption = 'Print'
      Category = 3
      Hint = 'Print'
      Visible = ivAlways
    end
  end
  object qryConflicts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from'
      '('
      
        '    select '#39'Client Name'#39' cat, to_char(cl.name) clientID, nclient' +
        ' nclient, null matterNo,  null FileID, name ClientName, '
      '    null nric,'
      '    null matterdesc,'
      '    null DataFieldName,'
      '    null Data,'
      '    upper(cl.name) searchtext, '#39'N'#39' Exclude'
      '    from phonebook cl'
      '    where nclient is not null'
      '    union'
      
        '    select '#39'Contact Name'#39' cat, to_char(cl.name) clientID, nclien' +
        't nclient, null matterNo,  null FileID, name ClientName, '
      '    null nric,'
      '    null matterdesc,'
      '    null DataFieldName,'
      '    null Data,'
      '    upper(cl.name) searchtext, '#39'N'#39' Exclude'
      '    from phonebook cl'
      '    where nclient is null'
      '    union'
      
        '    select '#39'Matter ID'#39' cat, null clientID, null nclient, nmatter' +
        ' matterNo,  FileID FileID, null ClientName,'
      '    null nric, longdescr matterdesc,'
      '    null DataFieldName,'
      '    null Data,'
      '    upper(m.FileID) searchtext, '#39'N'#39' Exclude'
      '    from matter m'
      '    union'
      
        '    select '#39'Matter Description'#39' cat, null clientID, nclient ncli' +
        'ent, nmatter matterNo,'
      
        '    FILEID FileID, null ClientName, null nric, longdescr matterd' +
        'esc,'
      '    null DataFieldName,'
      '    null Data,'
      '    upper(longdescr) searchtext, '#39'N'#39' Exclude'
      '    from matter m'
      '    union'
      
        '    select '#39'Contact NRIC'#39' cat, TO_char(nclient) clientID, nclien' +
        't nclient, null matterNo,  null FileID, name ClientName, ph.nric' +
        ','
      '    null matterdesc,'
      '    null DataFieldName,'
      '    null Data,'
      '    upper(ph.nric) searchtext, '#39'N'#39' Exclude'
      '    from phonebook ph'
      '    union'
      
        '    select '#39'Field Name'#39' cat, null clientID, null nclient, nuniqu' +
        'e matterNo,'
      
        '    (select max(fileid) from matter m where m.nmatter = ftl.nuni' +
        'que) FileID,'
      '    null ClientName, null nric,'
      '    null matterdesc, FieldName DataFieldName, textvalue data,'
      '    upper(ftl.FieldName) searchtext, '#39'N'#39' Exclude'
      '    from fieldtypelink ftl'
      '    union'
      '    SELECT '#39'Field Text Value'#39' cat,'
      '       CASE'
      '          WHEN nname IS NOT NULL'
      '             THEN (SELECT NAME'
      '                     FROM phonebook'
      '                    WHERE nname = ftl.nname)'
      '          ELSE NULL'
      '       END AS clientid,'
      '       NULL nclient, nunique matterno,'
      '       CASE'
      '          WHEN ftl.nmatter IS NOT NULL'
      '             THEN (SELECT MAX (fileid)'
      '                     FROM matter m'
      '                    WHERE m.nmatter = ftl.nmatter)'
      '          ELSE NULL'
      '       END AS fileid,'
      '       CASE'
      '          WHEN nname IS NOT NULL'
      '             THEN (SELECT NAME'
      '                     FROM phonebook'
      '                    WHERE nname = ftl.nname)'
      '          ELSE NULL'
      '       END AS clientname, NULL nric, (SELECT MAX (longdescr)'
      '                                      FROM matter m'
      
        '                                     WHERE m.nmatter = ftl.nuniq' +
        'ue)'
      
        '                                                                ' +
        '   matterdesc,'
      '       fieldname datafieldname, UPPER (textvalue) DATA,'
      '       UPPER (ftl.textvalue) searchtext, '#39'N'#39' exclude'
      '  FROM fieldtypelink ftl'
      '    union'
      
        '    select '#39'Contact Passport'#39' cat, TO_char(nclient) clientID, nc' +
        'lient nclient, null matterNo,  null FileID, name ClientName, ph.' +
        'passport_no,'
      '    null matterdesc,'
      '    null DataFieldName,'
      '    ph.passport_no Data,'
      '    upper(ph.passport_no) searchtext, '#39'N'#39' Exclude'
      '    from phonebook ph'
      ') joinups'
      'where upper(searchtext) like '#39'%'#39' || upper(:searchtext) || '#39'%'#39)
    Options.SetFieldsReadOnly = False
    Left = 121
    Top = 319
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'searchtext'
        Value = nil
      end>
  end
  object dsConflicts: TUniDataSource
    DataSet = vtConflicts
    Left = 119
    Top = 387
  end
  object plConflicts: TppDBPipeline
    DataSource = dsConflicts
    UserName = 'plConflicts'
    Left = 299
    Top = 314
  end
  object rptConflictsList: TppReport
    AutoStop = False
    DataPipeline = plConflicts
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
    DeviceType = 'PDF'
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
    Left = 299
    Top = 260
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plConflicts'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25000
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 24471
        mmWidth = 200300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Conflicts Listing'
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
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
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
        mmLeft = 186267
        mmTop = 1852
        mmWidth = 13123
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
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
        mmLeft = 741
        mmTop = 1852
        mmWidth = 15028
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
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
        mmWidth = 40005
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
      mmHeight = 6138
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 5501
        mmLeft = 424
        mmTop = 424
        mmWidth = 200300
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
          DataField = 'CLIENTNAME'
          DataPipeline = plConflicts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plConflicts'
          mmHeight = 3704
          mmLeft = 26174
          mmTop = 953
          mmWidth = 41688
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBMemo3: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'DBMemo3'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'CAT'
          DataPipeline = plConflicts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plConflicts'
          mmHeight = 3704
          mmLeft = 1642
          mmTop = 953
          mmWidth = 23910
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBMemo2: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'DBMemo2'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'DATAFIELDNAME'
          DataPipeline = plConflicts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plConflicts'
          mmHeight = 3598
          mmLeft = 134211
          mmTop = 1270
          mmWidth = 21590
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBMemo4: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'DBMemo4'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'MATTERDESC'
          DataPipeline = plConflicts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plConflicts'
          mmHeight = 3598
          mmLeft = 87646
          mmTop = 1058
          mmWidth = 45720
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'DATA'
          DataPipeline = plConflicts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plConflicts'
          mmHeight = 3598
          mmLeft = 157704
          mmTop = 1482
          mmWidth = 37042
          BandType = 4
          LayerName = Foreground
        end
        object dbMatterNo: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'dbMatterNo'
          Border.mmPadding = 0
          DataField = 'MatterNo'
          DataPipeline = plConflicts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plConflicts'
          mmHeight = 3598
          mmLeft = 69209
          mmTop = 1056
          mmWidth = 13758
          BandType = 4
          LayerName = Foreground
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Search Count:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 1693
        mmTop = 635
        mmWidth = 22649
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 0
        mmWidth = 200300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'CAT'
        DataPipeline = plConflicts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plConflicts'
        mmHeight = 4658
        mmLeft = 32602
        mmTop = 635
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 284300
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BeforeGroupBreak = ppGroup1BeforeGroupBreak
      BreakName = 'Exclude'
      DataPipeline = plConflicts
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plConflicts'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 11430
        mmPrintPosition = 0
        object ppLblIsConflictGroup: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'LblIsConflictGroup'
          OnGetText = ppLblIsConflictGroupGetText
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Confirmed as not conflicting'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3810
          mmLeft = 1483
          mmTop = 3598
          mmWidth = 50377
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Where Found'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3810
          mmLeft = 1483
          mmTop = 7620
          mmWidth = 19685
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          Border.mmPadding = 0
          Caption = 'Field Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 157698
          mmTop = 7408
          mmWidth = 17568
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Field Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3810
          mmLeft = 133788
          mmTop = 7408
          mmWidth = 17568
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Client Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3810
          mmLeft = 26456
          mmTop = 7620
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Matter Description'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3810
          mmLeft = 87646
          mmTop = 7620
          mmWidth = 25188
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Matter Number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          WordWrap = True
          mmHeight = 8467
          mmLeft = 69215
          mmTop = 3598
          mmWidth = 12912
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9313
        mmPrintPosition = 0
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.mmPadding = 0
          Pen.Width = 2
          Weight = 1.200000047683716000
          mmHeight = 3175
          mmLeft = 1691
          mmTop = 4874
          mmWidth = 195369
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = 'Label9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4868
          mmLeft = 1691
          mmTop = 0
          mmWidth = 10372
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          Border.mmPadding = 0
          DataPipeline = plConflicts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plConflicts'
          mmHeight = 4868
          mmLeft = 32412
          mmTop = 0
          mmWidth = 13758
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
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
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
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
            Caption = '&Help'
          end>
      end>
    Images = ilstToolbar
    Left = 807
    Top = 130
    StyleName = 'XP Style'
    object aRefresh: TAction
      Category = 'File'
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 0
    end
    object aClearAll: TAction
      Category = 'File'
      Caption = 'Clear All'
      Hint = 'Clear All'
      ImageIndex = 1
    end
    object aMerge: TAction
      Category = 'File'
      Caption = 'Merge'
      Hint = 'Merge'
      ImageIndex = 2
    end
    object aPrint: TAction
      Category = 'File'
      Caption = 'Print'
      Hint = 'Print'
      ImageIndex = 4
      OnExecute = aPrintExecute
    end
    object aFileExit: TWindowClose
      Category = 'File'
      Caption = 'Exit'
      Hint = 'Exit'
      OnExecute = aFileExitExecute
    end
    object aPrintLabelsAll: TAction
      Category = 'Print'
      Caption = 'Labels - All'
      Enabled = False
    end
    object qPrintLabelsSelected: TAction
      Category = 'Print'
      Caption = 'Labels - Selected'
      Enabled = False
    end
    object aPrintDetails: TAction
      Category = 'Print'
      Caption = 'Details'
      Enabled = False
      OnExecute = aPrintExecute
    end
    object aPrintStatus: TAction
      Category = 'Print'
      Caption = 'Status - No Description'
      Enabled = False
    end
    object aButtonOk: TAction
      Caption = 'Open'
      Enabled = False
      Hint = 'Open Matter'
      ImageIndex = 9
    end
    object aRecentHolder: TAction
      Category = 'Recent'
      Caption = 'RecentHolder'
      Enabled = False
    end
    object aPrintGrid: TAction
      Category = 'Print'
      Caption = 'Print Grid'
      Enabled = False
    end
    object aPrinttoXL: TAction
      Category = 'Print'
      Caption = 'Export to Excel'
      Enabled = False
    end
  end
  object vtConflicts: TVirtualTable
    Left = 192
    Top = 312
    Data = {04000000000000000000}
  end
  object cxEditRepository1: TcxEditRepository
    Left = 920
    Top = 296
    PixelsPerInch = 96
    object cxEditRepository1CheckBoxItem1: TcxEditRepositoryCheckBoxItem
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
    end
  end
  object qrySaveConflict: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'insert into axiom.CONFLICT (DESCRIPTION, Name, DOCID, NCONFLICT,' +
        ' SEARCH_TEXT, SYSTEMDATE, USER_ID)'
      
        'values(:DESCRIPTION, :NAME, :DOCID, :NCONFLICT, :SEARCH_TEXT, sy' +
        'sdate, :USER_ID)')
    Options.SetFieldsReadOnly = False
    Left = 209
    Top = 391
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCRIPTION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCONFLICT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEARCH_TEXT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'USER_ID'
        Value = nil
      end>
  end
  object qrySaveDoc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '-- ID Is generated by a trigger.'
      
        'insert into Doc (DOC_NAME, DOCID, DESCR, Search, Path, Display_P' +
        'ath, Auth1, Is_Conflict, File_Extension, Folder_ID, ImageIndex)'
      
        'values(:DOC_NAME, :DOCID, :Descr, :Search, :Path, :Display_Path,' +
        ' :Auth1, '#39'Y'#39', '#39'PDF'#39', 0, 5)')
    Options.SetFieldsReadOnly = False
    Left = 209
    Top = 447
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOC_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Descr'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Search'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Path'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Display_Path'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Auth1'
        Value = nil
      end>
  end
  object qrySavePhoneBookDoc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '-- ID Is generated by a trigger.'
      'insert into PhoneBook_Doc(NName, DOCID)'
      'values(:NNAME, :DOCID)')
    Options.SetFieldsReadOnly = False
    Left = 209
    Top = 511
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCID'
        Value = nil
      end>
  end
  object QrySaveConflictItems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'insert into CONFLICT_ITEM (NConflict, NConflictItem, NKey, KeyKi' +
        'nd, Exclude)'
      'values(:NCONFLICT, :NConflictItem, :NKey, :KeyKind, :Exclude)')
    Options.SetFieldsReadOnly = False
    Left = 321
    Top = 391
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCONFLICT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NConflictItem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NKey'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'KeyKind'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Exclude'
        Value = nil
      end>
  end
  object qryOldConflicts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select search_text '
      'from conflict'
      'where nconflict = :nconflict')
    Options.SetFieldsReadOnly = False
    Left = 121
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nconflict'
        Value = nil
      end>
  end
end
