object dmChequeRev: TdmChequeRev
  OldCreateOrder = False
  Height = 282
  Width = 407
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
    Left = 199
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end>
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
    Left = 111
    Top = 7
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
  object qryChequeOrigRev: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ROWID, ACCT, CHQNO, PAYEE, APPROVAL, REQBY, NCHEQUE, CREA' +
        'TED, DESCR, AMOUNT, TRUST, REVERSED, SUFCHQ, RVBY, PRESENTED, RE' +
        'CONDATE, NJOURNAL, BANK_TRANSFER_NRECEIPT '
      'FROM CHEQUE '
      'WHERE NCHEQUE = :NCHEQUE')
    CachedUpdates = True
    Left = 33
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
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
    Left = 110
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end>
  end
  object qryAllocRev: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      'NCHEQREQ,ROWID, REFNO, TYPE, PRIVATE, NCHEQUE, NALLOC, TRUST,'
      'ACCT, NMEMO, FEE, OUTLAY, SUNDRY, AMOUNT, BILLED, PAYER, FILEID,'
      'APPROVAL, DCLEARDATE, CLEARED, NMATTER, NCLIENT, CLIENT_NAME, '
      'MATTER_DESC, SUNDRYTYPE, TAXCODE, TAX, BANK, SPEC_PURPOSE'
      'FROM ALLOC '
      'WHERE NCHEQUE = :NCHEQUE'
      'AND NMATTER = NVL(:NMATTER, NMATTER)')
    Left = 29
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end>
  end
  object qryJnlAllocTrust: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      'NCHEQREQ,ROWID, REFNO, TYPE, PRIVATE, NCHEQUE, NALLOC, TRUST,'
      'ACCT, NMEMO, FEE, OUTLAY, SUNDRY, AMOUNT, BILLED, PAYER, FILEID,'
      'APPROVAL, DCLEARDATE, CLEARED, NMATTER, NCLIENT, CLIENT_NAME, '
      'MATTER_DESC, SUNDRYTYPE, TAXCODE, TAX, BANK, SPEC_PURPOSE'
      'FROM ALLOC '
      'WHERE NJOURNAL = :NJOURNAL'
      'AND TRUST = '#39'G'#39
      'AND NMEMO = :NMEMO')
    Left = 287
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ACCT, NJOURNAL, CREATED, REASON, AMOUNT, TRUST, REFNO, NM' +
        'EMO, TYPE'
      'FROM JOURNAL'
      'WHERE'
      
        '  (ACCT = :ENTITY OR ACCT IN (SELECT ACCT FROM BANK WHERE ENTITY' +
        ' = :ENTITY))'
      'AND NJOURNAL = :NJOURNAL'
      '')
    Left = 189
    Top = 61
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
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
    Left = 27
    Top = 135
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
    Left = 100
    Top = 127
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
  object qryInvUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update invoice '
      'set ncheque = null,'
      '/*'
      'amount = amount - :pamount,'
      '*/'
      'last_payment = null,'
      'owing = owing + :pamount'
      'where ninvoice = :ninvoice ')
    Left = 187
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pamount'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ninvoice'
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
    Left = 257
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end>
  end
  object qryJournalInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO JOURNAL '
      
        '    (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TRUST, SYSTEM_DATE' +
        ', REV_NJOURNAL, NMEMO, REFNO, TYPE, ENTITY) '
      '  VALUES '
      
        '    (:CREATED, :ACCT, :AMOUNT, :NJOURNAL, :REASON, :TRUST, SysDa' +
        'te, :REV_NJOURNAL, :NMEMO, :REFNO, :TYPE, :ENTITY)')
    Left = 324
    Top = 47
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
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REV_NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object qryUpdateJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE JOURNAL '
      'SET REV_NJOURNAL = :REV_NJOURNAL'
      'WHERE NJOURNAL = :NJOURNAL'
      'AND REV_NJOURNAL IS NULL'
      '')
    Left = 282
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REV_NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end>
  end
  object qryJnlTransItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ROWID, NACCOUNT, REFNO, RVDATE, ACCT, AMOUNT, CHART, INIT' +
        'CODE, PDATE, PRESENTED, NINVOICE, TAXCODE, TAX,'
      'PARENT_CHART, REV_NJOURNAL, NALLOC, NMATTER '
      'FROM TRANSITEM '
      
        'WHERE OWNER_CODE = '#39'JOURNAL'#39' AND NOWNER = :NOWNER ORDER BY NACCO' +
        'UNT')
    Left = 32
    Top = 195
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end>
  end
  object qryNmemo: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select UPCRED_PAID'
      'from'
      'nmemo '
      'where '
      'nmemo = :nmemo')
    Left = 98
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryNmemoUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO'
      'SET'
      '   UPCRED_PAID = UPCRED_PAID - :upcredpaid,'
      '   UPCREDTAX_PAID = UPCREDTAX_PAID - :upcredtax_paid,'
      '   TAX_PAID = TAX_PAID - :tax_paid'
      'WHERE'
      '   NMEMO = :NMEMO')
    Left = 177
    Top = 193
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'upcredpaid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'upcredtax_paid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tax_paid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
end
