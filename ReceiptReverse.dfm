object frmReceiptReverse: TfrmReceiptReverse
  Left = 585
  Top = 301
  BorderStyle = bsDialog
  Caption = 'Receipt Reversal'
  ClientHeight = 264
  ClientWidth = 345
  Color = clBtnFace
  Constraints.MinHeight = 261
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label5: TLabel
    Left = 11
    Top = 156
    Width = 67
    Height = 15
    Caption = 'Reverse as at'
  end
  object Label6: TLabel
    Left = 11
    Top = 178
    Width = 38
    Height = 15
    Caption = 'Reason'
  end
  object grdSubBills: TcxGrid
    Left = 11
    Top = 245
    Width = 602
    Height = 117
    TabOrder = 6
    Visible = False
    LookAndFeel.NativeStyle = True
    object tvSubBills: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubbills
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.BandHeaders = False
      Bands = <
        item
          Width = 40
        end
        item
        end>
      object tvSubBillsColumn1: TcxGridDBBandedColumn
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvSubBillsDEBTOR_NAME: TcxGridDBBandedColumn
        Caption = 'Debtor'
        DataBinding.FieldName = 'DEBTOR_NAME'
        Options.Editing = False
        Options.Focusing = False
        Width = 142
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvSubBillsOWING: TcxGridDBBandedColumn
        Caption = 'Owing'
        DataBinding.FieldName = 'OWING'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvSubBillsTOTAL: TcxGridDBBandedColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvSubBillsFEES: TcxGridDBBandedColumn
        Caption = 'Fees'
        DataBinding.FieldName = 'FEES'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvSubBillsDISB: TcxGridDBBandedColumn
        Caption = 'Disbs'
        DataBinding.FieldName = 'DISB'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvSubBillsANTD: TcxGridDBBandedColumn
        Caption = 'Anticipateds'
        DataBinding.FieldName = 'ANTD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvSubBillsSUND: TcxGridDBBandedColumn
        Caption = 'Sundries'
        DataBinding.FieldName = 'SUND'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvSubBillsTRUST: TcxGridDBBandedColumn
        Caption = 'Trust'
        DataBinding.FieldName = 'TRUST'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvSubBillsTAX: TcxGridDBBandedColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvSubBillsNSUBBILL_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NSUBBILL_ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object grdSubBillsLevel1: TcxGridLevel
      GridView = tvSubBills
    end
  end
  object gbOriginal: TcxGroupBox
    Left = 11
    Top = 8
    Caption = 'Original Transaction'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 140
    Width = 319
    object Label7: TLabel
      Left = 7
      Top = 22
      Width = 26
      Height = 15
      Caption = 'Bank'
    end
    object Label1: TLabel
      Left = 7
      Top = 45
      Width = 39
      Height = 15
      Caption = 'Receipt'
    end
    object Label2: TLabel
      Left = 7
      Top = 68
      Width = 24
      Height = 15
      Caption = 'Date'
    end
    object Label3: TLabel
      Left = 7
      Top = 91
      Width = 60
      Height = 15
      Caption = 'Description'
    end
    object Label4: TLabel
      Left = 7
      Top = 114
      Width = 44
      Height = 15
      Caption = 'Amount'
    end
    object cxDBLabel1: TcxDBLabel
      Left = 109
      Top = 21
      DataBinding.DataField = 'ACCT'
      DataBinding.DataSource = dsReceipt
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.StyleController = dmAxiom.LabelStyle
      Height = 19
      Width = 179
      AnchorX = 288
    end
    object cxDBLabel2: TcxDBLabel
      Left = 109
      Top = 44
      DataBinding.DataField = 'RCPTNO'
      DataBinding.DataSource = dsReceipt
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.StyleController = dmAxiom.LabelStyle
      Height = 19
      Width = 179
      AnchorX = 288
    end
    object cxDBLabel3: TcxDBLabel
      Left = 109
      Top = 67
      DataBinding.DataField = 'CREATED'
      DataBinding.DataSource = dsReceipt
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.StyleController = dmAxiom.LabelStyle
      Height = 19
      Width = 179
      AnchorX = 288
    end
    object cxDBLabel4: TcxDBLabel
      Left = 109
      Top = 90
      DataBinding.DataField = 'DESCR'
      DataBinding.DataSource = dsReceipt
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.StyleController = dmAxiom.LabelStyle
      Height = 19
      Width = 179
      AnchorX = 288
    end
    object cxDBLabel5: TcxDBLabel
      Left = 109
      Top = 113
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsReceipt
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ShowAccelChar = False
      Style.StyleController = dmAxiom.LabelStyle
      Height = 19
      Width = 179
      AnchorX = 288
    end
  end
  object mlReason: TcxMemo
    Left = 85
    Top = 182
    Properties.MaxLength = 120
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 49
    Width = 245
  end
  object btnOriginal: TcxButton
    Left = 228
    Top = 154
    Width = 102
    Height = 23
    Caption = 'Original &date'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360800000000000036000000280000002000000010000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      80000080800000808000008080000080800000808000000000FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF00808000008080000080
      80000080800000808000008080000080800000808000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF00808000008080000080
      80000080800000808000008080000080800000808000000000FF00FFFFFFFFFF
      FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000808080FF00808000008080000080
      800000808000008080000080800000808000000000FF00FFFFFFFFFFFFFF00FF
      FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FF00808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF00808000FFFF
      FFFF00808000008080000080800000808000808080FF00808000008080000080
      800000808000008080000080800000808000000000FFFFFFFFFF000000FFFFFF
      FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF00808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF808080FFFFFF
      FFFF00808000008080000080800000808000808080FF00808000008080000080
      800000808000008080000080800000808000000000FF00FFFFFF000000FF00FF
      FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF0000FFFF00808000008080000080
      800000808000008080000080800000808000808080FF00808000808080FFFFFF
      FFFF00808000FFFFFFFF00808000808080FFFFFFFFFF00808000008080000080
      80000080800000808000008080000080800000808000000000FF000000FFFFFF
      FFFF000000FFFFFFFFFF000000FFFF0000FF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FFFFFF
      FFFF808080FFFFFFFFFF808080FFFFFFFFFF808080FF00808000008080000080
      8000008080000080800000808000008080000080800000808000000000FF00FF
      FFFF000000FF000000FFFF0000FF000000FF000000FF00808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF
      FFFF808080FF808080FFFFFFFFFF808080FF808080FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF
      FFFF000000FFFF0000FF000000FF000000FF000000FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FFFFFF
      FFFF808080FFFFFFFFFF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FF
      FFFF000000FF000000FFFFFFFFFFFFFFFFFF000000FF00808000008080000080
      8000008080000080800000808000008080000080800000808000808080FFFFFF
      FFFF808080FF808080FF0080800000808000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF
      FFFF808080FFFFFFFFFFFFFFFFFF00808000808080FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF0000FF0000
      00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF8080
      80FF00808000008080000080800000808000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00808000808080FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFF000000FF00808000008080000080
      800000808000008080000080800000808000808080FF00808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF}
    OptionsImage.NumGlyphs = 2
    TabOrder = 3
    OnClick = btnOriginalClick
  end
  object dtpReverse: TEnforceCustomDateEdit
    Left = 85
    Top = 154
    EditValue = 43315.5893211921d
    Properties.ButtonGlyph.SourceDPI = 96
    Properties.ButtonGlyph.Data = {
      424DF6030000000000003600000028000000100000000F000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF
      FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
      FFFF7F7F7FFF0000FFFFFFFFFFFF7F7F7FFF0000FFFFFFFFFFFF7F7F7FFFFFFF
      FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF000000FF000000FF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF000000FF000000FFFFFFFFFFFFFF
      FFFF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF
      FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
      FFFF7F7F7FFF0000FFFFFFFFFFFF7F7F7FFF0000FFFFFFFFFFFF7F7F7FFF0000
      FFFFFFFFFFFF7F7F7FFF0000FFFFFFFFFFFF000000FF000000FF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF000000FF000000FFFFFFFFFFFFFF
      FFFF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF
      FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF000000FF000000FF0000FFFFFFFF
      FFFF7F7F7FFF0000FFFFFFFFFFFF7F7F7FFF0000FFFFFFFFFFFF7F7F7FFF0000
      FFFFFFFFFFFF7F7F7FFF0000FFFFFFFFFFFF000000FF000000FF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF
      FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF0000FFFFFFFFFFFF7F7F7FFF0000
      FFFFFFFFFFFF7F7F7FFF0000FFFFFFFFFFFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFF0000FFFF0000FFFF00
      00FFFF0000FFFF0000FFFF0000FFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFFF00
      00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF}
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    Style.ButtonStyle = btsOffice11
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 108
  end
  object btnOk: TcxButton
    Left = 185
    Top = 237
    Width = 75
    Height = 25
    Action = actOk
    ModalResult = 1
    TabOrder = 4
  end
  object btnCancel: TcxButton
    Left = 262
    Top = 237
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = dmAxiom.ilstToolbar
    TabOrder = 5
    OnClick = btnCancelClick
  end
  object qryReceipt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT R.ROWID, R.* '
      'FROM RECEIPT R'
      'WHERE NRECEIPT = :NRECEIPT')
    CachedUpdates = True
    Left = 259
    Top = 193
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end>
  end
  object dsReceipt: TUniDataSource
    DataSet = qryReceipt
    Left = 320
    Top = 65
  end
  object qryReceiptRV: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO RECEIPT'
      '  (CREATED, TYPE, ACCT, RCPTNO, AMOUNT, PAYOR, DRAWER,'
      '   BANK, BRANCH, CHQNO, REVERSED, RVBY, CCTYPE,'
      '   BANKED, CLEARED, NRECEIPT, TRUST, SUFCHQ, DESCR, '
      '   SYSTEM_DATE, NBANKDEP, REVERSED_DATE, RV_NRECEIPT)'
      'VALUES'
      '  (:CREATED, '#39'RV'#39', :ACCT, :RCPTNO, :AMOUNT, :PAYOR, :DRAWER,'
      '   :BANK, :BRANCH, :CHQNO, '#39'Y'#39', :RVBY, :CCTYPE,'
      '   :BANKED, :CLEARED, :NRECEIPT, :TRUST, 1, :DESCR, '
      '   SysDate, :NBANKDEP, :REVERSED_DATE, :RV_NRECEIPT)')
    Left = 221
    Top = 191
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
        Name = 'RCPTNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DRAWER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RVBY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CCTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANKED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLEARED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NBANKDEP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REVERSED_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RV_NRECEIPT'
        Value = nil
      end>
  end
  object qryTransitems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ROWID, NACCOUNT, REFNO, RVDATE, ACCT, AMOUNT, CHART, INIT' +
        'CODE, PDATE, PRESENTED, NINVOICE, TAXCODE, TAX,'
      'PARENT_CHART,REV_NJOURNAL,NMATTER,NALLOC'
      'FROM TRANSITEM '
      'WHERE OWNER_CODE = '#39'RECEIPT'#39' '
      '      AND NOWNER = :NOWNER '
      'ORDER BY NACCOUNT')
    Left = 182
    Top = 194
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end>
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  ROWID,'
      '  REFNO,'
      '  PRIVATE,'
      '  TYPE,'
      '  NALLOC,'
      '  TRUST,'
      '  ACCT,'
      '  NMEMO,'
      '  UPCRED,'
      '  ANTD,'
      '  FEE,'
      '  OUTLAY,'
      '  SUNDRY,'
      '  DISB,'
      '  AMOUNT,'
      '  BILLED,'
      '  PAYER,'
      '  FILEID,'
      '  APPROVAL,'
      '  DCLEARDATE,'
      '  CLEARED,'
      '  NMATTER,'
      '  NCLIENT,'
      '  CLIENT_NAME,'
      '  MATTER_DESC,'
      '  SUNDRYTYPE,'
      '  TAXCODE,'
      '  TAX,'
      '  NCHEQREQ,'
      '  BANK,'
      '  SPEC_PURPOSE,'
      '  DISB_NALLOC_RECEIPT'
      'FROM'
      '  ALLOC'
      'WHERE'
      '  NRECEIPT = :NRECEIPT')
    Left = 149
    Top = 194
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end>
  end
  object qryBankDepInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO BANKDEP'
      '  (ACCT, DEPOSIT_DATE, AMOUNT, LAST_NRECEIPT, NBANKDEP, '
      '   RECONCILED, RECONDATE)'
      'VALUES'
      '  (:ACCT, :DEPOSIT_DATE, :AMOUNT, :LAST_NRECEIPT, :NBANKDEP, '
      '   :RECONCILED, :RECONDATE)')
    Left = 111
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPOSIT_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LAST_NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NBANKDEP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECONCILED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECONDATE'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE SEQNUMS SET NBANKDEP = (NBANKDEP + 1)')
    Left = 68
    Top = 199
  end
  object qryBillUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO SET'
      '  DATE_LAST_RECPT = :DATE_LAST_RECPT,'
      '  FEES_PAID = (FEES_PAID - :FEES_PAID),'
      '  DISB_PAID = (DISB_PAID - :DISB_PAID),'
      '  ANTD_PAID = (ANTD_PAID - :ANTD_PAID),'
      '  UPCRED_PAID = (UPCRED_PAID - :UPCRED_PAID),'
      '  SUND_PAID = (SUND_PAID - :SUND_PAID),'
      '  FEESTAX_PAID = (FEESTAX_PAID - :FEESTAX_PAID),'
      '  DISBTAX_PAID = (DISBTAX_PAID - :DISBTAX_PAID),'
      '  UPCREDTAX_PAID = (UPCREDTAX_PAID - :UPCREDTAX_PAID),'
      '  ANTDTAX_PAID = (ANTDTAX_PAID - :ANTDTAX_PAID),'
      '  SUNDTAX_PAID = (SUNDTAX_PAID - :SUNDTAX_PAID),'
      
        '  TAX_PAID = (TAX_PAID - :FEESTAX_PAID - :DISBTAX_PAID - :UPCRED' +
        'TAX_PAID - :ANTDTAX_PAID - :SUNDTAX_PAID)'
      'WHERE'
      '  NMEMO = :NMEMO')
    CachedUpdates = True
    Left = 153
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_LAST_RECPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEES_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEESTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISBTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCREDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryCheqreqTrans: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from cheqreq_trans where nalloc = :nalloc')
    Left = 449
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nalloc'
        Value = nil
      end>
  end
  object qryInsertCheqreqTrans: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from receipt'
      'where ')
    Left = 349
    Top = 110
  end
  object qryBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  NMEMO '
      'WHERE'
      '  NMEMO = :NMEMO')
    CachedUpdates = True
    Left = 103
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qrySubbills: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where'
      'nmemo = :nmemo'
      '--and'
      '--nsubbill = :nsubbill'
      'and'
      'owing <> total')
    Left = 532
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object dsSubbills: TUniDataSource
    DataSet = qrySubbills
    Left = 582
    Top = 45
  end
  object qrySubBillUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE SUBBILLS SET'
      '  DATE_LAST_RECPT = :DATE_LAST_RECPT,'
      '  FEES_PAID = :FEES_PAID,'
      '  DISB_PAID = :DISB_PAID,'
      '  ANTD_PAID = :ANTD_PAID,'
      '  UPCRED_PAID = :UPCRED_PAID,'
      '  SUND_PAID = :SUND_PAID,'
      '  FEESTAX_PAID = :FEESTAX_PAID,'
      '  DISBTAX_PAID = :DISBTAX_PAID,'
      '  UPCREDTAX_PAID = :UPCREDTAX_PAID,'
      '  ANTDTAX_PAID = :ANTDTAX_PAID,'
      '  SUNDTAX_PAID = :SUNDTAX_PAID,'
      
        '  TAX_PAID = (:FEESTAX_PAID - :DISBTAX_PAID - :UPCREDTAX_PAID - ' +
        ':ANTDTAX_PAID - :SUNDTAX_PAID)'
      'WHERE'
      '--  NSUBBILL = :NSUBBILL'
      '--AND'
      '  NMEMO = :NMEMO')
    CachedUpdates = True
    Left = 428
    Top = 165
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_LAST_RECPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEES_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEESTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISBTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCREDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryFeeDist: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from feeDIST'
      'where nmemo = :nmemo'
      'and fee_amt > 0')
    Left = 50
    Top = 381
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryFeeDistInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'insert into feedist (nmemo, author, nmatter, dept, matter_dept, ' +
        'receipt_amt, name, created_date)'
      'values'
      
        '(:nmemo, :author, :nmatter, :dept, :matter_dept, :receipt_amt, :' +
        'name, sysdate)')
    Left = 55
    Top = 444
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'matter_dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'receipt_amt'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
  end
  object qryReceiptUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update receipt set rv_nreceipt = : rv_nreceipt'
      'where nreceipt = :nreceipt')
    Left = 26
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rv_nreceipt'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nreceipt'
        Value = nil
      end>
  end
  object ActionManager1: TActionManager
    Images = dmAxiom.ilstToolbar
    Left = 2
    Top = 127
    StyleName = 'Platform Default'
    object actOk: TAction
      Caption = '&Ok'
      Enabled = False
      ImageIndex = 8
      OnExecute = actOkExecute
      OnUpdate = actOkUpdate
    end
  end
  object qryChequeRV: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO CHEQUE'
      '  (NCHEQUE, CHQNO, REVERSED, SUFCHQ, TYPE, RVBY, CREATED,'
      '   PRESENTED, ACCT, PAYEE, APPROVAL, REQBY, TRUST,'
      '   DESCR, AMOUNT, RECONDATE, SYSTEM_DATE, PRINTED, BANKED)'
      'VALUES'
      '  (:NCHEQUE, :CHQNO, '#39'Y'#39', 1, '#39'RV'#39', :RVBY, :CREATED,'
      '   :PRESENTED, :ACCT, :PAYEE, :APPROVAL, :REQBY, :TRUST,'
      '   :DESCR, :AMOUNT, :RECONDATE, SysDate, '#39'N'#39', '#39'N'#39')')
    Left = 6
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RVBY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APPROVAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REQBY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECONDATE'
        Value = nil
      end>
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ROWID, ACCT, CHQNO, PAYEE, APPROVAL, REQBY, NCHEQUE, CREA' +
        'TED, DESCR, AMOUNT, TRUST, REVERSED, SUFCHQ, RVBY, PRESENTED, RE' +
        'CONDATE, NJOURNAL, BANK_TRANSFER_NRECEIPT '
      'FROM CHEQUE '
      'WHERE NCHEQUE = :NCHEQUE')
    CachedUpdates = True
    Left = 14
    Top = 51
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end>
  end
  object qryInvoice: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT I.ROWID, I.*'
      'FROM INVOICE I'
      'WHERE NINVOICE = :NINVOICE')
    CachedUpdates = True
    Left = 72
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
  object qryInvoiceUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE INVOICE SET '
      '  OWING = (OWING - :AMOUNT), '
      '  CREDITED = (CREDITED + :AMOUNT),'
      '  NCHEQUE = NULL'
      'WHERE NINVOICE = :NINVOICE')
    Left = 74
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
  object qryTransItemChq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ROWID, NACCOUNT, REFNO, RVDATE, ACCT, AMOUNT, CHART, INIT' +
        'CODE, PDATE, PRESENTED, NINVOICE, TAXCODE, TAX,'
      'PARENT_CHART, REV_NJOURNAL, NALLOC, NMATTER, NJOURNAL '
      'FROM TRANSITEM '
      'WHERE '
      '    OWNER_CODE = '#39'CHEQUE'#39' AND '
      '    NOWNER = :NOWNER '
      'ORDER BY NACCOUNT')
    Left = 130
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end>
  end
end
