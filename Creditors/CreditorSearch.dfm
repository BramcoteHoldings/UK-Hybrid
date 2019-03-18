object frmCreditorSearch: TfrmCreditorSearch
  Left = 947
  Top = 199
  Caption = 'Creditor Selection'
  ClientHeight = 646
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 17
  object pageSearch: TcxPageControl
    Left = 0
    Top = 0
    Width = 728
    Height = 646
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabGrid
    Properties.CustomButtons.Buttons = <>
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    OnChange = pageSearchChange
    ClientRectBottom = 642
    ClientRectLeft = 4
    ClientRectRight = 724
    ClientRectTop = 28
    object tabGrid: TcxTabSheet
      Caption = 'Creditors'
      ImageIndex = 0
      OnShow = tabGridShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 595
      ExplicitHeight = 569
      object Panel1: TPanel
        Left = 0
        Top = 573
        Width = 719
        Height = 39
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          720
          39)
        object Label8: TLabel
          Left = 3
          Top = 12
          Width = 112
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Search for Creditor'
        end
        object Label5: TLabel
          Left = 236
          Top = 12
          Width = 31
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Co&de'
          Visible = False
        end
        object btnOK: TcxButton
          Left = 524
          Top = 5
          Width = 92
          Height = 30
          Anchors = [akRight, akBottom]
          Caption = '&OK'
          Default = True
          LookAndFeel.NativeStyle = True
          ModalResult = 1
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
            00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008000FF00FF
            00FF00FF00FF000000FFFF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008000FF00FF00FF0000
            00FFFF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF000000FFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF00FF00FF0000
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF0000
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080
            00FF00FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00008000FF00FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OptionsImage.Spacing = 5
          TabOrder = 0
          ExplicitLeft = 522
        end
        object btnCancel: TcxButton
          Left = 625
          Top = 5
          Width = 91
          Height = 30
          Anchors = [akRight, akBottom]
          Caption = '&Cancel'
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
          TabOrder = 1
          ExplicitLeft = 623
        end
        object tbCreditorSearch: TcxTextEdit
          Left = 124
          Top = 7
          Properties.OnChange = tbCreditorSearchChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnKeyDown = tbCreditorSearchKeyDown
          Width = 100
        end
        object tbCreditorCodeSearch: TcxTextEdit
          Left = 275
          Top = 7
          Properties.OnChange = tbCreditorCodeSearchChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Visible = False
          OnKeyDown = tbCreditorSearchKeyDown
          Width = 88
        end
      end
      object dbgrCreditors: TcxGrid
        Left = 0
        Top = 0
        Width = 720
        Height = 575
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 719
        ExplicitHeight = 573
        object tvCreditors: TcxGridDBTableView
          OnDblClick = dbgrCreditorsDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCreditors
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 57
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 14
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          Styles.ContentEven = styAltRow
          object tvCreditorsSEARCH: TcxGridDBColumn
            Caption = 'Creditor'
            DataBinding.FieldName = 'SEARCH'
            MinWidth = 23
            Styles.Header = cxStyle1
            Width = 238
          end
          object tvCreditorsCODE: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CODE'
            MinWidth = 23
            Styles.Header = cxStyle2
            Width = 181
          end
          object tvCreditorsGenderDesc: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'GenderDesc'
            MinWidth = 23
            Styles.Header = cxStyle3
            Width = 110
          end
          object tvCreditorsPAY_BY_EFT: TcxGridDBColumn
            Caption = 'Pay by EFT'
            DataBinding.FieldName = 'PAY_BY_EFT'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'Y'
            Properties.DisplayUnchecked = 'N'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            MinWidth = 78
            Options.HorzSizing = False
            Width = 78
          end
        end
        object dbgrCreditorsLevel1: TcxGridLevel
          GridView = tvCreditors
        end
      end
    end
    object tabFilters: TcxTabSheet
      Caption = 'Filters'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 595
      ExplicitHeight = 569
      object fraActive: TcxRadioGroup
        Left = 17
        Top = 150
        Caption = 'Creditor Status'
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Active'
          end
          item
            Caption = 'Inactive'
          end
          item
            Caption = 'Both'
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 54
        Width = 411
      end
      object fraEqual: TcxGroupBox
        Left = 17
        Top = 11
        Caption = 'Select Equal to'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 127
        Width = 411
        object Label6: TLabel
          Left = 10
          Top = 66
          Width = 27
          Height = 17
          Caption = 'Type'
          Transparent = True
        end
        object Label7: TLabel
          Left = 10
          Top = 29
          Width = 83
          Height = 17
          Caption = 'Creditor Code'
          Transparent = True
        end
        object tbCreditorCode: TcxTextEdit
          Left = 107
          Top = 28
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 187
        end
        object cbGender: TcxComboBox
          Left = 107
          Top = 61
          Properties.Items.Strings = (
            'C'
            'F'
            'M'
            'P')
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 83
        end
      end
      object fraIncludes: TcxGroupBox
        Left = 17
        Top = 218
        Caption = 'Select Containing'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Height = 63
        Width = 411
        object Label2: TLabel
          Left = 9
          Top = 28
          Width = 87
          Height = 17
          Caption = 'Creditor Name'
          Transparent = True
        end
        object tbCreditor: TcxTextEdit
          Left = 107
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 290
        end
      end
      object fraInvoiceSearch: TcxGroupBox
        Left = 17
        Top = 296
        Caption = 'Find Creditors by Invoice Numbers'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 63
        Width = 411
        object Label3: TLabel
          Left = 9
          Top = 31
          Width = 52
          Height = 17
          Caption = 'Invoice #'
          Transparent = True
        end
        object tbInvoiceNumber: TcxTextEdit
          Left = 107
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 290
        end
      end
    end
  end
  object dsCreditors: TUniDataSource
    AutoEdit = False
    DataSet = qryCreditors
    Left = 300
    Top = 73
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 431
    Top = 125
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
    object styAltRow: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
  end
  object tmrSearch: TTimer
    Enabled = False
    OnTimer = tmrSearchTimer
    Left = 511
    Top = 48
  end
  object qryCreditors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SEARCH, CODE, CREDGROUP, GENDER, PAY_BY_EFT, NCREDITOR, N' +
        'AME '
      'FROM CREDITOR ORDER BY SEARCH')
    Left = 213
    Top = 18
  end
end
