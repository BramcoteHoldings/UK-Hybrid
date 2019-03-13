object frmCreditorAccountsSearch: TfrmCreditorAccountsSearch
  Left = 532
  Top = 325
  Caption = 'Creditor Accounts Payable Selection'
  ClientHeight = 520
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 17
  object pageSearch: TcxPageControl
    Left = 0
    Top = 30
    Width = 584
    Height = 490
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabFilters
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    OnChange = pageSearchChange
    ExplicitLeft = 5
    ExplicitTop = 41
    ExplicitWidth = 572
    ExplicitHeight = 473
    ClientRectBottom = 486
    ClientRectLeft = 4
    ClientRectRight = 580
    ClientRectTop = 29
    object tabGrid: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Display Grid'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        576
        457)
      object dbgrAccounts: TcxGrid
        Left = 7
        Top = 10
        Width = 564
        Height = 406
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 550
        ExplicitHeight = 387
        object tvAccounts: TcxGridDBTableView
          OnDblClick = tvAccountsDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsAccounts
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 61
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 15
          Preview.LeftIndent = 24
          Preview.RightIndent = 6
          OnColumnHeaderClick = tvAccountsColumnHeaderClick
          object tvAccountsDUE_DATE: TcxGridDBColumn
            Caption = 'Due'
            DataBinding.FieldName = 'DUE_DATE'
            MinWidth = 24
            Styles.Header = cxStyle1
            Width = 85
          end
          object tvAccountsREFNO: TcxGridDBColumn
            Caption = 'Invoice Ref'
            DataBinding.FieldName = 'REFNO'
            MinWidth = 24
            Styles.Header = cxStyle2
            Width = 97
          end
          object tvAccountsCREDITOR: TcxGridDBColumn
            Caption = 'Creditor'
            DataBinding.FieldName = 'CREDITOR'
            MinWidth = 24
            Styles.Header = cxStyle3
            Width = 134
          end
          object tvAccountsDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 24
            Styles.Header = cxStyle4
            Width = 151
          end
          object tvAccountsOWING: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 24
            Styles.Header = cxStyle5
            Width = 85
          end
        end
        object dbgrAccountsLevel1: TcxGridLevel
          GridView = tvAccounts
        end
      end
      object btnCancel: TcxButton
        Left = 479
        Top = 422
        Width = 91
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = '&Cancel'
        LookAndFeel.NativeStyle = True
        ModalResult = 2
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D560A00000000000036000000280000002400000012000000010020000000
          0000000000004D1000004D100000000000000000000000808000008080000080
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
        ExplicitLeft = 465
        ExplicitTop = 403
      end
      object btnOK: TcxButton
        Left = 377
        Top = 422
        Width = 91
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akRight, akBottom]
        Caption = '&OK'
        LookAndFeel.NativeStyle = True
        ModalResult = 1
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          0000000000004D1000004D1000000000000000000000FF00FF00FF00FF00FF00
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
        TabOrder = 2
        ExplicitLeft = 363
        ExplicitTop = 403
      end
    end
    object tabFilters: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Filters'
      ImageIndex = 1
      ExplicitWidth = 564
      ExplicitHeight = 440
      DesignSize = (
        576
        457)
      object rgOwing: TcxRadioGroup
        Left = 13
        Top = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Select'
        Properties.Items = <
          item
            Caption = 'Accounts owing'
          end
          item
            Caption = 'Accounts paid'
          end
          item
            Caption = 'All Accounts'
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 98
        Width = 384
      end
      object fraIncludes: TcxGroupBox
        Left = 13
        Top = 120
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Select Containing'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 153
        Width = 384
        object Label8: TLabel
          Left = 18
          Top = 29
          Width = 48
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Creditor'
        end
        object Label9: TLabel
          Left = 18
          Top = 61
          Width = 66
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Description'
        end
        object Label10: TLabel
          Left = 18
          Top = 91
          Width = 52
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Invoice #'
        end
        object Label11: TLabel
          Left = 18
          Top = 123
          Width = 45
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Amount'
        end
        object tbCreditor: TcxTextEdit
          Left = 95
          Top = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 255
        end
        object tbDesc: TcxTextEdit
          Left = 95
          Top = 55
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 255
        end
        object tbInvoiceNumber: TcxTextEdit
          Left = 95
          Top = 86
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 255
        end
        object tbAmount: TcxCurrencyEdit
          Left = 95
          Top = 118
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 255
        end
      end
      object gbLess: TcxGroupBox
        Left = 13
        Top = 279
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Select Less than'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Height = 89
        Width = 384
        object Label12: TLabel
          Left = 19
          Top = 24
          Width = 54
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Due Date'
        end
        object Label13: TLabel
          Left = 18
          Top = 53
          Width = 37
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Owing'
        end
        object dtpDue: TDateTimePicker
          Left = 95
          Top = 19
          Width = 147
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Date = 23204.625088530100000000
          Time = 23204.625088530100000000
          ShowCheckbox = True
          TabOrder = 0
        end
        object neOwingLess: TcxCurrencyEdit
          Left = 95
          Top = 49
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 147
        end
      end
      object gbGreater: TcxGroupBox
        Left = 13
        Top = 370
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Select Greater than'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 65
        Width = 384
        object Label14: TLabel
          Left = 18
          Top = 29
          Width = 37
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Owing'
        end
        object neOwingGreater: TcxCurrencyEdit
          Left = 95
          Top = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 147
        end
      end
      object btnClear: TcxButton
        Left = 471
        Top = 415
        Width = 91
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akRight, akBottom]
        Caption = 'Clear All'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          0000000000004D1000004D1000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FFFF0000FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF000000FFFF0000
          FFFF0000FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FFFF0000FFFF0000FFFFFF00FF00FF00FF00FF00FF000000FFFFFF00
          FF000000FFFF0000FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FFFF0000FFFFFF00FF00FF00FF000000FFFF0000FFFFFF00
          FF00FF00FF000000FFFF0000FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FFFF0000FFFFFF00FF000000FFFF0000FFFFFF00
          FF00FF00FF00FF00FF000000FFFF0000FFFF0000FFFFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FFFF0000FFFFFF00FF000000FFFF0000FFFFFF00
          FF00FF00FF00FF00FF00FF00FF000000FFFF0000FFFF0000FFFFFF00FF00FF00
          FF00FF00FF00FF00FF000000FFFF0000FFFFFF00FF000000FFFF0000FFFFFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF0000FFFF0000FFFFFF00
          FF00FF00FF00FF00FF000000FFFF0000FFFFFF00FF000000FFFF0000FFFFFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF0000FFFF0000
          FFFFFF00FF00FF00FF000000FFFF0000FFFFFF00FF00FF00FF000000FFFF0000
          FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF0000
          FFFF0000FFFFFF00FF000000FFFFFF00FF00FF00FF00FF00FF000000FFFF0000
          FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FFFF0000FFFF0000FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF000000
          FFFF0000FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OptionsImage.Spacing = 5
        TabOrder = 4
        OnClick = btnClearAllClick
        ExplicitLeft = 459
        ExplicitTop = 398
      end
    end
  end
  object qryAccounts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT REFNO, CREDITOR, DESCR, OWING, DUE_DATE, NCHEQUE, TYPE'
      'FROM INVOICE'
      'WHERE DUE_DATE <= :P_DueDate'
      'ORDER BY DUE_DATE')
    Left = 409
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DueDate'
        Value = nil
      end>
  end
  object dsAccounts: TUniDataSource
    AutoEdit = False
    DataSet = qryAccounts
    Left = 457
    Top = 28
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 442
    Top = 64
    PixelsPerInch = 106
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
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.HotImages = dmAxiom.ilstToolbar
    ImageOptions.Images = dmAxiom.ilstToolbar
    ImageOptions.LargeImages = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 366
    Top = 75
    PixelsPerInch = 106
    DockControlHeights = (
      0
      0
      30
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
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 46
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnClearAll'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbtnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 21
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object tbtnClearAll: TdxBarButton
      Caption = 'Clear All'
      Category = 0
      Hint = 'Clear filter and refresh data'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
  end
end
