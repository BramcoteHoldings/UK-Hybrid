object frmChequeUpCredAlloc: TfrmChequeUpCredAlloc
  Left = 681
  Top = 466
  Caption = 'Allocate Creditor Payments to Matters'
  ClientHeight = 268
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    616
    268)
  PixelsPerInch = 96
  TextHeight = 14
  object lblUnallocatedMsg: TLabel
    Left = 43
    Top = 243
    Width = 75
    Height = 18
    Anchors = [akRight, akBottom]
    Caption = 'Unallocated'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUnalloc: TLabel
    Left = 104
    Top = 229
    Width = 3
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAmountMsg: TLabel
    Left = 255
    Top = 243
    Width = 30
    Height = 18
    Anchors = [akRight, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 272
    Top = 229
    Width = 3
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCancel: TBitBtn
    Left = 528
    Top = 232
    Width = 75
    Height = 25
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 0
  end
  object btnOK: TBitBtn
    Left = 448
    Top = 232
    Width = 75
    Height = 25
    Caption = '&OK'
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnOKClick
  end
  object dbgUpCred: TDBGrid
    Left = 8
    Top = 8
    Width = 601
    Height = 185
    DataSource = dsAlloc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColEnter = dbgUpCredColEnter
    OnColExit = dbgUpCredColExit
    OnKeyPress = dbgUpCredKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'FILEID'
        ReadOnly = True
        Title.Caption = 'Matter #'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMOUNT'
        ReadOnly = True
        Title.Caption = 'Total'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENT_NAME'
        ReadOnly = True
        Title.Caption = 'Client'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MATTER_DESC'
        ReadOnly = True
        Title.Caption = 'Matter'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        ReadOnly = True
        Title.Caption = 'Description'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OWING'
        ReadOnly = True
        Title.Caption = 'Amount owing'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX_OWING'
        ReadOnly = True
        Title.Caption = 'Tax Owing'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMOUNT_PAY'
        Title.Caption = 'Amount'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXCODE'
        Title.Caption = 'Tax Code'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX'
        ReadOnly = True
        Title.Caption = 'Tax'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dsAlloc: TUniDataSource
    DataSet = qryAlloc
    Left = 369
    Top = 179
  end
  object qryAlloc: TUniQuery
    UpdatingTable = 'ALLOC'
    SQLInsert.Strings = (
      'INSERT INTO ALLOC'
      
        '  (NALLOC, UPCRED, PMNT_TO_UPCRED, ANTD, BANK, AMOUNT, DESCR, NC' +
        'HEQUE, APPROVAL, NRECEIPT, CLEARED, DCLEARDATE, CREATED, ACCT, N' +
        'MATTER, REFNO, TYPE, NCLIENT, NJOURNAL, PAYER, TRUST, FEE, OUTLA' +
        'Y, BILLED, FILEID, NTRANS, NMEMO, SUNDRY, CLIENT_NAME, SYSTEM_DA' +
        'TE, MATTER_DESC, OVERDRAWN, DISB_ONLY, PRIVATE, SPEC_PURPOSE, TA' +
        'XCODE, TAX, SUNDRYTYPE, PRIORBALANCE, DISBTEXT, DISB_CRDIT, ANTD' +
        '_CRDIT, FEES_CRDIT, TAX_CRDIT, NINVOICE, DISB)'
      'VALUES'
      
        '  (:NALLOC, :UPCRED, :PMNT_TO_UPCRED, :ANTD, :BANK, :AMOUNT, :DE' +
        'SCR, :NCHEQUE, :APPROVAL, :NRECEIPT, :CLEARED, :DCLEARDATE, :CRE' +
        'ATED, :ACCT, :NMATTER, :REFNO, :TYPE, :NCLIENT, :NJOURNAL, :PAYE' +
        'R, :TRUST, :FEE, :OUTLAY, :BILLED, :FILEID, :NTRANS, :NMEMO, :SU' +
        'NDRY, :CLIENT_NAME, :SYSTEM_DATE, :MATTER_DESC, :OVERDRAWN, :DIS' +
        'B_ONLY, :PRIVATE, :SPEC_PURPOSE, :TAXCODE, :TAX, :SUNDRYTYPE, :P' +
        'RIORBALANCE, :DISBTEXT, :DISB_CRDIT, :ANTD_CRDIT, :FEES_CRDIT, :' +
        'TAX_CRDIT, :NINVOICE, :DISB)')
    SQLDelete.Strings = (
      'DELETE FROM ALLOC'
      'WHERE'
      '  NALLOC = :NALLOC')
    SQLUpdate.Strings = (
      'UPDATE ALLOC'
      'SET'
      '  NALLOC = :NALLOC,'
      '  UPCRED = :UPCRED,'
      '  PMNT_TO_UPCRED = :PMNT_TO_UPCRED,'
      '  ANTD = :ANTD,'
      '  BANK = :BANK,'
      '  AMOUNT = :AMOUNT,'
      '  DESCR = :DESCR,'
      '  NCHEQUE = :NCHEQUE,'
      '  APPROVAL = :APPROVAL,'
      '  NRECEIPT = :NRECEIPT,'
      '  CLEARED = :CLEARED,'
      '  DCLEARDATE = :DCLEARDATE,'
      '  CREATED = :CREATED,'
      '  ACCT = :ACCT,'
      '  NMATTER = :NMATTER,'
      '  REFNO = :REFNO,'
      '  TYPE = :TYPE,'
      '  NCLIENT = :NCLIENT,'
      '  NJOURNAL = :NJOURNAL,'
      '  PAYER = :PAYER,'
      '  TRUST = :TRUST,'
      '  FEE = :FEE,'
      '  OUTLAY = :OUTLAY,'
      '  BILLED = :BILLED,'
      '  FILEID = :FILEID,'
      '  NTRANS = :NTRANS,'
      '  NMEMO = :NMEMO,'
      '  SUNDRY = :SUNDRY,'
      '  CLIENT_NAME = :CLIENT_NAME,'
      '  SYSTEM_DATE = :SYSTEM_DATE,'
      '  MATTER_DESC = :MATTER_DESC,'
      '  OVERDRAWN = :OVERDRAWN,'
      '  DISB_ONLY = :DISB_ONLY,'
      '  PRIVATE = :PRIVATE,'
      '  SPEC_PURPOSE = :SPEC_PURPOSE,'
      '  TAXCODE = :TAXCODE,'
      '  TAX = :TAX,'
      '  SUNDRYTYPE = :SUNDRYTYPE,'
      '  PRIORBALANCE = :PRIORBALANCE,'
      '  DISBTEXT = :DISBTEXT,'
      '  DISB_CRDIT = :DISB_CRDIT,'
      '  ANTD_CRDIT = :ANTD_CRDIT,'
      '  FEES_CRDIT = :FEES_CRDIT,'
      '  TAX_CRDIT = :TAX_CRDIT,'
      '  NINVOICE = :NINVOICE,'
      '  DISB = :DISB'
      'WHERE'
      '  NALLOC = :OLD_NALLOC')
    SQLLock.Strings = (
      'SELECT * FROM ALLOC'
      'WHERE'
      '  NALLOC = :NALLOC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  A.NALLOC = :NALLOC')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT A.NALLOC,A.NMATTER,A.FILEID,(A.AMOUNT * -1) AMOUNT,A.CLIE' +
        'NT_NAME,'
      'A.MATTER_DESC,A.DESCR,O.OWING,O.TAX_OWING,0 AS AMOUNT_PAY,'
      'A.TAXCODE, 0 as TAX  FROM'
      'ALLOC A,'
      
        '(SELECT SUM(AMOUNT) * -1 as OWING,SUM(TAX) * -1 as TAX_OWING,NMA' +
        'TTER   FROM ALLOC'
      ' WHERE NINVOICE=:NINVOICE'
      ' GROUP BY NMATTER) O'
      'WHERE NINVOICE=:NINVOICE'
      'AND O.OWING <> 0'
      'AND A.NMATTER = O.NMATTER')
    CachedUpdates = True
    Left = 303
    Top = 178
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
  object qryAllocUpdate: TUniQuery
    UpdatingTable = 'Alloc'
    SQLInsert.Strings = (
      'INSERT INTO alloc'
      
        '  (NALLOC, UPCRED, PMNT_TO_UPCRED, ANTD, BANK, AMOUNT, DESCR, NC' +
        'HEQUE, APPROVAL, NRECEIPT, CLEARED, DCLEARDATE, CREATED, ACCT, N' +
        'MATTER, REFNO, TYPE, NCLIENT, NJOURNAL, PAYER, TRUST, FEE, OUTLA' +
        'Y, BILLED, FILEID, NTRANS, NMEMO, SUNDRY, CLIENT_NAME, SYSTEM_DA' +
        'TE, MATTER_DESC, OVERDRAWN, DISB_ONLY, PRIVATE, SPEC_PURPOSE, TA' +
        'XCODE, TAX, SUNDRYTYPE, PRIORBALANCE, DISBTEXT, DISB_CRDIT, ANTD' +
        '_CRDIT, FEES_CRDIT, TAX_CRDIT, NINVOICE, DISB)'
      'VALUES'
      
        '  (:NALLOC, :UPCRED, :PMNT_TO_UPCRED, :ANTD, :BANK, :AMOUNT, :DE' +
        'SCR, :NCHEQUE, :APPROVAL, :NRECEIPT, :CLEARED, :DCLEARDATE, :CRE' +
        'ATED, :ACCT, :NMATTER, :REFNO, :TYPE, :NCLIENT, :NJOURNAL, :PAYE' +
        'R, :TRUST, :FEE, :OUTLAY, :BILLED, :FILEID, :NTRANS, :NMEMO, :SU' +
        'NDRY, :CLIENT_NAME, :SYSTEM_DATE, :MATTER_DESC, :OVERDRAWN, :DIS' +
        'B_ONLY, :PRIVATE, :SPEC_PURPOSE, :TAXCODE, :TAX, :SUNDRYTYPE, :P' +
        'RIORBALANCE, :DISBTEXT, :DISB_CRDIT, :ANTD_CRDIT, :FEES_CRDIT, :' +
        'TAX_CRDIT, :NINVOICE, :DISB)')
    SQLDelete.Strings = (
      'DELETE FROM alloc'
      'WHERE'
      '  NALLOC = :NALLOC')
    SQLUpdate.Strings = (
      'UPDATE alloc'
      'SET'
      '  NALLOC = :NALLOC,'
      '  UPCRED = :UPCRED,'
      '  PMNT_TO_UPCRED = :PMNT_TO_UPCRED,'
      '  ANTD = :ANTD,'
      '  BANK = :BANK,'
      '  AMOUNT = :AMOUNT,'
      '  DESCR = :DESCR,'
      '  NCHEQUE = :NCHEQUE,'
      '  APPROVAL = :APPROVAL,'
      '  NRECEIPT = :NRECEIPT,'
      '  CLEARED = :CLEARED,'
      '  DCLEARDATE = :DCLEARDATE,'
      '  CREATED = :CREATED,'
      '  ACCT = :ACCT,'
      '  NMATTER = :NMATTER,'
      '  REFNO = :REFNO,'
      '  TYPE = :TYPE,'
      '  NCLIENT = :NCLIENT,'
      '  NJOURNAL = :NJOURNAL,'
      '  PAYER = :PAYER,'
      '  TRUST = :TRUST,'
      '  FEE = :FEE,'
      '  OUTLAY = :OUTLAY,'
      '  BILLED = :BILLED,'
      '  FILEID = :FILEID,'
      '  NTRANS = :NTRANS,'
      '  NMEMO = :NMEMO,'
      '  SUNDRY = :SUNDRY,'
      '  CLIENT_NAME = :CLIENT_NAME,'
      '  SYSTEM_DATE = :SYSTEM_DATE,'
      '  MATTER_DESC = :MATTER_DESC,'
      '  OVERDRAWN = :OVERDRAWN,'
      '  DISB_ONLY = :DISB_ONLY,'
      '  PRIVATE = :PRIVATE,'
      '  SPEC_PURPOSE = :SPEC_PURPOSE,'
      '  TAXCODE = :TAXCODE,'
      '  TAX = :TAX,'
      '  SUNDRYTYPE = :SUNDRYTYPE,'
      '  PRIORBALANCE = :PRIORBALANCE,'
      '  DISBTEXT = :DISBTEXT,'
      '  DISB_CRDIT = :DISB_CRDIT,'
      '  ANTD_CRDIT = :ANTD_CRDIT,'
      '  FEES_CRDIT = :FEES_CRDIT,'
      '  TAX_CRDIT = :TAX_CRDIT,'
      '  NINVOICE = :NINVOICE,'
      '  DISB = :DISB'
      'WHERE'
      '  NALLOC = :OLD_NALLOC')
    SQLLock.Strings = (
      'SELECT * FROM alloc'
      'WHERE'
      '  NALLOC = :NALLOC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NALLOC = :NALLOC')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * from alloc')
    CachedUpdates = True
    Left = 412
    Top = 180
  end
end
