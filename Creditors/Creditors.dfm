object frmCreditors: TfrmCreditors
  Left = 252
  Top = 174
  Caption = 'Creditors'
  ClientHeight = 749
  ClientWidth = 1270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 15
  object lblName: TLabel
    Left = 10
    Top = 51
    Width = 104
    Height = 15
    Caption = 'Company/Surname'
  end
  object lblContact: TLabel
    Left = 10
    Top = 80
    Width = 109
    Height = 15
    Caption = 'Contact/First Names'
  end
  object lblGender: TLabel
    Left = 10
    Top = 112
    Width = 24
    Height = 15
    Caption = 'Type'
  end
  object lblCreditorGroup: TLabel
    Left = 10
    Top = 135
    Width = 79
    Height = 15
    Caption = 'Creditor Group'
  end
  object Label21: TLabel
    Left = 363
    Top = 50
    Width = 90
    Height = 15
    Caption = 'Creditor Number'
  end
  object Label11: TLabel
    Left = 363
    Top = 79
    Width = 74
    Height = 15
    Caption = 'Creditor Code'
  end
  object Label20: TLabel
    Left = 363
    Top = 135
    Width = 34
    Height = 15
    Caption = 'A.C.N.'
  end
  object Label26: TLabel
    Left = 707
    Top = 41
    Width = 31
    Height = 15
    Caption = 'Notes'
  end
  object imgDocument: TcxImage
    Left = 289
    Top = 806
    TabOrder = 9
    Visible = False
    Height = 29
    Width = 170
  end
  object pagDetails: TcxPageControl
    Left = 0
    Top = 200
    Width = 1270
    Height = 549
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 10
    Properties.ActivePage = tabAccounts
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    OnChange = pagDetailsChange
    OnPageChanging = pagDetailsPageChanging
    ClientRectBottom = 545
    ClientRectLeft = 4
    ClientRectRight = 1266
    ClientRectTop = 26
    object tabAccounts: TcxTabSheet
      Caption = 'Accounts Payable'
      ImageIndex = 0
      object dbgrTransactions: TcxGrid
        Left = 0
        Top = 309
        Width = 1262
        Height = 210
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvTransactions: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsTransactions
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.NavigatorOffset = 57
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 14
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          object tvTransactionsCHART: TcxGridDBColumn
            Caption = 'Chart'
            DataBinding.FieldName = 'CHART'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 23
            Width = 85
          end
          object tvTransactionsCREATED: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'CREATED'
            PropertiesClassName = 'TcxDateEditProperties'
            MinWidth = 23
            Options.Editing = False
          end
          object tvTransactionsFILEID: TcxGridDBColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 23
          end
          object tvTransactionsOWNER_CODE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'OWNER_CODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 23
            Width = 96
          end
          object tvTransactionsCHQNO: TcxGridDBColumn
            Caption = 'Cheque'
            DataBinding.FieldName = 'CHQNO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 23
            Width = 85
          end
          object tvTransactionsDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 23
            Width = 227
          end
          object tvTransactionsAMOUNT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Width = 67
          end
        end
        object dbgrTransactionsLevel1: TcxGridLevel
          GridView = tvTransactions
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1262
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          1262
          29)
        object Label28: TLabel
          Left = 1108
          Top = 5
          Width = 35
          Height = 15
          Anchors = [akTop, akRight]
          Caption = '&Search'
        end
        object lblTotalSelected: TLabel
          Left = 930
          Top = 5
          Width = 111
          Height = 15
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'Total selected $0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 676
          Top = 5
          Width = 166
          Height = 15
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'Number of records selected 0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object tbSearch: TEdit
          Left = 1166
          Top = 2
          Width = 92
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 0
          OnChange = tbSearchChange
          OnKeyDown = tbSearchKeyDown
        end
        object pnlDateSearch: TPanel
          Left = 0
          Top = 0
          Width = 620
          Height = 29
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          BevelOuter = bvNone
          TabOrder = 1
          object Label25: TLabel
            Left = 37
            Top = 5
            Width = 28
            Height = 15
            Caption = 'From'
          end
          object Label31: TLabel
            Left = 291
            Top = 5
            Width = 12
            Height = 15
            Caption = 'To'
          end
          object dtpTo: TDateTimePicker
            Left = 345
            Top = 2
            Width = 146
            Height = 23
            Date = 42794.486780578710000000
            Time = 42794.486780578710000000
            ShowCheckbox = True
            Checked = False
            TabOrder = 0
          end
          object dtpFrom: TDateTimePicker
            Left = 85
            Top = 2
            Width = 146
            Height = 23
            Date = 42794.486780578710000000
            Time = 42794.486780578710000000
            ShowCheckbox = True
            Checked = False
            TabOrder = 1
          end
          object BitBtn1: TBitBtn
            Left = 508
            Top = 1
            Width = 95
            Height = 26
            Caption = 'Refresh'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF007070708FB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00009900FF333B33CCA5A5A55A7373738C66666699666666997373
              738CCCCCCC33FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00009900FF006000FF337733CC007300FF009900FF007C00FF004D
              00FF333B33CC8080807FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00009900FF009900FF009900FF009900FF009900FF009900FF0099
              00FF007C00FF333B33CCA5A5A55AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00009900FF009900FF009900FF009900FF109F10EF40B240BF20A5
              20DF009900FF007300FF404040BFF2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00009900FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20FFFF
              FF009FD89F60109F10EF335933CCB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00009900FF009900FF009900FF009900FF005600FF454545BAFFFF
              FF00FFFFFF00BFE5BF40006900FF7373738CFFFFFF00FFFFFF00FFFFFF00B2B2
              B24DFFFFFF00009900FF009900FF009900FF009900FF009900FF009900FF3030
              30CFFFFFFF00FFFFFF0060BF609F666D6699FFFFFF00FFFFFF00FFFFFF00334A
              33CCB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00DFF2DF20A5C3A55AFFFFFF00FFFFFF00FFFFFF001078
              10EF404040BFF2F2F20DFFFFFF00FFFFFF00378937C8136313EC114B11EE1143
              11EE113411EE243524DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BF
              609F004300FF595959A6E5E5E51AFFFFFF00E5F4E51A109F10EF009900FF0099
              00FF009900FF184718E7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFE5
              BF40009900FF004D00FF404040BF8080807F99999966105210EF009900FF0099
              00FF009900FF154515EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0050B950AF009900FF008600FF004D00FF005600FF008F00FF009900FF0099
              00FF009900FF144414EBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00EFF8EF1030AC30CF009900FF009900FF009900FF009900FF009900FF0099
              00FF009900FF164516E9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00EFF8EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB
              7F80009900FF194719E6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF008FD28F703D743DC2FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            TabOrder = 2
            OnClick = BitBtn1Click
          end
        end
      end
      object dbgrInvoices: TcxGrid
        Left = 0
        Top = 29
        Width = 1262
        Height = 272
        Align = alTop
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object tvInvoices: TcxGridDBTableView
          PopupMenu = popPay
          OnMouseDown = tvInvoicesMouseDown
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = tvInvoicesCellClick
          OnCellDblClick = tvInvoicesCellDblClick
          OnFocusedRecordChanged = tvInvoicesFocusedRecordChanged
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsAccounts
          DataController.KeyFieldNames = 'NINVOICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'SUM = $,0.00;-$,0.00'
              Kind = skSum
              OnGetText = tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
              FieldName = 'OWING'
              Column = tvInvoicesOWING
            end
            item
              Kind = skCount
              OnGetText = tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
              FieldName = 'DESCR'
              Column = tvInvoicesDESCR
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soNullIgnore, soSelectedRecords]
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 57
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 14
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          object tvInvoicesINCLUDE: TcxGridDBColumn
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.OnEditValueChanged = tvInvoicesINCLUDEPropertiesEditValueChanged
            MinWidth = 23
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 23
          end
          object tvInvoicesREFNO: TcxGridDBColumn
            Caption = 'Refno'
            DataBinding.FieldName = 'REFNO'
            MinWidth = 23
            Options.Focusing = False
            Width = 130
          end
          object tvInvoicesACCT: TcxGridDBColumn
            Caption = 'Entity'
            DataBinding.FieldName = 'ACCT'
            MinWidth = 23
            Options.Focusing = False
            Width = 65
          end
          object tvInvoicesINVOICE_DATE: TcxGridDBColumn
            Caption = 'Invoice Date'
            DataBinding.FieldName = 'INVOICE_DATE'
            MinWidth = 23
            Options.Focusing = False
            Width = 128
          end
          object tvInvoicesDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 23
            Options.Focusing = False
            Width = 105
          end
          object tvInvoicesDUE_DATE: TcxGridDBColumn
            Caption = 'Due'
            DataBinding.FieldName = 'DUE_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            MinWidth = 23
            Options.Focusing = False
            Width = 129
          end
          object tvInvoicesOWING: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 23
            Options.Focusing = False
            Width = 120
          end
          object tvInvoicesPaid: TcxGridDBColumn
            DataBinding.FieldName = 'Paid'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 23
            Options.Focusing = False
            Width = 119
          end
          object tvInvoicesHeld: TcxGridDBColumn
            DataBinding.FieldName = 'Held'
            MinWidth = 23
            Options.Focusing = False
            Styles.Content = cxStyle2
            Width = 75
          end
          object tvInvoicesAMOUNT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Focusing = False
            Width = 158
          end
          object tvInvoicesINVOICE_COPY: TcxGridDBColumn
            Caption = 'Invoice'
            DataBinding.FieldName = 'INVOICE_COPY'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekBlob
            Properties.ImmediateDropDownWhenActivated = False
            Properties.PopupHeight = 227
            Properties.PopupWidth = 283
            MinWidth = 23
            Options.Focusing = False
            Width = 80
          end
        end
        object dbgrInvoicesLevel1: TcxGridLevel
          GridView = tvInvoices
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 301
        Width = 1262
        Height = 8
        Cursor = crVSplit
        HotZoneClassName = 'TcxSimpleStyle'
        AlignSplitter = salTop
        PositionAfterOpen = 34
        MinSize = 34
        Control = dbgrInvoices
      end
    end
    object tabBalances: TcxTabSheet
      Caption = 'Balances'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 617
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 79
        Height = 15
        Caption = 'Terms (in days)'
        Transparent = True
      end
      object Label2: TLabel
        Left = 10
        Top = 39
        Width = 62
        Height = 15
        Caption = 'Credit Limit'
        Transparent = True
      end
      object Label3: TLabel
        Left = 10
        Top = 78
        Width = 40
        Height = 15
        Caption = 'Current'
        Transparent = True
      end
      object neCurrent: TNumberLabel
        Left = 178
        Top = 78
        Width = 27
        Height = 15
        Alignment = taRightJustify
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clBlue
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = []
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clRed
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = []
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = []
        NoZero = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 10
        Top = 107
        Width = 45
        Height = 15
        Caption = 'Overdue'
        Transparent = True
      end
      object neOverdue: TNumberLabel
        Left = 178
        Top = 107
        Width = 27
        Height = 15
        Alignment = taRightJustify
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clBlue
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = []
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clRed
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = []
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = []
        NoZero = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 10
        Top = 136
        Width = 63
        Height = 15
        Caption = 'Total Owing'
        Transparent = True
      end
      object neTotalDue: TNumberLabel
        Left = 178
        Top = 136
        Width = 27
        Height = 15
        Alignment = taRightJustify
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clBlue
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = []
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clRed
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = []
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = []
        NoZero = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 10
        Top = 165
        Width = 87
        Height = 15
        Caption = 'Invoices Payable'
        Transparent = True
      end
      object dblblAccountsPayable: TDBText
        Left = 119
        Top = 165
        Width = 86
        Height = 16
        Alignment = taRightJustify
        DataField = 'OPEN_INVOICES'
        DataSource = dsCreditor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 10
        Top = 194
        Width = 69
        Height = 15
        Caption = 'Invoices Paid'
        Transparent = True
      end
      object dblblAccountsPaid: TDBText
        Left = 116
        Top = 194
        Width = 89
        Height = 16
        Alignment = taRightJustify
        DataField = 'CLOSED_INVOICES'
        DataSource = dsCreditor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 330
        Top = 10
        Width = 72
        Height = 15
        Caption = 'Last Purchase'
        Transparent = True
      end
      object dblblLastPurchase: TDBText
        Left = 427
        Top = 10
        Width = 96
        Height = 15
        AutoSize = True
        DataField = 'L_PURCH_DATE'
        DataSource = dsCreditor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblblLastPayment: TDBText
        Left = 427
        Top = 39
        Width = 95
        Height = 15
        AutoSize = True
        DataField = 'L_PAY_DATE'
        DataSource = dsCreditor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 330
        Top = 39
        Width = 71
        Height = 15
        Caption = 'Last Payment'
        Transparent = True
      end
      object dbtbTerms: TDBEdit
        Left = 136
        Top = 10
        Width = 50
        Height = 23
        DataField = 'CREDIT_TERMS'
        DataSource = dsCreditor
        TabOrder = 0
      end
      object dbtbLimit: TDBEdit
        Left = 136
        Top = 39
        Width = 99
        Height = 23
        DataField = 'CREDIT_LIMIT'
        DataSource = dsCreditor
        TabOrder = 1
      end
    end
    object tabAddress: TcxTabSheet
      Caption = 'Address'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 617
      object lblPhoneBookKey: TLabel
        Left = 1
        Top = 15
        Width = 54
        Height = 15
        Caption = 'Key Name'
        Transparent = True
      end
      object Label8: TLabel
        Left = 2
        Top = 44
        Width = 32
        Height = 15
        Caption = 'Name'
        Transparent = True
      end
      object Label9: TLabel
        Left = 2
        Top = 73
        Width = 22
        Height = 15
        Caption = 'Title'
        Transparent = True
      end
      object Label10: TLabel
        Left = 2
        Top = 97
        Width = 42
        Height = 15
        Caption = 'Address'
        Transparent = True
      end
      object Label12: TLabel
        Left = 2
        Top = 156
        Width = 38
        Height = 15
        Caption = 'Suburb'
        Transparent = True
      end
      object Label13: TLabel
        Left = 2
        Top = 186
        Width = 26
        Height = 15
        Caption = 'State'
        Transparent = True
      end
      object Label14: TLabel
        Left = 126
        Top = 186
        Width = 49
        Height = 15
        Caption = 'Postcode'
        Transparent = True
      end
      object Label24: TLabel
        Left = 359
        Top = 155
        Width = 31
        Height = 15
        Caption = 'Notes'
        Transparent = True
      end
      object Label19: TLabel
        Left = 359
        Top = 131
        Width = 64
        Height = 15
        Caption = 'DX Location'
        Transparent = True
      end
      object Label18: TLabel
        Left = 359
        Top = 102
        Width = 15
        Height = 15
        Caption = 'DX'
        Transparent = True
      end
      object Label17: TLabel
        Left = 359
        Top = 73
        Width = 70
        Height = 15
        Caption = 'Home Phone'
        Transparent = True
      end
      object Label16: TLabel
        Left = 359
        Top = 44
        Width = 49
        Height = 15
        Caption = 'Facsimile'
        Transparent = True
      end
      object Label15: TLabel
        Left = 359
        Top = 15
        Width = 65
        Height = 15
        Caption = 'Work Phone'
        Transparent = True
      end
      object dbtbState: TDBEdit
        Left = 68
        Top = 181
        Width = 53
        Height = 23
        DataField = 'STATE'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 0
      end
      object dbtbPostcode: TDBEdit
        Left = 185
        Top = 181
        Width = 82
        Height = 23
        DataField = 'POSTCODE'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 1
      end
      object dbtbSuburb: TDBEdit
        Left = 68
        Top = 152
        Width = 199
        Height = 23
        DataField = 'SUBURB'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 2
      end
      object dbmmoAddress: TDBMemo
        Left = 68
        Top = 97
        Width = 199
        Height = 50
        DataField = 'ADDRESS'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 3
      end
      object dbtbPBTitle: TDBEdit
        Left = 68
        Top = 68
        Width = 275
        Height = 23
        DataField = 'TITLE'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 4
      end
      object dbtbPBName: TDBEdit
        Left = 68
        Top = 39
        Width = 275
        Height = 23
        DataField = 'NAME'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 5
      end
      object dbtbSearchkey: TDBEdit
        Left = 68
        Top = 10
        Width = 275
        Height = 23
        DataField = 'SEARCH'
        DataSource = dsCreditor
        ReadOnly = True
        TabOrder = 6
      end
      object dbtbWorkPhone: TDBEdit
        Left = 447
        Top = 10
        Width = 121
        Height = 23
        DataField = 'WORKPHONE'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 7
      end
      object dbtbFax: TDBEdit
        Left = 447
        Top = 39
        Width = 121
        Height = 23
        DataField = 'FAX'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 8
      end
      object dbtbHomePhone: TDBEdit
        Left = 447
        Top = 68
        Width = 121
        Height = 23
        DataField = 'HOMEPHONE'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 9
      end
      object dbtbDX: TDBEdit
        Left = 447
        Top = 97
        Width = 121
        Height = 23
        DataField = 'DX'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 10
      end
      object dbtbDXLoc: TDBEdit
        Left = 447
        Top = 126
        Width = 121
        Height = 23
        DataField = 'DXLOC'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 11
      end
      object dbmmoNotes: TDBMemo
        Left = 447
        Top = 155
        Width = 286
        Height = 89
        DataField = 'NOTE'
        DataSource = dsPhoneBook
        ReadOnly = True
        TabOrder = 12
      end
    end
    object tabBankDetails: TcxTabSheet
      Caption = 'Bank Details'
      ImageIndex = 3
      TabVisible = False
      object cxLabel3: TcxLabel
        Left = 27
        Top = 24
        Caption = 'Bank:'
        Transparent = True
        Visible = False
      end
      object cxLabel4: TcxLabel
        Left = 27
        Top = 54
        Caption = 'Account Name:'
        Transparent = True
      end
      object teAccountName: TcxDBTextEdit
        Left = 135
        Top = 52
        DataBinding.DataField = 'ACCOUNT_NAME'
        DataBinding.DataSource = dsCreditor
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 395
      end
      object cxLabel1: TcxLabel
        Left = 27
        Top = 84
        Caption = 'BSB:'
        Transparent = True
      end
      object teBSB: TcxDBMaskEdit
        Left = 135
        Top = 83
        Hint = 'Enter B.S.B. in the format 999-999'
        DataBinding.DataField = 'BSB'
        DataBinding.DataSource = dsCreditor
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\-\d\d\d'
        Properties.MaxLength = 0
        Properties.OnValidate = cxDBMaskEdit1PropertiesValidate
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 100
      end
      object teAccount: TcxDBTextEdit
        Left = 135
        Top = 114
        DataBinding.DataField = 'ACCOUNT'
        DataBinding.DataSource = dsCreditor
        Properties.MaxLength = 9
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 147
      end
      object cxLabel2: TcxLabel
        Left = 27
        Top = 114
        Caption = 'Account:'
        Transparent = True
      end
      object cmbBank: TcxDBComboBox
        Left = 135
        Top = 19
        DataBinding.DataField = 'BANKERS'
        DataBinding.DataSource = dsCreditor
        Properties.Items.Strings = (
          'CBA'
          'NAB'
          'STG'
          'WBC')
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Visible = False
        Width = 104
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 135
        Top = 147
        DataBinding.DataField = 'SPECIAL_REQUIREMENTS'
        DataBinding.DataSource = dsCreditor
        Properties.MaxLength = 100
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 669
      end
      object cxLabel5: TcxLabel
        Left = 26
        Top = 147
        Caption = 'Extra Info:'
        Transparent = True
      end
    end
  end
  object dbtbCreditorGroup: TDBEdit
    Left = 136
    Top = 132
    Width = 205
    Height = 26
    AutoSize = False
    DataField = 'CREDGROUP'
    DataSource = dsCreditor
    TabOrder = 1
  end
  object cbActive: TDBCheckBox
    Left = 10
    Top = 165
    Width = 139
    Height = 21
    Alignment = taLeftJustify
    Caption = 'Active?'
    DataField = 'ACTIVE'
    DataSource = dsCreditor
    TabOrder = 0
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
    OnClick = cbActiveClick
  end
  object cmbGender: TDBLookupComboBox
    Left = 136
    Top = 105
    Width = 205
    Height = 23
    DataField = 'GENDER'
    DataSource = dsCreditor
    KeyField = 'CODE'
    ListField = 'DESCR'
    ListSource = dsGender
    TabOrder = 2
  end
  object dbtbContact: TDBEdit
    Left = 136
    Top = 77
    Width = 205
    Height = 25
    AutoSize = False
    DataField = 'CONTACT'
    DataSource = dsCreditor
    TabOrder = 3
  end
  object dbtbName: TcxDBTextEdit
    Left = 136
    Top = 48
    AutoSize = False
    DataBinding.DataField = 'NAME'
    DataBinding.DataSource = dsCreditor
    Properties.ReadOnly = True
    TabOrder = 16
    Height = 25
    Width = 205
  end
  object dbedTaxno: TDBEdit
    Left = 474
    Top = 132
    Width = 203
    Height = 26
    AutoSize = False
    DataField = 'TAXNO'
    DataSource = dsCreditor
    TabOrder = 6
  end
  object dbchkHold: TDBCheckBox
    Left = 363
    Top = 108
    Width = 140
    Height = 21
    Alignment = taLeftJustify
    Caption = 'Hold all Invoices?'
    DataField = 'HOLD'
    DataSource = dsCreditor
    TabOrder = 4
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
  end
  object chkOnlyOwing: TCheckBox
    Left = 363
    Top = 165
    Width = 227
    Height = 21
    Alignment = taLeftJustify
    Caption = 'Show only Accounts still owing'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = chkOnlyOwingClick
  end
  object cbPAY_BY_EFT: TDBCheckBox
    Left = 559
    Top = 108
    Width = 118
    Height = 21
    Alignment = taLeftJustify
    Caption = 'Pay by E.F.T.'
    DataField = 'PAY_BY_EFT'
    DataSource = dsCreditor
    TabOrder = 7
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
    OnClick = cbPAY_BY_EFTClick
  end
  object dbtCreditorCode: TcxDBLabel
    Left = 474
    Top = 77
    DataBinding.DataField = 'CODE'
    DataBinding.DataSource = dsCreditor
    ParentFont = False
    Properties.ShowAccelChar = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Height = 25
    Width = 203
  end
  object dbtbCreditorNumber: TcxDBLabel
    Left = 474
    Top = 48
    DataBinding.DataField = 'NCREDITOR'
    DataBinding.DataSource = dsCreditor
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ShowAccelChar = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Height = 25
    Width = 111
    AnchorX = 585
  end
  object DBMemo1: TDBMemo
    Left = 707
    Top = 63
    Width = 537
    Height = 122
    DataField = 'NOTES'
    DataSource = dsCreditor
    TabOrder = 8
  end
  object ilstToolbar: TImageList
    Left = 109
    Top = 477
    Bitmap = {
      494C010115001900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000007070
      708FB2B2B24D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCCCC330000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B33CC8080
      807F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF009900FF009900FF009900FF007C00FF333B
      33CCA5A5A55A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF109F10EF40B240BF20A520DF009900FF0073
      00FF404040BFF2F2F20D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20000000009FD89F60109F
      10EF335933CCB2B2B24D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF005600FF454545BA0000000000000000BFE5
      BF40006900FF7373738C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B24D000000000099
      00FF009900FF009900FF009900FF009900FF009900FF303030CF000000000000
      000060BF609F666D669900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000334A33CCB2B2B24D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF20A5C3A55A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000107810EF404040BFF2F2
      F20D0000000000000000378937C8136313EC114B11EE114311EE113411EE2435
      24DB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060BF609F004300FF5959
      59A6E5E5E51A00000000E5F4E51A109F10EF009900FF009900FF009900FF1847
      18E7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFE5BF40009900FF004D
      00FF404040BF8080807F99999966105210EF009900FF009900FF009900FF1545
      15EA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000050B950AF0099
      00FF008600FF004D00FF005600FF008F00FF009900FF009900FF009900FF1444
      14EB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF8EF1030AC
      30CF009900FF009900FF009900FF009900FF009900FF009900FF009900FF1645
      16E9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF8
      EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F80009900FF1947
      19E6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F703D74
      3DC2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C20000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000000000000000
      000000008000FF00FF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D600000000000000000000000000008000000080
      00000080000000000000FF000000800000008000000080000000800000000000
      8000FF00FF000000FF0000008000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C000101520071717100000000000000000000800000C0C0C00000FF
      0000008000000080000000000000808080000000000000000000808080000000
      00000000FF000000800000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E4500000000000000000000800000C0C0C0000080
      000000FF00000080000080808000C0C0C000FFFF0000C0C0C000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D00000000000080000000000000C0C0C00000FF
      0000008000008080800000000000FFFF0000C0C0C000FFFF0000C0C0C0000000
      0000008000000080000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E00000000000080000000000000C0C0C0000080
      0000FF000000808080000000000000000000FFFF0000C0C0C000FFFF00000000
      0000008000000080000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B80011117800000000008080800000800000008000008080
      0000FF0000008080800000000000FFFF000000000000FFFF0000C0C0C0000000
      0000008000000080000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F000000000080808000FF000000FF000000FF00
      0000FF000000FF0000008080800000000000FFFF00000000000000000000C0C0
      C000008000000080000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F85000000000080808000FF000000FF0000000080
      000000800000FF000000FF000000808080008080800000000000FF0000000080
      0000C0C0C0000080000000000000000000000000000000000000000000000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B9000000000000000000808080000080000000FF
      000000800000FF000000FF000000FF00000080000000FF00000080000000FF00
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA7000000000000000000000000008080800000800000C0C0
      C00000FF00000080000000800000FF0000000080000000800000FF0000008000
      0000FF000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C000C0C0C000C0C0C000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000808080000000
      0000C0C0C00000FF00000080000000800000008000000080000000800000FF00
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD00000000000000000000000000000000000000000000000000000000008080
      800080808000000000000000000000FF00000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      000084000000848484000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000BDBDBD00BDBDBD00BDBDBD00000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000BDBDBD00BDBDBD00000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000FFFF00000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF0000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000BDBDBD00000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      00000000000084000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000848484008484
      8400000000000000000084848400848484008484840084848400000000000000
      00008484840084848400000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000848484008484
      8400000000008484840084848400848484008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000848484008484
      8400000000008484840000000000848484008484840084848400848484000000
      00008484840084848400000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000848484008484
      84000000000084848400FFFFFF00000000008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000084848400848484008484840084848400000000000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      840000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000008484840000000000FFFFFF00FFFFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
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
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
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
      0000000000008400000084000000FF00000084000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF000000840000008400000084000000FF00000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FF00
      0000840000000084840000848400840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FF0000008400
      0000FF000000008484000084840084000000FF00000084000000FF0000008400
      0000008484000084840000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FF000000FF00
      0000FF0000000084840000848400008484008400000084000000840000008400
      0000008484000084840000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000008484000084840000848400FF000000FF000000FF0000008400
      0000FF0000008400000084000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000FF000000FF0000000084
      840000848400008484000084840000848400FF000000FF000000FF0000008400
      00008400000084000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000084000000008484000084
      840000848400008484000084840000848400FF00000000848400FF0000008400
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000FF000000FF0000000084
      840000848400008484000084840000848400008484000084840000848400FF00
      000084000000FF00000084000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF0000000084
      840000848400FF000000FF00000084000000008484000084840000848400FF00
      0000FF00000084000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000848400008484000084840000848400008484000084
      840084000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FF0000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      84000084840000848400FF000000FF00000000848400FF000000008484000084
      8400FF0000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000848400FF000000FF00000084000000FF00000084000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000084000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00E7FF000000000000E01F000000000000
      E00F000000000000E007000000000000E003000000000000E043000000000000
      E063000000000000A0330000000000009FF30000000000008C0F000000000000
      840F000000000000800F000000000000C00F000000000000C00F000000000000
      E00F000000000000FFCF000000000000FFFFF80FFFFFE00FFFFFE007F839E00F
      FFFFC003E001E00FFFFF8001C001E00FFFFF80018013E00FFFFF00018003E00F
      E00700014201E00FF00F00014301A00BF81F00010281C007FC3F00010141E00F
      FE7F00010001E00FFFFF00018003C007FFFF80038003C007FFFFC003D007C007
      FFFFE00FE60FF83FFFFFF01FF83FF83F8000FFFFFFFF80000000FFFFFFF88000
      0000FFFF20F8C0000000FFFF007FE0000000FFFF007CF0000000FFE7003CF800
      0000C1F3000FFC000000C3FB000406008000C7FB000C0700C000CBFB01FF0180
      C000DCF3E3FC0180C000FF07FFFC0060C000FFFFFFFFC060C000FFFFFFF8C060
      C000FFFFFFF8F044E001FFFFFFFFF07EFFFFFFFFFFFFFF00FFFFC007FE7FFF00
      FFFF8003FC3FFF00FC3F0001FC3FFE0080010001FE7FFE0080010001FC3FFE00
      80010000FC3FFF0082010000FC3FFF8081018000FC1F00008001C000F20F0000
      8001E001E10700008001E007E1870000C813F007E0070000FC3FF003F00F0000
      FFFFF803F81F0000FFFFFFFFFFFF0000FF7FFEFFFEFDFFFFFE7FFE7FFE7DFFFF
      FC7FFE3FFE3D07C1F87FFE1FFE1D07C1F07FFE0FFE0D07C1E07FFE07FE050101
      C07FFE03FE010001E07FFE07FE050201F07FFE0FFE0D0201F87FFE1FFE1D8003
      FC7FFE3FFE3DC107FE7FFE7FFE7DC107FF7FFEFFFEFDE38FFFFFFFFFFFFFE38F
      FFFFFFFFFFFFE38FFFFFFFFFFFFFFFFFFFFFFFFFFC00BF7FF83FFFFFF000BE7F
      E00FFFF9C000BC7FC007E7FF0000B87F8003C3F30000B07F8003C3E70000A07F
      0001E1C70000807F0001F08F0000A07F0001F81F0000B07F0001FC3F0000B87F
      0001F81F0001BC7F8003F09F0003BE7F8003C1C70007BF7FC00783E3001FFFFF
      E00F8FF1007FFFFFF83FFFFF01FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryCreditor: TUniQuery
    KeyFields = 'NCREDITOR'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.ROWID, C.* '
      'FROM CREDITOR C'
      '--WHERE trim(SEARCH) = Trim(:P_Search)')
    IndexFieldNames = 'NCREDITOR'
    AfterOpen = qryCreditorAfterOpen
    BeforeScroll = qryCreditorBeforeScroll
    AfterScroll = qryCreditorAfterScroll
    Left = 504
    Top = 242
  end
  object dsCreditor: TUniDataSource
    DataSet = qryCreditor
    Left = 559
    Top = 245
  end
  object qryAccounts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   ncheque, ROWID, TRUNC (invoice_date) AS invoice_date, a' +
        'mount, owing,'
      
        '         acct, refno, descr, TRUNC (due_date) AS due_date, hold,' +
        ' ninvoice,'
      
        '         invoice_copy, invoice_copy_ext, (amount - owing) AS pai' +
        'd,'
      '         CASE'
      '            WHEN (hold = '#39'Y'#39')'
      '               THEN '#39'Held'#39
      '            ELSE NULL'
      '         END AS held'
      '    FROM invoice'
      '   WHERE ncreditor = :ncreditor'
      '     AND CASE'
      '            WHEN ((:filter = 1) AND (owing <> 0))'
      '               THEN 1'
      '            WHEN (:filter = 0)'
      '               THEN 1'
      '            ELSE 0'
      '         END = 1'
      '     AND TRUNC (invoice_date) >= NVL (:pDateFrom, invoice_date)'
      '     AND TRUNC (invoice_date) <= NVL (:pDateTo, invoice_date)'
      'ORDER BY due_date DESC')
    CachedUpdates = True
    AfterOpen = qryAccountsAfterOpen
    BeforeClose = qryAccountsBeforeClose
    AfterInsert = qryAccountsAfterInsert
    BeforeScroll = qryAccountsBeforeScroll
    AfterScroll = qryAccountsAfterScroll
    Left = 741
    Top = 250
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ncreditor'
        ParamType = ptInput
        Value = 9
      end
      item
        DataType = ftUnknown
        Name = 'filter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pDateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pDateTo'
        Value = nil
      end>
  end
  object dsAccounts: TUniDataSource
    DataSet = qryAccounts
    Left = 815
    Top = 252
  end
  object qryPhoneBook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT P.ROWID, P.* FROM PHONEBOOK P WHERE P.NNAME = :NNAME')
    BeforePost = qryPhoneBookBeforePost
    Left = 88
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end>
  end
  object dsPhoneBook: TUniDataSource
    DataSet = qryPhoneBook
    Left = 162
    Top = 259
  end
  object qryDue: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUM(OWING) FROM INVOICE WHERE NCREDITOR = :NCREDITOR AND ' +
        'DUE_DATE >= :P_Today AND OWING <> 0')
    Left = 268
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCREDITOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Today'
        Value = nil
      end>
  end
  object qryTransactions: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  nvl(CH.COMPONENT_CODE_DISPLAY,T.CHART)|| '#39' - '#39'||CH.descr as CH' +
        'ART,'
      
        '  DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', '#39'Chq'#39', '#39#39', T.OWNER_CODE, '#39'INVOI' +
        'CE'#39', '#39'Inv'#39', '#39#39', T.OWNER_CODE, '#39'CREDIT_NOTE'#39', '#39'C/N'#39', '#39#39') as OWNER' +
        '_CODE,'
      
        '   ( select chqno from cheque where cheque.ncheque = T.NOWNER AN' +
        'D T.OWNER_CODE = '#39'CHEQUE'#39') AS CHQNO,'
      '  T.DESCR, T.AMOUNT, M.FILEID, T.CREATED'
      'FROM'
      '  TRANSITEM T,  MATTER M,CHART CH'
      'WHERE'
      '--  T.ACCT = :ACCT'
      '--AND'
      '  T.NINVOICE = :NINVOICE'
      'AND T.CHART = CH.CODE'
      'AND T.ACCT = CH.BANK'
      'AND'
      '  T.NMATTER = M.NMATTER(+)'
      'order by 2 desc, 1'
      ''
      ''
      '/*'
      'SELECT'
      '  nvl(CH.COMPONENT_CODE_DISPLAY,T.CHART)as CHART,'
      
        '  DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', '#39'Chq'#39', '#39#39', T.OWNER_CODE, '#39'INVOI' +
        'CE'#39', '#39'Inv'#39', '#39#39', T.OWNER_CODE, '#39'CREDIT_NOTE'#39', '#39'C/N'#39', '#39#39') as OWNER' +
        '_CODE,'
      '  DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', C.CHQNO, '#39#39') AS CHQNO,'
      '  T.DESCR, T.AMOUNT, M.FILEID, C.CREATED'
      'FROM'
      '  TRANSITEM T, CHEQUE C, MATTER M,CHART CH'
      'WHERE'
      '  T.ACCT = :ACCT'
      'AND'
      '  T.NINVOICE = :NINVOICE'
      'AND T.CHART = CH.CODE'
      'AND T.ACCT = CH.BANK'
      'AND'
      '  T.NOWNER = C.NCHEQUE(+)'
      'AND'
      '  T.NMATTER = M.NMATTER(+)'
      'AND T.OWNER_CODE = '#39'CHEQUE'#39
      'union all'
      'SELECT'
      '  nvl(CH.COMPONENT_CODE_DISPLAY,T.CHART)as CHART,'
      
        '  DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', '#39'Chq'#39', '#39#39', T.OWNER_CODE, '#39'INVOI' +
        'CE'#39', '#39'Inv'#39', '#39#39', T.OWNER_CODE, '#39'CREDIT_NOTE'#39', '#39'C/N'#39', '#39#39') as OWNER' +
        '_CODE,'
      '   '#39#39' AS CHQNO,'
      '  T.DESCR, T.AMOUNT, M.FILEID, T.CREATED'
      'FROM'
      '  TRANSITEM T,  MATTER M,CHART CH'
      'WHERE'
      '  T.ACCT = :ACCT'
      'AND'
      '  T.NINVOICE = :NINVOICE'
      'AND T.CHART = CH.CODE'
      'AND T.ACCT = CH.BANK'
      'AND'
      '  T.NMATTER = M.NMATTER(+)'
      'order by 2 desc, 1 '
      '*/')
    BeforeOpen = qryTransactionsBeforeOpen
    Left = 408
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
  object dsTransactions: TUniDataSource
    DataSet = qryTransactions
    Left = 478
    Top = 337
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 991
    Top = 30
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clRed
    end
  end
  object qryBankList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct BANK_ABBREV from bank'
      'where entity = :entity')
    Left = 92
    Top = 326
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsBankList: TUniDataSource
    DataSet = qryBankList
    Left = 153
    Top = 336
  end
  object rptCreditorTrans: TppReport
    AutoStop = False
    DataPipeline = plInvoices
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Creditor Transactions Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 1219
    Top = 120
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plInvoices'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Creditor Transactions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 16
        Font.Style = [fsBold, fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6646
        mmLeft = 60590
        mmTop = 3704
        mmWidth = 58166
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Invoice Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 2117
        mmTop = 15610
        mmWidth = 22902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Refno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 40217
        mmTop = 15610
        mmWidth = 11007
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Due Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 76729
        mmTop = 15610
        mmWidth = 16849
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Owing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 142610
        mmTop = 15610
        mmWidth = 12023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 174879
        mmTop = 15610
        mmWidth = 14563
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 20108
        mmWidth = 197300
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
      mmHeight = 12965
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plInvoices
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 43921
        mmTop = 1588
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'CHQNO'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 1588
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'DESCR_1'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 7144
        mmWidth = 189177
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'AMOUNT_1'
        DataPipeline = plInvoices
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 1588
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CHART'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1588
        mmWidth = 39158
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 74083
        mmTop = 1588
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'OWNER_CODE'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 100542
        mmTop = 1588
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 1058
        mmWidth = 37888
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 180711
        mmTop = 1588
        mmWidth = 11091
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 529
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'NINVOICE'
      DataPipeline = plInvoices
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plInvoices'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 20108
        mmPrintPosition = 0
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape1'
          Brush.Color = clSilver
          ParentHeight = True
          ParentWidth = True
          Pen.Color = clSilver
          Pen.Width = 2
          Shape = stRoundRect
          mmHeight = 20108
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'INVOICE_DATE'
          DataPipeline = plInvoices
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 2117
          mmWidth = 33867
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'REFNO'
          DataPipeline = plInvoices
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 42598
          mmTop = 2117
          mmWidth = 32808
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'DUE_DATE'
          DataPipeline = plInvoices
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 79111
          mmTop = 2117
          mmWidth = 37306
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          Border.mmPadding = 0
          DataField = 'OWING'
          DataPipeline = plInvoices
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 131234
          mmTop = 2117
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'DESCR'
          DataPipeline = plInvoices
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 7673
          mmWidth = 189707
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'AMOUNT'
          DataPipeline = plInvoices
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 161925
          mmTop = 2117
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          Border.mmPadding = 0
          Caption = 'Chart'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 3969
          mmTop = 14023
          mmWidth = 9186
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 43921
          mmTop = 14023
          mmWidth = 7620
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = 'Matter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 74083
          mmTop = 14023
          mmWidth = 10626
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          Border.mmPadding = 0
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 100542
          mmTop = 14023
          mmWidth = 7959
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          Border.mmPadding = 0
          Caption = 'Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 113771
          mmTop = 14023
          mmWidth = 12912
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          Border.mmPadding = 0
          Caption = 'Amount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 177007
          mmTop = 14023
          mmWidth = 13208
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
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plInvoices: TppDBPipeline
    DataSource = dsInvoices
    UserName = 'plInvoices'
    Left = 1233
    Top = 45
    object plInvoicesppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCHEQUE'
      FieldName = 'NCHEQUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object plInvoicesppField2: TppField
      FieldAlias = 'INVOICE_DATE'
      FieldName = 'INVOICE_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plInvoicesppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'OWING'
      FieldName = 'OWING'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plInvoicesppField4: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 3
    end
    object plInvoicesppField5: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 4
    end
    object plInvoicesppField6: TppField
      FieldAlias = 'DUE_DATE'
      FieldName = 'DUE_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object plInvoicesppField7: TppField
      FieldAlias = 'HOLD'
      FieldName = 'HOLD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object plInvoicesppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'NINVOICE'
      FieldName = 'NINVOICE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plInvoicesppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plInvoicesppField10: TppField
      FieldAlias = 'ACCT'
      FieldName = 'ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object plInvoicesppField11: TppField
      FieldAlias = 'CHART'
      FieldName = 'CHART'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object plInvoicesppField12: TppField
      FieldAlias = 'OWNER_CODE'
      FieldName = 'OWNER_CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object plInvoicesppField13: TppField
      FieldAlias = 'CHQNO'
      FieldName = 'CHQNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object plInvoicesppField14: TppField
      FieldAlias = 'DESCR_1'
      FieldName = 'DESCR_1'
      FieldLength = 400
      DisplayWidth = 400
      Position = 13
    end
    object plInvoicesppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT_1'
      FieldName = 'AMOUNT_1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object plInvoicesppField16: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object plInvoicesppField17: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object plInvoicesppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'NINVOICE_1'
      FieldName = 'NINVOICE_1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object plInvoicesppField19: TppField
      FieldAlias = 'ACCT_1'
      FieldName = 'ACCT_1'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
  end
  object qryInvoices: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from'
      
        '(SELECT   invoice.ncheque, TRUNC (invoice.invoice_date) AS invoi' +
        'ce_date,'
      '         invoice.owing, invoice.refno, invoice.descr,'
      
        '         TRUNC (invoice.due_date) AS due_date, invoice.hold, inv' +
        'oice.ninvoice,'
      '         invoice.amount, invoice.acct'
      '    FROM invoice'
      '   WHERE invoice.ncreditor = :ncreditor AND '
      'case '
      '  when (:showall = 0) and invoice.owing <> 0'
      '    then 1'
      '  when (:showall = 1) and invoice.owing >= 0'
      '    then 1 '
      '  end = 1'
      'ORDER BY invoice.due_date ASC) a,'
      
        '(SELECT   NVL (chart.component_code_display, transitem.chart) AS' +
        ' chart,'
      '         DECODE (transitem.owner_code,'
      '                 '#39'CHEQUE'#39', '#39'Chq'#39','
      '                 '#39#39', transitem.owner_code,'
      '                 '#39'INVOICE'#39', '#39'Inv'#39','
      '                 '#39#39', transitem.owner_code,'
      '                 '#39'CREDIT_NOTE'#39', '#39'C/N'#39','
      '                 '#39#39
      '                ) AS owner_code,'
      '         (SELECT chqno'
      '            FROM cheque'
      '           WHERE cheque.ncheque = transitem.nowner'
      '             AND transitem.owner_code = '#39'CHEQUE'#39') AS chqno,'
      
        '         transitem.descr, transitem.amount, matter.fileid, trans' +
        'item.created,'
      '         transitem.ninvoice, transitem.acct'
      '    FROM chart, matter, transitem'
      '   WHERE transitem.chart = chart.code'
      '     AND transitem.acct = chart.bank'
      '     AND transitem.nmatter = matter.nmatter(+)'
      #9' AND transitem.NINVOICE is not null) b'
      'where'
      'a.NINVOICE = b.ninvoice '
      'and'
      'a.ACCT = b.acct'
      'ORDER BY 8, 12 DESC, 11'
      ''
      ''
      '/*'
      
        'SELECT   invoice.ncheque, TRUNC (invoice.invoice_date) AS invoic' +
        'e_date,'
      '         invoice.owing, invoice.refno, invoice.descr,'
      
        '         TRUNC (invoice.due_date) AS due_date, invoice.hold, inv' +
        'oice.ninvoice,'
      '         invoice.amount, invoice.acct'
      '    FROM invoice'
      '   WHERE invoice.ncreditor = :ncreditor AND invoice.owing <> 0'
      'ORDER BY invoice.due_date ASC'
      '*/')
    Left = 1103
    Top = 45
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ncreditor'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'showall'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsInvoices: TUniDataSource
    DataSet = qryInvoices
    Left = 1172
    Top = 44
  end
  object dlFile: TOpenDialog
    Filter = 'All Files (*.*)|*.*'
    Title = 'Select document template'
    Left = 661
    Top = 174
  end
  object qGender: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM GENDER')
    Left = 569
    Top = 140
  end
  object dsGender: TDataSource
    AutoEdit = False
    DataSet = qGender
    Left = 603
    Top = 140
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 650
    Top = 410
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
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
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41536.495604965280000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 281
    Top = 354
  end
  object dxBarManager1: TdxBarManager
    AllowCallFromAnotherForm = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Pay'
      'Print'
      'Default'
      'AllocPopup'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 652
    Top = 34
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
      FloatClientWidth = 23
      FloatClientHeight = 116
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnNew'
        end
        item
          Visible = True
          ItemName = 'tbEdit'
        end
        item
          Visible = True
          ItemName = 'tbtnDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbbtnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnAccountNew'
        end
        item
          Visible = True
          ItemName = 'tbtnReverse'
        end
        item
          Visible = True
          ItemName = 'tbtnCreditNote'
        end
        item
          Visible = True
          ItemName = 'tbtnPayInvoice'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPaySearches'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'tbtnPrev'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnFind'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnMerge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton13'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object popPaySelected: TdxBarButton
      Caption = 'Pay Selected'
      Category = 0
      Hint = 'Pay Selected'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = popPaySelectedClick
    end
    object popPayAll: TdxBarButton
      Caption = 'Pay All'
      Category = 0
      Hint = 'Pay All'
      Visible = ivAlways
      OnClick = popPayAllClick
    end
    object popAmendInvAmt: TdxBarButton
      Caption = 'Amend invoice amount'
      Category = 0
      Hint = 'Amend invoice amount'
      Visible = ivAlways
      OnClick = popAmendInvAmtClick
    end
    object btnPaySearches: TdxBarButton
      Caption = 'Pay Searches'
      Category = 0
      Hint = 'Pay Searches'
      Visible = ivAlways
      OnClick = popPayAllClick
    end
    object popPrintTrialBalance: TdxBarButton
      Caption = '&Trial Balance...'
      Category = 1
      Hint = 'Trial Balance'
      Visible = ivAlways
      OnClick = popPrintTrialBalanceClick
    end
    object popPrintRequisition: TdxBarButton
      Caption = '&Requisition'
      Category = 1
      Hint = 'Requisition'
      Visible = ivAlways
      OnClick = popPrintTrialBalanceClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Transactions'
      Category = 1
      Hint = 'Transactions'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object tbtnNew: TdxBarButton
      Caption = 'New Creditor'
      Category = 2
      Hint = 'New Creditor'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = tbtnNewClick
    end
    object tbEdit: TdxBarButton
      Caption = 'Edit Creditor'
      Category = 2
      Hint = 'Edit Creditor'
      Visible = ivAlways
      ImageIndex = 18
      OnClick = tbEditClick
    end
    object tbtnDelete: TdxBarButton
      Caption = 'Delete'
      Category = 2
      Hint = 'Delete'
      Visible = ivAlways
      ImageIndex = 19
      OnClick = tbtnDeleteClick
    end
    object tbtnAccountNew: TdxBarButton
      Caption = 'Account Payable'
      Category = 2
      Hint = 'New Account Payable'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = tbtnAccountNewClick
    end
    object tbtnReverse: TdxBarButton
      Caption = 'Reverse'
      Category = 2
      Hint = 'Reverse'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = tbtnReverseClick
    end
    object tbtnCreditNote: TdxBarButton
      Caption = 'Credit Note'
      Category = 2
      Hint = 'Credit Note'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = tbtnCreditNoteClick
    end
    object tbtnPayInvoice: TdxBarButton
      Caption = 'Pay Invoice'
      Category = 2
      Hint = 'Pay Invoice'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popPay
      ImageIndex = 11
      OnClick = tbtnPayInvoiceClick
    end
    object tbtnFind: TdxBarButton
      Caption = 'Search'
      Category = 2
      Hint = 'Search'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = tbtnFindClick
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Find Invoice'
      Category = 2
      Hint = 'Find Invoice'
      Visible = ivAlways
      ImageIndex = 14
      OnClick = mnuSearchFindInvoiceClick
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Snapshot'
      Category = 2
      Hint = 'Snapshot'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = tbtnSnapshotClick
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Print'
      Category = 2
      Hint = 'Print'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popPrint
      ImageIndex = 9
      OnClick = tbtnPrintClick
    end
    object tbtnMerge: TdxBarButton
      Caption = 'Merge'
      Category = 2
      Hint = 'Merge this Creditor into another Creditor'
      Visible = ivAlways
      ImageIndex = 15
      OnClick = mnuFileMergeClick
    end
    object dxBarButton13: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 2
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = ToolButton6Click
    end
    object btnHold: TdxBarButton
      Caption = 'Hold'
      Category = 2
      Hint = 'Hold'
      Visible = ivAlways
      OnClick = popGridHoldClick
    end
    object btnChangeDate: TdxBarButton
      Caption = 'Change Invoice Due Date...'
      Category = 2
      Hint = 'Change '
      Visible = ivAlways
      OnClick = popChangeInvoiceDueDateClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Attach Invoice'
      Category = 2
      Hint = 'Attach Invoice'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Scan Invoice'
      Category = 2
      Hint = 'Scan Invoice'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object btnRemoveAttachment: TdxBarButton
      Caption = 'Remove Attached Invoice'
      Category = 2
      Enabled = False
      Hint = 'Remove Attached Invoice'
      Visible = ivAlways
      OnClick = btnRemoveAttachmentClick
    end
    object btnViewAttachment: TdxBarButton
      Caption = 'View Attached Invoice'
      Category = 2
      Enabled = False
      Hint = 'View Attached Invoice'
      Visible = ivAlways
      OnClick = btnViewAttachmentClick
    end
    object dxbbtnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 2
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxbbtnRefreshClick
    end
    object dxButtonExportExcel: TdxBarButton
      Caption = 'Export to Excel...'
      Category = 3
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = dxButtonExportExcelClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Print Grid...'
      Category = 3
      Hint = 'Print Grid'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object tbtnPrev: TdxBarDBNavButton
      Category = 4
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
        80FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000808080FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000808080FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000808080FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
        80FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      OnClick = tbtnPrevClick
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Category = 4
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      OnClick = tbtnNextClick
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Category = 4
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF000000FF000000FF8080
        80FF808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      OnClick = tbtnLastClick
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Category = 4
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000808080FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FF808080FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000808080FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      OnClick = tbtnFirstClick
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
      Category = 4
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
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
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
      HintEx = 'Save Changes'
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = True
    DataSource = dsCreditor
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnPost]
    Left = 783
    Top = 39
  end
  object popPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'popPrintRequisition'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 698
    Top = 38
    PixelsPerInch = 96
  end
  object popPay: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnHold'
      end
      item
        Visible = True
        ItemName = 'popPayAll'
      end
      item
        Visible = True
        ItemName = 'popPaySelected'
      end
      item
        Visible = True
        ItemName = 'tbtnReverse'
      end
      item
        Visible = True
        ItemName = 'btnChangeDate'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnViewAttachment'
      end
      item
        Visible = True
        ItemName = 'btnRemoveAttachment'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopupMenu1Popup
    Left = 715
    Top = 97
    PixelsPerInch = 96
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 936
    Top = 23
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object stySelected: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMenuHighlight
      TextColor = clWhite
    end
  end
end
