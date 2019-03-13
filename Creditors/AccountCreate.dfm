object dmAccountCreate: TdmAccountCreate
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 173
  Width = 233
  object qryAccount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT I.*, I.ROWID FROM INVOICE I WHERE I.NCHEQUE = -1')
    CachedUpdates = True
    Left = 27
    Top = 20
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT A.*, A.ROWID FROM ALLOC A WHERE A.NALLOC = -1')
    CachedUpdates = True
    Left = 96
    Top = 30
  end
  object qryUpdateInvoice: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update'
      'invoice'
      'set '
      'LEGAL_CR_AMOUNT = :LEGAL_CR_AMOUNT,'
      'TRADE_CR_AMOUNT = :TRADE_CR_AMOUNT'
      'where'
      'ninvoice = :ninvoice'
      '')
    Left = 23
    Top = 81
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LEGAL_CR_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRADE_CR_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ninvoice'
        Value = nil
      end>
  end
end
