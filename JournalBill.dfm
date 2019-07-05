object frmJournalBill: TfrmJournalBill
  Left = 519
  Top = 215
  Caption = 'Bill Payment Journal'
  ClientHeight = 379
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    716
    379)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 52
    Top = 9
    Width = 24
    Height = 13
    Caption = 'Date'
  end
  object Label8: TLabel
    Left = 38
    Top = 33
    Width = 38
    Height = 13
    Caption = 'R&eason'
    FocusControl = edReason
  end
  object Label4: TLabel
    Left = 230
    Top = 9
    Width = 35
    Height = 13
    Caption = 'Ledger'
    FocusControl = edLedger
  end
  object lblAmountMsg: TLabel
    Left = 572
    Top = 316
    Width = 27
    Height = 15
    Anchors = [akRight, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 692
    Top = 316
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 35
    Top = 56
    Width = 41
    Height = 13
    Caption = '&Amount'
  end
  object lblUnallocatedMsg: TLabel
    Left = 386
    Top = 316
    Width = 66
    Height = 15
    Anchors = [akRight, akBottom]
    Caption = 'Unallocated'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblUnallocated: TLabel
    Left = 547
    Top = 316
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edLedger: TEdit
    Left = 282
    Top = 7
    Width = 76
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 40
    TabOrder = 1
    OnExit = edLedgerExit
  end
  object edReason: TEdit
    Left = 82
    Top = 30
    Width = 298
    Height = 21
    MaxLength = 100
    TabOrder = 2
    OnKeyPress = tbPayeeKeyPress
  end
  object btnOK: TBitBtn
    Left = 568
    Top = 333
    Width = 68
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    Enabled = False
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 7
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 642
    Top = 333
    Width = 68
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
    OnClick = btnCancelClick
  end
  object dbgrLedger: TDBGrid
    Left = 7
    Top = 78
    Width = 703
    Height = 232
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    DataSource = dsLedger
    PopupMenu = popGrid
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColEnter = dbgrLedgerColEnter
    OnColExit = dbgrLedgerColExit
    OnEditButtonClick = dbgrLedgerEditButtonClick
    OnEnter = dbgrLedgerEnter
    OnExit = dbgrLedgerExit
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'REFNO'
        Title.Caption = 'Refno'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEBTOR'
        Title.Caption = 'Subbill'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        ReadOnly = True
        Title.Caption = 'Description'
        Width = 234
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REASON'
        Title.Caption = 'Reason'
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDIT'
        Title.Alignment = taRightJustify
        Title.Caption = 'Amount'
        Width = 96
        Visible = True
      end>
  end
  object neAmount: TNumberEdit
    Left = 82
    Top = 53
    Width = 75
    Height = 21
    Alignment = taLeftJustify
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
    OnExit = neAmountExit
  end
  object chkNoExit: TCheckBox
    Left = 9
    Top = 340
    Width = 185
    Height = 14
    Anchors = [akLeft, akBottom]
    Caption = '&Keep form open after posting?'
    TabOrder = 6
    ExplicitTop = 333
  end
  object sbarBalances: TStatusBar
    Left = 0
    Top = 360
    Width = 716
    Height = 19
    Panels = <
      item
        Width = 110
      end
      item
        Width = 110
      end
      item
        Width = 110
      end
      item
        Width = 110
      end
      item
        Width = 110
      end
      item
        Width = 110
      end>
    ExplicitTop = 353
  end
  object btnLedger: TBitBtn
    Left = 357
    Top = 7
    Width = 23
    Height = 20
    Hint = 'Look up Phonebook for Payor'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btnLedgerClick
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 82
    Top = 7
    EditValue = 43651.49437d
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 112
  end
  object qryBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM NMEMO WHERE NMEMO.NMEMO = :NMEMO'
      '')
    Left = 104
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FILEID, DESCR, AMOUNT, ACCT, NMATTER, CREATED, NCLIENT, P' +
        'AYER, '
      
        '               REFNO, TRUST, TYPE, BILLED, CLEARED, DCLEARDATE, ' +
        'NALLOC, '
      
        '               NRECEIPT, NMEMO, NJOURNAL, NCHEQUE, CLIENT_NAME, ' +
        'MATTER_DESC, '
      
        '               OVERDRAWN, SYSTEM_DATE, FEE, OUTLAY, SUNDRY, SPEC' +
        '_PURPOSE, '
      '               TAX, ROWID '
      'FROM ALLOC '
      'WHERE NJOURNAL = :NJournal')
    CachedUpdates = True
    Left = 136
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NJournal'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    UpdatingTable = 'LEDGER'
    SQLInsert.Strings = (
      'INSERT INTO LEDGER'
      
        '  (REPORTER, CREATED, BANK, REFNO, DESCR, AUTHOR, PARTNER, BILLE' +
        'D, INVOICE, FILEID, TYPE, REASON, UPCREDCR, UPCREDDR, DEBIT, CRE' +
        'DIT, TRUSTDR, TRUSTCR, DEBTDR, DEBTCR, DISBDR, DISBCR, SUNDDR, S' +
        'UNDCR, FEESDR, FEESCR, ANTDDR, ANTDCR)'
      'VALUES'
      
        '  (:REPORTER, :CREATED, :BANK, :REFNO, :DESCR, :AUTHOR, :PARTNER' +
        ', :BILLED, :INVOICE, :FILEID, :TYPE, :REASON, :UPCREDCR, :UPCRED' +
        'DR, :DEBIT, :CREDIT, :TRUSTDR, :TRUSTCR, :DEBTDR, :DEBTCR, :DISB' +
        'DR, :DISBCR, :SUNDDR, :SUNDCR, :FEESDR, :FEESCR, :ANTDDR, :ANTDC' +
        'R)')
    SQLDelete.Strings = (
      'DELETE FROM LEDGER'
      'WHERE'
      '  REPORTER = :REPORTER')
    SQLUpdate.Strings = (
      'UPDATE LEDGER'
      'SET'
      '  REPORTER = :REPORTER,'
      '  CREATED = :CREATED,'
      '  BANK = :BANK,'
      '  REFNO = :REFNO,'
      '  DESCR = :DESCR,'
      '  AUTHOR = :AUTHOR,'
      '  PARTNER = :PARTNER,'
      '  BILLED = :BILLED,'
      '  INVOICE = :INVOICE,'
      '  FILEID = :FILEID,'
      '  TYPE = :TYPE,'
      '  REASON = :REASON,'
      '  UPCREDCR = :UPCREDCR,'
      '  UPCREDDR = :UPCREDDR,'
      '  DEBIT = :DEBIT,'
      '  CREDIT = :CREDIT,'
      '  TRUSTDR = :TRUSTDR,'
      '  TRUSTCR = :TRUSTCR,'
      '  DEBTDR = :DEBTDR,'
      '  DEBTCR = :DEBTCR,'
      '  DISBDR = :DISBDR,'
      '  DISBCR = :DISBCR,'
      '  SUNDDR = :SUNDDR,'
      '  SUNDCR = :SUNDCR,'
      '  FEESDR = :FEESDR,'
      '  FEESCR = :FEESCR,'
      '  ANTDDR = :ANTDDR,'
      '  ANTDCR = :ANTDCR'
      'WHERE'
      '  REPORTER = :OLD_REPORTER')
    SQLLock.Strings = (
      'SELECT * FROM LEDGER'
      'WHERE'
      '  REPORTER = :REPORTER'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  REPORTER = :REPORTER')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT *'
      'FROM LEDGER '
      'WHERE REFNO = '#39#39)
    CachedUpdates = True
    AfterOpen = qryLedgerAfterOpen
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    AfterScroll = qryLedgerAfterScroll
    Left = 168
    Top = 224
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    OnDataChange = dsLedgerDataChange
    Left = 168
    Top = 256
  end
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NCLIENT, FILEID, NMATTER, TITLE, SHORTDESCR, AUTHOR  FROM' +
        ' MATTER WHERE FILEID = :P_File')
    Left = 72
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object popGrid: TPopupMenu
    Left = 8
    Top = 224
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
    object popGridDistribute: TMenuItem
      Caption = '&Distribute'
      OnClick = popGridDistributeClick
    end
    object popGridLine1: TMenuItem
      Caption = '-'
    end
    object popGridOpenMatter: TMenuItem
      Caption = '&Open Matter'
      OnClick = popGridOpenMatterClick
    end
  end
  object qryBillUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO SET '
      '  DATE_LAST_RECPT = :DATE_LAST_RECPT,'
      '  FEES_PAID = (NVL(FEES_PAID,0) + NVL(:FEES_PAID,0)), '
      '  DISB_PAID = (NVL(DISB_PAID,0) + NVL(:DISB_PAID,0)), '
      '  ANTD_PAID = (NVL(ANTD_PAID,0) + NVL(:ANTD_PAID,0)), '
      '  SUND_PAID = (NVL(SUND_PAID,0) + NVL(:SUND_PAID,0)), '
      '  UPCRED_PAID = (NVL(UPCRED_PAID,0) + NVL(:UPCRED_PAID,0)), '
      '  FEESTAX_PAID = (NVL(FEESTAX_PAID,0) + NVL(:FEESTAX_PAID,0)), '
      '  DISBTAX_PAID = (NVL(DISBTAX_PAID,0) + NVL(:DISBTAX_PAID,0)), '
      '  ANTDTAX_PAID = (NVL(ANTDTAX_PAID,0) + NVL(:ANTDTAX_PAID,0)), '
      '  SUNDTAX_PAID = (NVL(SUNDTAX_PAID,0) + NVL(:SUNDTAX_PAID,0)), '
      
        '  UPCREDTAX_PAID = (NVL(UPCREDTAX_PAID,0) + NVL(:UPCREDTAX_PAID,' +
        '0)), '
      
        '  TAX_PAID = (NVL(TAX_PAID,0) + NVL(:FEESTAX_PAID,0) + NVL(:DISB' +
        'TAX_PAID,0) + '
      
        '              NVL(:ANTDTAX_PAID,0) + NVL(:SUNDTAX_PAID,0) + NVL(' +
        ':UPCREDTAX_PAID,0))'
      'WHERE '
      '  NMEMO = :NMEMO')
    Left = 200
    Top = 224
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
        Name = 'SUND_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED_PAID'
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
        Name = 'UPCREDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM BANK')
    Left = 232
    Top = 224
  end
  object qryJournalInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO JOURNAL'
      
        '    (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TYPE, TRUST, SYSTE' +
        'M_DATE)'
      '  VALUES'
      
        '    (:CREATED, :ACCT, :AMOUNT, :NJOURNAL, :REASON,'#39'1'#39', '#39'G'#39', SysD' +
        'ate)')
    CachedUpdates = True
    Left = 40
    Top = 224
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
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REASON'
        Value = nil
      end>
  end
  object qrySubbills: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where nmemo = :nmemo'
      'and debtor_name = nvl(:debtor_name,debtor_name)'
      'and nsubbill_id = nvl(:nsubbill_id,nsubbill_id)'
      'and owing <> 0')
    Left = 384
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'debtor_name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nsubbill_id'
        Value = nil
      end>
  end
  object qrySubBillLookup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where nsubbill = :nsubbill'
      'and nmemo = :nmemo')
    Left = 416
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nsubbill'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
    object FloatField1: TFloatField
      FieldName = 'NMEMO'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'NBILL_TO'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'NSUBBILL'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'PERCENTAGE'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'ROUNDING'
      Required = True
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'DEBTOR_NAME'
      Size = 85
    end
    object FloatField5: TFloatField
      FieldName = 'NMATTER'
    end
    object StringField3: TStringField
      FieldName = 'BANK_ACCT'
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'FULLY_PAID'
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'INV_NOTE'
      Size = 400
    end
    object FloatField6: TFloatField
      FieldName = 'NOWNER'
    end
    object FloatField7: TFloatField
      FieldName = 'FEES'
    end
    object FloatField8: TFloatField
      FieldName = 'DISB'
    end
    object FloatField9: TFloatField
      FieldName = 'ANTD'
    end
    object FloatField10: TFloatField
      FieldName = 'SUND'
    end
    object FloatField11: TFloatField
      FieldName = 'TRUST'
    end
    object FloatField12: TFloatField
      FieldName = 'DEBTORS'
    end
    object FloatField13: TFloatField
      FieldName = 'FEES_PAID'
    end
    object FloatField14: TFloatField
      FieldName = 'DISB_PAID'
    end
    object FloatField15: TFloatField
      FieldName = 'SUND_PAID'
    end
    object FloatField16: TFloatField
      FieldName = 'DISB_CRDIT'
    end
    object FloatField17: TFloatField
      FieldName = 'ANTD_CRDIT'
    end
    object FloatField18: TFloatField
      FieldName = 'TAX'
    end
    object FloatField19: TFloatField
      FieldName = 'FEES_CRDIT'
    end
    object FloatField20: TFloatField
      FieldName = 'TAX_PAID'
    end
    object FloatField21: TFloatField
      FieldName = 'TAX_CRDIT'
    end
    object FloatField22: TFloatField
      FieldName = 'FEESTAX'
    end
    object FloatField23: TFloatField
      FieldName = 'DISBTAX'
    end
    object FloatField24: TFloatField
      FieldName = 'SUNDTAX'
    end
    object FloatField25: TFloatField
      FieldName = 'FEESTAX_PAID'
    end
    object FloatField26: TFloatField
      FieldName = 'DISBTAX_PAID'
    end
    object FloatField27: TFloatField
      FieldName = 'SUNDTAX_PAID'
    end
    object FloatField28: TFloatField
      FieldName = 'ANTD_PAID'
    end
    object FloatField29: TFloatField
      FieldName = 'ANTDTAX'
    end
    object FloatField30: TFloatField
      FieldName = 'ANTDTAX_PAID'
    end
    object FloatField31: TFloatField
      FieldName = 'UPCRED'
    end
    object FloatField32: TFloatField
      FieldName = 'UPCRED_PAID'
    end
    object FloatField33: TFloatField
      FieldName = 'UPCREDTAX'
    end
    object FloatField34: TFloatField
      FieldName = 'UPCREDTAX_PAID'
    end
    object FloatField35: TFloatField
      FieldName = 'DISB_WOFF'
    end
    object FloatField36: TFloatField
      FieldName = 'ANTD_WOFF'
    end
    object FloatField37: TFloatField
      FieldName = 'FEES_WOFF'
    end
    object FloatField38: TFloatField
      FieldName = 'UPCRED_WOFF'
    end
    object FloatField39: TFloatField
      FieldName = 'SUND_WOFF'
    end
    object FloatField40: TFloatField
      FieldName = 'DISBTAX_WOFF'
    end
    object FloatField41: TFloatField
      FieldName = 'ANTDTAX_WOFF'
    end
    object FloatField42: TFloatField
      FieldName = 'FESSTAX_WOFF'
    end
    object FloatField43: TFloatField
      FieldName = 'UPCREDTAX_WOFF'
    end
    object FloatField44: TFloatField
      FieldName = 'SUNDTAX_WOFF'
    end
    object FloatField45: TFloatField
      FieldName = 'TAX_WOFF'
    end
    object FloatField46: TFloatField
      FieldName = 'FEESTAX_WOFF'
    end
    object FloatField47: TFloatField
      FieldName = 'FEESTAXFREE'
    end
    object FloatField48: TFloatField
      FieldName = 'DISBTAXFREE'
    end
    object FloatField49: TFloatField
      FieldName = 'SUNDTAXFREE'
    end
    object FloatField50: TFloatField
      FieldName = 'ANTDTAXFREE'
    end
    object FloatField51: TFloatField
      FieldName = 'UPCREDTAXFREE'
    end
    object StringField6: TStringField
      FieldName = 'MODBY'
      Size = 3
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'MOD_DATE'
    end
    object StringField7: TStringField
      FieldName = 'MOD_DESCR'
      Size = 100
    end
    object FloatField52: TFloatField
      FieldName = 'OWING'
      currency = True
    end
    object FloatField53: TFloatField
      FieldName = 'TOTAL'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATE_LAST_RECPT'
    end
    object FloatField54: TFloatField
      FieldName = 'NSUBBILL_ID'
      Required = True
    end
  end
  object qrySubBillUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE SUBBILLS SET '
      '  DATE_LAST_RECPT = :DATE_LAST_RECPT,'
      '  FEES_PAID = (FEES_PAID + :FEES_PAID), '
      '  DISB_PAID = (DISB_PAID + :DISB_PAID), '
      '  ANTD_PAID = (ANTD_PAID + :ANTD_PAID), '
      '  SUND_PAID = (SUND_PAID + :SUND_PAID), '
      '  UPCRED_PAID = (UPCRED_PAID + :UPCRED_PAID), '
      '  FEESTAX_PAID = (FEESTAX_PAID + :FEESTAX_PAID), '
      '  DISBTAX_PAID = (DISBTAX_PAID + :DISBTAX_PAID), '
      '  ANTDTAX_PAID = (ANTDTAX_PAID + :ANTDTAX_PAID), '
      '  SUNDTAX_PAID = (SUNDTAX_PAID + :SUNDTAX_PAID), '
      '  UPCREDTAX_PAID = (UPCREDTAX_PAID + :UPCREDTAX_PAID), '
      
        '  TAX_PAID = (TAX_PAID + :FEESTAX_PAID + :DISBTAX_PAID + :ANTDTA' +
        'X_PAID + :SUNDTAX_PAID + :UPCREDTAX_PAID)'
      'WHERE '
      '  NSUBBILL_ID= :NSUBBILL_ID')
    Left = 200
    Top = 256
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
        Name = 'SUND_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED_PAID'
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
        Name = 'UPCREDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NSUBBILL_ID'
        Value = nil
      end>
  end
end
