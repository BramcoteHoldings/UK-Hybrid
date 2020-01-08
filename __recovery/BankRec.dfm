object frmBankRec: TfrmBankRec
  Left = 608
  Top = 373
  Caption = 'Bank Reconciliation'
  ClientHeight = 654
  ClientWidth = 1068
  Color = clBtnFace
  Constraints.MinWidth = 728
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    1068
    654)
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 299
    Width = 1068
    Height = 4
    Cursor = crVSplit
    Align = alTop
    MinSize = 25
    ExplicitWidth = 935
  end
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 1068
    Height = 141
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 87
      Top = 10
      Width = 29
      Height = 15
      Caption = 'Bank:'
    end
    object Label2: TLabel
      Left = 8
      Top = 38
      Width = 101
      Height = 15
      Caption = 'Statement Balance:'
    end
    object Label3: TLabel
      Left = 6
      Top = 67
      Width = 103
      Height = 15
      Caption = 'Calculated Balance:'
    end
    object Label4: TLabel
      Left = 61
      Top = 94
      Width = 56
      Height = 17
      Caption = 'Variance:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 752
      Top = 10
      Width = 93
      Height = 15
      Caption = 'Opening Balance:'
    end
    object Label6: TLabel
      Left = 728
      Top = 38
      Width = 114
      Height = 15
      Caption = 'Payments this period:'
    end
    object Label7: TLabel
      Left = 734
      Top = 67
      Width = 106
      Height = 15
      Caption = 'Receipts this period:'
    end
    object Label8: TLabel
      Left = 517
      Top = 10
      Width = 84
      Height = 15
      Alignment = taRightJustify
      Caption = 'Statement Date:'
    end
    object Label9: TLabel
      Left = 492
      Top = 38
      Width = 109
      Height = 15
      Alignment = taRightJustify
      Caption = 'Last reconciled Date:'
    end
    object Label10: TLabel
      Left = 8
      Top = 122
      Width = 86
      Height = 15
      Caption = 'Additions/Errors'
    end
    object Label11: TLabel
      Left = 755
      Top = 92
      Width = 99
      Height = 30
      Alignment = taRightJustify
      Caption = 'Closing Cashbook Balance:'
      WordWrap = True
    end
    object lblDRCR: TLabel
      Left = 987
      Top = 97
      Width = 15
      Height = 15
      Caption = 'DR'
    end
    object Label12: TLabel
      Left = 390
      Top = 92
      Width = 211
      Height = 30
      Alignment = taRightJustify
      Caption = 
        'Entries backdated to current period and entered in future period' +
        ':'
      WordWrap = True
    end
    object Label13: TLabel
      Left = 414
      Top = 58
      Width = 187
      Height = 30
      Alignment = taRightJustify
      Caption = 'Unpresented cheques, receipts and Adjustments:'
      WordWrap = True
    end
    object cbBank: TComboBox
      Left = 121
      Top = 7
      Width = 49
      Height = 23
      Style = csDropDownList
      Sorted = True
      TabOrder = 0
      OnChange = cbBankChange
      OnClick = cbBankClick
    end
    object dtpStatementDate: TDateTimePicker
      Left = 607
      Top = 7
      Width = 111
      Height = 23
      Date = 36716.509550173600000000
      Time = 36716.509550173600000000
      Checked = False
      TabOrder = 1
      OnChange = dtpStatementDateChange
    end
    object edStatementBal: TcxCurrencyEdit
      Left = 121
      Top = 35
      EditValue = 0c
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = edStatementBalPropertiesEditValueChanged
      Properties.OnValidate = edStatementBalPropertiesValidate
      TabOrder = 3
      Width = 121
    end
    object edCalculatedBal: TcxCurrencyEdit
      Left = 121
      Top = 64
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValidateOnEnter = False
      TabOrder = 4
      Width = 121
    end
    object edVariance: TcxCurrencyEdit
      Left = 121
      Top = 93
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValidateOnEnter = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial Black'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 121
    end
    object edReceipts: TcxCurrencyEdit
      Left = 860
      Top = 64
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValidateOnEnter = False
      TabOrder = 6
      Width = 121
    end
    object edPayments: TcxCurrencyEdit
      Left = 860
      Top = 35
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValidateOnEnter = False
      TabOrder = 7
      Width = 121
    end
    object edOpeningBalance: TcxCurrencyEdit
      Left = 860
      Top = 7
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValidateOnEnter = False
      TabOrder = 8
      Width = 121
    end
    object cmbDRCR: TcxComboBox
      Left = 248
      Top = 35
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'DR'
        'CR')
      Properties.OnChange = cmbDRCRPropertiesChange
      TabOrder = 2
      Text = 'DR'
      Width = 51
    end
    object dtpLastReconciled: TDateTimePicker
      Left = 607
      Top = 35
      Width = 111
      Height = 23
      Date = 42662.509550173600000000
      Time = 42662.509550173600000000
      Checked = False
      Enabled = False
      TabOrder = 9
      OnChange = dtpStatementDateChange
    end
    object edClosingBalance: TcxCurrencyEdit
      Left = 860
      Top = 93
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValidateOnEnter = False
      TabOrder = 10
      Width = 121
    end
    object edAdjustments: TcxCurrencyEdit
      Left = 607
      Top = 64
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      TabOrder = 11
      Width = 111
    end
    object lblBankName: TcxLabel
      Left = 180
      Top = 8
      AutoSize = False
      Transparent = True
      Height = 21
      Width = 323
    end
    object edBackdated: TcxCurrencyEdit
      Left = 607
      Top = 93
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      TabOrder = 13
      Width = 111
    end
  end
  object lblFileName: TcxLabel
    Left = 302
    Top = 632
    Anchors = [akLeft, akBottom]
  end
  object Panel2: TPanel
    Left = 0
    Top = 169
    Width = 1068
    Height = 130
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 2
    object dbgrLedger: TcxGrid
      Left = 1
      Top = 1
      Width = 1066
      Height = 128
      Align = alClient
      TabOrder = 0
      OnEnter = dbgrLedgerEnter
      LookAndFeel.NativeStyle = True
      object tvLedger: TcxGridDBTableView
        PopupMenu = popGrid
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsLedger
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.SeparatorWidth = 7
        FixedDataRows.SeparatorWidth = 7
        NewItemRow.SeparatorWidth = 7
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NavigatorOffset = 55
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 13
        Preview.LeftIndent = 22
        Preview.RightIndent = 6
        Styles.Content = cxStyle1
        Styles.OnGetContentStyle = tvLedgerStylesGetContentStyle
        object tvLedgerBANKED: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'BANKED'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 79
        end
        object tvLedgerDESCR: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'DESCR'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 197
        end
        object tvLedgerREFNO: TcxGridDBColumn
          Caption = 'Reference'
          DataBinding.FieldName = 'REFNO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = False
          Properties.OnButtonClick = tvLedgerREFNOPropertiesButtonClick
          Width = 69
        end
        object tvLedgerAMOUNT: TcxGridDBColumn
          Caption = 'Withdrawal'
          DataBinding.FieldName = 'WITHDRAWL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taRightJustify
          Width = 83
        end
        object tvLedgerDEPOSIT: TcxGridDBColumn
          Caption = 'Deposit'
          DataBinding.FieldName = 'DEPOSIT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
        end
      end
      object dbgrLedgerLevel1: TcxGridLevel
        GridView = tvLedger
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 303
    Width = 1068
    Height = 351
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 3
    object dbgrCashBook: TcxGrid
      Left = 1
      Top = 1
      Width = 1066
      Height = 349
      Align = alClient
      TabOrder = 0
      object tvCashBook: TcxGridDBTableView
        PopupMenu = popPaymentReceipt
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsCashbook
        DataController.KeyFieldNames = 'BANKREC_ID'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CHQAMT'
            Column = tvCashBookCHQAMT
          end
          item
            Kind = skSum
            FieldName = 'RCPAMT'
            Column = tvCashBookRCPAMT
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.SeparatorWidth = 7
        FixedDataRows.SeparatorWidth = 7
        Images = ilstToolbar
        NewItemRow.SeparatorWidth = 7
        OptionsCustomize.ColumnMoving = False
        OptionsData.Deleting = False
        OptionsSelection.MultiSelect = True
        OptionsView.NavigatorOffset = 55
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.IndicatorWidth = 13
        Preview.LeftIndent = 22
        Preview.RightIndent = 6
        object tvCashBookBANKREC_SAVED: TcxGridDBColumn
          DataBinding.FieldName = 'BANKREC_SAVED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Properties.OnEditValueChanged = tvCashBookBANKREC_SAVEDPropertiesEditValueChanged
          MinWidth = 30
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 30
          IsCaptionAssigned = True
        end
        object tvCashBookCREATED: TcxGridDBColumn
          Caption = 'Transaction Date'
          DataBinding.FieldName = 'CREATED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          Width = 81
        end
        object tvCashBookSYSTEM_DATE: TcxGridDBColumn
          Caption = 'Entry Date'
          DataBinding.FieldName = 'SYSTEM_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          Width = 60
        end
        object tvCashBookREFNO: TcxGridDBColumn
          Caption = 'Transaction No.'
          DataBinding.FieldName = 'REFNO'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          Width = 93
        end
        object tvCashBookPAYEE: TcxGridDBColumn
          Caption = 'Received From\Paid To'
          DataBinding.FieldName = 'PAYEE'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          Width = 265
        end
        object tvCashBookDESCR: TcxGridDBColumn
          DataBinding.FieldName = 'DESCR'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          VisibleForCustomization = False
          Width = 325
        end
        object tvCashBookTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'TYPE'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          VisibleForCustomization = False
          Width = 52
        end
        object tvCashBookCHQAMT: TcxGridDBColumn
          Caption = 'Withdrawal'
          DataBinding.FieldName = 'CHQAMT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          Width = 66
        end
        object tvCashBookRCPAMT: TcxGridDBColumn
          Caption = 'Deposit'
          DataBinding.FieldName = 'RCPAMT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          Width = 65
        end
        object tvCashBookACCT: TcxGridDBColumn
          DataBinding.FieldName = 'ACCT'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
        end
        object tvCashBookNBANKDEP: TcxGridDBColumn
          DataBinding.FieldName = 'NBANKDEP'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
        end
        object tvCashBookNOWNER: TcxGridDBColumn
          DataBinding.FieldName = 'NOWNER'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Moving = False
          VisibleForCustomization = False
          Width = 63
        end
        object tvCashBookORIGINAL: TcxGridDBColumn
          DataBinding.FieldName = 'ORIGINAL'
        end
      end
      object dbgrCashBookLevel1: TcxGridLevel
        GridView = tvCashBook
      end
    end
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO CHEQUE '
      '  (CREATED, ACCT, TYPE, AMOUNT, PAYEE, CHQNO, APPROVAL, '
      '   REVERSED, NCHEQUE, BANKED, TRUST, PRESENTED, '
      '   DESCR, SYSTEM_DATE, PRINTED)'
      'VALUES'
      '  (:CREATED, :ACCT, '#39'BP'#39', :AMOUNT, :PAYEE, :CHQNO, :APPROVAL, '
      '   '#39'N'#39', :NCHEQUE, '#39'Y'#39', :TRUST, :PRESENTED, '
      '   :DESCR, SysDate, '#39'Y'#39')')
    Left = 555
    Top = 169
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APPROVAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end>
  end
  object qryBankRec: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  B.ROWID,'
      '  B.BANK,'
      '  B.BANKED,'
      '  B.TYPE,'
      '  B.REFNO,'
      '  B.DESCR,'
      '  B.RECONDATE,'
      '  B.BANKSTATEMENT,'
      '  B.NMATTER,'
      '  case when (B.AMOUNT < 0) then b.amount'
      '   else 0 end as withdrawl,'
      '  case when (B.AMOUNT > 0) then b.amount'
      '   else 0 end as deposit'
      'FROM'
      '  BANKREC B'
      'WHERE'
      '  B.BANK = :BANK AND'
      '--  TRUNC(B.BANKED) > :p_datefrom AND '
      '  TRUNC(B.BANKED) <= :P_DateTo AND'
      '  B.RECONDATE IS NULL')
    AfterInsert = qryBankRecAfterInsert
    BeforePost = qryBankRecBeforePost
    BeforeScroll = qryBankRecBeforeScroll
    AfterScroll = qryBankRecAfterScroll
    Left = 524
    Top = 169
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object dsLedger: TUniDataSource
    DataSet = qryBankRec
    Left = 523
    Top = 192
  end
  object popGrid: TPopupMenu
    OnPopup = popGridPopup
    Left = 491
    Top = 192
    object popNewAddition: TMenuItem
      Caption = 'New Addition'
      OnClick = popNewAdditionClick
    end
    object Remove1: TMenuItem
      Caption = 'Remove'
      Enabled = False
      OnClick = Remove1Click
    end
    object Reconcile1: TMenuItem
      Caption = '-'
    end
    object Reconcile2: TMenuItem
      Caption = 'Reconcile entry (as at Statement Date)'
      Enabled = False
      OnClick = Reconcile2Click
    end
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT B.*, B.ROWID'
      'FROM BANKREC B'
      'WHERE 1=2')
    Debug = True
    CachedUpdates = True
    Left = 587
    Top = 169
  end
  object qryFindCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NCHEQUE, AMOUNT, PRESENTED '
      'FROM CHEQUE'
      'WHERE ACCT = :ACCT'
      '      AND CHQNO = :CHQNO')
    CachedUpdates = True
    Left = 493
    Top = 169
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end>
  end
  object qryFindDeposit: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NBANKDEP, AMOUNT, DEPOSIT_DATE'
      'FROM BANKDEP'
      'WHERE ACCT = :ACCT'
      '      AND RECONDATE IS NULL')
    Left = 459
    Top = 169
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end>
  end
  object qryAllocInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (AMOUNT, DESCR, CREATED, ACCT, NMATTER, REFNO,'
      '   TYPE, NCLIENT, NCHEQUE, PAYER, TRUST, BILLED, FILEID,'
      '   NALLOC, NMEMO, CLIENT_NAME, SYSTEM_DATE, MATTER_DESC, '
      '   PRIVATE, NRECEIPT, NJOURNAL)'
      'VALUES'
      '  (:AMOUNT, :DESCR, :CREATED, :ACCT, :NMATTER, :REFNO,'
      '   '#39'J2'#39', :NCLIENT, :NCHEQUE, :PAYER, '#39'G'#39', '#39'N'#39', :FILEID,'
      '   :NALLOC, 0, :CLIENT_NAME, SysDate, :MATTER_DESC, '#39'N'#39', 0, 0)')
    Left = 427
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLIENT_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATTER_DESC'
        Value = nil
      end>
  end
  object tmrShowReconciled: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = tmrShowReconciledTimer
    Left = 659
    Top = 171
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 735
    Top = 172
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyleR: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxStyleG: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGreen
    end
    object cxStyleD: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
  end
  object OpenDialog: TOpenDialog
    Left = 463
    Top = 514
  end
  object ppReportBankRec: TppReport
    AutoStop = False
    DataPipeline = plBankRec
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
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
    Left = 945
    Top = 345
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plBankRec'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 34459
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 183357
        mmTop = 1058
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Bank Statement'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 80370
        mmTop = 794
        mmWidth = 26585
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 12965
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 23019
        mmTop = 12965
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Ref No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 30956
        mmTop = 12965
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 12965
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Statement Amt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 121444
        mmTop = 12965
        mmWidth = 20955
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Cashbook Amt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 147902
        mmTop = 12965
        mmWidth = 20786
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Presented'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 171186
        mmTop = 12965
        mmWidth = 14563
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 17198
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'BANKED'
        DataPipeline = plBankRec
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'TYPE'
        DataPipeline = plBankRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3969
        mmLeft = 23019
        mmTop = 1058
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'REFNO'
        DataPipeline = plBankRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3969
        mmLeft = 30956
        mmTop = 1058
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = plBankRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3969
        mmLeft = 45508
        mmTop = 1058
        mmWidth = 72231
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plBankRec
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3979
        mmLeft = 119592
        mmTop = 1058
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'MatchedAmount'
        DataPipeline = plBankRec
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3969
        mmLeft = 146315
        mmTop = 1058
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'PresentedDate'
        DataPipeline = plBankRec
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3598
        mmLeft = 171186
        mmTop = 1058
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataPipeline = plBankRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plBankRec'
        mmHeight = 3704
        mmLeft = 52123
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Number of unmatched cheques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 1852
        mmTop = 1323
        mmWidth = 47667
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plBankRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3598
        mmLeft = 119592
        mmTop = 1323
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'MatchedAmount'
        DataPipeline = plBankRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBankRec'
        mmHeight = 3704
        mmLeft = 146315
        mmTop = 1323
        mmWidth = 22490
        BandType = 7
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
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
    object ppParameterList1: TppParameterList
    end
  end
  object plBankRec: TppDBPipeline
    DataSource = dsBankRec
    UserName = 'plBankRec'
    Left = 788
    Top = 254
    object plBankRecppField1: TppField
      FieldAlias = 'TypeDesc'
      FieldName = 'TypeDesc'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plBankRecppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MatchedAmount'
      FieldName = 'MatchedAmount'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object plBankRecppField3: TppField
      FieldAlias = 'PresentedDate'
      FieldName = 'PresentedDate'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object plBankRecppField4: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object plBankRecppField5: TppField
      FieldAlias = 'BANKED'
      FieldName = 'BANKED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plBankRecppField6: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object plBankRecppField7: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 6
    end
    object plBankRecppField8: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 7
    end
    object plBankRecppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plBankRecppField10: TppField
      FieldAlias = 'RECONDATE'
      FieldName = 'RECONDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object plBankRecppField11: TppField
      FieldAlias = 'BANKSTATEMENT'
      FieldName = 'BANKSTATEMENT'
      FieldLength = 12
      DisplayWidth = 12
      Position = 10
    end
    object plBankRecppField12: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 11
    end
  end
  object dsBankRec: TUniDataSource
    DataSet = qryBankRec
    Left = 781
    Top = 487
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'popupmenu'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = ilstToolbar
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 334
    Top = 172
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
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1184
      FloatTop = 337
      FloatClientWidth = 51
      FloatClientHeight = 24
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnFinalize'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSaveRec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbrnNewAddition'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object tbtnPresent: TdxBarButton
      Caption = 'Present Selected Cheque'
      Category = 0
      Hint = 'Present Selected Cheque'
      Visible = ivAlways
      ImageIndex = 6
      PaintStyle = psCaptionGlyph
      OnClick = tbtnPresentClick
    end
    object tbtnReceiptPresent: TdxBarButton
      Caption = 'Reconcile Selected Recipt'
      Category = 0
      Hint = 'Reconcile Selected Recipt'
      Visible = ivAlways
      ImageIndex = 15
      OnClick = tbtnReceiptPresentClick
    end
    object tbtnReceiptReqDel: TdxBarButton
      Caption = 'Delete Receipt Requisition'
      Category = 0
      Hint = 'Delete Receipt Requisition'
      Visible = ivAlways
      ImageIndex = 17
      LargeImageIndex = 17
      OnClick = tbtnReceiptReqDelClick
    end
    object tbtnConvertReceiptReq: TdxBarButton
      Caption = 'Create Receipt for this Receipt Requisition'
      Category = 0
      Hint = 'Create Receipt for this Receipt Requisition'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = tbtnConvertReceiptReqClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Close'
      Category = 1
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object btnFinalize: TdxBarButton
      Caption = 'Finalize Now'
      Category = 1
      Hint = 'Finalize Now'
      Visible = ivAlways
      ImageIndex = 13
      PaintStyle = psCaptionGlyph
      OnClick = btnFinalizeClick
    end
    object bbrnNewAddition: TdxBarButton
      Caption = 'Adjustments'
      Category = 1
      Hint = 'Adjustments'
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = bbrnNewAdditionClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Refresh'
      Category = 1
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
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
      OnClick = dxBarButton2Click
    end
    object btnSaveRec: TdxBarButton
      Caption = 'Save Reconciliation'
      Category = 1
      Hint = 'Save Reconciliation'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AB4F
        4FFF964F4CFFAB4F4FFFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC4C4
        C4FFAB4F4FFFAB4F4FFFAB4F4FFFFF00FF00FF00FF00FF00FF00B58474FFAB4F
        4FFFCD6764FF964F4CFFC3A2A9FFC49C94FFDCDADBFFFFFCFFFFE9EAE9FFDCDA
        DBFF963635FFAB4F4FFFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
        64FFCD6764FF964F4CFFC3B5B4FFAB4F4FFFC2907DFFC4C4C4FFFFFCFFFFE9EA
        E9FF963635FFAB4F4FFFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
        64FFCD6764FF9B4F54FFDBCBC7FF963635FFAB4F4FFFAE837AFFC6C4C6FFFFFC
        FFFF963635FFBC6B6DFFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
        64FFCD6764FF9B4F54FFDBCBC7FFDBCBC7FFDBCBC7FFC3B5B4FFC6C4C6FFDCDA
        DBFF963635FFAB4F4FFFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
        64FFCD6764FFBC6B6DFFC2907DFFC2907DFFC2907DFFC2907DFFBC6B6DFFFF61
        83FFAB4F4FFFCD6764FFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
        64FFCD6764FFCD6764FFCD6764FFCD6764FFCD6764FFCD6764FFCD6764FFCD67
        64FFCD6764FFCD6764FFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCE67
        6DFFFF6183FFFFA5ACFFFFA5ACFFFFA5ACFFFFA5ACFFFFA5ACFFFFA5ACFFFFA5
        ACFFFF6183FFAB4F4FFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCD67
        64FF964F4CFFF6F3F6FFF6F3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA5ACFFCD6764FFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCE67
        6DFFAB4F4FFFF6F3F6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFF6F3
        F6FFFFA5ACFFAB4F4FFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCE67
        6DFFAB4F4FFFF6F3F6FFF6F3F6FFF6F3F6FFF6F3F6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA5ACFFAB4F4FFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCE67
        6DFF964F4CFFF6F3F6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFF6F3
        F6FFFFA5ACFFBC6B6DFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCE67
        6DFFAB4F4FFFF6F3F6FFF6F3F6FFF6F3F6FFF6F3F6FFF6F3F6FFF6F3F6FFFFFF
        FFFFFFA5ACFFAB4F4FFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FF964F
        4CFF963635FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4
        C6FFFF6183FF963635FF964F4CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      OnClick = btnSaveRecClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Print Bank Rec'
      Category = 1
      Hint = 'Print Bank Rec'
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton3Click
    end
  end
  object dsCashbook: TUniDataSource
    DataSet = qryCashBook
    Left = 277
    Top = 361
  end
  object qryCalculatedBalance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.receipts - b.cheques as cashbook_bal'
      'from'
      '(SELECT SUM(AMOUNT) AS Receipts '
      'FROM RECEIPT '
      'WHERE '
      'CASE'
      
        '    WHEN ((:trust in ('#39'T'#39','#39'I'#39')) AND (:trustasoffice = '#39'N'#39') AND (' +
        'TRUNC (system_date) <= :p_datefrom))'
      '       THEN 1'
      '    WHEN ((:trust <> '#39'T'#39') AND (TRUNC (created) <= :p_datefrom))'
      '       THEN 1'
      '    ELSE 0'
      'END = 1'
      '--trunc(CREATED) <= :P_DateFrom AND '
      'AND ACCT = :P_Acct'
      'AND bankrec_saved = '#39'N'#39') a,'
      '(SELECT SUM(AMOUNT) AS Cheques '
      'FROM CHEQUE '
      'WHERE'
      'CASE'
      
        '    WHEN ((:trust in ('#39'T'#39','#39'I'#39')) AND (:trustasoffice = '#39'N'#39') AND (' +
        'TRUNC (system_date) <= :p_datefrom))'
      '       THEN 1'
      '    WHEN ((:trust <> '#39'T'#39') AND (TRUNC (created) <= :p_datefrom))'
      '       THEN 1'
      '    ELSE 0'
      'END = 1 '
      '--trunc(CREATED) <= :P_DateFrom AND '
      'AND ACCT = :P_Acct '
      'and recondate is null'
      'AND bankrec_saved = '#39'N'#39') b')
    Left = 121
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trustasoffice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object qryPriorReceipts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM (amount) AS receipts, MAX (created) AS maxrcptdate'
      '  FROM receipt'
      'WHERE CASE'
      
        '          WHEN ((:trust in ('#39'T'#39','#39'I'#39')) AND (:trustasoffice = '#39'N'#39')' +
        ' AND (TRUNC (system_date) <= :p_datefrom))'
      '             THEN 1'
      
        '          WHEN ((:trust in ('#39'T'#39','#39'I'#39')) AND (:trustasoffice = '#39'Y'#39')' +
        ' AND (TRUNC (created) <= :p_datefrom))'
      '             THEN 1'
      
        '          WHEN ((:trust <> '#39'T'#39') AND (TRUNC (created) <= :p_datef' +
        'rom))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND acct = :p_acct')
    Left = 512
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trustasoffice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object qryPriorCheques: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM (amount) AS Cheques, MAX (created) AS MaxChqDate'
      '  FROM CHEQUE'
      'WHERE CASE'
      
        '          WHEN ((:trust in ('#39'T'#39','#39'I'#39')) AND (:trustasoffice = '#39'N'#39')' +
        ' AND (TRUNC (system_date) <= :p_datefrom))'
      '             THEN 1'
      
        '          WHEN ((:trust in ('#39'T'#39','#39'I'#39')) AND (:trustasoffice = '#39'Y'#39')' +
        ' AND (TRUNC (created) <= :p_datefrom))'
      '             THEN 1'
      
        '          WHEN ((:trust <> '#39'T'#39') AND (TRUNC (created) <= :p_datef' +
        'rom))'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND acct = :p_acct')
    Left = 604
    Top = 346
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trustasoffice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object qryCurrentReceipts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM (amount) AS receipts'
      '  FROM receipt'
      ' WHERE CASE'
      '          WHEN (:trust in ('#39'T'#39','#39'I'#39')) AND (:trustasoffice = '#39'N'#39')'
      '          AND (    TRUNC (system_date) >= :p_datefrom AND '
      '                   TRUNC (system_date) < :p_dateto'
      '              )'
      '             THEN 1'
      '          WHEN (:trust in ('#39'T'#39','#39'I'#39')) AND (:trustasoffice = '#39'Y'#39')'
      '          AND (    TRUNC (created) >= :p_datefrom AND '
      '                   TRUNC (created) < :p_dateto'
      '              )'
      '             THEN 1'
      '          WHEN (:trust <> '#39'T'#39')'
      
        '          AND (TRUNC (created) >= :p_datefrom AND TRUNC (created' +
        ') < :p_dateto)'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND acct = :p_acct'
      '--   AND bankrec_saved = '#39'N'#39)
    Left = 760
    Top = 398
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trustasoffice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object qryCurrentCheques: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM (amount) AS cheques'
      '  FROM cheque'
      ' WHERE CASE'
      '          WHEN (:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoffice = '#39'N'#39')'
      '          AND (    TRUNC (system_date) >= :p_datefrom'
      '               AND TRUNC (system_date) < :p_dateto'
      '              )'
      '             THEN 1'
      '          WHEN (:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoffice = '#39'Y'#39')'
      '          AND (    TRUNC (created) >= :p_datefrom'
      '               AND TRUNC (created) < :p_dateto'
      '              )'
      '             THEN 1'
      '          WHEN (:trust <> '#39'T'#39')'
      
        '          AND (TRUNC (created) >= :p_datefrom AND TRUNC (created' +
        ') < :p_dateto)'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      '   AND acct = :p_acct'
      '--   AND bankrec_saved = '#39'N'#39)
    Left = 758
    Top = 338
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trustasoffice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object popPaymentReceipt: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'tbtnPresent'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnReceiptPresent'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnReceiptReqDel'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnConvertReceiptReq'
      end>
    ItemOptions.ShowDescriptions = True
    UseOwnFont = False
    OnPopup = popPaymentReceiptPopup
    Left = 97
    Top = 351
    PixelsPerInch = 96
  end
  object ilstToolbar: TImageList
    Left = 339
    Top = 212
    Bitmap = {
      494C010112001500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000F3F3F30CE7E7
      E718F2F2F20D0000000000000000000000000000000000000000000000000000
      000000000000F5F5F50AE9E9E916000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400C6C6C600C6C6
      C600C6C6C600C6C6C60000008400000084000000840000008400000000000000
      00000000000000000000000000000000000000000000F3F3F30CB0B0B04F6E6E
      6E919B9B9B64EFEFEF100000000000000000000000000000000000000000FEFE
      FE01E4E4E41BA7A7A7589090906FE9E9E9160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400C6C6C600C6C6
      C600C6C6C600C6C6C6000000840000008400000084000000840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000907CEB832900DFFF3E28
      A5D76565659AC9C9C936FCFCFC03000000000000000000000000FCFCFC03D5D5
      D52A6150B2AF2D07D8F8A7A7A758F5F5F50A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000008400840000008400
      0000840000008400000084000000840000008400000084000000000000008484
      84008484840084848400FFFFFF000000000000000000BBAFF4502900DFFF300A
      DBF5524E69B17F7F7F80DDDDDD220000000000000000FCFCFC03C7C5D23A4529
      C2D62900DFFF7C6BCD94F0F0F00F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000008400840000008400
      000084000000840000008400000084000000840000000000840000000000FFFF
      FF008400000084000000FFFFFF000000000000000000000000008670ED8F2900
      DFFF3C1CD1E35F5F5FA09494946BE1E1E11EFCFCFC03C7C5D23A3918CDE72D07
      D8F8A39CC563F6F6F60900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400840000008400
      0000840000008400000084000000840000000000840000008400000000008484
      8400840000008400000084000000000000000000000000000000000000007960
      EB9F2900DFFF5138C2C76464649B9292926DB6B4C14B3918CDE72D07D8F8A39C
      C563F6F6F6090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400840000008400
      000084000000840000008400000000008400000084000000840000000000FFFF
      FF00FFFFFF008400000084000000000000000000000000000000000000000000
      00007960EB9F2900DFFF5037C2C852505DAF3312C7ED2C06D6F9A39CC563F6F6
      F609000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000008400840000008400
      000084000000840000008400000084000000C6C6C60000008400000000008484
      8400848484008400000084000000000000000000000000000000000000000000
      000000000000785FE9A02900DFFF2C06D6F92B05D5FA6A628B9DDADADA25FEFE
      FE01000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000008400840000008400
      000084000000000084008400000084000000840000000000840000000000FFFF
      FF00FFFFFF008400000084000000000000000000000000000000000000000000
      0000FCFCFC03C7C5D23A2E08D9F72900DFFF472BC3D47474748B9191916ED5D5
      D52AF9F9F9060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400840000008400
      0000000084000000840000008400840000008400000084000000840000008400
      000084000000840000008400000000000000000000000000000000000000FCFC
      FC03C7C5D23A3918CDE72D07D8F8705CCBA3350FDFF0593DD5C27C7A88858585
      857AC3C3C33CF3F3F30C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000084000000840000008400
      00008400000084000000FFFFFF00000000000000000000000000F9F9F906C7C5
      D23A3918CDE72900DFFF8A80B87FF0F0F00FD6CFF830431FE2E04928DDD77972
      9C8D7C7C7C83B3B3B34CF5F5F50A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400008484000084
      8400008484000084840000848400008484000084840000000000840000008400
      00008400000000000000000000000000000000000000FBFBFB04BBB9C7463817
      CCE82900DFFF7263B69CEAEAEA150000000000000000F1EFFC105E40E7BF340E
      DEF17B6EB39189898976DBDBDB24FCFCFC030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000084
      84000084840000848400008484000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000C5BEE7413817CCE82900
      DFFF5A46B5B9E3E3E31C0000000000000000000000000000000000000000937F
      EE802900DFFFCFCAE635FCFCFC03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000848400000000000000000084848400848484008484840084848400FFFF
      FF0000000000FFFFFF00000000000000000000000000411DDFE22900DFFF4529
      C2D6D5D5D52AFEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000003610E1EF4D2CE1D3DFDD
      EB22FEFEFE010000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000084848400848484008484
      840084848400848484000000FF00000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C05824FFB6511EFFB94F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000840000008400C6C6C600C6C6
      C600C6C6C6000000FF000000FF000000FF000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8804BFFEA824EFFB74E1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000840000008400C6C6C600C6C6
      C600C6C6C6000000FF000000FF000000FF00000000000000840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000E67E49FFF4B595FFBC4F19FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000008400C6C6C600C6C6
      C6000000FF000000FF000000FF000000FF000000FF0000000000000000008484
      84008484840084848400FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000E57D49FFF4B595FFBA4F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF0000000000C6C6C60000008400C6C6C6000000
      FF000000FF000000FF000000FF000000FF000000FF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000E8804BFFFBD8C6FFF4B595FFED8E5EFFB84F
      1AFF0000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000840000008400C6C6C6000000
      FF000000FF0000000000000084000000FF000000FF000000FF00000000008484
      84008484840084848400FFFFFF0000000000AD9687FF634935FF634935FF6349
      35FF634935FF634935FFE9834FFFFBD8C6FFF4B595FFF5A57DFFED9264FFEC8C
      5BFFB84E1AFF000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000008400000084000000FF000000
      0000000000000000840000008400000084000000FF000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000BAA697FFF6F4F3FFDFDDDBFFD9D2
      CBFFD9CAC0FFEC8652FFFBD8C6FFF5BC9FFFF3AE8BFFF5A57DFFEF976BFFED90
      61FFEC8A59FFB64E1AFF0000000000000000000000000080000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C6000000840000008400C6C6
      C600C6C6C6000000840000008400C6C6C6000000FF000000FF00000000008484
      84008484840084848400FFFFFF0000000000BEA899FFFEFEFEFFFEFEFEFFD7C1
      B4FFEC8C5AFFFAD8C8FFF7C9B1FFF3AE8BFFF4B392FFF5A57DFFEF9B71FFEE95
      67FFED9061FFEC8957FFB74E1AFFFEFAF70A0080000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C6000000840000008400C6C6
      C600C6C6C6000000840000008400C6C6C600C6C6C6000000FF000000FF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C0AB9CFFFEFEFEFFFEFEFEFFEE92
      62FFFAD2BDFFFBD4C0FFFBD4C0FFFAD0BBFFF8C8AFFFF7C0A5FFF5B596FFF2AB
      87FFF0A17AFFEF996FFFEE9367FFB64E1BFF0000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000840000008400000084000000
      8400000084000000840000008400000084000000840000008400000000000000
      FF000000000084848400FFFFFF0000000000C3AE9EFFFEFEFEFFFEFEFEFFEE96
      67FFEE9466FFED9465FFEC9161FFEB8E5FFFE48857FFDC7B49FFD6733FFFCD66
      31FFC25722FFBD521CFFBC511CFFBB4F1AFF0000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000000000FFFFFF0000000000C6B0A1FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFAF8FFFCF5F0FFFBEEE6FF4C66F8FF1932F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000084840000848400008484000084
      840000848400008484000084840000848400008484000000000000000000FFFF
      FF00000000000000FF000000FF0000000000C9B2A4FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFFCF4F0FF6A80F8FF5064F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000080000000FF
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000084
      84000084840000848400008484000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000CAB5A5FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFCDC6DFFFC5BED9FF694F
      3DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      000000FF000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000848400000000000000000084848400848484008484840084848400FFFF
      FF0000000000FFFFFF000000000000000000CCB6A7FFCCB6A7FFCAB5A6FFC9B3
      A4FFC6B0A2FFC4AF9FFFC1AC9DFFBFAA9BFFBCA798FFBAA596FFB8A394FFAB96
      87FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF00000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      600080606000000000000000000000000000000000000000000000000000A4A0
      A0003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E003E3E3E003E3E3E00A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C2000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000007A7A
      7A00B1FFFF0048FFFF0048FFFF0048FFFF0048FFFF0048FFFF0048FFFF0048FF
      FF0048FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D600000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000007A7A
      7A00B1FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FF
      FF00D4FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C0001015200717171000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080000000000000000000000000007A7A
      7A00B1FFFF00D4FFFF007A7A7A00D4FFFF007A7A7A007A7A7A007A7A7A007A7A
      7A00D4FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E45000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000007A7A
      7A00B1FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FF
      FF00D4FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060000000000000000000000000000000
      0000B1FFFF00D4FFFF007A7A7A00D4FFFF007A7A7A007A7A7A007A7A7A007A7A
      7A00D4FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E0000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C0008060600000000000000000000000FF000000
      FF0000000000B1FFFF00B1FFFF00B1FFFF00B1FFFF00B1FFFF00B1FFFF00B1FF
      FF00B1FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B80011117800000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C0008060600000000000000000000000FF000000FF000000
      FF000000FF00000000007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      80008060600080606000000000000000000000000000000000000000FF000000
      FF00000000007A7A7A000000000048FFFF002626260048FFFF007A7A7A0048FF
      FF007A7A7A0048FFFF007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF0000000000B1FFFF00B1FFFF00B1FFFF00B1FFFF0000000000B1FFFF00B1FF
      FF00B1FFFF00B1FFFF007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B90000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000007A7A7A007A7A7A0000000000000000007A7A7A007A7A
      7A007A7A7A007A7A7A00A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA7000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
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
      000000000000000000009C9CCE009C9CCE009C9CCE009C9CCE009C9CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9CCE009C9CCE009C9CCE009C9CCE009C9CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000009C9CCE009C9CCE00C6D6EF00C6C6C600C6C6C600C6C6C6009C9C
      CE009C9CCE000000000000000000000000008400000084000000840000008400
      0000000000009C9CCE009C9CCE00C6D6EF00C6C6C600C6C6C600C6C6C6009C9C
      CE009C9CCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000CE313100CE313100CE3131008400
      00009C9CCE00C6D6EF00C6D6EF00C6C6C6007373730073737300000000000000
      000000000000000000000000000000000000CE313100CE313100CE3131008400
      00009C9CCE00C6D6EF00C6D6EF00C6C6C6007373730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE633100CE633100CE6331008400
      0000B5B5B500C6D6EF00F7FFFF009C9CCE000000FF0000000000000000000000
      000000000000000000000000000000000000CE633100CE633100CE6331008400
      0000B5B5B500C6D6EF00F7FFFF009C9CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C63008400
      00007373730073737300737373000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C63008400
      0000737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000000000000000000000000000000000000000
      000000000000000000008400000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000FF000000FF0000000000FFFF00000000FF000000FF000000
      FF0000000000FFFF0000FFFFFF0000000000FFFF0000FFFF0000FFFF00008400
      00008400000084000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000084000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF008400
      000084000000FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      840000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000FF000000
      FF000000000000000000FFFFFF0000000000FFFF0000FFFF0000FFFF00008400
      0000FFFF0000FFFF0000FFFF00008400000084000000FFFF0000FFFF0000FFFF
      0000FFFF000084000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      000084000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000FF000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000084848400000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      00008400000084848400000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000008484840084848400000000008484
      84000000FF000000FF000000FF008484840000FFFF0000FFFF0000FFFF008484
      8400FF000000FF000000FF000000848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000084000000000000000000000000000000848484000000FF000000
      FF0000000000000000000000FF000000FF000000FF000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000848484000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000084848400000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      000084000000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008484840084848400000000008484
      8400000000000000000000000000848484008484840084848400848484008484
      8400FF000000FF000000FF00000084848400FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084848400000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000848484000000FF000000
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000848484000000
      FF0000000000FFFFFF00FFFFFF00000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840084848400000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00801FC7F900000000000083E000000000
      000081C00000000000008181000000000000C003000000000000E00700000000
      0000F00F000000000000F80F000000000000F007000000000000E00300000000
      0000C001000000000000818000000000000083E100000000800183FF00000000
      E00387FF00000000F007FFFF00000000FFFFFFFFFC00801FFF1FFFFFF0000000
      FF1FF9FFC0000000FF1FF0FF00000000FF1FF0FF00000000FE0FE07F00000000
      0007C07F000000000003843F0000000000001E3F000000000000FE1F00000000
      0000FF1F00010000000FFF8F00030000000FFFC700070000000FFFE3001F8001
      000FFFF8007FE003FFFFFFFF01FFF007F80FF03FFFFFFFFFE007E007E001FFFF
      C003C000E001FFFF80018000E001FFFF80010000E001FFFF00010000E001BE8D
      00010000C0019EBA0001800080010EDE0001E001000106DD0001F00300010EEE
      0001F01F80019CAA0001E03FC001BEDD8003E03FC03FFFFFC003C03FE07FFFFF
      E00FC07FF0FFFFFFF01FF8FFFFFFFFFFFFFFFFFFFC1FFC1FC007FE7F08070807
      BFEBFC3F000700070005FC3F000700077E31FE7F003F00FF7E35FC3F001F01FF
      0006FC3F0E1F0FFB7FEAFC3FFC0FE0FB8014FC1F00000000C00AF20F00000000
      E001E10700000000E007E18700000000F007E00700000000F003F00F00000000
      F803F81F00000000FFFFFFFF00000000FF00FFFFFF00F111FF00FFFFFF00FFFF
      FF00FFFFF9000000FE00FFFFF000D111FE00FFFFF0009111FE00FFE7E000D111
      FF00C1F3C0000000FF80C3FB8400D1110000C7FB000091F10000CBFB0000D1F1
      0000DCF3000000000000FF070000DFF10000FFFF00009FF10000FFFF0000DFFF
      0000FFFF000000000000FFFF0000FFFF00000000000000000000000000000000
      000000000000}
  end
  object qryCheques: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID '
      'FROM CHEQUE C '
      'WHERE C.NCHEQUE = :P_NCheque')
    Left = 212
    Top = 230
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_NCheque'
        Value = nil
      end>
  end
  object qryUpdate: TUniSQL
    Connection = dmAxiom.uniInsight
    Left = 245
    Top = 512
  end
  object qryDeposits: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nbankdep, acct, deposit_date, last_nreceipt, reconciled, ' +
        'recondate,'
      '       amount, mod_by, mod_date,'
      '       CASE'
      '          WHEN recondate IS NULL'
      '             THEN '#39'Unreconciled'#39
      '          ELSE TO_CHAR (recondate, '#39'dd\mm\yyyy'#39')'
      '       END AS ReconciledState'
      '  FROM bankdep'
      'where'
      'nbankdep = :nbankdep'
      'and'
      'acct = :bank')
    Left = 268
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nbankdep'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'bank'
        Value = nil
      end>
  end
  object qryCR_BankRec_Tmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   *'
      
        '    FROM (SELECT '#39'CHEQUE'#39' AS original, created, acct, chqno AS r' +
        'efno, payee,'
      
        '                 descr, TYPE, ncheque AS nowner, (0 - amount) AS' +
        ' amount,'
      
        '                 amount AS chqamt, NULL AS rcpamt, system_date, ' +
        '0 as nbankdep,'
      '                 bankrec_saved'
      '            FROM cheque'
      '           WHERE TRUNC (created) <= :p_dateto'
      '             AND reversed = '#39'N'#39
      '             AND presented IS NULL'
      '          UNION'
      
        '          SELECT '#39'RECEIPT'#39' AS original, r.created, r.acct, rcptn' +
        'o AS refno,'
      
        '                 r.payor AS payee, r.descr, TYPE, r.nreceipt AS ' +
        'nowner,'
      
        '                 r.amount, NULL AS chqamt, r.amount AS rcpamt, r' +
        '.system_date, b.nbankdep,'
      '                 b.bankrec_saved'
      '            FROM bankdep b, receipt r'
      '           WHERE r.acct = :bank'
      '             AND TRUNC (r.created) <= :p_dateto'
      '             AND r.banked = '#39'Y'#39
      '             AND r.reversed = '#39'N'#39
      '             AND r.nbankdep = b.nbankdep'
      '             AND b.reconciled is null'
      '          UNION'
      
        '          SELECT '#39'RECEIPT REQ'#39' AS original, r.exp_date, r.bank, ' +
        'to_char(NRECEIPTREQ) AS refno,'
      
        '                 r.payor AS payee, r.descr, null, r.nreceipt AS ' +
        'nowner,'
      
        '                 r.amount, NULL AS chqamt, r.amount AS rcpamt, r' +
        '.system_date, 0,'
      '                 bankrec_saved'
      '            FROM receipt_req r'
      '           WHERE r.bank = :bank'
      '             AND TRUNC (r.exp_date) <= :p_dateto'
      '             AND r.nreceipt is null)'
      '   WHERE acct = :bank'
      'ORDER BY created DESC'
      ''
      ''
      ''
      '/*'
      'select * from ('
      
        'SELECT '#39'CHEQUE'#39' AS original, created, acct, chqno AS refno, paye' +
        'e, descr,'
      
        '          TYPE, ncheque AS nowner, (0 - amount) AS amount, amoun' +
        't AS chqamt,'
      '          null AS rcpamt, system_date'
      '     FROM cheque'
      
        'WHERE trunc(CREATED) <= :P_DateTo AND (trunc(PRESENTED) > :P_Dat' +
        'eTo or PRESENTED IS NULL)'
      '   UNION'
      
        '   SELECT '#39'RECEIPT'#39' AS original, r.created, r.acct, rcptno AS re' +
        'fno,'
      
        '          r.payor AS payee, r.descr, TYPE, r.nreceipt AS nowner,' +
        ' r.amount,'
      '          null AS chqamt, r.amount AS rcpamt, r.system_date'
      '     FROM receipt r '
      
        '          R.ACCT = :P_Acct AND trunc(R.CREATED) <= :P_DateTo AND' +
        ' R.BANKED = '#39'N'#39')'
      'where acct = :bank'
      'and nbankdep is null'
      'and recondate is null'
      'order by created desc'
      '*/')
    Left = 216
    Top = 439
    ParamData = <
      item
        DataType = ftDate
        Name = 'P_DateTo'
        ParamType = ptInput
        Value = 42671d
      end
      item
        DataType = ftString
        Name = 'bank'
        ParamType = ptInput
        Value = 'G1'
      end>
  end
  object qryCashBook: TUniQuery
    UpdatingTable = 'BANKREC_TMP'
    KeyFields = 'BANKREC_ID'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      'BANKREC_TMP.*, BANKREC_TMP.rowid '
      'from'
      'BANKREC_TMP'
      '--where'
      '--TRIM(empcode) = TRIM(:empcode)')
    Left = 208
    Top = 367
  end
  object qryBankRecTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' sum(b.amount) as bankrecamt'
      'FROM'
      '  BANKREC B'
      'WHERE'
      '  B.BANK = :BANK '
      'AND'
      '--  TRUNC(B.BANKED) > :p_datefrom AND '
      'TRUNC(B.BANKED) <= :P_DateTo AND'
      '  B.RECONDATE IS NULL')
    CachedUpdates = True
    Left = 427
    Top = 354
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object qryAdjustments: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NVL (SUM (amount), 0) * -1 AS adj_total FROM ('
      
        '  ---- UNPRESENTED CHEQUES presented after the period the period' +
        ' (increase balance) '
      
        '  SELECT '#39'CHEQUE'#39' AS grp, created, descr, chqno AS refno, TYPE, ' +
        'payee,'
      '               (0 - amount) AS amount, '#39'chq1'#39' AS subx'
      '  FROM cheque'
      '  WHERE acct = :p_acct'
      
        '      AND CASE WHEN ((:trust = '#39'T'#39') AND (:trustasoffice = '#39'Z'#39') A' +
        'ND (TRUNC(system_date) <= :p_dateto) '
      
        '                      AND (TRUNC(presented) > :p_dateto OR prese' +
        'nted IS NULL AND bankrec_saved = '#39'N'#39')) THEN 1'
      
        '               WHEN ((:trust = '#39'T'#39') AND (:trustasoffice <> '#39'Z'#39') ' +
        'AND (TRUNC (created) <= :p_dateto)'
      
        '                      AND (TRUNC(presented) > :p_dateto OR prese' +
        'nted IS NULL AND bankrec_saved = '#39'N'#39')) THEN 1'
      
        '               WHEN ((:trust <> '#39'T'#39') AND (TRUNC (created) <= :p_' +
        'dateto) '
      
        '                      AND (TRUNC(presented) > :p_dateto OR prese' +
        'nted IS NULL AND bankrec_saved = '#39'N'#39')) THEN 1'
      '               ELSE 0'
      '          END = 1'
      '        ---- this was removed'
      '  UNION ALL'
      '  ---- Withdrawal adjustment within the period (reduce balance)'
      
        '  SELECT '#39'CHEQUN'#39' AS grp, bankrec.banked, NULL, bankrec.refno AS' +
        ' refno, NULL, bankrec.descr AS payee, (0 - bankrec.amount) AS am' +
        'ount, '#39'chq2'#39' AS subx'
      '  FROM bankrec'
      
        '  WHERE bankrec.bank = :p_acct AND TRUNC(bankrec.banked) <= :p_d' +
        'ateto AND bankrec.TYPE = '#39'C'#39' AND bankrec.recondate IS NULL'
      '  UNION ALL'
      '/*  ---- doesn'#39't make sense '
      '  SELECT '#39'CHEQUE1'#39' AS grp, cheque.created, cheque.descr,'
      '               cheque.chqno AS refno, cheque.TYPE, cheque.payee,'
      '               (cheque.amount) AS amount, '#39'chq3'#39' AS subx'
      '  FROM cheque'
      
        '  WHERE cheque.acct = :p_acct AND TRUNC(cheque.created) <= :p_da' +
        'teto'
      
        '      AND CASE WHEN ((:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoffice ' +
        '= '#39'N'#39') AND TRUNC (cheque.system_date) > :p_dateto AND bankrec_sa' +
        'ved = '#39'N'#39') THEN 1'
      
        '               WHEN ((:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoffice ' +
        '= '#39'Y'#39') AND TRUNC (cheque.created) > :p_dateto AND bankrec_saved ' +
        '= '#39'N'#39') THEN 1'
      
        '               WHEN ((:trust <> '#39'T'#39') AND TRUNC (cheque.created) ' +
        '> :p_dateto  AND bankrec_saved = '#39'N'#39') THEN 1'
      '               ELSE 0'
      '          END = 1'
      '  UNION ALL */'
      
        '  --- banked trust receipts keyed within the period, deposited i' +
        'n the period, not reconciled or reconciled after period (reduce ' +
        'balance)'
      
        'SELECT '#39'DEPOSIT'#39' AS grp, bankdep.deposit_date, receipt.descr, ba' +
        'nkdep.nbankdep || '#39' '#39' AS refno, receipt.TYPE, receipt.payor, rec' +
        'eipt.amount, '#39'dep1'#39' AS subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct --AND bankdep.acct = receipt.acct' +
        ' AND bankdep.nbankdep = receipt.nbankdep'
      
        '      AND CASE WHEN (:trustasoffice = '#39'N'#39') AND TRUNC(receipt.sys' +
        'tem_date) <= :p_dateto THEN 1 -- this was missing an equal sign'
      
        '               WHEN (:trustasoffice = '#39'Y'#39') AND TRUNC(receipt.cre' +
        'ated) <= :p_dateto THEN 1'
      '          END = 1 -- this was one'
      '      --AND bankdep.last_nreceipt = receipt.nreceipt '
      '      AND (:trust IN ('#39'T'#39', '#39'I'#39'))'
      
        '      AND TRUNC(bankdep.deposit_date) <= :p_dateto AND ((bankdep' +
        '.bankrec_saved = '#39'N'#39' AND bankdep.recondate IS NULL) OR (TRUNC(ba' +
        'nkdep.recondate) > :p_dateto))'
      '      AND receipt.nbankdep = bankdep.nbankdep(+)'
      '      AND bankdep.acct = receipt.acct  '
      '  UNION ALL'
      
        '  --- banked office receipts created within the period, deposite' +
        'd in the period, not reconciled or reconciled after period (redu' +
        'ce balance)'
      
        '  SELECT '#39'DEPOSIT'#39' AS grp, bankdep.deposit_date, receipt.descr, ' +
        'bankdep.nbankdep || '#39' '#39' AS refno, receipt.TYPE, receipt.payor,'
      '               --receipt.amount, '#39'dep1a'#39' AS subx'
      '       bankdep.amount, '#39'dep1a'#39' AS subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct --AND bankdep.acct = receipt.acct' +
        ' AND bankdep.nbankdep = receipt.nbankdep'
      
        '      AND TRUNC (receipt.created) <= :p_dateto AND bankdep.last_' +
        'nreceipt = receipt.nreceipt '
      '      AND (:trust <> '#39'T'#39')'
      
        '      AND (TRUNC(bankdep.deposit_date) <= :p_dateto AND (bankdep' +
        '.bankrec_saved = '#39'N'#39' AND bankdep.recondate IS NULL OR TRUNC(bank' +
        'dep.recondate) > :p_dateto))'
      '      AND receipt.nbankdep = bankdep.nbankdep(+)'
      '      AND bankdep.acct = receipt.acct'
      '  UNION ALL'
      
        '  --- banked office receipts created within the period, deposite' +
        'd after the period, not reconciled or reconciled after period (r' +
        'educe balance)'
      
        '  SELECT '#39'DEPOSIT'#39' AS grp, receipt.created, receipt.descr, bankd' +
        'ep.nbankdep || '#39' '#39' AS refno, receipt.TYPE, receipt.payor, (recei' +
        'pt.amount) AS amount, '#39'dep1a'#39' as subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct AND bankdep.acct = receipt.acct A' +
        'ND bankdep.nbankdep = receipt.nbankdep'
      
        '     AND TRUNC(receipt.created) <= :p_dateto AND TRUNC(receipt.s' +
        'ystem_date) <= :p_dateto '
      
        '     AND (TRUNC(bankdep.deposit_date) > :p_dateto AND (bankdep.b' +
        'ankrec_saved = '#39'N'#39' AND bankdep.recondate IS NULL OR TRUNC(bankde' +
        'p.recondate) > :p_dateto)) '
      '  UNION ALL'
      '  --- Adjustment deposits keyed in the period (increase balance)'
      
        '  SELECT '#39'DEPOSITUN'#39' AS grp, bankrec.banked, bankrec.descr, bank' +
        'rec.refno AS refno, NULL, NULL,(0 - bankrec.amount) AS amount, '#39 +
        'dep2'#39' AS subx'
      '  FROM bankrec'
      
        '  WHERE bankrec.bank = :p_acct AND TRUNC(bankrec.banked) <= :p_d' +
        'ateto AND bankrec.TYPE = '#39'D'#39' AND bankrec.recondate IS NULL'
      '        --- was removed'
      '  UNION ALL'
      
        '  --- deposited receipts reconciled after the period, deposited ' +
        'in the period, keyed after the period (increase Balance)'
      
        '  SELECT DISTINCT '#39'DEPOSITUN'#39' AS grp, bankdep.recondate, NULL, b' +
        'ankdep.nbankdep || '#39' '#39' AS refno, NULL, NULL, (0 - receipt.amount' +
        ') AS amount, '#39'dep3'#39' AS subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct AND bankdep.acct = receipt.acct A' +
        'ND bankdep.nbankdep = receipt.nbankdep'
      
        '       AND TRUNC(receipt.system_date) >= :p_dateto AND TRUNC(ban' +
        'kdep.deposit_date) <= :p_dateto AND TRUNC(bankdep.recondate) > :' +
        'p_dateto'
      '       AND bankdep.bankrec_saved = '#39'N'#39
      '  UNION ALL'
      
        '  --- deposited receipts - keyed in the period, deposited after ' +
        'the period, reconciled in the period, not ticked in bank rec (in' +
        'crease Balance)'
      
        '  SELECT '#39'DEPOSITUN'#39' AS grp, bankdep.recondate, NULL, bankdep.nb' +
        'ankdep || '#39' '#39' AS refno, NULL, NULL,(0 - receipt.amount) AS amoun' +
        't, '#39'dep4'#39' AS subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct AND bankdep.acct = receipt.acct A' +
        'ND bankdep.nbankdep = receipt.nbankdep'
      
        '      AND TRUNC(receipt.system_date) <= :p_dateto AND TRUNC(bank' +
        'dep.deposit_date) > :p_dateto'
      
        '      AND TRUNC(bankdep.recondate) <= :p_dateto AND bankdep.bank' +
        'rec_saved = '#39'N'#39
      '  UNION ALL'
      
        '  --- deposited receipts - keyed after the period, deposited in ' +
        'the period, ticked in bank rec (increase balance)'
      
        '  SELECT DISTINCT '#39'DEPOSIT1'#39' AS grp, bankdep.deposit_date, recei' +
        'pt.descr, bankdep.nbankdep || '#39' '#39' AS refno,  '
      
        '       receipt.TYPE, receipt.payor,(receipt.amount) AS amount, '#39 +
        'dep7'#39' AS subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct AND bankdep.acct = receipt.acct A' +
        'ND bankdep.nbankdep = receipt.nbankdep '
      
        '       AND TRUNC(receipt.system_date) > :p_dateto AND (((:trusta' +
        'soffice = '#39'N'#39') AND (TRUST = '#39'G'#39')) OR (:trustasoffice = '#39'Y'#39'))'
      
        '       AND TRUNC(bankdep.deposit_date) <= :p_dateto AND bankdep.' +
        'recondate IS NULL AND bankdep.bankrec_saved = '#39'Y'#39' '
      '  UNION ALL'
      
        '  --- deposited receipts - keyed in the period, deposited in the' +
        ' period, ticked in bank rec (reduce balance)'
      '  SELECT DISTINCT '#39'DEPOSIT1'#39' AS grp, bankdep.deposit_date,'
      
        '          receipt.descr, bankdep.nbankdep || '#39' '#39' AS refno, recei' +
        'pt.TYPE, receipt.payor, (receipt.amount) AS amount, '#39'dep8'#39' AS su' +
        'bx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct AND bankdep.acct = receipt.acct A' +
        'ND bankdep.nbankdep = receipt.nbankdep'
      
        '       AND TRUNC(receipt.system_date) <= :p_dateto -- missing eq' +
        'ual sign'
      
        '       AND TRUNC(bankdep.deposit_date) <= :p_dateto AND bankdep.' +
        'recondate IS NULL AND bankdep.bankrec_saved = '#39'Y'#39
      '  UNION ALL'
      
        '/*  --- deposited receipts - deposited in period, reconciled aft' +
        'er period'
      
        '  SELECT DISTINCT '#39'DEPOSIT2'#39' AS grp, bankdep.deposit_date,  rece' +
        'ipt.descr, bankdep.nbankdep || '#39' '#39' AS refno,'
      
        '       receipt.TYPE, receipt.payor, (0 - receipt.amount) AS amou' +
        'nt, '#39'dep9'#39' AS subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct AND bankdep.acct = receipt.acct A' +
        'ND bankdep.nbankdep = receipt.nbankdep'
      
        '       AND CASE WHEN ((:trust = '#39'T'#39') AND (:trustasoffice = '#39'N'#39') ' +
        'AND TRUNC(receipt.system_date) > :p_dateto'
      '                                 --AND receipt.banked = '#39'N'#39
      '                                ) THEN 1'
      
        '                WHEN ((:trust = '#39'T'#39')  AND (:trustasoffice = '#39'Y'#39')' +
        ' AND TRUNC(receipt.created) > :p_dateto'
      '                                 --AND receipt.banked = '#39'N'#39
      '                                ) THEN 1'
      '                END = 1'
      
        '--                    AND TRUNC (receipt.system_date) > :p_datet' +
        'o'
      
        '      AND TRUNC(bankdep.deposit_date) <= :p_dateto AND TRUNC(ban' +
        'kdep.recondate) >= :p_dateto'
      '      --AND (:trust = '#39'T'#39')'
      '  UNION ALL */'
      '  --- receipts - not banked - (reduce amount)'
      
        '  SELECT '#39'RECEIPT'#39' AS grp, receipt.created, receipt.descr, recei' +
        'pt.rcptno AS refno, receipt.TYPE, receipt.payor,'
      '               --(0 - receipt.amount), '#39'rec1'#39' AS subx'
      '      (receipt.amount), '#39'rec1'#39' AS subx'
      '  FROM receipt'
      '  WHERE receipt.acct = :p_acct'
      
        '      AND CASE  WHEN ((:trust = '#39'T'#39') AND (:trustasoffice = '#39'Z'#39') ' +
        'AND TRUNC(receipt.system_date) <= :p_dateto AND receipt.banked =' +
        ' '#39'N'#39') THEN 1'
      
        '                WHEN ((:trust = '#39'T'#39') AND (:trustasoffice <> '#39'Z'#39')' +
        ' AND TRUNC(receipt.created) <= :p_dateto AND receipt.banked = '#39'N' +
        #39') THEN 1'
      
        '                WHEN ((:trust <> '#39'T'#39') AND TRUNC(receipt.created)' +
        ' <= :p_dateto AND receipt.banked = '#39'N'#39') THEN 1'
      '                ELSE 0'
      '          END = 1'
      '  UNION ALL'
      
        '/*        SELECT '#39'RECEIPT1'#39' AS grp, receipt.created, receipt.des' +
        'cr,'
      
        '               receipt.rcptno AS refno, receipt.TYPE, receipt.pa' +
        'yor,'
      
        '               CASE WHEN (:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoff' +
        'ice = '#39'N'#39') AND (TRUNC(receipt.system_date) > :p_dateto AND recei' +
        'pt.banked = '#39'Y'#39') THEN 0 - receipt.amount'
      
        '                    WHEN (:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoff' +
        'ice = '#39'N'#39') AND (TRUNC(receipt.system_date) = :p_dateto AND recei' +
        'pt.banked = '#39'Y'#39') THEN receipt.amount'
      
        '                    WHEN (:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoff' +
        'ice = '#39'Y'#39') AND (TRUNC(receipt.created) > :p_dateto AND receipt.b' +
        'anked = '#39'Y'#39') THEN 0 - receipt.amount'
      
        '                    WHEN (:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoff' +
        'ice = '#39'Y'#39') AND (TRUNC(receipt.created) = :p_dateto AND receipt.b' +
        'anked = '#39'Y'#39') THEN receipt.amount'
      
        '                    WHEN ((:trust <> '#39'T'#39') AND TRUNC (receipt.cre' +
        'ated) > :p_dateto) THEN 0 - receipt.amount'
      '                    ELSE 0 - receipt.amount'
      '               END AS amount,'
      '               '#39'rec2'#39' AS subx'
      '          FROM bankdep, receipt'
      
        '         WHERE receipt.acct = :p_acct AND TRUNC (receipt.created' +
        ') <= :p_dateto'
      
        '           AND CASE WHEN (:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoff' +
        'ice = '#39'N'#39') '
      
        '                     AND (TRUNC(receipt.system_date) >= :p_datet' +
        'o AND receipt.banked = '#39'Y'#39' AND receipt.bankrec_saved = '#39'N'#39') THEN' +
        ' 1'
      
        '                    WHEN (:trust IN ('#39'T'#39', '#39'I'#39')) AND (:trustasoff' +
        'ice = '#39'Y'#39')'
      
        '                     AND (TRUNC(receipt.created) >= :p_dateto AN' +
        'D receipt.banked = '#39'Y'#39' AND receipt.bankrec_saved = '#39'N'#39') THEN 1'
      '                  ELSE 0'
      '               END = 1'
      '           AND bankdep.bankrec_saved = '#39'N'#39
      
        '           AND ((bankdep.recondate IS NULL) OR (bankdep.deposit_' +
        'date IS NULL) OR (TRUNC (bankdep.deposit_date) > :p_dateto))'
      '           AND receipt.nbankdep = bankdep.nbankdep(+)'
      '           AND bankdep.acct = receipt.acct'
      '        UNION ALL */'
      
        '   --- TRUST deposited receipts - keyed receipt after period, no' +
        't deposited or deposited in period (bit funny)'
      
        '   SELECT '#39'RECEIPT1'#39' AS grp, receipt.created, receipt.descr, rec' +
        'eipt.rcptno AS refno, receipt.TYPE, receipt.payor,(receipt.amoun' +
        't) AS amount, '#39'rec3'#39' AS subx'
      '   FROM bankdep, receipt'
      
        '   WHERE receipt.acct = :p_acct AND receipt.nbankdep = bankdep.n' +
        'bankdep  AND bankdep.acct = receipt.acct'
      '       AND TRUNC(receipt.system_date) > :p_dateto'
      
        '       AND (:trust = '#39'T'#39') AND (bankdep.deposit_date IS NULL OR (' +
        'TRUNC(bankdep.deposit_date) <= :p_dateto)) '
      
        '       AND BANKDEP.RECONDATE is null and bankdep.bankrec_saved =' +
        ' '#39'N'#39' AND :trustasoffice = '#39'N'#39
      '       --AND CASE WHEN (:trust = '#39'T'#39') AND (:trustasoffice = '#39'N'#39')'
      
        '       --           AND (bankdep.deposit_date IS NULL OR ((TRUNC' +
        '(bankdep.deposit_date) <= :p_dateto) AND TRUNC(bankdep.system_da' +
        'te) > :p_dateto)) THEN 1'
      
        '       --         WHEN (:trust = '#39'T'#39') AND (:trustasoffice = '#39'Y'#39')' +
        ' '
      
        '       --             AND (bankdep.deposit_date IS NULL OR ((TRU' +
        'NC(bankdep.deposit_date) <= :p_dateto) AND TRUNC(bankdep.deposit' +
        '_date) > :p_dateto)) THEN 1'
      '       --    END = 1'
      '  UNION ALL '
      
        '  ----  any deposits which have been ticked but not reconciled f' +
        'or trust created in the period'
      
        '  SELECT DISTINCT '#39'RECEIPT2'#39' AS grp, bankdep.deposit_date, recei' +
        'pt.descr, bankdep.nbankdep || '#39' '#39' AS refno,'
      
        '                        receipt.TYPE, receipt.payor, (0 - receip' +
        't.amount) AS amount, '#39'rec4'#39' AS subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct AND bankdep.acct = receipt.acct A' +
        'ND bankdep.nbankdep = receipt.nbankdep'
      
        '      AND CASE WHEN (:trustasoffice = '#39'N'#39') AND TRUNC(receipt.sys' +
        'tem_date) <= :p_dateto THEN 1'
      
        '               WHEN (:trustasoffice = '#39'Y'#39') AND TRUNC(receipt.cre' +
        'ated) <= :p_dateto THEN 1'
      '               END = 1'
      
        '      AND TRUNC (bankdep.deposit_date) <= :p_dateto AND bankdep.' +
        'recondate IS NULL AND bankdep.bankrec_saved = '#39'Y'#39' AND (:trust = ' +
        #39'T'#39')'
      '  UNION ALL'
      
        '  ----  any deposits which have been ticked but not reconciled f' +
        'or office'
      
        '  SELECT DISTINCT '#39'RECEIPT2'#39' AS grp, bankdep.deposit_date, recei' +
        'pt.descr, bankdep.nbankdep || '#39' '#39' AS refno,'
      
        '          receipt.TYPE, receipt.payor, (0 - receipt.amount) AS a' +
        'mount, '#39'rec5'#39' AS subx'
      '  FROM bankdep, receipt'
      
        '  WHERE bankdep.acct = :p_acct AND bankdep.acct = receipt.acct A' +
        'ND bankdep.nbankdep = receipt.nbankdep'
      
        '      AND TRUNC(bankdep.deposit_date) <= :p_dateto AND (:trust <' +
        '> '#39'T'#39') AND bankdep.recondate IS NULL AND bankdep.bankrec_saved =' +
        ' '#39'Y'#39
      '  UNION ALL'
      '  ---  any unprocessed receipt requisitions'
      
        '  SELECT DISTINCT '#39'RECEIPTREQ'#39' AS grp, exp_date, '#39'Receipt Requis' +
        'ition'#39' || '#39' - '#39' || descr,  TO_CHAR (nreceiptreq), NULL, payor, a' +
        'mount AS amount,  '#39'rec6'#39' AS subx'
      '  FROM receipt_req'
      
        '  WHERE TRUNC(exp_date) <= :p_dateto AND nreceipt IS NULL  AND b' +
        'ankrec_saved = '#39'Y'#39
      ' )'
      ''
      ''
      ''
      ''
      '/*'
      'select nvl(sum(amount),0) as adj_total'
      'from ('
      
        'SELECT '#39'DEPOSITUN'#39' AS GRP, BANKREC.BANKED, BANKREC.DESCR, BANKRE' +
        'C.REFNO AS REFNO, Null, Null, (0-BANKREC.AMOUNT) AS AMOUNT'
      'FROM BANKREC'
      
        'WHERE BANKREC.BANK = :P_Acct AND BANKREC.TYPE = '#39'D'#39' AND ((TRUNC(' +
        'BANKREC.BANKED) <= :P_DateTo AND RECONDATE IS NULL) OR '
      
        'TRUNC(BANKREC.BANKED) < :P_DateTo AND TRUNC(RECONDATE) >= :P_Dat' +
        'eTo)'
      'UNION ALL'
      
        'SELECT '#39'DEPOSITUN'#39' AS GRP, BANKDEP.RECONDATE, Null, BANKDEP.NBAN' +
        'KDEP || '#39' '#39' AS REFNO, Null, Null, (0-BANKDEP.AMOUNT) AS AMOUNT'
      'FROM BANKDEP'
      
        'WHERE BANKDEP.ACCT = :P_Acct AND TRUNC(BANKDEP.DEPOSIT_DATE) >= ' +
        ':P_DateTo AND TRUNC(BANKDEP.RECONDATE) < :P_DateTo'
      ')'
      '*/')
    Left = 624
    Top = 431
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trustasoffice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object qryCurrentTrans: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      'sum(BANKREC_TMP.amount * -1) as tot_trans'
      'from'
      'BANKREC_TMP'
      'where'
      'BANKREC_SAVED = '#39'N'#39)
    Left = 360
    Top = 424
  end
  object qryBackDated: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(amount) as amount from('
      
        'SELECT '#39'RECEIPT1'#39' AS grp, receipt.created, receipt.descr,receipt' +
        '.rcptno AS refno, receipt.TYPE, receipt.payor,  (receipt.amount)' +
        ' AS amount, '#39'rec3'#39' as subx'
      'FROM bankdep, receipt'
      
        'WHERE receipt.acct = :p_acct AND receipt.nbankdep = bankdep.nban' +
        'kdep AND bankdep.acct = receipt.acct'
      
        '     AND TRUNC(receipt.system_date) > :p_dateto and (:trust = '#39'T' +
        #39')'
      
        '     AND (bankdep.deposit_date IS NULL OR ((TRUNC(bankdep.deposi' +
        't_date) <= :p_dateto) AND TRUNC(bankdep.system_date) > :p_dateto' +
        '))'
      '     AND :trustasoffice = '#39'N'#39
      'UNION ALL'
      'SELECT '#39'CHEQUE1'#39' AS grp, cheque.created, cheque.descr,'
      '               cheque.chqno AS refno, cheque.TYPE, cheque.payee,'
      '               (0 - cheque.amount) AS amount, '#39'chq3'#39' AS subx'
      'FROM cheque'
      
        'WHERE cheque.acct = :p_acct AND TRUNC(cheque.created) <= :p_date' +
        'to'
      
        '      AND :trust IN ('#39'T'#39', '#39'I'#39') AND TRUNC (cheque.system_date) > ' +
        ':p_dateto'
      '     AND :trustasoffice = '#39'N'#39
      'UNION ALL'
      
        'SELECT '#39'RECEIPT'#39' AS grp, receipt.created, receipt.descr, receipt' +
        '.rcptno AS refno, receipt.TYPE, receipt.payor,'
      '      (receipt.amount), '#39'rec1'#39' AS subx'
      'FROM receipt'
      'WHERE receipt.acct = :p_acct'
      
        '      AND :trust = '#39'T'#39' AND TRUNC(receipt.system_date) > :p_datet' +
        'o AND TRUNC(receipt.created) <= :p_dateto AND receipt.banked = '#39 +
        'N'#39
      '     AND :trustasoffice = '#39'N'#39
      ')')
    Left = 504
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trustasoffice'
        Value = nil
      end>
  end
end
