object frmInvestmentTransactions: TfrmInvestmentTransactions
  Left = 186
  Top = 217
  Caption = 'Controlled Monies'
  ClientHeight = 492
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 15
    Top = 205
    Width = 74
    Height = 13
    Caption = 'Account Name'
  end
  object cxPcTransactions: TcxPageControl
    Left = 3
    Top = 27
    Width = 903
    Height = 457
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    OnChange = cxPcTransactionsChange
    ClientRectBottom = 453
    ClientRectLeft = 4
    ClientRectRight = 899
    ClientRectTop = 24
    object tabInvestments: TcxTabSheet
      Caption = 'Controlled Monies'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgrDeposits: TcxGrid
        Left = 0
        Top = 0
        Width = 895
        Height = 210
        Align = alTop
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object dbgrDepositsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDeposit
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object dbgrDepositsDBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'NAME'
            Options.Filtering = False
            Options.Sorting = False
            Width = 78
          end
          object dbgrDepositsDBTableView1DBColumn2: TcxGridDBColumn
            Caption = 'Account Number'
            DataBinding.FieldName = 'ACCOUNT_NUMBER'
            Options.Filtering = False
            Width = 94
          end
          object dbgrDepositsDBTableView1DBColumn3: TcxGridDBColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
            Options.Filtering = False
            Width = 89
          end
          object dbgrDepositsDBTableView1DBColumn4: TcxGridDBColumn
            Caption = 'Client'
            DataBinding.FieldName = 'CLIENT'
            Options.Filtering = False
            Width = 108
          end
          object dbgrDepositsDBTableView1DBColumn5: TcxGridDBColumn
            Caption = 'Credit'
            DataBinding.FieldName = 'CREDIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Width = 83
          end
          object dbgrDepositsDBTableView1DBColumn6: TcxGridDBColumn
            Caption = 'Debit'
            DataBinding.FieldName = 'DEBIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Width = 84
          end
          object dbgrDepositsDBTableView1DBColumn7: TcxGridDBColumn
            Caption = 'Balance'
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
          end
        end
        object tvDeposits: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = tvDepositsCellClick
          OnFocusedRecordChanged = tvDepositsFocusedRecordChanged
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsDeposit
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'BALANCE'
              Column = tvDepositsCREDIT
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'INTBALANCE'
              Column = tvDepositsINTCR
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'TOTAL'
              Column = tvDepositsTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.BandHeaderEndEllipsis = True
          OnColumnHeaderClick = tvDepositsColumnHeaderClick
          Bands = <
            item
              Caption = 'Details'
              Options.Moving = False
              Width = 563
            end
            item
              Caption = 'Movement'
              Options.Moving = False
              Width = 156
            end
            item
              Options.Moving = False
              Width = 79
            end>
          object tvDepositsNAME: TcxGridDBBandedColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'NAME'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.Moving = False
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDepositsNDEPOSITACCOUNT: TcxGridDBBandedColumn
            Caption = 'Audit No'
            DataBinding.FieldName = 'NDEPOSITACCOUNT'
            Options.Focusing = False
            Width = 52
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDepositsACCOUNT_NUMBER: TcxGridDBBandedColumn
            Caption = 'Account Number'
            DataBinding.FieldName = 'ACCOUNT_NUMBER'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.Moving = False
            Width = 143
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDepositsFILEID: TcxGridDBBandedColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.Moving = False
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDepositsCLIENT: TcxGridDBBandedColumn
            Caption = 'Client'
            DataBinding.FieldName = 'CLIENT'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.Moving = False
            Width = 245
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvDepositsAPPROVAL_DATE: TcxGridDBBandedColumn
            Caption = 'Approval Date'
            DataBinding.FieldName = 'APPROVAL_DATE'
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvDepositsBANK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvDepositsCREDIT: TcxGridDBBandedColumn
            Caption = 'Capital'
            DataBinding.FieldName = 'BALANCE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '$,0.00;-$,0.00'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.Moving = False
            Width = 44
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDepositsINTCR: TcxGridDBBandedColumn
            Caption = 'Interest'
            DataBinding.FieldName = 'INTBALANCE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '$,0.00;-$,0.00'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.Moving = False
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDepositsTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '$,0.00;-$,0.00'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.Moving = False
            Width = 44
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object dbgrDepositsLevel1: TcxGridLevel
          GridView = tvDeposits
        end
      end
      object dbgrTransactions: TcxGrid
        Left = 0
        Top = 218
        Width = 895
        Height = 171
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object tvTransactions: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = tvTransactionsCellClick
          DataController.DataSource = dsInvestmentTransactions
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'CREDIT'
              Column = tvTransactionsCREDIT
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'DEBIT'
              Column = tvTransactionsDEBIT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object tvTransactionsNINVTRAN: TcxGridDBColumn
            Caption = 'Tran #'
            DataBinding.FieldName = 'NINVTRAN'
            Width = 79
          end
          object tvTransactionsDBColumn1: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'CREATED'
            Options.Filtering = False
            Options.Sorting = False
            Width = 141
          end
          object tvTransactionsDBColumn2: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            Options.Filtering = False
            Options.Sorting = False
            Width = 189
          end
          object tvTransactionsDBColumn3: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            Options.Filtering = False
            Options.Sorting = False
            Width = 148
          end
          object tvTransactionsDBColumn6: TcxGridDBColumn
            Caption = 'RefNo'
            DataBinding.FieldName = 'REFERENCE'
            Options.Filtering = False
            Options.Sorting = False
            Width = 89
          end
          object tvTransactionsCREDIT: TcxGridDBColumn
            Caption = 'Credit'
            DataBinding.FieldName = 'CREDIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Options.Sorting = False
            Width = 138
          end
          object tvTransactionsDEBIT: TcxGridDBColumn
            Caption = 'Debit'
            DataBinding.FieldName = 'DEBIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Options.Sorting = False
            Width = 179
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tvTransactions
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 210
        Width = 8
        Height = 8
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 62
        AlignSplitter = salTop
        Control = dbgrDeposits
      end
      object Panel1: TPanel
        Left = 0
        Top = 389
        Width = 895
        Height = 40
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        DesignSize = (
          895
          40)
        object Label8: TLabel
          Left = 6
          Top = 5
          Width = 88
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = '&Search for Client '
          Transparent = True
        end
        object Label31: TLabel
          Left = 241
          Top = 5
          Width = 73
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'S&earch for File'
          Transparent = True
        end
        object tbClientSearch: TcxTextEdit
          Left = 6
          Top = 18
          Anchors = [akLeft, akBottom]
          Properties.OnChange = tbClientSearchPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 112
        end
        object cbShowChildren: TcxCheckBox
          Left = 124
          Top = 18
          Anchors = [akLeft, akBottom]
          Caption = 'Include Sub-Names'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnClick = cbShowChildrenClick
        end
        object tbFileSearch: TcxTextEdit
          Left = 241
          Top = 18
          Anchors = [akLeft, akBottom]
          Properties.OnChange = tbFileSearchPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 90
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      object lblBank: TLabel
        Left = 99
        Top = 18
        Width = 26
        Height = 13
        Caption = 'Bank'
        Transparent = True
      end
      object Label3: TLabel
        Left = 51
        Top = 42
        Width = 74
        Height = 13
        Caption = 'Account Name'
        Transparent = True
      end
      object Label4: TLabel
        Left = 91
        Top = 90
        Width = 34
        Height = 13
        Caption = 'Matter'
        Transparent = True
      end
      object Label6: TLabel
        Left = 95
        Top = 115
        Width = 30
        Height = 13
        Caption = 'Client'
        Transparent = True
      end
      object Label7: TLabel
        Left = 39
        Top = 66
        Width = 86
        Height = 13
        Caption = 'Account Number'
        Transparent = True
      end
      object cbBank: TComboBox
        Left = 134
        Top = 15
        Width = 53
        Height = 21
        TabOrder = 0
      end
      object edAccountName: TEdit
        Left = 134
        Top = 39
        Width = 112
        Height = 21
        TabOrder = 1
      end
      object edClient: TEdit
        Left = 134
        Top = 112
        Width = 112
        Height = 21
        TabOrder = 2
      end
      object edMatter: TcxLookupComboBox
        Left = 134
        Top = 87
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsEditList
        Properties.DropDownRows = 20
        Properties.KeyFieldNames = 'FILEID'
        Properties.ListColumns = <
          item
            Caption = 'File Id'
            MinWidth = 30
            FieldName = 'FILEID'
          end
          item
            Caption = 'Search'
            MinWidth = 60
            FieldName = 'SEARCH'
          end>
        Properties.ListSource = dsMRUList
        Properties.OnCloseUp = edAccountNamePropertiesCloseUp
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 112
      end
      object edAccountNumber: TEdit
        Left = 134
        Top = 63
        Width = 112
        Height = 21
        TabOrder = 4
      end
      object cbNonZero: TcxCheckBox
        Left = 4
        Top = 134
        Caption = 'Display Non Zero Only'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxGroupBox1: TcxGroupBox
        Left = 7
        Top = 157
        Caption = 'Transactions'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 73
        Width = 572
        object Label1: TLabel
          Left = 65
          Top = 21
          Width = 53
          Height = 13
          Caption = 'Date From'
          Transparent = True
        end
        object Label2: TLabel
          Left = 80
          Top = 46
          Width = 38
          Height = 13
          Caption = 'Date To'
          Transparent = True
        end
        object dtpDateFrom: TDateTimePicker
          Left = 144
          Top = 17
          Width = 93
          Height = 22
          Date = 38686.847006782400000000
          Time = 38686.847006782400000000
          Checked = False
          Enabled = False
          TabOrder = 0
        end
        object dtpDateTo: TDateTimePicker
          Left = 144
          Top = 42
          Width = 93
          Height = 22
          Date = 38686.847006782400000000
          Time = 38686.847006782400000000
          Checked = False
          Enabled = False
          TabOrder = 1
        end
        object dcToday: TDateChangeButton
          Left = 242
          Top = 17
          Width = 75
          Height = 21
          Caption = 'Today'
          TabOrder = 2
          TabStop = False
          ChangeType = ctToday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton2: TDateChangeButton
          Left = 242
          Top = 43
          Width = 75
          Height = 21
          Caption = 'Yesterday'
          TabOrder = 3
          TabStop = False
          ChangeType = ctYesterday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton4: TDateChangeButton
          Left = 324
          Top = 17
          Width = 74
          Height = 21
          Caption = 'This Week'
          TabOrder = 4
          TabStop = False
          ChangeType = ctThisWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton3: TDateChangeButton
          Left = 324
          Top = 43
          Width = 74
          Height = 21
          Caption = 'Last Week'
          TabOrder = 5
          TabStop = False
          ChangeType = ctLastWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton5: TDateChangeButton
          Left = 406
          Top = 17
          Width = 74
          Height = 21
          Caption = 'This Month'
          TabOrder = 6
          TabStop = False
          ChangeType = ctThisMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton6: TDateChangeButton
          Left = 406
          Top = 43
          Width = 74
          Height = 21
          Caption = 'Last Month'
          TabOrder = 7
          TabStop = False
          ChangeType = ctLastMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton7: TDateChangeButton
          Left = 488
          Top = 17
          Width = 74
          Height = 21
          Caption = 'Year To Date'
          TabOrder = 8
          TabStop = False
          ChangeType = ctYearToDate
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton8: TDateChangeButton
          Left = 488
          Top = 43
          Width = 74
          Height = 21
          Caption = 'Last Year'
          TabOrder = 9
          TabStop = False
          ChangeType = ctLastYear
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object chkDateFrom: TCheckBox
          Left = 127
          Top = 19
          Width = 14
          Height = 15
          TabOrder = 10
          OnClick = chkDateFromClick
        end
        object chkDateTo: TCheckBox
          Left = 127
          Top = 44
          Width = 14
          Height = 15
          TabOrder = 11
          OnClick = chkDateToClick
        end
      end
    end
  end
  object qryDeposit: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select b.NAME,d.NDEPOSITACCOUNT,d.account_number,m.nmatter,m.fil' +
        'eid,d.ACCOUNT_NAME,m.title as client,'
      'nvl(sum(ti.AMOUNT),0) as total,'
      'nvl(sum(decode(substr(ti.AMOUNT,0,1),'#39'-'#39',0,ti.AMOUNT)),0) -'
      
        'nvl(sum(decode(substr(ti.AMOUNT,0,1),'#39'-'#39',0-ti.AMOUNT,0)),0) as b' +
        'alance,0 as IntBalance, d.approval_date,'
      'd.bank'
      'from deposit_account d,investment_trans ti,matter m,bank b'
      'where'
      'd.nmatter = m.nmatter'
      'and d.bank = b.acct'
      'and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+)'
      'and ti.created >= :dtFrom'
      'and ti.created <= :dtTo'
      'and tran_type = '#39'C'#39
      'and ti.rev_ninvtran is null'
      
        'group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_N' +
        'AME,m.title,d.account_number, d.approval_date, d.bank'
      'union all'
      
        'select b.NAME,d.NDEPOSITACCOUNT,d.account_number,m.nmatter,m.fil' +
        'eid,d.ACCOUNT_NAME,m.title as client,'
      'nvl(sum(ti.AMOUNT),0) as total,0,'
      'nvl(sum(decode(substr(ti.AMOUNT,0,1),'#39'-'#39',0,ti.AMOUNT)),0)-'
      
        'nvl(sum(decode(substr(ti.AMOUNT,0,1),'#39'-'#39',0-ti.AMOUNT,0)),0) as I' +
        'ntBalance, d.approval_date, d.bank'
      'from deposit_account d,investment_trans ti,matter m,bank b'
      'where'
      'd.nmatter = m.nmatter'
      'and d.bank = b.acct'
      'and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+)'
      'and ti.created >= :dtFrom'
      'and ti.created <= :dtTo'
      'and tran_type = '#39'I'#39
      'and ti.rev_ninvtran is null'
      
        'group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_N' +
        'AME,m.title,d.account_number, d.approval_date, d.bank')
    AfterScroll = qryDepositAfterScroll
    Left = 563
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtTo'
        Value = nil
      end>
  end
  object dsDeposit: TUniDataSource
    DataSet = qryDeposit
    Left = 567
    Top = 393
  end
  object qryInvestmentTransactions: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select created,descr,decode(type,'#39'REC'#39','#39'Receipt'#39','#39'PAY'#39','#39'Payment'#39 +
        ','#39'FEE'#39','#39'Fee'#39','#39'INT'#39','#39'INTEREST'#39', '#39'INTWDL'#39','#39'INTEREST WDL'#39') as TYPE,'
      'decode(substr(AMOUNT,0,1),'#39'-'#39',0,AMOUNT) as credit,'
      'decode(substr(AMOUNT,0,1),'#39'-'#39',0-AMOUNT,0) as debit, ninvtran,'
      'type as currType'
      'from INVESTMENT_TRANS'
      'where ndepositaccount = :ndepositaccount')
    Left = 623
    Top = 310
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ndepositaccount'
        Value = nil
      end>
  end
  object dsInvestmentTransactions: TUniDataSource
    DataSet = qryInvestmentTransactions
    Left = 599
    Top = 393
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Reports'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = ilstControlledToolbar
    ImageOptions.LargeImages = ilstControlledToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    UseSystemFont = False
    Left = 583
    Top = 441
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
      Caption = 'ToolBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbDebositNew'
        end
        item
          Visible = True
          ItemName = 'dxBDepositEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbReceipt'
        end
        item
          Visible = True
          ItemName = 'dxbPayment'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBFee'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBDepositReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbReGenerateFile'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBExit'
        end>
      MultiLine = True
      NotDocking = [dsNone]
      OldName = 'ToolBar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Controlled Monies Report'
      Category = 0
      Hint = 'Controlled Monies Report'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Transaction Report'
      Category = 0
      Hint = 'Transaction Report'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = actReceipt
      Category = 0
    end
    object btnCMTrialBalance: TdxBarButton
      Caption = 'Controlled Money Accounts Trial Balance'
      Category = 0
      Hint = 'Controlled Money Accounts Trial Balance'
      Visible = ivAlways
      OnClick = btnCMTrialBalanceClick
    end
    object dxbReceipt: TdxBarButton
      Caption = 'Deposit'
      Category = 1
      Enabled = False
      Hint = 'Deposit'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxbReceiptClick
    end
    object dxbPayment: TdxBarButton
      Caption = 'Withdrawal'
      Category = 1
      Enabled = False
      Hint = 'Withdrawal'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxbPaymentClick
    end
    object dxBInterest: TdxBarButton
      Caption = 'Interest'
      Category = 1
      Hint = 'Interest'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBInterestClick
    end
    object dxBFee: TdxBarButton
      Caption = 'Charges'
      Category = 1
      Enabled = False
      Hint = 'Charges'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = dxBFeeClick
    end
    object dxBExit: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBExitClick
    end
    object dxbDebositNew: TdxBarButton
      Caption = 'Deposit Account'
      Category = 1
      Hint = 'Create Account'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = dxbDebositNewClick
    end
    object dxBDepositEdit: TdxBarButton
      Caption = 'Edit Deposit'
      Category = 1
      Enabled = False
      Hint = 'Edit Account'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = dxBDepositEditClick
    end
    object dxBDepositReverse: TdxBarButton
      Caption = 'Reverse'
      Category = 1
      Enabled = False
      Hint = 'Reverse'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = dxBDepositReverseClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Reports'
      Category = 1
      Visible = ivAlways
      ImageIndex = 1
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Account Type'
      Category = 1
      Hint = 'Create New Account Type'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = dxBarButton4Click
    end
    object dxbReGenerateFile: TdxBarButton
      Caption = 'Re-Generate Account File'
      Category = 1
      Enabled = False
      Hint = 'Re-Generate Account File'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxbReGenerateFileClick
    end
  end
  object ilstControlledToolbar: TImageList
    Left = 510
    Top = 16
    Bitmap = {
      494C01010D001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB04CBCBCB348383837CC3C3C33CF5F5F50AE7E7E718DEDEDE21ABAB
      AB549191916EC9C9C936EDEDED12FCFCFC030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE3A4D4D4DD7535353B99B9B9B64B4B4B44B6B6B6B946B5959C8755C
      5CE14E4848BF5E5E5EA19191916ECFCFCF300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2B5A989DF8D3AFF694F3CD954546FAB0732DEFF1538C7FFD6B8B8FFB7AB
      ABFF9D8C8CFF6B5757E7524B4BBA797979860000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD9A87C4DF8D3AFF815D4DED7D6B8EF61257FFFF2667E3FFD3AAAAFFAA80
      80FFA78A8AFF98BD9DFF7E746EED6A6A6A950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F30CF3F3F30CF3F3
      F30CC4AA90C7DE8A37FFBCA093FFABA0C0FF1B69FFFF3377E0FFD6B3B3FFB893
      93FFA17272FFA07272FF7E5E5EED6A6A6A950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F30CABABAB549F9F9F609F9F
      9F60AF9275D9D97D26FFB2857DFFA289A7FF257EFFFF4187DEFFDBBFBFFFBD91
      91FFCC9999FFBD8B8BFF805B5BED6A6A6A950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073ADC78C326882CD265F79D92662
      7BD993856FF5DB7E2BFFB39D98FFAFA8C4FF2E8FFFFF5199DCFFDBBFBFFFBE8F
      8FFFA67373FFBC8989FF815959ED6A6A6A950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000026A0D3FF69CFFFFF69CFFFFF69CF
      FFFFA1805EFFDC7E30FF8F8C8CFFBDB6C9FF9AB3D4FF54648EFFDBBFBFFFBF8D
      8DFFB68383FFB98686FF815757ED6A6A6A950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000329BC7FF7EDBFFFF67BAD9FF74DA
      FFFF817C72FFA28F87FFB2AFAFFFC9C3C3FFE0DEDFFFBEB9BAFFC6ADADFFC282
      82FFBA7A7AFFBC8787FF835555ED6E6E6E910000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004AB3D4FF83B8CCFFE1E1E1FFB49B
      9BFF5E6365FFA1A1A1FFB6B4B4FFDFDFDFFFD6D6D6FFDDDEDEFFC6C4C4FFF0DA
      DAFFDEA8A8FFCE7C7CFF975B5BE69292926D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000065C8E2FF8AABBBFFCFCFCFFFD4D4
      D4FF737373FFAEAEAEFFBABABAFFB2B2B2FF9C9A9AFFA8A3A3FFAFADADFFDDC0
      C0FFCAABABFFB39090FFBEA9A99BF2F2F20D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000078D3EDFF87C0DAFFB3DFE1FFAAC3
      C4FFAEC7C8FF9AB3B4FF97B0B1FF8DC0C2FF899999FF89999CFF928989EBA497
      9779E0DADA2DFCFCFC0300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000087D8EFFF73D3FCFF9AE6FFFF9DEA
      FFFF9DEAFFFF9DEAFFFF9DEAFFFF9DEAFFFF9DEAFFFFADDBE8F2C8C8C896ECEC
      EC13000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009DDFF0FF84EAFFFF84EAFFFF84EA
      FFFFB8EDFCFF9FDEF1FF9FDEF1FF9FDEF1FF9FDEF1FFA9D4E37DF5F5F50A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEE5F19FAAE3F2FFA3E3F2FFAAE3
      F2FF94CDE09AF2F2F20D00000000000000000000000000000000000000000000
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
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800042424200996633000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5F003939390099663300CC99
      66000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006666330099663300CC66
      3300CC99660000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000006666660066666600666666006666
      660066666600666666006666660066666600000000000000000099663300CC66
      3300CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FF000000FF000000FF
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000006666660039393900393939003366
      330066663300666633006666330099663300CC99660000000000000000006666
      3300CC663300CC996600000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000FF000000FF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000FF000000FF0000000000000000000000000000FF00000000000000FF
      00000000000000FF0000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000006666660039393900666633009966
      3300CC663300CC996600CC999900CC9999000000000000000000000000000000
      000099663300CC996600CC996600000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF00000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000666666003939390099663300CC66
      3300CC9966007777770000000000000000000000000000000000000000000000
      000042424200CC993300CC996600000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000666666003939390099663300CC99
      3300CC996600CC99660077777700000000000000000000000000000000000000
      00004D4D4D00CC663300CC996600000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF00000000000000FF
      0000000000000000000000000000000000006666660039393900CC663300CC99
      3300CC993300CC663300CC663300777777000000000000000000000000007777
      770042424200CC663300CC996600000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000006666660039393900CC9966000000
      0000CC663300CC663300CC663300996633009966330077777700666666004D4D
      4D0066663300CC996600CC996600000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      00000000000000FF000000000000000000006666660033663300CC9999000000
      000000000000CC663300CC663300CC663300CC66330099663300666633006666
      3300CC663300CC99660000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000006666660066663300F0CAA6000000
      0000000000000000000000000000CC663300CC663300CC663300CC663300CC99
      6600CC9966000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000CC999900F0CAA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
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
      0000000000000000000000C0C00000C0C00000C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000C0C00000C0C00000C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000C0C00000C0C00000C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000FF000000FF0000000000000000000000000000FF00000000000000FF
      00000000000000FF00000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000FF000000FF0000000000808080000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000808080000000
      00000000FF000000FF0000000000808080000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF0000000000000000000000000000000000808080008080
      8000000000000000000080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF00000000000000FF
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000FF000000FF0000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      00000000000000FF0000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000C0C00000C0C00000C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      FF00000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000C0C00000C0C00000C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000C0C00000C0C00000C0C00000000000000000000000
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
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D4000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C2000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000000
      000000000000000000000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000FF00000000000000FF
      000000FF00000000000000FF00000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D600000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF0000000000000000FF000000
      000000FF000000FF000000FF000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C0001015200717171000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000000000000000FF000000FF000000
      FF0000000000000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E45000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000008080
      80008080800000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060000000000000000000000000008080
      80008080800080808000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800080808000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E0000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000806060000000000000000000000000008080
      80008080800080808000808080000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800080808000808080000000000000000000000000000000FF000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B80011117800000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C00080606000000000000000000000000000000000008080
      80008080800080808000808080000000000080808000000000000000FF000000
      0000808080008080800000000000000000000000000000000000000000008080
      80008080800080808000808080000000000080808000000000000000FF000000
      0000808080008080800000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      8000806060008060600000000000000000000000000000000000000000008080
      800080808000808080008080800000000000000000000000FF000000FF000000
      FF00000000008080800000000000000000000000000000000000000000008080
      80008080800080808000808080000000000080808000000000000000FF000000
      000080808000808080000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000808080000000000080808000000000000000FF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000000000008080800000000000000000000000
      000080808000808080000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B90000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000000000008080800080808000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000008080800080808000000000008080800080808000808080008080
      80008080800080808000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA7000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      800080808000808080000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD00000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00F000000000000000F000000000000000
      F000000000000000F00000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003000000000000000F000000000000001F000000000000
      03FF000000000000FFFF000000000000FFFFFFFFFE3FFFFF801F801FFE3FFF1F
      800F800FFE3FFF0F80078007F007FF8780038003000700C38001800100070063
      80018001001F00F1C001C001001F03F1E001E001000701F1F001F001C00700E1
      FE7FFFFFC0011001F81FFFFFF0011803F81FF007F0011E07FE7FF007FC019FFF
      FE7FFFFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F8001801FFFFFF83F
      8001800FFFFFF83F80018007FFFFF83F80018003007FFC7F80018001007FFFFF
      80018001001FF0018001C001001FE0018001E0010007C0018001F001C0078001
      8001FFFFC00180018001FC7FF00180038001F83FF00180078001F83FFC01800F
      8001F83FFC01801FFFFFFC7FFFFFFFFFF80FF03FFC00FC00E007E007FC00FC00
      C003C000DC00DC0080018000CC00CC0080010000C400C40000010000C38FC307
      00010000C18FC18F00018000C001C0010001E001C001C0010001F003C001C001
      0001F01FE001E0010001E03FF001F0018003E03FF801F801C003C03FFC01FC01
      E00FC07FFE01FE01F01FF8FFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object tmrSearch: TTimer
    OnTimer = tmrSearchTimer
    Left = 575
    Top = 5
  end
  object dsDep: TUniDataSource
    DataSet = qryDep
    Left = 592
    Top = 83
  end
  object plDep: TppDBPipeline
    DataSource = dsDep
    UserName = 'plDep'
    Left = 645
    Top = 87
    object plDepppField1: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 0
    end
    object plDepppField2: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 1
    end
    object plDepppField3: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object plDepppField4: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plDepppField5: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object plDepppField6: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object plDepppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERENCE'
      FieldName = 'REFERENCE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plDepppField8: TppField
      FieldAlias = 'INSTITUTE'
      FieldName = 'INSTITUTE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 7
    end
    object plDepppField9: TppField
      FieldAlias = 'ACCOUNT_NUMBER'
      FieldName = 'ACCOUNT_NUMBER'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object plDepppField10: TppField
      FieldAlias = 'ACCOUNT_TYPE'
      FieldName = 'ACCOUNT_TYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plDepppField11: TppField
      FieldAlias = 'ACCOUNT_NAME'
      FieldName = 'ACCOUNT_NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 10
    end
    object plDepppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object plDepppField13: TppField
      FieldAlias = 'PAYEEPAYOR'
      FieldName = 'PAYEEPAYOR'
      FieldLength = 80
      DisplayWidth = 80
      Position = 12
    end
    object plDepppField14: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plDepppField15: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 14
    end
    object plDepppField16: TppField
      FieldAlias = 'PAYMENT_METHOD'
      FieldName = 'PAYMENT_METHOD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object plDepppField17: TppField
      FieldAlias = 'PAYMENT_DETAILS'
      FieldName = 'PAYMENT_DETAILS'
      FieldLength = 400
      DisplayWidth = 400
      Position = 16
    end
    object plDepppField18: TppField
      FieldAlias = 'WHO'
      FieldName = 'WHO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object plDepppField19: TppField
      FieldAlias = 'SYSTEMDATE'
      FieldName = 'SYSTEMDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 18
    end
    object plDepppField20: TppField
      FieldAlias = 'NINVTRAN'
      FieldName = 'NINVTRAN'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 19
    end
    object plDepppField21: TppField
      FieldAlias = 'EMP'
      FieldName = 'EMP'
      FieldLength = 40
      DisplayWidth = 40
      Position = 20
    end
    object plDepppField22: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 2
      DisplayWidth = 2
      Position = 21
    end
  end
  object ActionManager1: TActionManager
    Left = 500
    Top = 335
    StyleName = 'XP Style'
    object actReceipt: TAction
      Caption = 'Receipt'
      OnExecute = actReceiptExecute
      OnUpdate = actReceiptUpdate
    end
  end
  object dsMRUList: TUniDataSource
    DataSet = qryMRUList
    Left = 475
    Top = 190
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   TRIM (m.fileid) AS fileid, TRIM (p.search) AS search,'
      '         TRIM (m.shortdescr) AS shortdescr, idx'
      '    FROM matter m, phonebook p, openlist o'
      '   WHERE o.author = :p_author'
      '     AND o.TYPE = :p_type'
      '     AND o.code = m.fileid'
      '     AND m.nclient = p.nclient'
      '     AND m.closed = 0'
      'UNION'
      'SELECT   '#39'Search...'#39', '#39#39', '#39#39', 999'
      '    FROM DUAL'
      'ORDER BY 3')
    Left = 433
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Type'
        Value = nil
      end>
  end
  object rptCMTrialBalance: TppReport
    AutoStop = False
    DataPipeline = plDepositsRPT
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
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
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
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
    Left = 236
    Top = 368
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plDepositsRPT'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer3
        UserName = 'Region1'
        Brush.Color = 15395562
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 7673
        mmLeft = 0
        mmTop = 11113
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label3'
          Border.Style = psClear
          Caption = 'Controlled Money Accounts Trial Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4487
          mmLeft = 60235
          mmTop = 12700
          mmWidth = 70824
          BandType = 0
          LayerName = Foreground2
        end
        object ppSystemVariable1: TppSystemVariable
          DesignLayer = ppDesignLayer3
          UserName = 'SystemVariable1'
          VarType = vtPageNoDesc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4022
          mmLeft = 177536
          mmTop = 12965
          mmWidth = 11091
          BandType = 0
          LayerName = Foreground2
        end
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 16
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 6477
        mmLeft = 1323
        mmTop = 2381
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 2170
        mmTop = 22754
        mmWidth = 9948
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        Caption = 'Capital'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 118374
        mmTop = 22490
        mmWidth = 10880
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        Caption = 'Interest'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 147436
        mmTop = 22754
        mmWidth = 11726
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 176457
        mmTop = 23019
        mmWidth = 7451
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 26723
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText15'
        DataField = 'FILEID'
        DataPipeline = plDepositsRPT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDepositsRPT'
        mmHeight = 4022
        mmLeft = 529
        mmTop = 794
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText17'
        DataField = 'INTBALANCE'
        DataPipeline = plDepositsRPT
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDepositsRPT'
        mmHeight = 4022
        mmLeft = 143404
        mmTop = 11113
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        DataField = 'BALANCE'
        DataPipeline = plDepositsRPT
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDepositsRPT'
        mmHeight = 4022
        mmLeft = 114829
        mmTop = 11113
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText19'
        DataField = 'TOTAL'
        DataPipeline = plDepositsRPT
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDepositsRPT'
        mmHeight = 4022
        mmLeft = 171980
        mmTop = 11113
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText20'
        DataField = 'ACCOUNT_NAME'
        DataPipeline = plDepositsRPT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDepositsRPT'
        mmHeight = 4022
        mmLeft = 26194
        mmTop = 11113
        mmWidth = 57150
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText21'
        DataField = 'ACCOUNT_NUMBER'
        DataPipeline = plDepositsRPT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDepositsRPT'
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 11113
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText22'
        DataField = 'SHORTDESCR'
        DataPipeline = plDepositsRPT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDepositsRPT'
        mmHeight = 4022
        mmLeft = 19579
        mmTop = 5821
        mmWidth = 93134
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel9: TppLabel
        OnPrint = ppLabel9Print
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        Caption = 'Label9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 19579
        mmTop = 1058
        mmWidth = 10499
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        VarType = vtPrintDateTime
        DisplayFormat = #39'Printed:'#39' dd/mm/yy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 145686
        mmTop = 1323
        mmWidth = 47032
        BandType = 8
        LayerName = Foreground2
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground2
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText15'
      BreakType = btCustomField
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc1'
          DataField = 'BALANCE'
          DataPipeline = plDepositsRPT
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDepositsRPT'
          mmHeight = 4022
          mmLeft = 111654
          mmTop = 1852
          mmWidth = 23813
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc2'
          DataField = 'INTBALANCE'
          DataPipeline = plDepositsRPT
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDepositsRPT'
          mmHeight = 4022
          mmLeft = 139700
          mmTop = 1852
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc3'
          DataField = 'TOTAL'
          DataPipeline = plDepositsRPT
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDepositsRPT'
          mmHeight = 4022
          mmLeft = 167746
          mmTop = 1852
          mmWidth = 25665
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line2'
          Pen.Style = psDash
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 115623
          mmTop = 794
          mmWidth = 78846
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 115359
          mmTop = 6350
          mmWidth = 78846
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label8'
          Caption = 'Deposit Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 4022
          mmLeft = 71438
          mmTop = 1852
          mmWidth = 21251
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText21'
      BreakType = btCustomField
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label10'
          Caption = 'Bank:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 4022
          mmLeft = 37835
          mmTop = 794
          mmWidth = 9017
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText16'
          DataField = 'NAME'
          DataPipeline = plDepositsRPT
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDepositsRPT'
          mmHeight = 4022
          mmLeft = 48154
          mmTop = 794
          mmWidth = 64823
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc4'
          DataField = 'BALANCE'
          DataPipeline = plDepositsRPT
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDepositsRPT'
          mmHeight = 4022
          mmLeft = 116417
          mmTop = 794
          mmWidth = 19050
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc5'
          DataField = 'INTBALANCE'
          DataPipeline = plDepositsRPT
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDepositsRPT'
          mmHeight = 4022
          mmLeft = 138907
          mmTop = 794
          mmWidth = 25665
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc6'
          DataField = 'TOTAL'
          DataPipeline = plDepositsRPT
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDepositsRPT'
          mmHeight = 4022
          mmLeft = 169863
          mmTop = 794
          mmWidth = 23548
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line5'
          Pen.Style = psDash
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 115623
          mmTop = 0
          mmWidth = 78846
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plDepositsRPT: TppDBPipeline
    DataSource = dsDepositsRPT
    CloseDataSource = True
    UserName = 'plDepositsRPT'
    Left = 210
    Top = 437
    object plDepositsRPTppField1: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 85
      DisplayWidth = 85
      Position = 0
    end
    object plDepositsRPTppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NDEPOSITACCOUNT'
      FieldName = 'NDEPOSITACCOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object plDepositsRPTppField3: TppField
      FieldAlias = 'ACCOUNT_NUMBER'
      FieldName = 'ACCOUNT_NUMBER'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plDepositsRPTppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plDepositsRPTppField5: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plDepositsRPTppField6: TppField
      FieldAlias = 'ACCOUNT_NAME'
      FieldName = 'ACCOUNT_NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 5
    end
    object plDepositsRPTppField7: TppField
      FieldAlias = 'CLIENT'
      FieldName = 'CLIENT'
      FieldLength = 85
      DisplayWidth = 85
      Position = 6
    end
    object plDepositsRPTppField8: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object plDepositsRPTppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plDepositsRPTppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'BALANCE'
      FieldName = 'BALANCE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object plDepositsRPTppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'INTBALANCE'
      FieldName = 'INTBALANCE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
  end
  object qryDepositsRPT: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select b.NAME,d.NDEPOSITACCOUNT,d.account_number,m.nmatter,m.fil' +
        'eid,d.ACCOUNT_NAME,m.title as client,m.shortdescr,'
      'nvl(sum(ti.AMOUNT),0) as total,'
      'nvl(sum(decode(substr(ti.AMOUNT,0,1),'#39'-'#39',0,ti.AMOUNT)),0) -'
      
        'nvl(sum(decode(substr(ti.AMOUNT,0,1),'#39'-'#39',0-ti.AMOUNT,0)),0) as b' +
        'alance,0 as IntBalance'
      'from deposit_account d,investment_trans ti,matter m,bank b'
      'where'
      'd.nmatter = m.nmatter'
      'and d.bank = b.acct'
      'and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+)'
      'and tran_type = '#39'C'#39
      
        'group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_N' +
        'AME,m.title,d.account_number,m.shortdescr'
      'union all'
      
        'select b.NAME,d.NDEPOSITACCOUNT,d.account_number,m.nmatter,m.fil' +
        'eid,d.ACCOUNT_NAME,m.title as client,m.shortdescr,'
      'nvl(sum(ti.AMOUNT),0) as total,0,'
      'nvl(sum(decode(substr(ti.AMOUNT,0,1),'#39'-'#39',0,ti.AMOUNT)),0)-'
      
        'nvl(sum(decode(substr(ti.AMOUNT,0,1),'#39'-'#39',0-ti.AMOUNT,0)),0) as I' +
        'ntBalance'
      'from deposit_account d,investment_trans ti,matter m,bank b'
      'where'
      'd.nmatter = m.nmatter'
      'and d.bank = b.acct'
      'and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+)'
      'and tran_type = '#39'I'#39
      
        'group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_N' +
        'AME,m.title,d.account_number,m.shortdescr')
    Left = 47
    Top = 399
  end
  object dsDepositsRPT: TUniDataSource
    DataSet = qryDepositsRPT
    Left = 124
    Top = 433
  end
  object qryGetClientName: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select p.longname '
      'from '
      'matter m, phonebook p'
      'where m.fileid = :fileid'
      'and m.nclient = p.nclient'
      ' ')
    Left = 348
    Top = 445
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end>
  end
  object popDepGrid: TPopupMenu
    AutoPopup = False
    Left = 335
    Top = 335
    object miChangeDepositDate: TMenuItem
      Caption = 'Change Transaction Date...'
      OnClick = miChangeDepositDateClick
    end
  end
  object qrySystem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from'
      '('
      'SELECT'
      '  '#39'ABN: '#39'||ENTITY.ABN,'
      '  ENTITY.NAME'
      'FROM'
      '  ENTITY '
      'WHERE '
      '  CODE = :entity),'
      '('
      'SELECT  '
      '  SYSTEMFILE.COMPANY,'
      '  SYSTEMFILE.ADD1,'
      '  SYSTEMFILE.ADD2,'
      
        '  SYSTEMFILE.SUBURB || '#39'  '#39'|| SYSTEMFILE.STATE ||'#39'  '#39'|| SYSTEMFI' +
        'LE.POSTCODE as suburb,'
      '  SYSTEMFILE.LOGO_IMAGE'
      'from '
      '  SYSTEMFILE )')
    Left = 778
    Top = 71
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = Null
      end>
  end
  object dsSystem: TUniDataSource
    DataSet = qrySystem
    Left = 782
    Top = 115
  end
  object plSystem: TppDBPipeline
    DataSource = dsSystem
    UserName = 'plSystem'
    Left = 783
    Top = 162
    object plSystemppField1: TppField
      FieldAlias = #39'ABN:'#39'||ENTITY.ABN'
      FieldName = #39'ABN:'#39'||ENTITY.ABN'
      FieldLength = 35
      DisplayWidth = 35
      Position = 0
    end
    object plSystemppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plSystemppField3: TppField
      FieldAlias = 'COMPANY'
      FieldName = 'COMPANY'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plSystemppField4: TppField
      FieldAlias = 'ADD1'
      FieldName = 'ADD1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plSystemppField5: TppField
      FieldAlias = 'ADD2'
      FieldName = 'ADD2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object plSystemppField6: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 94
      DisplayWidth = 94
      Position = 5
    end
    object plSystemppField7: TppField
      FieldAlias = 'LOGO_IMAGE'
      FieldName = 'LOGO_IMAGE'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object rpReceipt: TppReport
    AutoStop = False
    DataPipeline = plDep
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
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
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
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
    Left = 697
    Top = 99
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plDep'
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 168805
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Caption = 'Controlled Monies Receipt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 14
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5821
        mmLeft = 3175
        mmTop = 16933
        mmWidth = 64558
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        DataField = 'NAME'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 71438
        mmWidth = 80963
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        DataField = 'ADDRESS'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 78052
        mmWidth = 81227
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        DataField = 'SUBURB'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 83079
        mmWidth = 42598
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        DataField = 'STATE'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 88106
        mmWidth = 42598
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        DataField = 'SHORTDESCR'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 102659
        mmWidth = 120915
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        DataField = 'CREATED'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 136525
        mmTop = 71438
        mmWidth = 54769
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        DataField = 'REFERENCE'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 136525
        mmTop = 78052
        mmWidth = 54769
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        DataField = 'AMOUNT'
        DataPipeline = plDep
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 138642
        mmTop = 102659
        mmWidth = 54769
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        DataField = 'INSTITUTE'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 117740
        mmWidth = 46567
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        DataField = 'ACCOUNT_NUMBER'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 54240
        mmTop = 117740
        mmWidth = 36248
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        DataField = 'ACCOUNT_TYPE'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 94721
        mmTop = 117740
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        DataField = 'ACCOUNT_NAME'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 138642
        mmTop = 117740
        mmWidth = 54769
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PAYEEPAYOR'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4498
        mmLeft = 3175
        mmTop = 150548
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        DataField = 'FILEID'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 136525
        mmTop = 84667
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        DataField = #39'ABN:'#39'||ENTITY.ABN'
        DataPipeline = plSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plSystem'
        mmHeight = 4995
        mmLeft = 133350
        mmTop = 25929
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        DataField = 'COMPANY'
        DataPipeline = plSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plSystem'
        mmHeight = 4022
        mmLeft = 133350
        mmTop = 35454
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        DataField = 'ADD1'
        DataPipeline = plSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plSystem'
        mmHeight = 4022
        mmLeft = 133350
        mmTop = 40481
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        DataField = 'SUBURB'
        DataPipeline = plSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plSystem'
        mmHeight = 4022
        mmLeft = 133350
        mmTop = 45508
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
        DisplayFormat = 'dd-mmmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 55033
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBImage1: TppDBImage
        DesignLayer = ppDesignLayer2
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        ExportMetafileAsBitmap = True
        MaintainAspectRatio = True
        Stretch = True
        Transparent = True
        DataField = 'LOGO_IMAGE'
        DataPipeline = plSystem
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'plSystem'
        mmHeight = 21431
        mmLeft = 129646
        mmTop = 2117
        mmWidth = 64823
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        DataField = 'DESCR'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 125148
        mmWidth = 189707
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        DataField = 'PAYMENT_METHOD'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 130969
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        DataField = 'PAYMENT_DETAILS'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plDep'
        mmHeight = 11906
        mmLeft = 34131
        mmTop = 130969
        mmWidth = 158221
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.Color = clSilver
        Border.Weight = 1.000000000000000000
        Pen.Color = clSilver
        Pen.Width = 3
        ParentWidth = True
        Weight = 2.250000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 51858
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Pen.Color = clSilver
        Pen.Width = 3
        ParentWidth = True
        Weight = 2.250000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 166952
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Pen.Color = clSilver
        Pen.Width = 2
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 114574
        mmLeft = 195792
        mmTop = 52388
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Pen.Color = clSilver
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 114574
        mmLeft = 0
        mmTop = 52388
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        DataField = 'NINVTRAN'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 32808
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Caption = 'Receipted by:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 161661
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText31'
        DataField = 'EMP'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4234
        mmLeft = 28838
        mmTop = 161659
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object qryDep: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT p.NAME, p.address, p.suburb, p.state, m.shortdescr, it.cr' +
        'eated,'
      
        '       it.REFERENCE, da.institute, da.account_number, da.account' +
        '_type,'
      
        '       da.account_name, it.amount, it.payeepayor, m.fileid, it.d' +
        'escr,'
      
        '       it.payment_method, it.payment_details, it.who, it.systemd' +
        'ate,'
      '       it.ninvtran, e.NAME as emp, da.bank'
      '  FROM employee e,'
      '       investment_trans it,'
      '       deposit_account da,'
      '       matter m,'
      '       phonebook p'
      ' WHERE it.ndepositaccount = da.ndepositaccount'
      '   AND da.nmatter = m.nmatter'
      '   AND m.nclient = p.nclient'
      '   AND it.who = e.login_id(+)'
      '   AND ninvtran = :ninvtran')
    Left = 545
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ninvtran'
        Value = nil
      end>
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plDep
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = dmAxiom.plReports
    Template.DatabaseSettings.NameField = 'ITEM_NAME'
    Template.DatabaseSettings.TemplateField = 'TEMPLATE'
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
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
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
    Left = 712
    Top = 193
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plDep'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
