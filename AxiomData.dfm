object dmAxiom: TdmAxiom
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 865
  Width = 1094
  object uniInsight: TUniConnection
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.IPVersion=ivIPBoth'
      'Oracle.Direct=True')
    Options.KeepDesignConnected = False
    Options.LocalFailover = True
    PoolingOptions.MaxPoolSize = 50
    PoolingOptions.MinPoolSize = 1
    PoolingOptions.ConnectionLifetime = 10000000
    PoolingOptions.Validate = True
    Pooling = True
    Debug = True
    Username = 'axiom'
    Server = 'dev-oracle:1521:hohlaw'
    Connected = True
    LoginPrompt = False
    AfterConnect = uniInsightAfterConnect
    OnError = uniInsightError
    OnConnectionLost = uniInsightConnectionLost
    Left = 26
    Top = 14
    EncryptedPassword = '9EFF87FF96FF90FF92FF'
  end
  object qryTmp: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM FEE')
    Left = 479
    Top = 350
  end
  object qryMatters: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT M.*, M.ROWID FROM MATTER M WHERE M.NMATTER = :P_Matter')
    Left = 568
    Top = 294
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
    object qryMattersSUBTYPE: TStringField
      FieldName = 'SUBTYPE'
    end
    object qryMattersSUBSTATUS: TStringField
      FieldName = 'SUBSTATUS'
    end
    object qryMattersNMATTER: TFloatField
      FieldName = 'NMATTER'
      Required = True
    end
    object qryMattersOPENED: TDateTimeField
      FieldName = 'OPENED'
    end
    object qryMattersPARTNER: TStringField
      FieldName = 'PARTNER'
      Size = 3
    end
    object qryMattersAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Required = True
      Size = 3
    end
    object qryMattersTYPE: TStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object qryMattersTITLE: TStringField
      FieldName = 'TITLE'
      Required = True
      Size = 85
    end
    object qryMattersFILEID: TStringField
      FieldName = 'FILEID'
      Required = True
    end
    object qryMattersSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object qryMattersNARCHIVE: TFloatField
      FieldName = 'NARCHIVE'
    end
    object qryMattersARCHIVED: TDateTimeField
      FieldName = 'ARCHIVED'
    end
    object qryMattersACCT: TStringField
      FieldName = 'ACCT'
      Size = 2
    end
    object qryMattersTRUSTAUTH: TStringField
      FieldName = 'TRUSTAUTH'
      Size = 1
    end
    object qryMattersPARTY1: TStringField
      FieldName = 'PARTY1'
      Size = 85
    end
    object qryMattersPARTY2: TStringField
      FieldName = 'PARTY2'
      Size = 85
    end
    object qryMattersPARTY3: TStringField
      FieldName = 'PARTY3'
      Size = 85
    end
    object qryMattersSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qryMattersLONGDESCR: TStringField
      FieldName = 'LONGDESCR'
      Size = 400
    end
    object qryMattersOFFICE: TStringField
      FieldName = 'OFFICE'
      Size = 2
    end
    object qryMattersNCLIENT: TFloatField
      FieldName = 'NCLIENT'
    end
    object qryMattersBILL_TO: TStringField
      FieldName = 'BILL_TO'
      Size = 85
    end
    object qryMattersLASTTRANS: TDateTimeField
      FieldName = 'LASTTRANS'
    end
    object qryMattersLASTTRUST: TDateTimeField
      FieldName = 'LASTTRUST'
    end
    object qryMattersREFERREDBY: TStringField
      FieldName = 'REFERREDBY'
      Size = 85
    end
    object qryMattersNOTES: TStringField
      FieldName = 'NOTES'
      Size = 400
    end
    object qryMattersLITIGATION: TStringField
      FieldName = 'LITIGATION'
      Size = 1
    end
    object qryMattersSPECULATION: TStringField
      FieldName = 'SPECULATION'
      Size = 1
    end
    object qryMattersAGENCY: TStringField
      FieldName = 'AGENCY'
      Size = 1
    end
    object qryMattersGRATIS: TStringField
      FieldName = 'GRATIS'
      Size = 1
    end
    object qryMattersBILLING_PLAN: TStringField
      FieldName = 'BILLING_PLAN'
      Size = 1
    end
    object qryMattersCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 85
    end
    object qryMattersPREV_NCMAUDIT: TFloatField
      FieldName = 'PREV_NCMAUDIT'
    end
    object qryMattersPREV_NTRAUDIT: TFloatField
      FieldName = 'PREV_NTRAUDIT'
    end
    object qryMattersTASK: TStringField
      FieldName = 'TASK'
    end
    object qryMattersEXP_COMPLETION: TDateTimeField
      FieldName = 'EXP_COMPLETION'
    end
    object qryMattersOPREF: TStringField
      FieldName = 'OPREF'
    end
    object qryMattersTASK_DATE: TDateTimeField
      FieldName = 'TASK_DATE'
    end
    object qryMattersREFRESH: TFloatField
      FieldName = 'REFRESH'
    end
    object qryMattersCONTROLLER: TStringField
      FieldName = 'CONTROLLER'
      Size = 3
    end
    object qryMattersFEECODE: TStringField
      FieldName = 'FEECODE'
    end
    object qryMattersCOMPLETED: TDateTimeField
      FieldName = 'COMPLETED'
    end
    object qryMattersWORKFLOW: TStringField
      FieldName = 'WORKFLOW'
      Size = 11
    end
    object qryMattersLABELCODE: TStringField
      FieldName = 'LABELCODE'
    end
    object qryMattersMODBY: TStringField
      FieldName = 'MODBY'
      Size = 3
    end
    object qryMattersARCHVLOCN: TStringField
      FieldName = 'ARCHVLOCN'
      Size = 50
    end
    object qryMattersCLIENTID: TStringField
      FieldName = 'CLIENTID'
      Size = 35
    end
    object qryMattersNNAME: TFloatField
      FieldName = 'NNAME'
    end
    object qryMattersINTTRIGDATE: TDateTimeField
      FieldName = 'INTTRIGDATE'
    end
    object qryMattersTCCLRDATE: TDateTimeField
      FieldName = 'TCCLRDATE'
    end
    object qryMattersLASTBILLDATE: TDateTimeField
      FieldName = 'LASTBILLDATE'
    end
    object qryMattersLASTLETTER: TDateTimeField
      FieldName = 'LASTLETTER'
    end
    object qryMattersBFPRGDATE: TDateTimeField
      FieldName = 'BFPRGDATE'
    end
    object qryMattersARCHIVEREVIEW: TDateTimeField
      FieldName = 'ARCHIVEREVIEW'
    end
    object qryMattersARCHIVEDEST: TDateTimeField
      FieldName = 'ARCHIVEDEST'
    end
    object qryMattersBRANCH: TStringField
      FieldName = 'BRANCH'
      Size = 3
    end
    object qryMattersARCHIVENUM: TFloatField
      FieldName = 'ARCHIVENUM'
    end
    object qryMattersGSTEXEMPT: TIntegerField
      FieldName = 'GSTEXEMPT'
    end
    object qryMattersCLOSED: TIntegerField
      FieldName = 'CLOSED'
    end
    object qryMattersTRSTMNT: TIntegerField
      FieldName = 'TRSTMNT'
    end
    object qryMattersTRAUTH: TIntegerField
      FieldName = 'TRAUTH'
    end
    object qryMattersSLEDATE: TDateTimeField
      FieldName = 'SLEDATE'
    end
    object qryMattersOPERATOR: TStringField
      FieldName = 'OPERATOR'
      Size = 3
    end
    object qryMattersJURISDICTION: TStringField
      FieldName = 'JURISDICTION'
    end
    object qryMattersFEEBASIS: TStringField
      FieldName = 'FEEBASIS'
    end
    object qryMattersENTITY: TStringField
      FieldName = 'ENTITY'
      Size = 2
    end
    object qryMattersTYPE1: TStringField
      FieldName = 'TYPE1'
    end
    object qryMattersTYPE2: TStringField
      FieldName = 'TYPE2'
    end
    object qryMattersJURISDICTION1: TStringField
      FieldName = 'JURISDICTION1'
    end
    object qryMattersSTATUS1: TStringField
      FieldName = 'STATUS1'
      Size = 30
    end
    object qryMattersDEBTORNOTE: TStringField
      FieldName = 'DEBTORNOTE'
      Size = 1500
    end
    object qryMattersDEBTORDATE: TStringField
      FieldName = 'DEBTORDATE'
      Size = 500
    end
    object qryMattersUNBILL_DISB: TFloatField
      FieldName = 'UNBILL_DISB'
    end
    object qryMattersDEBTORS: TFloatField
      FieldName = 'DEBTORS'
    end
    object qryMattersUNBILL_FEES: TFloatField
      FieldName = 'UNBILL_FEES'
    end
    object qryMattersBILL_FEES: TFloatField
      FieldName = 'BILL_FEES'
    end
    object qryMattersUNBILL_SUND: TFloatField
      FieldName = 'UNBILL_SUND'
    end
    object qryMattersBILL_DISB: TFloatField
      FieldName = 'BILL_DISB'
    end
    object qryMattersRECVD_FEES: TFloatField
      FieldName = 'RECVD_FEES'
    end
    object qryMattersBILL_SUND: TFloatField
      FieldName = 'BILL_SUND'
    end
    object qryMattersBILL_ANTD: TFloatField
      FieldName = 'BILL_ANTD'
    end
    object qryMattersTRUST_TRANS: TFloatField
      FieldName = 'TRUST_TRANS'
    end
    object qryMattersSPEC_PURPOSE: TFloatField
      FieldName = 'SPEC_PURPOSE'
    end
    object qryMattersUNBILL_ANTD: TFloatField
      FieldName = 'UNBILL_ANTD'
    end
    object qryMattersEXPECTED_VALUE: TFloatField
      FieldName = 'EXPECTED_VALUE'
    end
    object qryMattersUNREC_DISB: TFloatField
      FieldName = 'UNREC_DISB'
    end
    object qryMattersPERIOD0: TFloatField
      FieldName = 'PERIOD0'
    end
    object qryMattersPERIOD1: TFloatField
      FieldName = 'PERIOD1'
    end
    object qryMattersPERIOD2: TFloatField
      FieldName = 'PERIOD2'
    end
    object qryMattersPERIOD3: TFloatField
      FieldName = 'PERIOD3'
    end
    object qryMattersANTDISBS: TFloatField
      FieldName = 'ANTDISBS'
    end
    object qryMattersANTDRS: TFloatField
      FieldName = 'ANTDRS'
    end
    object qryMattersFEESDRS: TFloatField
      FieldName = 'FEESDRS'
    end
    object qryMattersUNBILL_UNITS: TFloatField
      FieldName = 'UNBILL_UNITS'
    end
    object qryMattersAMT_LAST_REC: TFloatField
      FieldName = 'AMT_LAST_REC'
    end
    object qryMattersDISBSWOFF: TFloatField
      FieldName = 'DISBSWOFF'
    end
    object qryMattersDRSWOFF: TFloatField
      FieldName = 'DRSWOFF'
    end
    object qryMattersWIPWOFF: TFloatField
      FieldName = 'WIPWOFF'
    end
    object qryMattersDISBSLIM: TFloatField
      FieldName = 'DISBSLIM'
    end
    object qryMattersUNBILL_CREQ: TFloatField
      FieldName = 'UNBILL_CREQ'
    end
    object qryMattersUNBILL_UPCRED: TFloatField
      FieldName = 'UNBILL_UPCRED'
    end
    object qryMattersBILL_CREQ: TFloatField
      FieldName = 'BILL_CREQ'
    end
    object qryMattersBILL_UPCRED: TFloatField
      FieldName = 'BILL_UPCRED'
    end
    object qryMattersRECVD_DISB: TFloatField
      FieldName = 'RECVD_DISB'
    end
    object qryMattersRECVD_SUND: TFloatField
      FieldName = 'RECVD_SUND'
    end
    object qryMattersRECVD_CREQ: TFloatField
      FieldName = 'RECVD_CREQ'
    end
    object qryMattersRECVD_UPCRED: TFloatField
      FieldName = 'RECVD_UPCRED'
    end
    object qryMattersSUNDWOFF: TFloatField
      FieldName = 'SUNDWOFF'
    end
    object qryMattersCREQWOFF: TFloatField
      FieldName = 'CREQWOFF'
    end
    object qryMattersUPCREDWOFF: TFloatField
      FieldName = 'UPCREDWOFF'
    end
    object qryMattersRATE: TFloatField
      FieldName = 'RATE'
    end
    object qryMattersTRUST_BAL: TFloatField
      FieldName = 'TRUST_BAL'
    end
    object qryMattersCL_TRUST_BAL: TFloatField
      FieldName = 'CL_TRUST_BAL'
    end
    object qryMattersBUDGET_FEES: TFloatField
      FieldName = 'BUDGET_FEES'
    end
    object qryMattersBUDGET_DISB: TFloatField
      FieldName = 'BUDGET_DISB'
    end
    object qryMattersBUDGET_TOTAL: TFloatField
      FieldName = 'BUDGET_TOTAL'
    end
    object qryMattersARCHIVETYPECODE: TStringField
      FieldName = 'ARCHIVETYPECODE'
    end
    object qryMattersTRANS_FROM: TStringField
      FieldName = 'TRANS_FROM'
      Size = 3
    end
    object qryMattersSUBJURISDICTION: TStringField
      FieldName = 'SUBJURISDICTION'
    end
    object qryMattersCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryMattersMODIFIED: TDateTimeField
      FieldName = 'MODIFIED'
    end
    object qryMattersDEBTORSTATUS: TFloatField
      FieldName = 'DEBTORSTATUS'
    end
    object qryMattersROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object qryTransItem: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO TRANSITEM (NACCOUNT, CREATED, ACCT, '
      'AMOUNT, REFNO, DESCR, CHART, OWNER_CODE, NOWNER, '
      
        'NCHEQUE, NRECEIPT, NJOURNAL, WHO, VERSION, BAS_TAX,TAX, TRAN_TYP' +
        'E, PROGRAM_NAME) '
      'VALUES '
      '(:NACCOUNT,'
      ':CREATED, '
      ':ACCT, '
      ':AMOUNT, '
      ':REFNO, '
      ':DESCR, '
      ':CHART, '
      ':OWNER_CODE, '
      ':NOWNER, '
      ':NCHEQUE, '
      ':NRECEIPT, '
      ':NJOURNAL,'
      ':WHO,'
      ':VERSION,'
      ':BAS_TAX,'
      ':TAX,'
      ':TRAN_TYPE,'
      ':PROGRAM_NAME)')
    Left = 389
    Top = 350
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NACCOUNT'
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
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OWNER_CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WHO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VERSION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BAS_TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRAN_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROGRAM_NAME'
        Value = nil
      end>
  end
  object qryTransItemInsert: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO transitem'
      '            ( created, acct, amount, tax, refno, descr, chart,'
      
        '             owner_code, nowner, ncheque, nreceipt, ninvoice, nj' +
        'ournal,'
      
        '             creditorcode, who, taxcode, parent_chart, nalloc, n' +
        'matter,'
      
        '             rvdate, VERSION, ntrans, bas_tax, CURRENCY, FX_RATE' +
        ', BASE_CCY_AMT, '
      '             BASE_CCY_TAX, ENTITY_CCY_AMT, ENTITY_CCY_TAX, '
      
        '             TRAN_CURRENCY, TRAN_CCY_AMT, TRAN_CCY_TAX, naccount' +
        ', TRAN_TYPE, PROGRAM_NAME '
      '            )'
      
        '     VALUES (:created, :acct, :amount, :tax, :refno, :descr, :ch' +
        'art,'
      
        '             :owner_code, :nowner, :ncheque, :nreceipt, :ninvoic' +
        'e, :njournal,'
      
        '             :creditorcode, :who, :taxcode, :parent_chart, :nall' +
        'oc, :nmatter,'
      
        '             :rvdate, :VERSION, :ntrans, :bas_tax, :CURRENCY, :F' +
        'X_RATE, :BASE_CCY_AMT, '
      '             :BASE_CCY_TAX, :ENTITY_CCY_AMT, :ENTITY_CCY_TAX, '
      
        '             :TRAN_CURRENCY, :TRAN_CCY_AMT, :TRAN_CCY_TAX, :nacc' +
        'ount, :TRAN_TYPE, :PROGRAM_NAME '
      '            )')
    Left = 479
    Top = 15
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
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OWNER_CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREDITORCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WHO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PARENT_CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RVDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VERSION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NTRANS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BAS_TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CURRENCY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FX_RATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BASE_CCY_AMT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BASE_CCY_TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY_CCY_AMT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY_CCY_TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRAN_CURRENCY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRAN_CCY_AMT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRAN_CCY_TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'naccount'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRAN_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROGRAM_NAME'
        Value = nil
      end>
  end
  object qryOpenList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT O.*, O.ROWID,M.TITLE,M.SHORTDESCR'
      'FROM OPENLIST O,MATTER M'
      'WHERE O.AUTHOR = :P_Author'
      '  AND O.TYPE = :P_Type'
      '  AND :P_Type = '#39'MATTER'#39
      '  AND O.CODE = M.FILEID (+)'
      'UNION'
      'SELECT O.*, O.ROWID,'#39#39' as TITLE,'#39#39' as SHORTDESCR'
      'FROM OPENLIST O'
      'WHERE O.AUTHOR = :P_Author'
      '  AND O.TYPE = :P_Type'
      '  AND :P_Type <> '#39'MATTER'#39
      '')
    Left = 300
    Top = 128
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
  object qryTaskUpdate: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM TASK')
    Left = 479
    Top = 128
  end
  object qryPrecedent: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT C.NAME, F.FIELDNAME, F.TEXTVALUE'
      'FROM MATTER M, CLIENT C, FIELDTYPELINK F, MATTERPARTY P'
      'WHERE M.FILEID = :FILEID'
      '  AND M.NCLIENT = C.NCLIENT'
      '  AND M.NMATTER = F.NUNIQUE'
      '  AND F.LINKTABLE = '#39'MATTER'#39
      '  AND M.FILEID = P.FILEID'
      'ORDER BY F.FIELDNAME')
    Left = 479
    Top = 183
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryDataFieldMapping: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT FOREIGNCODE AS CODE'
      'FROM DATAFIELDMAPPING'
      'WHERE AXIOMCODE = :AXIOMCODE')
    Left = 479
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AXIOMCODE'
        Value = nil
      end>
  end
  object qryUserStatements: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT US.*'
      'FROM USERSTATEMENTS US')
    Left = 568
    Top = 128
  end
  object qryMatterDocs: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'INSERT INTO DOC (DOC_NAME, SEARCH, D_CREATE, AUTH1, PATH, FILEID' +
        ')'
      'VALUES (:DOC_NAME, :SEARCH, SYSDATE, :AUTH1, :PATH, :FILEID)')
    Left = 568
    Top = 183
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOC_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEARCH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTH1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PATH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryBanks: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM BANK where active = '#39'Y'#39)
    Left = 32
    Top = 128
  end
  object qryCharts: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM CHART WHERE BANK = :P_Bank AND CODE = :P_Code')
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Bank'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qryEmps: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT CODE FROM EMPLOYEE')
    Left = 32
    Top = 350
  end
  object qryAllocs: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM ALLOC')
    Left = 32
    Top = 294
  end
  object qryNaccounts: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM TRANSITEM')
    Left = 121
    Top = 350
  end
  object qryAllocsRV: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (NALLOC, CREATED, REFNO, TYPE, NCHEQUE, NRECEIPT, NJOURNAL,'
      '   NMEMO, ACCT, AMOUNT, FEE, OUTLAY, SUNDRY, NMATTER, NCLIENT, '
      '   DESCR, FILEID, APPROVAL, CLEARED, DCLEARDATE, PAYER,'
      
        '   TRUST, BILLED, CLIENT_NAME, MATTER_DESC, OVERDRAWN, SYSTEM_DA' +
        'TE, PRIVATE,'
      
        '   SUNDRYTYPE, TAXCODE, TAX,NCHEQREQ, RV_NALLOC,BANK, NINVOICE, ' +
        'SPEC_PURPOSE)'
      'VALUES'
      
        '  (:NALLOC, :CREATED, :REFNO, :TYPE, :NCHEQUE, :NRECEIPT, :NJOUR' +
        'NAL,'
      
        '   :NMEMO, :ACCT, :AMOUNT, :FEE, :OUTLAY, :SUNDRY, :NMATTER, :NC' +
        'LIENT,'
      '   :DESCR, :FILEID, :APPROVAL, :CLEARED, :DCLEARDATE, :PAYER,'
      
        '   :TRUST, :BILLED, :CLIENT_NAME, :MATTER_DESC, :OVERDRAWN, SysD' +
        'ate, '#39'Y'#39','
      
        '   :SUNDRYTYPE, :TAXCODE, :TAX,:NCHEQREQ, :RV_NALLOC, :BANK, :NI' +
        'NVOICE, :SPEC_PURPOSE)')
    Left = 121
    Top = 294
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
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
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
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
        Name = 'FEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OUTLAY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APPROVAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLEARED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DCLEARDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLED'
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
      end
      item
        DataType = ftUnknown
        Name = 'OVERDRAWN'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRYTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RV_NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SPEC_PURPOSE'
        Value = nil
      end>
  end
  object qryEntity: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME, LOCKDATE, ABN'
      'FROM ENTITY '
      'WHERE CODE = :Entity')
    ReadOnly = True
    Left = 32
    Top = 405
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Entity'
        Value = nil
      end>
  end
  object qryInvoiceInsert: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO NMEMO '
      '    (NMEMO, NTRANS, GENERATED, DISPATCHED, '
      '    FEES, DISB, ANTD, SUND, TRUST, INTERIM, NMATTER, '
      '    FEES_FLAG, DISB_FLAG, ANTD_FLAG, SUND_FLAG, LEGAL_AID_FLAG,'
      '    ITEM_DATE_FLAG, BANK_ACCT, BILL_TO, FORMAT_FILE,'
      
        '    DEBTORS, FEES_PAID, DISB_PAID, ANTD_PAID, SUND_PAID, RV_TYPE' +
        ','
      '    RV_NMEMO, AUTHOR, PARTNER, DATE_LAST_RECPT, FULLY_PAID,'
      
        '    INV_NOTE, NOWNER, EXPPAYMENT, NCLIENT, FILEID, REFNO, BILLTE' +
        'MPLATE,'
      '    FEESTAX, DISBTAX, ANTDTAX, SUNDTAX, '
      
        '    FEESTAX_PAID, DISBTAX_PAID, ANTDTAX_PAID, SUNDTAX_PAID, TAX,' +
        ' TAX_PAID)'
      '  VALUES'
      '    (:NMEMO, :NTRANS, :GENERATED, :DISPATCHED, '
      '    :FEES, :DISB, :ANTD, :SUND, :TRUST, :INTERIM, :NMATTER, '
      
        '    :FEES_FLAG, :DISB_FLAG, :ANTD_FLAG, :SUND_FLAG, :LEGAL_AID_F' +
        'LAG,'
      '    :ITEM_DATE_FLAG, :BANK_ACCT, :BILL_TO, :FORMAT_FILE,'
      
        '    :DEBTORS, :FEES_PAID, :DISB_PAID, :ANTD_PAID, :SUND_PAID, :R' +
        'V_TYPE,'
      '    :RV_NMEMO, :AUTHOR, :PARTNER, :DATE_LAST_RECPT, :FULLY_PAID,'
      
        '    :INV_NOTE, :NOWNER, :EXPPAYMENT, :NCLIENT, :FILEID, :REFNO, ' +
        ':BILLTEMPLATE,'
      '    :FEESTAX, :DISBTAX, :ANTDTAX, :SUNDTAX, '
      '    :FEESTAX_PAID, :DISBTAX_PAID, :ANTDTAX_PAID, :SUNDTAX_PAID,'
      '    (:FEESTAX+:DISBTAX+:ANTDTAX+:SUNDTAX), '
      '    (:FEESTAX_PAID+:DISBTAX_PAID+:ANTDTAX_PAID+:SUNDTAX_PAID))')
    Left = 121
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NTRANS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GENERATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISPATCHED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'INTERIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEES_FLAG'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB_FLAG'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD_FLAG'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND_FLAG'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LEGAL_AID_FLAG'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ITEM_DATE_FLAG'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK_ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILL_TO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FORMAT_FILE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEBTORS'
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
        Name = 'RV_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RV_NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PARTNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DATE_LAST_RECPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FULLY_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'INV_NOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EXPPAYMENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLTEMPLATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEESTAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISBTAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTDTAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDTAX'
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
      end>
  end
  object qryFeeInsert: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO FEE'
      
        '  (CREATED, DESCR, UNITS, MINS, UNIT, AUTHOR, RATE, NMATTER, NCL' +
        'IENT'
      '  , BILLED, TYPE, PARTNER, FILEID, BANK_ACCT, DEPT, EMP_TYPE'
      '  , PRIVATE, TAXCODE, AMOUNT, TAX, TIME_TYPE, BILLTYPE, TASK'
      '  , START_DATE, END_DATE, ITEMS, NFEE, LABELCOLOUR, PROGRAM_NAME'
      '  , VERSION, EMPCODE, NOTES, DISCOUNT, VALUE, PROCESSING_UNIT)'
      'VALUES'
      
        '  (:CREATED, :DESCR, :UNITS, :MINS, :UNIT, :AUTHOR, :RATE, :NMAT' +
        'TER, :NCLIENT'
      
        '  , :BILLED, :TYPE, :PARTNER, :FILEID, :BANK_ACCT, :DEPT, :EMP_T' +
        'YPE'
      '  , '#39'N'#39', :TAXCODE, :AMOUNT, :TAX, :TIME_TYPE, :BILLTYPE, :TASK '
      
        '  , :START_DATE, :END_DATE, :ITEMS, :NFEE, :LABELCOLOUR, :PROGRA' +
        'M_NAME'
      
        '  , :VERSION, :EMPCODE, :NOTES, :DISCOUNT, :VALUE, :PROCESSING_U' +
        'NIT)'
      ''
      ''
      ''
      '/*'
      'INSERT INTO FEE '
      '    (NFEE, CREATED, DESCR, MINS, AUTHOR, PARTNER, RATE, AMOUNT,'
      
        '     NMATTER, BILLED, UNIT, BANK_ACCT, ITEMS, LABELCOLOUR, PROGR' +
        'AM_NAME, VERSION, EMPCODE,'
      
        '     DEPT, EMP_TYPE, UNITS, NCLIENT, FILEID, PRIVATE, TYPE, TAXC' +
        'ODE, TAX, TIME_TYPE, BILLTYPE, TASK )'
      'VALUES'
      
        '    (:NFEE, :CREATED, :DESCR, :MINS, :AUTHOR, :PARTNER, :RATE, :' +
        'AMOUNT,'
      
        '     :NMATTER, '#39'N'#39', :UNIT, :BANK_ACCT, :ITEMS, :LABELCOLOUR, :PR' +
        'OGRAM_NAME, :VERSION, :EMPCODE,'
      
        '     :DEPT, :EMP_TYPE, :UNITS, :NCLIENT, :FILEID, '#39'N'#39', '#39'N'#39', :TAX' +
        'CODE, :TAX, :TIME_TYPE, :BILLTYPE, :TASK )'
      '*/')
    Left = 121
    Top = 128
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'MINS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PARTNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK_ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMP_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIME_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TASK'
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'START_DATE'
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'END_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ITEMS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NFEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABELCOLOUR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROGRAM_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VERSION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMPCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOTES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISCOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VALUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROCESSING_UNIT'
        Value = nil
      end>
  end
  object qryFee: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM FEE')
    Left = 121
    Top = 72
  end
  object qryNaccountsRV: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO TRANSITEM'
      '  (NACCOUNT, CREATED, RVDATE, REFNO, OWNER_CODE, NOWNER,'
      '   NCHEQUE, NRECEIPT, NJOURNAL, NINVOICE, ACCT, AMOUNT, CHART,'
      
        '   DESCR, INITCODE, PDATE, PRESENTED, CREDITORCODE, WHO, TAXCODE' +
        ','
      
        '   PARENT_CHART,REV_NJOURNAL,NALLOC,NMATTER,TAX,VERSION, BAS_TAX' +
        ')'
      'VALUES'
      '  (:NACCOUNT, :CREATED, :RVDATE, :REFNO, :OWNER_CODE, :NOWNER,'
      
        '   :NCHEQUE, :NRECEIPT, :NJOURNAL, :NINVOICE, :ACCT, :AMOUNT, :C' +
        'HART,'
      
        '   :DESCR, :INITCODE, :PDATE, :PRESENTED, :CREDITORCODE, :WHO, :' +
        'TAXCODE,'
      
        '   :PARENT_CHART,:REV_NJOURNAL,:NALLOC,:NMATTER,:TAX, :VERSION, ' +
        ':BAS_TAX)')
    Left = 300
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NACCOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RVDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OWNER_CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
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
        Name = 'CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'INITCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREDITORCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WHO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PARENT_CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REV_NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VERSION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BAS_TAX'
        Value = nil
      end>
  end
  object qryNames: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT P.*, P.ROWID FROM PHONEBOOK P')
    Left = 210
    Top = 405
  end
  object qrySeqnums: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT S.*, S.ROWID FROM SEQNUMS S')
    CachedUpdates = True
    AutoCalcFields = False
    Left = 568
    Top = 350
  end
  object qryReceipts: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM RECEIPT')
    Left = 300
    Top = 239
  end
  object qryShortcut: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM SHORTCUT')
    Left = 389
    Top = 15
  end
  object qryOriginal: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM JOURNAL')
    Left = 300
    Top = 72
  end
  object qrySysFile: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM SYSTEMFILE')
    Left = 389
    Top = 183
  end
  object qrySundry: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM SUNDRY')
    Left = 389
    Top = 72
  end
  object qryTaskItems: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'SELECT TASKLINK.TASKORDER, TASKLINK.TASKITEMCODE, TASKITEM.TYPE,' +
        ' TASKITEM.AMOUNT, TASKITEM.REASON,'
      
        '  TASKITEM.PAYEE, TASKITEM.DAYS, TASKITEM.SUNDRYTYPE, TASKITEM.C' +
        'ONFIRM,'
      
        '  '#39#39' AS PRECPATH, TASKITEM.DATAFORM, '#39#39' AS SAVEPATH, '#39#39' AS DESCR' +
        ', '#39#39' AS MAINDATAFILE, '#39#39' AS DATAFILEPATH'
      'FROM TASKLINK, TASKITEM'
      'WHERE TASKLINK.TASKCODE = :P_TaskCode'
      '  AND TASKLINK.EVENT = :P_Event'
      '  AND TASKLINK.TASKITEMCODE = TASKITEM.CODE'
      '  AND TASKITEM.TYPE <> '#39'Precedent'#39
      ''
      'UNION'
      ''
      
        'SELECT TASKLINK.TASKORDER, TASKLINK.TASKITEMCODE, TASKITEM.TYPE,' +
        ' TASKITEM.AMOUNT, TASKITEM.REASON,'
      
        '  TASKITEM.PAYEE, TASKITEM.DAYS, TASKITEM.SUNDRYTYPE, TASKITEM.C' +
        'ONFIRM,'
      
        '  PREC.PATH AS PRECPATH, TASKITEM.DATAFORM, PREC.SAVEPATH, PREC.' +
        'DESCR, PREC.MAINDATAFILE, PREC.DATAFILEPATH'
      'FROM TASKLINK, TASKITEM, PREC'
      'WHERE TASKLINK.TASKCODE = :P_TaskCode'
      '  AND TASKLINK.EVENT = :P_Event'
      '  AND TASKLINK.TASKITEMCODE = TASKITEM.CODE(+)'
      '  AND PREC.PATH = TASKITEM.PRECEDENT'
      'ORDER BY 1')
    Left = 389
    Top = 291
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_TaskCode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Event'
        Value = nil
      end>
  end
  object qrySundryInsert: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRY'
      '    (ACCT, CREATED, AMOUNT, BILLED, DESCR, NMATTER, NCLIENT, '
      '     PERUNIT, UNITS, TYPE, PRIVATE, FILEID, TAXCODE, TAX, NMEMO)'
      'VALUES'
      '    (:ACCT, :CREATED, :AMOUNT, '#39'N'#39', :DESCR, :NMATTER, :NCLIENT, '
      
        '     :PERUNIT, :UNITS, :TYPE, '#39'N'#39', :FILEID, :TAXCODE, :TAX, :NME' +
        'MO )')
    Left = 389
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
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
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PERUNIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryTaskInsert: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO TASK'
      '    (CODE, FILEID, DESCR, AUTHOR, COMMENCE, DUE)'
      'VALUES'
      '    (:CODE, :FILEID, :DESCR, :AUTHOR, :COMMENCE, :DUE)')
    Left = 389
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'COMMENCE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DUE'
        Value = nil
      end>
  end
  object qryInvoice: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'SELECT NMEMO .*, NMEMO .ROWID FROM NMEMO WHERE NMEMO."NMEMO" = :' +
        'P_Invoice')
    Left = 121
    Top = 183
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
        Value = nil
      end>
  end
  object qryTypes: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT CODE FROM MATTERTYPE')
    Left = 479
    Top = 72
  end
  object qryMultiSelection: TUniQuery
    Connection = uniInsight
    Left = 479
    Top = 294
  end
  object ilPrecCategory: TImageList
    Height = 32
    Masked = False
    Width = 32
    Left = 649
    Top = 178
    Bitmap = {
      494C010102000500040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
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
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006394C600185A
      A500184AA500184AA500084A940018428C00184A8C0018317B0010316B000839
      630010315A000821520008294A0010214A0008214A0008215200081839000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF00000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5E7F7003994
      DE0029A5D60042A5DE0042ADDE0042ADDE0042ADE70042ADD6004294DE004294
      DE00318CCE002994C6002173BD003173BD00216BAD001863940029527B001000
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B0000000000000000007B7B7B00000000007B7B
      7B000000FF0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF0000000000000000000000000000000000000018181800000000001818
      18000000000000000000000000000000000000000000000000008CE7F700319C
      DE00429CDE00317BAD0018639C0018639C003194CE0042BDEF0039A5E70039A5
      DE00319CDE00298CCE0018639400084284001852840021739C00104A84000808
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      00007B7B7B0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF00000000000000000000000000080008084A0010109C000000
      000000000000000000000000000000000000000000000000000084DEFF0031A5
      DE00106BD60021397B000042630000215A0018397B003994DE0039ADE70029AD
      E700318CE7001842840000427B000021630000084A0021529C00184294000010
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B
      7B000000FF0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF0000000000000039396B002118BD002931CE001010
      730000000000000000000000000000000000000000000000000084DEFF00399C
      DE00104A94001063AD00299CE700085AA500002973003994C60042B5E70039AD
      EF00318CC600004A9C003184B5001084CE0000398C0010314200105294000810
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      00007B7B7B0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000005A5A5A00181894004242FF002929
      C600000018001818A500525252000000000000000000000000008CE7F70039AD
      E70000528C0021A5DE00215284002994D600004A7B0039A5CE0042BDEF0042AD
      EF0031A5BD00008CC600298CBD0052B5DE00187BB50000313900216394001010
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B
      7B000000FF0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF0000000000000000000000100863002921BD003931
      E700A59CDE004239D6000000000000000000000000000000000084DEFF0039A5
      E7001884C600107BD6001084D60018639C00185A840042B5DE004ABDEF0042B5
      EF004294D600006BC600188CDE00085AA50021638C0021529400215A9C000810
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      00007B7B7B0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF00000000000000000000000000000010108C002129
      C6004231FF002129BD00080021002118AD004A4A4A000000000084DEFF0031A5
      EF0042ADEF002173BD00085284000852840042A5E70042C6FF0039BDF70039BD
      F70039ADEF002994DE00005A9C00084A6B001852AD00217BBD00085AA5000010
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B
      7B000000FF0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000001008
      6B002121BD003931E700ADA5DE003939DE0000000000000000009CE7F70031A5
      DE0042ADEF0042ADEF004ABDF70042C6F70052C6F70052CEF70042BDF70042BD
      EF0042ADE700429CDE00319CDE00319CD6003994C6002984CE00215AAD001010
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF000000000000FFFF0000000000BDBDBD0000000000BDBD
      BD00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      00007B7B7B0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000000000000010101000101010001010
      100021188C003129C6004231FF002921BD00080029002118A50084B5D60039A5
      DE0042A5E70042BDE70042B5EF0042B5EF0042BDE70042B5E7004ABDE7005ABD
      EF0042B5E70042A5E70039ADDE003994DE003194D6002994C6003163A5001010
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B
      7B000000FF0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000004242420042424200424242004242
      42004242420018187B002921BD003939E700ADA5E7003939CE00000810001839
      6300213963001842630018426B001842630021426300213963004A8CBD0052BD
      EF0042BDE70042ADDE0018639400184A840029638C00298CC6002163A5000808
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000000000BDBDBD0000000000BDBD
      BD00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      00007B7B7B0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B0000000000000000000000
      000000000000000000003939A5002929C6004239FF002121BD00080831002121
      AD0073637300847B8400EFEFEF0000000000000000004A527300428CB50042B5
      E700399CE7002142840008528C0000296B00001052002163A500215AAD000010
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B
      7B000000FF0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B0000000000000000000000
      00000000000000000000F7F7FF005A52B5002121BD003931E700ADADE7003929
      D600000000006B636B008C8C8C00EFE7EF00000000004A527300318CB50031AD
      EF00318CCE000052A500297BAD00088CCE0000398C0010294200215AAD000010
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF000000000000FFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      00007B7B7B0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B00F7F7F700FFF7F700B5B5
      B500CECEC600BDC6BD00C6BDC600A5A5A5004242A5002929C6003939EF003129
      C60010187B000000080073637300847B8400EFE7EF004A5273002184B50039AD
      EF00319CC6000084C6002994C600429CCE002184BD00003142002163A5001000
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B
      7B000000FF0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B00E7EFE700AD9CAD00B5BD
      B500949C9400CECECE00A59CA500948C9400C6CEC600948CBD002110A5003931
      E7002931CE0010107B00080008006B636B008C8C8C0039395A00297BB50039AD
      EF00429CD600086BBD001884D6001063B500185A7B00215A9C002963A5001008
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      00007B7B7B0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B00EFEFEF00EFE7EF00DEDE
      DE00DEDEDE00EFEFEF00F7EFEF00DEDEDE00EFEFEF00DEDEDE00CECEDE002118
      9C003931E7002129C60010108400000008006B636B00293952003184AD0031AD
      DE00399CE7002994DE000863A500105A7B00215AB500217BBD00215AAD000000
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B
      7B000000FF0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B00EFEFEF00EFE7EF00E7E7
      E700DEE7DE00EFEFEF00F7EFEF00E7E7E700EFEFEF00E7E7E700EFEFEF00D6D6
      E7001818A5003929E7002931CE001010840008000800181029003184AD0031AD
      DE003994DE003994DE00298CCE002994C600297BC600217BC600215AA5000000
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF000000000000FFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      FF007B7B7B0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B0000000000000000000000
      0000D6DED600BDBDB500ADADAD00B5ADAD00BDBDB500D6D6D600A59CA500DED6
      D600E7DEF70029299C003929E7002929C60010107B000000080052738C00739C
      B5005AA5AD00529CAD004A9CB5006394B500429CAD00399CAD003994B5000008
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000BDBDBD000000
      00000000FF0000000000FF00000000000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B00E7EFE700A594A5008C84
      8C00949C94009C9C9C00A594A500848484007B847B00CECECE009C8C9C00948C
      9400DEDEDE008C8CA50021109C003939E7002931CE0010187B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD000000000000000000FF0000000000000000000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B00F7F7F700D6CED600DEDE
      DE00E7E7E700E7DEDE00F7EFF700F7EFEF00E7EFE700CED6CE00E7DEDE00DED6
      D600E7E7E700E7E7E700B5B5CE002921A5003931E7002129C60010107B000000
      0800101010000000000000000000000000000000000000000000000000000000
      0000424231003939290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF000000000000FFFF0000000000BDBDBD0000FFFF0000000000BDBDBD00BDBD
      BD00BDBDBD00000000007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000BDBDBD0000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B0000000000EFE7EF00EFEF
      EF00F7F7F700EFEFEF00FFF7FF00F7F7F700F7F7F700E7E7E700F7EFEF00EFEF
      EF00F7F7F700F7F7F700EFEFEF00E7E7F7001810A5003929EF005252CE005252
      5A0021212100F7F7F70000000000000000000000000000000000292929005252
      420084846B00AD9C9C004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF00BDBDBD0000FFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00000000007B7B7B007B7B7B007B7B7B00000000000000
      00000000000000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B00EFEFEF00CEBDCE00BDB5
      BD00D6DED600ADADAD00B5A5B500A5A59C00ADB5AD00C6C6C600B5ADB500EFEF
      EF0000000000000000000000000000000000DED6EF0029299C00D6D6C600D6D6
      AD00635A52000000000000000000000000000000000000000000292921006363
      5200BDB5AD00CECECE00F7EFF700181818000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000BDBDBD0000FFFF00BDBDBD0000FFFF000000
      0000BDBDBD00BDBDBD00BDBDBD00000000007B7B7B007B7B7B00000000000000
      00000000000000000000FF000000FF000000FF000000FF00000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B0000000000000000009C9C
      94007B8C7B00B5ADB500BDBDBD00D6CECE008C8C8400BDB5BD0094849400D6CE
      D600ADADAD00DED6DE00EFDEEF000000000000000000635A6B0063636300E7E7
      C600D6D6B5006363520000000000000000000000000042424200292921006363
      5200D6CEC6000000000094948C00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF0000000000BDBDBD00BDBDBD00BDBDBD00000000007B7B7B00000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000000000006B6B6B00DEE7DE00DEDEDE00DEDE
      DE00E7EFE700D6D6D600CEC6CE00DEDEDE00CECECE00EFE7EF00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600DEDEDE00DEDEDE00FFFFF700424A52004A4A4A002929
      2900CED6CE00CECEBD00636352000000000010101000212118009C9C9C00BDBD
      BD00393931003931310021211800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD000000000000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF0000000000BDBDBD00BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000FF000000FF000000FF000000000000006B6B6B00F7F7F700F7F7F700F7F7
      F700F7FFF700F7F7F700F7EFF700F7F7F700F7F7F70000000000F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700000000004A4A52004A4A4A000000
      000021212100E7E7CE00DED6D6006363520029292100A59C9C00BDBDBD00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD00BDBDBD000000000000FFFF00BDBDBD0000FF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000FF000000FF000000000000006B6B6B00EFF7EF00ADA5AD00B5AD
      B500CED6CE00D6D6D600BDADBD00C6C6C600B5BDB500B5B5B500DECED600B5AD
      B500CECEC600BDBDB500DED6DE000000000000000000424A52004A4A4A000000
      000000000000292929008C8C7B0042423900A59C9400BDBDBD00181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD000000000000FFFF00BDBD
      BD0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0000000000FF000000000000006B6B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000395252004A4A4A000000
      0000000000000000000039393100ADAD9C00DEDEDE00ADA5AD00393929000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD000000000000FF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000006B6B6B00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0052525A00292929000000
      00000000000042423100C6B5AD00B5B5B500CECECE0000000000212118000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      520031312900AD9C9C00A5A5A5000000000039393900F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008080800080808005A5A5A009C9C
      9400BDBDBD008484840000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000001818180010101000736B73001010
      1000525252000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00C107181FFFC0000F0000000000000000
      0003080FFFC0000F000000000000000000000007FFC0000F0000000000000000
      000000038FC0000F00000000000000000000000107C0000F0000000000000000
      0000000003C0000F00000000000000000000000001C0000F0000000000000000
      0000000080C0000F000000000000000000000000C040000F0000000000000000
      00000000E000000F0000000000000000000000000000000F0000000000000000
      000000000000000F0000000000000000000000007C01800F0000000000000000
      000000007C00800F0000000000000000000000000000000F0000000000000000
      000000000000000F0000000000000000000000000000000F0000000000000000
      000000000000000F0000000000000000000000007000000F0000000000000000
      0000000000001FF7000000000000000000000000000007C10000000000000000
      00000000400003C1000000000000000000001000000F03C00000000000000000
      0000180060018184000000000000000080001800000000010000000000000000
      C0001C000040900F0000000000000000E0001E000001981F0000000000000000
      F003FF007FFF9C1F0000000000000000F803FF800000105F0000000000000000
      FC03FFC0FFFFE13F0000000000000000FF03FFFFFFFF03FF0000000000000000
      FF83FFFFFFFE07FF000000000000000000000000000000000000000000000000
      000000000000}
  end
  object qryImageList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM IMAGELIST')
    Left = 568
    Top = 239
  end
  object qrySettingDelete: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'DELETE '
      'FROM SETTINGS '
      'WHERE EMP = :Emp'
      '  AND OWNER = :Owner'
      '  AND ITEM = :Item')
    Left = 121
    Top = 405
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Owner'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Item'
        Value = nil
      end>
  end
  object qrySettingLoad: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT VALUE,INTVALUE'
      'FROM SETTINGS '
      'WHERE EMP = :Emp'
      '  AND OWNER = :Owner'
      '  AND ITEM = :Item')
    Left = 210
    Top = 350
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Owner'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Item'
        Value = nil
      end>
    object qrySettingLoadVALUE: TStringField
      FieldName = 'VALUE'
      Size = 400
    end
    object qrySettingLoadINTVALUE: TLargeintField
      FieldName = 'INTVALUE'
    end
  end
  object qryEmpTypeSecurityWAN: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT ENABLED,ITEM'
      'FROM EMPTYPESECURITY'
      'WHERE EMPTYPE = :EmpType')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 300
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EmpType'
        Value = nil
      end>
  end
  object qrySql: TUniQuery
    Connection = uniInsight
    Left = 32
    Top = 183
  end
  object qryAllSettings: TUniQuery
    Connection = uniInsight
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 32
    Top = 239
  end
  object qryConstraint: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT *'
      'FROM USER_CONS_COLUMNS COLS,USER_CONSTRAINTS CONS'
      'WHERE CONS.CONSTRAINT_NAME = COLS.CONSTRAINT_NAME'
      'AND CONS.CONSTRAINT_NAME = :CON')
    Left = 210
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CON'
        Value = nil
      end>
  end
  object qryRConstraint: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT *'
      'FROM USER_CONS_COLUMNS COLS,USER_CONSTRAINTS CONS'
      'WHERE CONS.CONSTRAINT_NAME = COLS.CONSTRAINT_NAME'
      'AND CONS.CONSTRAINT_NAME = :R_CONSTRAINT_NAME')
    MasterSource = dsConstraint
    Left = 568
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'R_CONSTRAINT_NAME'
        Value = nil
      end>
  end
  object dsConstraint: TUniDataSource
    DataSet = qryConstraint
    Left = 210
    Top = 128
  end
  object SmartQuery1: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT O.*, O.ROWID '
      'FROM OPENLIST O '
      'WHERE O.AUTHOR = :P_Author '
      '  AND O."TYPE" = :P_Type '
      'ORDER BY O.IDX')
    Left = 568
    Top = 15
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
  object qryNew: TUniQuery
    Connection = uniInsight
    Left = 300
    Top = 183
  end
  object dsImage: TUniDataSource
    DataSet = qryImage
    Left = 210
    Top = 239
  end
  object qryImage: TUniQuery
    Connection = uniInsight
    Left = 210
    Top = 183
  end
  object qryTmp2: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM FEE')
    Left = 300
    Top = 350
  end
  object qryEntityLockDate: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT LOCKDATE '
      'FROM ENTITY '
      'WHERE CODE = :Entity')
    ReadOnly = True
    Left = 297
    Top = 410
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Entity'
        Value = nil
      end>
  end
  object qryMSearch: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'SELECT '#39'P'#39' as PARENT, FILEID, TITLE, SHORTDESCR, LONGDESCR, NMAT' +
        'TER, M.PARTNER,'
      
        'AUTHOR, M.TYPE "TYPE_DESC",M.TYPE, CLIENTID, ARCHIVENUM, nvl(M.S' +
        'TATUS,0) as STATUS, '
      'nvl(JURISDICTION,0) as JURISDICTION, nvl(SUBTYPE,0) as SUBTYPE,'
      
        'MS.DESCR AS MATTERSTATUS2, ACCT, '#39'DEBTORSTATUS'#39' "DESCRIPTION", 0' +
        ' "ROW_COLOUR",'
      
        'archivereview, archivedest, archvlocn, archivebox, m.dummy, M.RE' +
        'STRICT_ACCESS, m.nname'
      
        ', getwipamount(nmatter) as wip, getDebtorsAmount(nmatter) as deb' +
        'tors, getClearedTrust(nmatter) as trust, m.nname, 0 as bill_amou' +
        'nt,'
      'm.controller'
      'FROM MATTER M, MATTERSTATUS MS'
      'WHERE M.STATUS = MS.CODE'
      'and m.entity = :entity'
      'ORDER BY TITLE, SHORTDESCR, FILEID')
    Left = 390
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object qryCheqReqs: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select'
      '  payee, descr, reqdate, taxcode, amount, tax, forcepay, rowid'
      'from'
      '  cheqreq'
      'where'
      '  nmemo = :BillNo')
    Left = 472
    Top = 453
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BillNo'
        Value = nil
      end>
  end
  object dsCheqReqs: TUniDataSource
    DataSet = qryCheqReqs
    Left = 548
    Top = 411
  end
  object qryClient: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID FROM CLIENT C WHERE C.SEARCH = :P_Search')
    CachedUpdates = True
    Left = 348
    Top = 632
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Search'
        Value = nil
      end>
  end
  object dsClients: TUniDataSource
    DataSet = qryClient
    Left = 711
    Top = 619
  end
  object qryDocReg: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT D.*, D.ROWID FROM DOCREG D'
      'WHERE NCLIENT = :NCLIENT')
    Options.FullRefresh = True
    Left = 198
    Top = 547
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
    object qryDocRegNCLIENT: TFloatField
      FieldName = 'NCLIENT'
    end
    object qryDocRegPACKETID: TStringField
      FieldName = 'PACKETID'
      Required = True
    end
    object qryDocRegLODGED: TDateTimeField
      FieldName = 'LODGED'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qryDocRegDESCR: TStringField
      FieldName = 'DESCR'
      Size = 500
    end
    object qryDocRegADDRESS_PATH: TStringField
      FieldName = 'ADDRESS_PATH'
      Size = 255
    end
    object qryDocRegSENT: TDateTimeField
      FieldName = 'SENT'
    end
    object qryDocRegLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 400
    end
    object qryDocRegREVIEWDATE: TDateTimeField
      FieldName = 'REVIEWDATE'
    end
    object qryDocRegROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qryDocRegNDOCREG: TFloatField
      FieldName = 'NDOCREG'
      Required = True
    end
  end
  object dsDocReg: TUniDataSource
    DataSet = qryDocReg
    Left = 203
    Top = 608
  end
  object qryDocReg2: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'SELECT D.PACKETID,to_number(D.ENVELOPE) as ENVELOPE,D.NCLIENT,D.' +
        'LODGED,'
      '  D.DESCR,D.SENT,D.LOCATION,D.REVIEWDATE,D.DATE_RELEASED,'
      '  D.RELEASED_TO,D.DATE_RETURNED,D.NDOCUMENT,'
      '  DT.DESCRIPTION'
      'FROM DOCREGITEM D,'
      ' DOCUMENT_TYPE DT'
      'WHERE NCLIENT = :NCLIENT'
      'AND NDOCREG = :NDOCREG '
      '  AND D.DOCUMENT_TYPE = DT.DOCUMENT_TYPE(+)'
      'order by 2')
    MasterSource = dsDocReg
    MasterFields = 'NDOCREG ;nclient'
    Left = 31
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NDOCREG'
        Value = nil
      end>
    object qryDocReg2PACKETID: TStringField
      FieldName = 'PACKETID'
    end
    object qryDocReg2ENVELOPE: TFloatField
      FieldName = 'ENVELOPE'
    end
    object qryDocReg2NCLIENT: TFloatField
      FieldName = 'NCLIENT'
    end
    object qryDocReg2LODGED: TDateTimeField
      FieldName = 'LODGED'
    end
    object qryDocReg2DESCR: TStringField
      FieldName = 'DESCR'
      Size = 400
    end
    object qryDocReg2SENT: TDateTimeField
      FieldName = 'SENT'
    end
    object qryDocReg2LOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 120
    end
    object qryDocReg2REVIEWDATE: TDateTimeField
      FieldName = 'REVIEWDATE'
    end
    object qryDocReg2DATE_RELEASED: TDateTimeField
      FieldName = 'DATE_RELEASED'
    end
    object qryDocReg2RELEASED_TO: TStringField
      FieldName = 'RELEASED_TO'
      Size = 50
    end
    object qryDocReg2DATE_RETURNED: TDateTimeField
      FieldName = 'DATE_RETURNED'
    end
    object qryDocReg2NDOCUMENT: TFloatField
      FieldName = 'NDOCUMENT'
      Required = True
    end
    object qryDocReg2DESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
  end
  object dsDocReg2: TDataSource
    DataSet = qryDocReg2
    Left = 124
    Top = 610
  end
  object procDocRegPacketId: TUniStoredProc
    StoredProcName = 'GET_DOCREG_SEQUENCE'
    SQL.Strings = (
      'begin'
      '  :RESULT := GET_DOCREG_SEQUENCE;'
      'end;')
    Connection = uniInsight
    Left = 524
    Top = 499
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end>
    CommandStoredProcName = 'GET_DOCREG_SEQUENCE'
  end
  object procDocGetEnvelopeId: TUniStoredProc
    StoredProcName = 'GET_ENVELOPEID'
    Connection = uniInsight
    Left = 580
    Top = 548
    CommandStoredProcName = 'GET_ENVELOPEID'
  end
  object dsEntity: TUniDataSource
    DataSet = qryEntity
    Left = 36
    Top = 533
  end
  object qryEntityBank: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select * from bank'
      'where '
      'entity = :entity'
      'and trust in ('#39'G'#39','#39'T'#39', '#39'C'#39')')
    Left = 654
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsEntityBank: TUniDataSource
    DataSet = qryEntityBank
    Left = 632
    Top = 518
  end
  object qryEmplyeeList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select code, name'
      'from employee where active = '#39'Y'#39
      'order by name')
    Left = 664
    Top = 444
  end
  object dsEmplyeeList: TUniDataSource
    DataSet = qryEmplyeeList
    Left = 774
    Top = 546
  end
  object qryUserChangePassword: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'ALTER USER :USERNAME IDENTIFIED BY :U_PASSWORD')
    Left = 291
    Top = 513
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'U_PASSWORD'
        Value = nil
      end>
  end
  object procSettingSave: TUniStoredProc
    StoredProcName = 'SETTINGSAVE'
    Connection = uniInsight
    Left = 196
    Top = 291
    ParamData = <
      item
        DataType = ftString
        Name = 'P_EMP'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_OWNER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_ITEM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_VALUE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_INTVALUE'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'SETTINGSAVE'
  end
  object procAddUser: TUniStoredProc
    StoredProcName = 'ADD_AXIOM_USER'
    Connection = uniInsight
    Left = 794
    Top = 605
    ParamData = <
      item
        DataType = ftString
        Name = 'USERNAME'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'U_PASSWORD'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ADD_AXIOM_USER'
  end
  object procGetInstanceName: TUniStoredProc
    StoredProcName = 'GETINSTANCENAME'
    Connection = uniInsight
    SpecificOptions.Strings = (
      'Oracle.FieldsAsString=True')
    Left = 600
    Top = 598
    ParamData = <
      item
        DataType = ftString
        Name = 'RESULT'
        ParamType = ptResult
        Value = 'marketing'
      end>
    CommandStoredProcName = 'GETINSTANCENAME'
  end
  object qryGetLabelName: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'select getlabelname(:Class, :Name, :Entity) AS fieldname from du' +
        'al')
    Left = 474
    Top = 588
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Class'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Entity'
        Value = nil
      end>
    object qryGetLabelNameFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 4000
    end
  end
  object qryGetLabelNameByCode: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'select getlabelnamebycode(:Class, :Code, :Entity) AS fieldname f' +
        'rom dual')
    Left = 820
    Top = 234
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Class'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Entity'
        Value = nil
      end>
    object StringField1: TStringField
      FieldName = 'FIELDNAME'
      Size = 4000
    end
  end
  object osmAxiom: TUniSQLMonitor
    Active = False
    Options = [moSQLMonitor]
    OnSQL = osmAxiomSQL
    Left = 81
    Top = 15
  end
  object procAlterUser: TUniStoredProc
    StoredProcName = 'ALTER_AXIOM_USER'
    SQL.Strings = (
      'begin'
      '  ALTER_AXIOM_USER(:USERNAME, :U_PASSWORD);'
      'end;')
    Connection = uniInsight
    Left = 879
    Top = 599
    ParamData = <
      item
        DataType = ftString
        Name = 'USERNAME'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'U_PASSWORD'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ALTER_AXIOM_USER'
  end
  object ilstToolbar: TImageList
    Left = 629
    Top = 15
    Bitmap = {
      494C01012B002D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000B0000000010020000000000000B0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000000000000000000000000000
      0000000000030000000B00000013000000190000001A000000140000000B0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF3147
      9CB82638798F4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2536
      758A31479CB84463D8FF4463D8FF4463D8FF0000000000000000000000000000
      00060402011C4827118B7C431ED2A65927FFA55927FF7E441ED442230F7B0100
      000F0000000E0000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF31479CB80203
      0809000000002536778C4463D8FF4463D8FF4463D8FF4463D8FF243573880000
      00000203070831479CB84463D8FF4463D8FF000000000000000000000005120A
      05348A4F26DDC58A53FFDCB37CFFEFD298FFEFD198FFB67643FF2E1A0C621009
      04398F5127E10E05013A00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF233370840000
      000000000000000000002536778C4463D8FF4463D8FF24357388000000000000
      000000000000233471854463D8FF4463D8FF0000000000000002040201198D55
      2BDCD1A169FFF1D6A5FFCE9E6EFFC08656FFBD8251FF613A1DA6000000227D4B
      26CBE2B97BFF5F290FCF01010019000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000004463D8FF4463D8FF4463D8FF2232
      6C800000000000000000000000002536778C2435738800000000000000000000
      000022326D814463D8FF4463D8FF4463D8FF00000000000000074C2F1B82C997
      65FFECD2A3FFB98154FB5238238A120C07300F0A0627020101194C2F1B88CE9D
      66FFF6DC9BFFBA8657FF3F1C0C910000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000008484840000000000000000004463D8FF4463D8FF4463D8FF4463
      D8FF22326C800000000000000000000000000000000000000000000000002232
      6D814463D8FF4463D8FF4463D8FF4463D8FF000000000000000A8C5B36D0E3C5
      98FFCB9D75FF573B258C0000000C000000030000000620140C43BD875AFBF8E5
      BCFFF8DFA5FFF7E4BAFFA16540FC1C0E074C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000004463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF22326C800000000000000000000000000000000022326D814463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000000800000014B37A4BFAF5E6
      BDFFBC8356FF0D0704300000000C000000030000000796663FD5B87D4DFFBB81
      53FFF2D9A1FFB87D4DFFB87C4DFF9C6941DE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000004463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF24357388000000000000000000000000000000002536768B4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF845331D3A2633BFFBB8557FFF6E7
      BFFFBF8B5EFFA06238FF87522FDC00000006000000020000000B0D08042FA165
      3CFFF4DEAEFFB68155FA000000180000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000004463D8FF4463D8FF4463D8FF4463
      D8FF243573880000000000000000000000000000000000000000000000002536
      768B4463D8FF4463D8FF4463D8FF4463D8FF1F170F34C79D75FBFBF5DCFFFCF3
      CCFFFAF4DAFFB3855FFB21150C41000000040000000200000009492C1886BA8B
      5EFFE7CEA7FF926B48CB00000009000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000004463D8FF4463D8FF4463D8FF2435
      738800000000000000000000000022326D8122326C8000000000000000000000
      00002536768B4463D8FF4463D8FF4463D8FF0000000455402D77DDC1A2FFFDF7
      D9FFD4B598FF5037227F0202010C0D08041F110A05274B2D1986A1683EFAF3E4
      C3FFD8B692FF533F2C7800000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000848484000000000000000000000000004463D8FF4463D8FF2536758A0000
      0000000000000000000023326E824463D8FF4463D8FF22326C80000000000000
      0000000000002637778D4463D8FF4463D8FF00000000000000058F6F50BCEFE1
      CDFF886343C20202010D58382091A3693CFFA66F43FFBE946DFFF4E9D1FFE3CA
      ADFFA47E5BD60504030E00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF2F4597B20202
      05060000000023326E824463D8FF4463D8FF4463D8FF4463D8FF22326C800000
      0000020205062F4596B14463D8FF4463D8FF0000000000000001130F0B1DAB88
      63DA18130E242C1E1248B78B63FDF8F3E2FFF9F3E4FFEDDEC7FFDCC1A1FFA381
      5ED215110C220000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF2F45
      97B2233471854463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2333
      70842F4597B24463D8FF4463D8FF4463D8FF0000000000000000000000010000
      00010101000342301E629A7B5CC2C6A078F9C6A078F9997B5DC3564634710504
      030A000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000000000000000000000000000
      0000000000000000000100000002000000020000000200000002000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600868686008686
      8600868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFECCC00A4A0A000868686005555
      5500555555005555550086868600868686008686860086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCCCC00F0CAA600F0CAA600F0CA
      A600F0CAA6009999660099666600868686005555550055555500868686008686
      8600868686008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFECCC00F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA60099996600996666008686
      8600555555005555550086868600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFECCC00F0CAA600F0CAA600F0CA
      A600FFFFCC00F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA6009966660086868600000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF0000000000000000000000000000000000FFECCC00FFFFCC00FFFFCC00F0CA
      A600FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00F0CAA600F0CAA600F0CA
      A600F0CAA6009999660086868600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF00000000000000000000000000FFECCC00FFFFCC00FFFFCC00FFFF
      CC00FFECCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00F0CA
      A600F0CAA6009999660086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF0000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF000000000000000000FFECCC00FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFECCC000000000000000000FFFFCC00FFFFCC00FFECCC00F0CA
      A600F0CAA600A4A0A00086868600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFECCC00FFFFCC00FFFFCC00FFFF
      CC0099CCCC0099CCFF0099CCCC00FFECCC00FFECCC00FFECCC00FFFFCC00FFFF
      CC00FFFFCC00B2B2B20086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF00000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000FFECCC00FFFFCC0099CCCC00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF0099FFFF0099CCFF0099CCFF00C0C0C000FFFF
      CC00FFFFCC00B2B2B2008686860000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000000000000000000000000000000000FFECCC0099CCCC0099CCFF000000
      00000000000000000000F0FBFF00F0FBFF00F0FBFF00F0FBFF0099FFFF00C0C0
      C000FFFFCC00B2B2B2008686860000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFECCC0099CCFF000000
      000000000000000000000000000099CCFF0099CCFF0099CCCC0099CCCC0066CC
      FF0099CCCC00B2B2B200A4A0A00000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0FBFF0099CC
      FF0099CCFF0066CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CC
      CC009999CC00A4A0A0000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0FB
      FF0099FFFF0099FFFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CC
      CC00C0C0C000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0FBFF0099FFFF0099FFFF0099CCFF0099CCFF0099CCFF0099CCCC00C0C0
      C00000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0FBFF0099CCCC0099CCCC0099CCCC00F0FBFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300E7E7
      E700F2F2F2000000000000000000000000000000000000000000000000000000
      000000000000F5F5F500E9E9E900000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F7F7F700F2F2
      F200F6F6F600FCFCFC0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300B0B0B0006E6E
      6E009B9B9B00EFEFEF000000000000000000000000000000000000000000FEFE
      FE00E4E4E400A7A7A70090909000E9E9E9000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000FBF6F600F1E3E300EFDEDE00EFDE
      DE00EFDEDE00EFDFCE00E1D1D100E1D1D100E1D1D100E1D1D100E1D1D100E1D1
      D100E1D1D100E8DDDE000000000000000000F9F9F900E2E2E200C4C4C400B6B6
      B600BEBEBE00D1D1D100E3E3E300F2F2F200FCFCFC0000000000000000000000
      00000000000000000000000000000000000000000000907CEB002900DF003E28
      A50065656500C9C9C900FCFCFC00000000000000000000000000FCFCFC00D5D5
      D5006150B2002D07D800A7A7A700F5F5F5000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000E9D4D600DCB4A900EED1BE00ECC4
      AD00F1C69100F2BB7400E2977400DD8F6A00D6926800C9936900C9936900CC86
      6C00BD6E5800B18677000000000000000000E9E9E9009099B300586B9700535E
      7B0068696C007D7D7D0097979700B6B6B600D2D2D200E6E6E600F5F5F500FEFE
      FE000000000000000000000000000000000000000000BBAFF4002900DF00300A
      DB00524E69007F7F7F00DDDDDD000000000000000000FCFCFC00C7C5D2004529
      C2002900DF007C6BCD00F0F0F000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000ECD9DA00E2C2B700EFE5E300FCFF
      FF00F6F7F400FAF4E400FFF3D100FDE6C000FAD5AD00FFCF9E00FFCF9E00F5C8
      9800D9905F00BD82820000000000000000007FA2DD002F7AEF003487F60050AC
      F9003E81D200355BA5004450720065666800808080009D9D9D00BEBEBE00DDDD
      DD00F5F5F500FEFEFE00000000000000000000000000000000008670ED002900
      DF003C1CD1005F5F5F0094949400E1E1E100FCFCFC00C7C5D2003918CD002D07
      D800A39CC500F6F6F60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000EAD5D600ECE2E000EECECC00EDD8
      DA0000000000F7F9FC00F4F2EF00FAF0DD00FEECCE00FAE3C100EECBA600DBA7
      7C00F7B26C00BB868200000000000000000068A5E60059BAFE0050AFFC004BAB
      FE004CAFFF0052B6FF004FA9F8004381CC0038579C004E5469006C6C6D009B9B
      9B00DBDBDB00FCFCFC0000000000000000000000000000000000000000007960
      EB002900DF005138C2006464640092929200B6B4C1003918CD002D07D800A39C
      C500F6F6F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000EAD4D400F0E2E300FEFFFF00ECC4
      B700EBD7D500000000000000000000000000F7F6F200F6DDC400DAA48900F8D9
      B200F5C99A00B9907F0000000000000000007BB8E70065C4FC003F9BFB004C9B
      EB005093DA004E9BE3004FB2FF0058C2FF005DC0FF0056AFF1003B6BBB006B6F
      7900C9C9C900FBFBFB0000000000000000000000000000000000000000000000
      00007960EB002900DF005037C20052505D003312C7002C06D600A39CC500F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000EAD2D200F4E5E600F8F3EB00F7EB
      DA00E6DAD800E9C2B300E6C6BB00E6C6BB00E2B8B100DBBAA700E6DADF00F3DD
      C900FEE3BE00C0989200000000000000000056A4ED003588F8002785FF006984
      AF00DB935600CF8B4B00937059005D99CA0052B5FE005DD0FF004399F3005A60
      7100B3B3B300ECECEC00FCFCFC00000000000000000000000000000000000000
      000000000000785FE9002900DF002C06D6002B05D5006A628B00DADADA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000EBE0E200E9E6E800F5F1E800F7F9
      FA00F0F3F300E5E3E100DAD3D500DAD3D500E0DADA00EFF0EF00F1F5F600E6E3
      E500DECABB00D0A79400FEFFFF00FEFFFF0062AFED00368AF7002981F800378D
      F70089899C00F3C48900FCAE5E00DA843300A46C4000897C6D005076B500514F
      55007F7F7F00B6B6B600E3E3E300FBFBFB000000000000000000000000000000
      0000FCFCFC00C7C5D2002E08D9002900DF00472BC3007474740091919100D5D5
      D500F9F9F9000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000F2EDE300A79C9700B59CA200EEE6
      E600FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFAF100F0F3
      EF0067B1F500A196A500FFFFFD00FFFFFD0062B6F2003387F700287EF8002E80
      F6002F81F6004B87D60099969C00E8BF8E00FCB76F00EC954100CF721C00984A
      100064473A0077757500BCBCBC00F1F1F100000000000000000000000000FCFC
      FC00C7C5D2003918CD002D07D800705CCB00350FDF00593DD5007C7A88008585
      8500C3C3C300F3F3F30000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000A4936900A48A7700A7896F00AE94
      9300D6EAFF00AEE2FF00A6E5FF0094E5FF008AE2FF0088CCFF0089BFF90064B2
      FC00189CFF00858BAE00FFFFFC00FFFFFC0062B8F40046A0FA00308BFA002676
      F40052A6F90052AAF9003C96FA00458BDC00A7999100FED49800FCCB9100F1AE
      6400E29A54008F6C5500BABABA00F1F1F1000000000000000000F9F9F900C7C5
      D2003918CD002900DF008A80B800F0F0F000D6CFF800431FE2004928DD007972
      9C007C7C7C00B3B3B300F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097987600A39F870099858100A392
      9400B1E5FF007DCDFF0072C1FF0059C6FF003EC7FF0031C5FF001DBEFF001A9B
      FD005C83B200E1CAC70000000000000000007AD6F70063C5FD00318DFB001A6D
      F3009BD4FA00FCFFF000D8F2EA00AEDCE6004B85CF00B9744200E2944500F3C6
      8500FBEAC400BB998300E1E1E100FAFAFA0000000000FBFBFB00BBB9C7003817
      CC002900DF007263B600EAEAEA000000000000000000F1EFFC005E40E700340E
      DE007B6EB30089898900DBDBDB00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BC989A00BDBBB100AAAB9500A79B
      8E00D2F3FB00BDFBFF00A7E9FF009AD4FF0085C8FF0070D1FF0057C4E900929F
      A200E7D4CC000000000000000000000000006AC8F9003287F700257FF9001D6C
      F20066B2FB00A6DEFB00D1F0F000FFFFDC00BEE9E6004792E5005F6DA0006E58
      5B00B99F8C00ECE8E700FBFBFB000000000000000000C5BEE7003817CC002900
      DF005A46B500E3E3E3000000000000000000000000000000000000000000937F
      EE002900DF00CFCAE600FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5989000D0B7BA00C0B0B000B2B5
      9F00D8D7D900CAF8F800CFFFFF00C7FFFF00AFEFFF0095B7CD00B6A9A500FFF0
      EB00000000000000000000000000000000006CCCFC003E95F900358EFB002571
      F3001967F200166AF300287EF6004899F60053A5F7003A91F9002F70DF00686D
      7E00C8C8C800FAFAFA00000000000000000000000000411DDF002900DF004529
      C200D5D5D500FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9EBDF00C8B4AF00E4DAD700C4B1
      AF00FBF0EF00DACFC700CAE3E400CBF3F300B1B6BD00DBC4B900FFFDFB000000
      00000000000000000000000000000000000078D2F7008DC4F300C7EAFD00B7E2
      FE0093CBFC0073B6FB00509BFA003281F6002E80F700378FFB002D71E6008E93
      A300DADADA00FCFCFC000000000000000000000000003610E1004D2CE100DFDD
      EB00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7DACB00BBB49C00DFD1
      CF0000000000FFF8F800E6D5CE00D2BDBE00E1D6D50000000000000000000000
      000000000000000000000000000000000000CCD6F200B2C2EB008CA3E2006D8F
      DF0077A4E8007DB2ED007AB7F0008BD8FA0069B7F3003D76DD004672D700D0D3
      DE00F4F4F400FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F4FC00DBE1F500C3CEEF00A4B6E800A8B7E400F3F3F300FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF999900FF999900CC9999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF999900CC99
      9900FF9999000000000000000000000000000000000000000000000000000000
      0000000000000000000066666600666666006666990066669900666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000000
      0000000000000000000000000000FF999900FF999900CC99990000000000FF99
      9900CC999900FF99990000000000000000000000000000000000000000000000
      0000666699003366CC003333CC000033CC000033CC003366CC00666699006666
      6600666666000000000000000000000000000000000000000000000000000000
      000000000000CC330000CC330000CC6633000000000000000000000000000000
      0000000000000000000000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000000000FF999900CC9999000000
      0000FF999900CC99990000000000000000000000000000000000000000006666
      99000033FF000033FF000033FF000033FF000033FF000033FF000033CC003366
      9900666699006666990000000000000000000000000000000000000000000000
      0000CC330000CC660000FF663300CC3300000000000000000000000000000000
      00000000000000000000000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080000000000000000000000000000000
      0000555555005555550055555500666666000000000000000000FF999900CC99
      990000000000FF999900CC9999000000000000000000000000000033FF000033
      FF000033FF003333FF000033CC000033CC000033CC000033FF000033FF000033
      CC0033669900666666000000000000000000000000000000000000000000CC33
      0000CC663300FF99330000000000FF663300CC33000000000000000000000000
      00000000000000000000000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000005555
      550099999900B2B2B200B2B2B200C0C0C000555555000000000000000000FF99
      9900CC99990000000000FF9999000000000000000000000000000033FF000033
      FF000033FF00000000000000000000000000000000003333FF000033FF000033
      FF000033CC00666666006666990000000000000000000000000000000000FF66
      3300FF996600000000000000000000000000FF663300CC330000000000000000
      00000000000000000000000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060000000000000000000555555008080
      8000B2B2B200C0C0C000CCCCCC00B2B2B200C0C0C00055555500000000000000
      0000FF99990000000000FF99990000000000000000000033FF000033FF000033
      CC00000000000000000000000000000000003333FF000033FF000033FF000033
      FF000033FF006666990066666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF663300CC6633000000
      000000000000000000000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000806060000000000000000000555555006666
      66004D4D4D004D4D4D0099999900CCCCCC00B2B2B20086868600666666000000
      0000FF99990000000000FF99990000000000000000003333FF000033FF000033
      CC000000000000000000000000003333FF000033FF003333FF00000000000033
      CC000033FF003366CC0066669900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF663300CC66
      6600000000000000000000000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C00080606000000000000000000066666600555555004D4D
      4D0077777700996666005F5F5F00B2B2B200C0C0C000B2B2B200555555000000
      000000000000000000000000000000000000000000000033FF000033FF000033
      CC0000000000000000003333FF000033FF003333FF0000000000000000000033
      CC000033FF006666CC0066669900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF66
      3300000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      8000806060008060600000000000000000006633330086868600424242007777
      770086868600808080009966660055555500C0C0C000B2B2B200555555000000
      000000000000000000000000000000000000000000000033FF000033FF000033
      CC00000000003333FF000033FF003333FF000000000000000000000000000033
      CC000033FF006666CC000000000000000000000000001C1C1C00000000001C1C
      1C009999990000000000393939001616160000000000999999001C1C1C001616
      1600FF6633000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      00000000000000000000000000000000000066333300C0C0C000393939008686
      8600C0C0C000999999007777770055555500B2B2B200A4A0A000555555000000
      000000000000000000000000000000000000000000000033FF000033FF000033
      FF003333FF000033FF003333FF00000000000000000000000000000000000033
      FF000033FF006666990000000000000000000000000039393900C0C0C0000000
      0000000000000000000000000000B2B2B2000000000029292900000000000000
      000000000000CC6633000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      00000000000000000000000000000000000066333300F1F1F1004D4D4D004D4D
      4D0000000000C0C0C00077777700666666009696960096969600555555000000
      00000000000000000000000000000000000000000000000000000033FF000033
      FF000033FF000033FF00000000000000000000000000000000003333FF000033
      FF000033FF000000000000000000000000000000000000000000000000008686
      86000000000000000000C0C0C00016161600000000004D4D4D00000000000000
      00000000000000000000FF99660000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      00000000000000000000000000000000000066333300CC999900CCCCCC003939
      39004D4D4D006666660055555500666666008080800086868600666666000000
      00000000000000000000000000000000000000000000000000000033FF000033
      FF000033FF000033CC000033CC000033CC000033CC000033FF000033FF000033
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C0001C1C1C00000000004D4D4D00B2B2B2004D4D
      4D00000000000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000066333300663333004D4D
      4D003939390042424200555555005F5F5F006666660055555500000000000000
      0000000000000000000000000000000000000000000000000000000000000033
      FF000033FF000033FF000033FF000033FF000033FF000033FF000033FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006666660033333300393939004D4D4D005F5F5F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000033FF000033FF000033FF000033FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006699000066
      990000669900006699000066990000669900000000006699CC006699FF006699
      FF006699FF003333990033339900333399006699CC00339999003399CC003399
      9900336699003366990033999900006666000000000016161600000000002222
      2200424242000000000080800000808000008080000080800000808000008080
      0000808000008080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF00006699008000000099CCFF006699FF006699
      FF006699FF0033339900333399003333990033CCFF003399CC003399CC003399
      CC0033669900336699003399CC00006666000000000004040400C0C0C0000404
      040099999900FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00FFFFFF00FFFFFF0066660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066CCFF00F0FBFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF0066CCFF00006699008000000099CCFF006699FF006699
      FF006699FF0033339900333399003333990066CCFF003399CC003399CC003399
      CC0033669900336699003399CC00006666000000000004040400B2B2B2000C0C
      0C0099666600CCCC330099993300CC9933009999330099993300CC9933009999
      330080800000FFFFFF0066660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066CCFF00F0FBFF00F0FB
      FF00CCFFFF0066CCCC003399CC0033669900336699003366CC006699CC00CCFF
      FF00CCFFFF00CCFFFF0066CCFF00006699008000000099CCFF006699FF0099CC
      FF006699FF006699FF00333399003333990066CCFF003399CC0033CCFF003399
      CC003399CC003366990033CCFF00006666000000000004040400C0C0C0000C0C
      0C0086868600FFFFCC00FFECCC00F0CAA600FFECCC00FFECCC00FFECCC00FFEC
      CC00CC993300CCFFFF0066660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000099CC0066CCFF00F0FBFF00F0FB
      FF006699CC003366CC0066CCCC0066CCFF0066CCFF006699CC003366CC003399
      CC00CCFFFF00CCFFFF0066CCFF00006699008000000099CCFF0099CCFF0099CC
      FF006699FF006699FF00333399003333990066CCFF003399CC0033CCFF003399
      CC003399CC00336699003366990000666600000000000C0C0C005F5F5F000404
      040086868600FFCC990099993300333333000404040016161600040404009966
      330080800000FFFFFF0066660000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000099CC0099CCFF00F0FBFF0066CC
      CC003399CC0099CCFF0099FFFF0099FFFF0099FFFF0099CCFF0066CCFF003366
      CC006699CC00CCFFFF0066CCFF00006699008000000099CCFF0099CCFF0099CC
      FF006699FF006699FF00333399003333990066CCFF0066CCFF0033CCFF003399
      CC003399CC0033669900336699003366990099CCFF0066663300040404000000
      000099CCFF0066CCCC00FFFFFF00FFFFFF004242420004040400D6E7E700FFFF
      FF00F0FBFF00FFFFFF006666000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FF00
      0000C0C0C0000000000000000000000000000099CC0099CCFF00F0FBFF003399
      CC0099CCCC00CCFFFF00CCFFFF0099FFFF0099FFFF0099FFFF0099CCFF0066CC
      CC003366CC00CCFFFF0066CCFF00000000008000000099CCFF0099CCFF0099CC
      FF0099CCFF006699FF00333399003333990099CCFF0066CCFF0066CCFF0033CC
      FF003399CC003366990033669900777777006633330066333300CC6633006633
      00000C0C0C0099999900FFFFFF00FFFFFF00FFFFFF00C6D6EF00FFFFFF00F0FB
      FF00FFFFFF00FFFFFF006666000000000000C0C0C000C0C0C000C0C0C000FF00
      0000FF000000FF000000FF000000FF000000FF000000C0C0C000FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000003399CC0099CCFF00F0FBFF003399
      CC00D6E7E700F0FBFF00CCFFFF003399CC003399CC003399CC0099CCFF0066CC
      FF0000669900CCFFFF0066CCFF0000000000800000008000000099CCFF0099CC
      FF0099CCFF006699FF0033339900669999008000000099CCFF0066CCFF0033CC
      FF003399CC003399CC00669999006699CC003939390066663300CC6633006633
      00000C0C0C0077777700FFFFFF00CCCCCC00FFECCC00FFFFFF00D6E7E700F1F1
      F100D7D7D700FFFFFF006666000000000000FF00000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C000FF000000FF000000FF000000FF000000FF00
      000080808000FFFFFF0080808000000000003399CC0099CCFF00F0FBFF003399
      CC00D6E7E700F0FBFF00F0FBFF003399CC0099CCFF0099CCFF00CCFFFF0066CC
      FF0000669900CCFFFF0066CCFF000000000080000000FFECCC00996666008686
      8600666699006633660077777700FFCCCC009966660099666600868686006666
      99006633660077777700C0C0C000800000004242420066333300996633006633
      00000C0C0C0099663300CCCC990099996600FFCC9900CCCC6600996666009933
      000099330000CC99990080800000000000000000000000000000FF000000FF00
      0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FF000000C0C0
      C000FFFFFF0080808000FFFFFF00808080003399CC0099CCFF00F0FBFF0066CC
      CC00C6D6EF00F0FBFF00F0FBFF006699CC00CCFFFF00CCFFFF00CCFFFF0066CC
      CC003366CC00CCFFFF0066CCFF000000000080000000FFECCC00996666006699
      CC006699FF0033339900006666005F5F5F0099666600996666006699CC003399
      CC003366990000666600C0C0C000800000004242420099663300996633006633
      00003300000066333300F0CAA600CC999900CCFFCC009933000099333300CC33
      33006666000066330000CC00330000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000000000003399CC0099CCFF00FFFFFF00C6D6
      EF006699CC00CCFFFF00F0FBFF006699CC00CCFFFF00CCFFFF0099CCFF003399
      CC006699CC00CCFFFF0066CCFF000000000080000000800000008686860099CC
      FF006699FF0033339900006666005F5F5F00868686008686860033CCFF003399
      CC00336699000066660080000000800000006666330099663300CCCC66009966
      330033000000C6D6EF00FFFFFF00FFFFFF00CC999900CC330000FF663300FF66
      33009966330000CC000066660000996633000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000008080
      8000000000000000000000000000000000003399CC0099CCFF00FFFFFF00FFFF
      FF0099CCFF006699CC00C6D6EF0099CCFF00CCFFFF0099CCCC003399CC006699
      CC00CCFFFF00CCFFFF0066CCFF000000000080000000FFECCC009966660066CC
      CC006699FF0033999900006666005F5F5F00996666009966660066CCCC003399
      CC003399990000666600C0C0C000800000000000000066330000006666000033
      330000000000000000006666000066660000FF663300FF663300FF333300FF33
      330000FF000000FF000066990000993333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399FF0099CCFF00FFFFFF00FFFF
      FF00FFFFFF00C6D6EF0066CCCC003399CC003399CC003399CC0099CCCC00F0FB
      FF00F0FBFF00CCFFFF0066CCFF000000000080000000FFECCC00996666006699
      CC006699CC003399CC0066999900FFECCC0099666600996666006699CC006699
      CC003399CC0066999900C0C0C000800000000000000000000000333399003333
      000000000000000000000000000000000000FF993300FF993300CCCC330066CC
      3300CC993300FF663300FF333300996633000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399FF00C6D6EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF0066CCFF00000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000033669900CCFFFF003399
      FF0033330000000000000000000066990000CC993300FF99330033FF330066CC
      3300FF993300FF663300FF663300999933000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399FF00C6D6EF00C6D6EF0099CC
      FF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF000000000080000000FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC008000000000000000003333003399CC000033
      9900333300000000000000000000000000009966000099CC330000FF660033FF
      330033FF3300FF663300FF333300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399FF003399FF003399FF003399
      FF003399CC003399CC003399CC003399CC003399CC003399CC000099CC000099
      CC00000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000663300006666
      0000000000000000000000000000000000000000000000000000CC993300FF99
      6600FF996600CC99330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      7000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066333300666633006633
      3300666633006633330066333300663333006633330066333300993333006633
      3300993333006633330066663300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800042424200996633000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000333B3300A5A5A50073737300666666006666660073737300CCCCCC000000
      0000000000000000000000000000000000009999660099FFFF0099CCFF0099CC
      FF0099CCFF0066CCFF0099CCFF0066CCFF0099CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCCC0066333300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5F003939390099663300CC99
      6600000000000000000000000000000000000000000000000000000000000099
      000000600000337733000073000000990000007C0000004D0000333B33008080
      8000000000000000000000000000000000000000000099FFFF0099FFFF0099FF
      FF0099FFFF00F0FBFF0099FFFF0099FFFF009999660066333300663333006633
      33004D4D4D0066CCFF0099666600FFFFFF000000000000000000000000000000
      000000000000000000000000000000FF00000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006666330099663300CC66
      3300CC9966000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000007C0000333B
      3300A5A5A50000000000000000000000000099996600F0FBFF0099FFFF00F0FB
      FF0099FFFF0099FFFF0099FFFF0099FFFF00F0CAA600F0FBFF00FFECCC00C0DC
      C0006633330066CCFF0066333300FFFFFF000000000000000000000000000000
      0000000000000000000000FF000000FF00000080000000800000008000000080
      000000FF00000000000000000000000000006666660066666600666666006666
      660066666600666666006666660066666600000000000000000099663300CC66
      3300CC996600CC99660000000000000000000000000000000000000000000099
      0000009900000099000000990000109F100040B2400020A52000009900000073
      000040404000F2F2F20000000000000000000000000099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF00B2B2B200FFECCC00F0FBFF00FFEC
      CC006633330066CCFF0066333300FFFFFF000000000000000000000000000000
      000000FF00000000000000FF0000000000000000000000000000000000000000
      000000FF00000000000000000000000000006666660039393900393939003366
      330066663300666633006666330099663300CC99660000000000000000006666
      3300CC663300CC99660000000000000000000000000000000000000000000099
      00000099000000990000008F00003E3E3E00DFDFDF00000000009FD89F00109F
      100033593300B2B2B200000000000000000099996600F0FBFF0099FFFF00F0FB
      FF0099FFFF00F0FBFF0099FFFF0000000000FF996600F0CAA600FF996600FF99
      6600FF66330066CCFF0066663300FFFFFF0000000000000000000000000000FF
      000000FF0000000000000000000000FF00000080000000800000008000000080
      0000000000000000000000000000000000006666660039393900666633009966
      3300CC663300CC996600CC999900CC9999000000000000000000000000000000
      000099663300CC996600CC996600000000000000000000000000000000000099
      000000990000009900000099000000560000454545000000000000000000BFE5
      BF00006900007373730000000000000000009999660086868600663333006633
      330066333300663333000000000099FFFF00FF996600FF996600FF666600FF66
      66009966330066CCFF0066333300FFFFFF0000000000000000000000000000FF
      0000000000000000000000FF000000FF00000080000000800000008000000080
      000000FF0000000000000000000000000000666666003939390099663300CC66
      3300CC9966007777770000000000000000000000000000000000000000000000
      000042424200CC993300CC9966000000000000000000B2B2B200000000000099
      0000009900000099000000990000009900000099000030303000000000000000
      000060BF6000666D660000000000000000000000000099666600F0FBFF00FFEC
      CC00F0CAA6005555550099FFFF0099FFFF00F0FBFF0099FFFF0099FFFF0099FF
      FF00F0FBFF0066CCFF0066333300FFFFFF000000000000000000000000000000
      000000FF00000000000000FF0000000000000000000000000000000000000000
      000000FF0000000000000000000000000000666666003939390099663300CC99
      3300CC996600CC99660077777700000000000000000000000000000000000000
      00004D4D4D00CC663300CC9966000000000000000000334A3300B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF00A5C3A50000000000000000009999660099666600FFCCFF00F0FB
      FF00FFECCC0066333300F0FBFF0099FFFF0099FFFF00F0FBFF0099FFFF0099FF
      FF0099FFFF0066CCFF0066333300FFFFFF0000000000000000000000000000FF
      000000FF0000000000000000000000FF00000080000000800000008000000080
      0000000000000000000000000000000000006666660039393900CC663300CC99
      3300CC993300CC663300CC663300777777000000000000000000000000007777
      770042424200CC663300CC99660000000000000000001078100040404000F2F2
      F20000000000000000003789370013631300114B110011431100113411002435
      240000000000000000000000000000000000F0CAA60099666600F0CAA600FF99
      6600FF996600FF66330000000000F0FBFF009999660066333300663333004D4D
      4D006633330099CCFF0066333300FFFFFF0000000000000000000000000000FF
      0000000000000000000000FF000000FF00000080000000800000008000000080
      000000FF00000000000000000000000000006666660039393900CC9966000000
      0000CC663300CC663300CC663300996633009966330077777700666666004D4D
      4D0066663300CC996600CC996600000000000000000060BF6000004300005959
      5900E5E5E50000000000E5F4E500109F10000099000000990000009900001847
      18000000000000000000000000000000000000000000FF666600FF996600FF66
      66009966660099663300F0FBFF0000000000F0CAA600F0FBFF00FFECCC00FFCC
      CC006666330066CCFF0066663300FFFFFF000000000000000000000000000000
      000000FF00000000000000FF0000000000000000000000000000000000000000
      000000FF00000000000000000000000000006666660033663300CC9999000000
      000000000000CC663300CC663300CC663300CC66330099663300666633006666
      3300CC663300CC996600000000000000000000000000BFE5BF0000990000004D
      0000404040008080800099999900105210000099000000990000009900001545
      150000000000000000000000000000000000B2B2B200F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF0099FFFF00B2B2B200FFCCFF00FFFFCC00FFEC
      CC006633330099CCFF0066333300FFFFFF0000000000000000000000000000FF
      000000FF0000000000000000000000FF000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000006666660066663300F0CAA6000000
      0000000000000000000000000000CC663300CC663300CC663300CC663300CC99
      6600CC996600000000000000000000000000000000000000000050B950000099
      000000860000004D000000560000008F00000099000000990000009900001444
      140000000000000000000000000000000000F0CAA600FFFFFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00FF996600F0CAA600FF996600FF99
      66009966330099CCFF0066663300FFFFFF0000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC999900F0CAA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF8EF0030AC
      3000009900000099000000990000009900000099000000990000009900001645
      160000000000000000000000000000000000B2B2B200FFFFFF00F0FBFF00FFFF
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00FF996600FF66660099666600FF66
      66009966330099CCFF0066333300FFFFFF000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF8
      EF0060BF600000990000009900000099000030AC30007FCB7F00009900001947
      190000000000000000000000000000000000F0CAA600FFCCFF00F0FBFF00F0FB
      FF00FFCCFF00F0FBFF00F0FBFF00FFCCFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF0066333300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F003D74
      3D0000000000000000000000000000000000F0CAA600C0DCC000F0CAA600F0CA
      A600C0DCC000F0CAA600F0CAA600C0DCC000F0CAA600B2B2B200F0CAA600B2B2
      B200F0CAA60000000000F0CAA600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C3100CE9C3100CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000000000CE9C6300CE9C3100000000000000
      0000CE9C6300CE63310063633100636331006363310063633100636331000000
      0000000000000000000000000000000000000000000000000000AB4F4F00964F
      4C00AB4F4F00C6C4C600C6C4C600C6C4C600C6C4C600C6C4C600C4C4C400AB4F
      4F00AB4F4F00AB4F4F0000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000008484000084
      840000FFFF0000000000FFFFFF0000000000FF9C31009C633100000000000000
      000063633100CE633100CE9C3100FF9C3100FFCE6300CECE6300FF9C31006363
      31006363310000000000000000000000000000000000B5847400AB4F4F00CD67
      6400964F4C00C3A2A900C49C9400DCDADB00FFFCFF00E9EAE900DCDADB009636
      3500AB4F4F00CD676400964F4C000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000FFFF00008484000084840000FF
      FF0000000000FFFFFF000000000000000000FFCE31009C633100000000006363
      3100CE9C3100FF9C3100FF9C3100FF9C3100FF9C3100FFCE6300FFCE6300FFCE
      9C00CE63310063633100000000000000000000000000B5847400CD676400CD67
      6400964F4C00C3B5B400AB4F4F00C2907D00C4C4C400FFFCFF00E9EAE9009636
      3500AB4F4F00CD676400964F4C0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FFFF00008484000084840000FFFF000000
      0000FFFFFF0000FFFF000000000000000000CE9C6300CE9C310063633100FF9C
      3100FF9C3100CE9C3100CE9C31006363310063633100CE633100FFCE3100FFCE
      6300FFCE9C00CE633100000000000000000000000000B5847400CD676400CD67
      64009B4F5400DBCBC70096363500AB4F4F00AE837A00C6C4C600FFFCFF009636
      3500BC6B6D00CD676400964F4C0000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FFFF0000848400008484000000000000000000FFFF
      FF0000FFFF0000FFFF00000000000000000000000000FFCE3100FF9C3100FF9C
      3100CE9C3100CE9C31009C633100000000000000000000000000CE633100FF9C
      3100FFCE6300CECE6300CE6331000000000000000000B5847400CD676400CD67
      64009B4F5400DBCBC700DBCBC700DBCBC700C3B5B400C6C4C600DCDADB009636
      3500AB4F4F00CD676400964F4C00000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FF000000FF000000FF000000FF00
      0000FF00000000FFFF00008484000084840000FFFF000000000000000000FFFF
      FF0000FFFF0000000000000000000000000000000000CECE6300FFCE3100FF9C
      3100CE9C31009C63310063633100636331006363310063633100636331006363
      31006363310063633100636331000000000000000000B5847400CD676400CD67
      6400BC6B6D00C2907D00C2907D00C2907D00C2907D00BC6B6D00FF618300AB4F
      4F00CD676400CD676400964F4C00000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF0000000000FF000000FF000000FF000000FF00
      000000FFFF00008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000FFCE3100FF9C
      3100CE9C3100CE633100CE633100CE633100CE633100CE633100CE633100CE63
      3100CE633100CE633100CE6331000000000000000000B5847400CD676400CD67
      6400CD676400CD676400CD676400CD676400CD676400CD676400CD676400CD67
      6400CD676400CD676400964F4C00000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF0000000000FF000000FF000000FF000000FF00
      0000008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFCE
      3100FF9C3100CE9C3100CE9C3100CE9C3100CE9C3100CE9C3100CE9C3100FF9C
      3100FF9C3100FF9C3100CE6331000000000000000000B5847400CE676D00FF61
      8300FFA5AC00FFA5AC00FFA5AC00FFA5AC00FFA5AC00FFA5AC00FFA5AC00FF61
      8300AB4F4F00CE676D00964F4C00000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF0000000000FF00000000000000000000000084
      84000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF00
      00000000000000000000000000000000000000000000F7CEA50000000000FFCE
      3100FFCE3100CE9C3100633131000000000000000000CE633100CE9C3100FF9C
      3100FF9C3100FF9C3100CE6331000000000000000000B5847400CD676400964F
      4C00F6F3F600F6F3F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFA5
      AC00CD676400CE676D00964F4C00000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000084
      840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF00
      0000FF0000000000000000000000000000000000000000000000F7CEA5000000
      0000FFCE3100CE9C3100636331006331310063633100CE633100CE9C3100CE9C
      3100FF9C3100CE633100000000000000000000000000B5847400CE676D00AB4F
      4F00F6F3F600C6C4C600C6C4C600C6C4C600C6C4C600C6C4C600F6F3F600FFA5
      AC00AB4F4F00CE676D00964F4C0000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000CECE9C00CECE
      9C0000000000FFCE9C00CECE3100CE9C3100CE9C3100CE9C3100CE9C3100FF9C
      3100FF9C3100CE633100000000000000000000000000B5847400CE676D00AB4F
      4F00F6F3F600F6F3F600F6F3F600F6F3F600FFFFFF00FFFFFF00FFFFFF00FFA5
      AC00AB4F4F00CE676D00964F4C0000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000000000CECE
      9C00CECE9C00CECE6300CECE6300FFCE3100FFCE3100FF9C3100FF9C3100FF9C
      3100CE63310000000000CECE9C000000000000000000B5847400CE676D00964F
      4C00F6F3F600C6C4C600C6C4C600C6C4C600C6C4C600C6C4C600F6F3F600FFA5
      AC00BC6B6D00CE676D00964F4C000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000084848400C6C6C60000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000CECE9C00CECE9C00CECE9C00CECE6300FFCE3100CE633100CE63
      31000000000000000000CECE9C000000000000000000B5847400CE676D00AB4F
      4F00F6F3F600F6F3F600F6F3F600F6F3F600F6F3F600F6F3F600FFFFFF00FFA5
      AC00AB4F4F00CE676D00964F4C00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECE9C00CECE9C000000
      00000000000000000000CECE9C000000000000000000B5847400964F4C009636
      3500C6C4C600C6C4C600C6C4C600C6C4C600C6C4C600C6C4C600C6C4C600FF61
      830096363500964F4C0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C6000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      9C00CECE9C00CECE9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000070000000700000004000000070000000700000004000000070000
      0007000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000352A
      288A614D4AFF6B5955FF7A6865FF786865FF756460FF705D5AFF604D49FF5B47
      43FF332726870000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C48
      43EAAE9E95FFB5A69EFF9C887DFFBEB1AAFFBAACA5FF957F74FFB2A39AFFA999
      90FF574540E30000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006852
      4CFFD9CBC3FFD1C6BFFF9E8B81FFDFD3CDFFD5CAC3FF968277FFD9CBC3FFCCC0
      B8FF67514BFF0000000000000000000000000000FF0000000000000000000000
      00000000FF00000000000000000000000000000000000000FF00000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000006A55
      50FFD9CBC3FFD1C6BFFFA18E83FFDFD3CDFFD4CAC3FF9A867BFFD9CBC3FFCCC0
      B8FF69544FFF000000000000000000000000000000000000FF00000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      0000000000007B7B7B000000FF00000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006E59
      53FFD9CBC3FFD1C6BEFFA49188FFDED3CCFFD4C9C3FF9D897FFFD9CBC3FFCCC0
      B8FF6D5852FF000000000000000000000000000000007B7B7B000000FF007B7B
      7B000000FF0000000000000000000000000000000000000000007B7B7B000000
      FF007B7B7B000000FF0000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000000000000000725C
      56FFD8CBC3FFD1C5BEFFA6958BFFDED3CCFFD4C9C2FFA08D83FFD8CBC3FFCCC0
      B8FF715B55FF00000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000010000000100000003755F
      58FFD5C7BFFFCDC1BBFFA6968DFFDACFC8FFD0C5BFFFA19086FFD5C7BFFFC8BC
      B5FF745E57FF00000003000000010000000100000000000000000000FF000000
      FF00000000000000FF000000000000000000000000000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000100000003010101087460
      5AFFCDC0B9FFC5BAB3FFA6958DFFD3C8C1FFC8BEB8FFA08F85FFCCBFB7FFC0B5
      AEFF735F59FF010101090101010400000001000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001010101060202020E7662
      5BFFC1B6AFFFBAAFA9FFA3948DFFC6BBB5FFBDB3ADFF9E8F87FFC0B4ADFFB6AB
      A4FF76625BFF0202020F01010106000000020000FF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010101010669514BFF6A52
      4CFF6B534DFF6E5751FF725B56FF735D57FF725B56FF6E5751FF6B534DFF6A52
      4CFF69514BFF69514BFF01010106000000020000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000036B544DFFAB95
      88FFB29D91FFBFAEA4FFCEC0B9FFD3C8C1FFCEC0B9FFBFAEA4FFB29D91FFAB95
      88FFAA9386FF6B544DFF00000003000000010000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000000141332E97907E
      78FFB0A39FFFC5BBB8FFD2CAC8FFD6D0CDFFD2CAC8FFC7BEBBFFBAAFABFFAA9D
      98FF8D7A73FF40322E9500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000005543
      3EC46F5852FF8D7971FF8E7A72FF715B55FF715A54FF8D7971FF8C7870FF6E57
      51FF55433EC40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000001010101725B55FF453836900C0C0C0C0B0B0B0B4236348C725B55FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101015A4844C4887570FF8F7D78FF8E7D78FF897671FF594743C40000
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
      000000000000E7E7E700B5B5B500949494008C8C8C009C9C9C00C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0094949C0029296B0000006300000063000000630000004A00101039006363
      6300D6D6D6000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F7006363
      94000000840000008C0000008C0000008C0000008C0000008C00000084000000
      520031313900C6C6C60000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF005A5A9C000000
      94000000940000009C0000009C000000A50000009C000000940000008C000000
      8C000000630031313900D6D6D600000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      000000000000000000000000000000000000000000008C8CB5000000A5000808
      9C009C9CD6006B6BD6000000AD000000AD000000AD004A4ABD00B5B5E7002121
      A50000008C0000005200737373000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000084000000
      84000000FF000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00000000000000000000000000BDBDBD00000000000000
      000000000000000000000000000000000000DEDEEF002929AD000000AD002929
      A500DEDED600FFFFFF006363D6000000B5004242C600E7E7EF00FFFFF7005A5A
      B50000009C00000084002929420000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000008400000084000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000007B7B
      7B00000000000000000000000000000000009494E7000000B5000000BD000000
      C6004A4AA500E7E7DE00FFFFFF009C9CE700EFEFF700FFFFF7007373BD000000
      B5000000AD000000A50010105A0000000000000000000084000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000840000008400000000000000000000008400000084000000FF000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000005A5AD6000808BD000000CE000000
      D6000000CE005252B500F7F7EF00FFFFFF00FFFFFF007373CE000000BD000000
      C6000000BD000000AD0008086B00000000000084000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000084000000840000008400000084000000FF00000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00000000007B7B7B000000
      000000000000000000007B7B7B00000000004A4AD6000808CE000808DE000808
      DE000000D6003939CE00EFEFEF00FFFFFF00FFFFFF005A5ADE000000CE000000
      CE000000C6000000BD0010107B00000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007373E7001010DE001010EF000808
      F7004242DE00E7E7EF00FFFFF700BDBDD600EFEFEF00FFFFFF006363E7000000
      D6000808CE000808C60021217B00000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B000000000000000000BDBDF7002121E7002121FF003939
      EF00DEDEE700FFFFEF007373C6000000D6005252B500E7E7D600FFFFFF006363
      E7000808DE000808CE004A4A8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008400000084000000FF000000FF000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF005A5AF7003131FF005252
      EF00B5B5C6007373CE000000EF000000EF000000EF005252B500ADADB5004A4A
      E7001818EF001818B500B5B5BD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000FF0000000000000000000000FF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6FF003939FF005252
      FF006B6BEF005252FF003939FF002121FF002929FF003939FF004242EF003131
      FF001818EF007B7BA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000FF00000000000000000000000000000000000000000000000084000000
      84000000FF00000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6FF004A4A
      FF006B6BFF009494FF009494FF008484FF007373FF006363FF005252FF003131
      FF007B7BB500FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF00000000000000000000000084000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      FF006B6BFF006B6BFF008484FF009494FF007373FF005252FF005252F700A5A5
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00BDBDFF008C8CFF007B7BFF007B7BFF00ADADFF00E7E7FF000000
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
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
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
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000B00000000100010000000000800500000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFE7000000000000
      C1F3000000000000C3FB000000000000C7FB000000000000CBFB000000000000
      DCF3000000000000FF07000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF87FFFF00FC00FFFF003FFF00F000
      FFFF0003FF00C000FFFF0001FE000000C00F0001FE00000080070001FE000000
      80030001FF00000080010301FF8000008001000100000000800F000100000000
      800F1C0100000001801F9E0100000003C0FFC00300000007C0FFE0070000001F
      FFFFF00F0000007FFFFFF83F000001FFC7F9E007FFFF83FF83E0E0070003007F
      81C0E0070003000F8181F00F00030003C003FC3F08030003E007F81F07030003
      F00FF00F00030001F80FF00F00000000F007F00F00000000E003F81F00000000
      C001FC3F000300008180FFFF0007000183E1FFFF000F000383FFFFFF001F0003
      87FFFFFF887F0003FFFFFFFFFFFFF01FFFFFF03FFF1FFFFFFFFFE007FFC7FC1F
      FFFFC000FE23F007F8FF8000FF93E003F0FF0000F0C9C003E27F0000E065C781
      E73F0000C0358F01FF9F8000C0158E21FFCFE001801F8C61FFEFF003001F88E3
      A087F01F001F81E38ABBE03F081FC3C7E8BDE03F001FC00FD88FC03F803FE01F
      FFFFC07FF07FF87FFFFFF8FFFFFFFFFFFFFFFFC08000A403FFFF800000008001
      FFFF800000008001FFFF800000008001FFFF000000008001FF87000000001001
      000700010000000100030001000000010001000100000001C000000100000001
      E007000100000000F80F000100008C00FFFF00010000CF00FFFF000100008600
      FFFF000100008701FFFF000F0000CFC3FFFFE7FF8000FFFFFF1FE01F0000FE0F
      FF0FE00F8000FC07FF87E0070000F00300C3E0038000E0030063E0430000C003
      00F1E0630000C00303F1A0338000C00301F19FF30000C00300E18C0F0000C003
      1001840F8000C0031803800F0000C0031E07C00F0000C0079FFFC00F0000C01F
      FFFFE00F0000E03FFFFFFFCF0004FFFFFFFFFFFF8FFFFFFFF83F3FFB301FC003
      E00F07C130078001CFC703032003800187E3000300038001A3F3000381C18001
      31F900078001800138F90007C00180013C79000FE00180013E39000FA1818001
      3F190007D00380019F8B0003C80380018FC30003E0058001C7E70003F80D8001
      E00F0001FF9D8003F83F0001FFE3FFFF00008000FFFFEFFF00005555FC7FCFFF
      00000000F83F8007000076BCF81F00030000B6D8F0078001000086C2F003CFF1
      0000CEE6E003EFF10000CAA6E003FFF1000086C0C0038FFF00004EF6C0038FF7
      0000E6F2C0038FF30000E6F2E00380010000FEFEF803C00000000000FC03E001
      00005555FF83FFF300000000FFC3FFF7FFFFFFFFFFFFF80FFFFFFFFFFEBFE007
      F9FFFFFFFA9FC003F0FF9FE7EBCF8001F0FF8FC7EEE78001E07F8787EBB30001
      C07FC30F96E90001843FE01F11B400011E3FF03F3E180001FE1FF87F3C7B0001
      FF1FF03F3CC90001FF8FE01FE99F0001FFC7C30FF1FF8003FFE38787E7FFC003
      FFF88FC7CFFFE00FFFFFFFFFDFFFF01FFEFFFEFDFFFFFFFFFE7FFE7DC007FE7F
      FE3FFE3DBFEBFC3FFE1FFE1D0005FC3FFE0FFE0D7E31FE7FFE07FE057E35FC3F
      FE03FE010006FC3FFE07FE057FEAFC3FFE0FFE0D8014FC1FFE1FFE1DC00AF20F
      FE3FFE3DE001E107FE7FFE7DE007E187FEFFFEFDF007E007FFFFFFFFF003F00F
      FFFFFFFFF803F81FFFFFFFFFFFFFFFFFFFFFFFFFBF7FFF7FFFFFFFFFBE7FFE7F
      C007FFF9BC7FFC7FC007E7FFB87FF87FC007C3F3B07FF07FC007C3E7A07FE07F
      C007E1C7807FC07FC007F08FA07FE07FC007F81FB07FF07FC007FC3FB87FF87F
      C007F81FBC7FFC7FC007F09FBE7FFE7FC00FC1C7BF7FFF7FC01F83E3FFFFFFFF
      C03F8FF1FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object LabelStyle: TcxEditStyleController
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.HotTrack = False
    Style.LookAndFeel.Kind = lfFlat
    Style.LookAndFeel.NativeStyle = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.NativeStyle = False
    Left = 686
    Top = 80
    PixelsPerInch = 96
  end
  object qryGetBillRate: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select bill_rate from taxrate'
      'where taxcode = :taxcode')
    Left = 776
    Top = 393
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'taxcode'
        Value = nil
      end>
  end
  object dsMSearch: TUniDataSource
    DataSet = qryMSearch
    Left = 387
    Top = 503
  end
  object qrySettingIntValueLoad: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT VALUE, ITEM '
      'FROM SETTINGS '
      'WHERE EMP = :Emp'
      '  AND OWNER = :Owner'
      '  AND INTVALUE= :Item')
    Left = 183
    Top = 491
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Owner'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Item'
        Value = nil
      end>
    object qrySettingIntValueLoadVALUE: TStringField
      FieldName = 'VALUE'
      Size = 400
    end
    object qrySettingIntValueLoadITEM: TStringField
      FieldName = 'ITEM'
      Size = 200
    end
  end
  object qrySettingIntValueDelete: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'DELETE '
      'FROM SETTINGS '
      'WHERE EMP = :Emp'
      '  AND OWNER = :Owner'
      '  AND INTVALUE= :Item')
    Left = 950
    Top = 460
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Owner'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Item'
        Value = nil
      end>
  end
  object qryExpenseAllocations: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select *'
      'from gl_expense_allocations gl '
      'where master_code = :code'
      'and master_bank = :bank')
    Left = 627
    Top = 79
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'bank'
        Value = nil
      end>
  end
  object tblRb_Item: TUniTable
    TableName = 'RB_ITEM'
    Connection = uniInsight
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 475
    Top = 400
    object tblRb_ItemROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object tblRb_ItemITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
    end
    object tblRb_ItemFOLDER_ID: TIntegerField
      FieldName = 'FOLDER_ID'
    end
    object tblRb_ItemITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 60
    end
    object tblRb_ItemITEM_SIZE: TIntegerField
      FieldName = 'ITEM_SIZE'
    end
    object tblRb_ItemITEM_TYPE: TIntegerField
      FieldName = 'ITEM_TYPE'
    end
    object tblRb_ItemMODIFIED: TFloatField
      FieldName = 'MODIFIED'
    end
    object tblRb_ItemDELETED: TFloatField
      FieldName = 'DELETED'
    end
    object tblRb_ItemTEMPLATE: TBlobField
      FieldName = 'TEMPLATE'
      BlobType = ftOraBlob
    end
  end
  object dsRB_Item: TUniDataSource
    DataSet = qryRB_Items
    Left = 704
    Top = 396
  end
  object plReports: TppDBPipeline
    DataSource = dsRB_Item
    CloseDataSource = True
    UserName = 'plReports'
    Left = 769
    Top = 305
    object plReportsppField1: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 0
    end
    object plReportsppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plReportsppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'FOLDER_ID'
      FieldName = 'FOLDER_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plReportsppField4: TppField
      FieldAlias = 'ITEM_NAME'
      FieldName = 'ITEM_NAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plReportsppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_SIZE'
      FieldName = 'ITEM_SIZE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object plReportsppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_TYPE'
      FieldName = 'ITEM_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object plReportsppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MODIFIED'
      FieldName = 'MODIFIED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plReportsppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DELETED'
      FieldName = 'DELETED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plReportsppField9: TppField
      FieldAlias = 'TEMPLATE'
      FieldName = 'TEMPLATE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object qrySubBills: TUniQuery
    KeyFields = 'NMEMO;NSUBBILL'
    Connection = uniInsight
    SQL.Strings = (
      'select subbills.*, subbills.rowid '
      'from subbills'
      'where nmemo = :nmemo'
      'order by rounding')
    Left = 682
    Top = 127
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryUnAllocDisb: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select sum(amount) as amount, sum(tax) as tax'
      'from'
      '('
      'SELECT     '
      '      (ALLOC.AMOUNT*-1) as AMOUNT,'
      'DECODE('
      '  NVL(alloc.tax,0),'
      '  0,'
      '  DECODE('
      '    alloc.billed,'
      '    '#39'Y'#39','
      '    alloc.tax,'
      '    DECODE('
      '      (r.rate - r.bill_rate),'
      '      '#39'0'#39','
      '      alloc.tax,'
      '      ROUND((alloc.amount) * ABS(r.rate)) / 100'
      '    )'
      '  ),'
      '  alloc.tax'
      ') * -1 AS tax '
      'FROM ALLOC, TAXRATE R'
      'WHERE ALLOC.NMEMO = :nmemo'
      
        'AND (nvl(NRECEIPT,0) = 0 OR (nvl(NRECEIPT,0) > 0 AND TYPE = '#39'DR'#39 +
        '))'
      'AND NINVOICE IS NULL'
      'AND ALLOC.TAXCODE = R.TAXCODE (+)'
      
        'AND  TRUNC (alloc.created) >= r.commence and TRUNC(alloc.created' +
        ') <= nvl(r.end_period,sysdate + 1000)'
      '--AND ALLOC.NMEMO = SUBBILLS.NMEMO (+)'
      '--AND ALLOC.NSUBBILL = SUBBILLS.NSUBBILL (+))'
      'AND nvl(alloc.NSUBBILL,0) = NVL(:NSUBBILL, 0))'
      ''
      ''
      '/*'
      'select nvl(sum(amount*-1),0) amount ,nvl(sum(tax*-1),0) tax'
      'from alloc'
      'where nmemo = :nmemo'
      'AND NVL(TRUST, '#39'G'#39') <> '#39'T'#39
      'AND NSUBBILL IS NULL'
      'AND (NVL(ncheque,0) > 0'
      '        OR'
      '        (NVL(njournal,0) > 0 AND TYPE = '#39'J2'#39')'
      '       )'
      '*/')
    Left = 735
    Top = 182
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NSUBBILL'
        Value = nil
      end>
  end
  object qryAllocDisb: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select nvl(sum(amount*-1),0) amount ,nvl(sum(tax*-1),0) tax'
      'from alloc'
      'where nmemo = :nmemo'
      'AND NVL(TRUST, '#39'G'#39') <> '#39'T'#39
      'AND NSUBBILL = :nsubbill'
      'AND (NVL(ncheque,0) > 0'
      '        OR'
      '        (NVL(njournal,0) > 0 AND TYPE = '#39'J2'#39')'
      '       )')
    Left = 732
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nsubbill'
        Value = nil
      end>
  end
  object qryRB_Items: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT T.RowId, T.*'
      'FROM RB_ITEM T')
    Left = 617
    Top = 394
    object qryRB_ItemsROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qryRB_ItemsITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
    end
    object qryRB_ItemsFOLDER_ID: TIntegerField
      FieldName = 'FOLDER_ID'
    end
    object qryRB_ItemsITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      FixedChar = True
      Size = 60
    end
    object qryRB_ItemsITEM_SIZE: TIntegerField
      FieldName = 'ITEM_SIZE'
    end
    object qryRB_ItemsITEM_TYPE: TIntegerField
      FieldName = 'ITEM_TYPE'
    end
    object qryRB_ItemsMODIFIED: TFloatField
      FieldName = 'MODIFIED'
    end
    object qryRB_ItemsDELETED: TFloatField
      FieldName = 'DELETED'
    end
    object qryRB_ItemsTEMPLATE: TMemoField
      FieldName = 'TEMPLATE'
      BlobType = ftMemo
    end
  end
  object qryMatterAttachments: TUniQuery
    UpdatingTable = 'DOC'
    KeyFields = 'DOCID'
    Connection = uniInsight
    SQL.Strings = (
      'SELECT '
      '   D.DOC_NAME, D.SEARCH, D.DOC_CODE, '
      '   D.JURIS, D.D_CREATE, D.AUTH1, '
      '   D.D_MODIF, D.AUTH2, D.PATH, '
      '   D.DESCR, D.FILEID, D.DOCID, '
      '   D.NPRECCATEGORY, D.NMATTER,'
      '   D.IMAGEINDEX, D.FILE_EXTENSION, D.EMAIL_SENT_TO, '
      '   D.TEMPLATEPATH, D.DATAFILEPATH, D.DATAFORM, '
      '   D.WORKFLOWDOCID, D.KEYWORDS, D.PRECEDENT_DETAILS, '
      '   D.NPRECCLASSIFICATION, D.DISPLAY_PATH, '
      '   D.WORKFLOWGENDOCUMENT, D.DOC_NOTES, D.EXTERNAL_ACCESS, '
      '   D.EMAIL_FROM, D.ROWID'
      'FROM DOC D')
    SpecificOptions.Strings = (
      'Oracle.KeySequence=AXIOM.DOC_DOCID'
      'Oracle.DeferredLobRead=True')
    OnNewRecord = qryMatterAttachmentsNewRecord
    Left = 706
    Top = 348
  end
  object dsMatterAttachments: TUniDataSource
    DataSet = qryMatterAttachments
    Left = 857
    Top = 485
  end
  object procGetUserCount: TUniStoredProc
    StoredProcName = 'GETUNAMES'
    SQL.Strings = (
      'begin'
      '  :RESULT := GETUNAMES;'
      'end;')
    Connection = uniInsight
    Left = 382
    Top = 575
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end>
    CommandStoredProcName = 'GETUNAMES'
  end
  object qryReqFields: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'reqfield'
      'where'
      'table_name = :table_name')
    Left = 727
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'table_name'
        Value = nil
      end>
  end
  object dsReqFields: TUniDataSource
    DataSet = qryReqFields
    Left = 772
    Top = 132
  end
  object procTemp: TUniStoredProc
    Connection = uniInsight
    Left = 771
    Top = 463
  end
  object StyleRepository: TcxStyleRepository
    Left = 898
    Top = 298
    PixelsPerInch = 96
    object UnreadStyle: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clAqua
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
    end
    object cxStyle6: TcxStyle
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyle9: TcxStyle
    end
    object cxStyleFeeNotes: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clPurple
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      TextColor = clActiveBorder
    end
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.Color = clYellow
    Style.LookAndFeel.NativeStyle = True
    Style.Gradient = False
    Style.GradientDirection = dirLeft
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Left = 960
    Top = 235
    PixelsPerInch = 96
  end
  object procUnlockUser: TUniStoredProc
    StoredProcName = 'axiom.UNLOCK_AXIOM_USER'
    Connection = uniInsight
    Left = 30
    Top = 473
    ParamData = <
      item
        DataType = ftString
        Name = 'USERNAME'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'axiom.UNLOCK_AXIOM_USER'
  end
  object ilPrecCategorysml: TImageList
    Left = 889
    Top = 189
    Bitmap = {
      494C010101000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000008686860033660000336600003333
      6600333366003333660080000000800000008000000066006600660066006600
      6600660066006600660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660066006600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600FF9999009933330080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      66006666CC003333CC0033336600000000000000000080000000FF00CC009933
      9900993399006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300669933003333
      6600333366003333660033336600FF9999000000000080000000660066006600
      6600660066006600660080008000660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033660000336600000066
      00003333CC00000000003333CC0033336600FF9999008686860066006600FF00
      CC0000000000FF00CC0066006600660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366000033FF3300000000003366
      0000336600003333CC0086868600868686003333660000000000000000006600
      6600868686008686860086868600660066000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003366000033FF33008686
      8600336600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000030000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000800000000000000408000000000000
      206000000000000087FF00000000000000000000000000000000000000000000
      000000000000}
  end
  object qrySettings: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select'
      '  emp,  '
      '  owner,'
      '  options,'
      '  rowid'
      'from'
      '  settings'
      'where'
      '  emp = :emp'
      'and'
      '  owner = :owner'
      '  ')
    Left = 120
    Top = 478
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'owner'
        Value = nil
      end>
  end
  object tblPaymentType: TVirtualTable
    FieldDefs = <
      item
        Name = 'Descr'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Clearance'
        DataType = ftInteger
      end>
    Left = 43
    Top = 593
    Data = {
      040002000500446573637201003C00000000000900436C656172616E63650300
      000000000000000000000000}
    object tblPaymentTypeDescr: TStringField
      FieldName = 'Descr'
      Size = 22
    end
    object tblPaymentTypeClearance: TIntegerField
      FieldName = 'Clearance'
    end
    object tblPaymentTypeCode: TStringField
      FieldName = 'Code'
      Size = 4
    end
  end
  object dsPaymentType: TUniDataSource
    DataSet = tblPaymentType
    Left = 128
    Top = 537
  end
  object qrySystem: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT S.RECEIPT_CLEARANCE_DAYS, S.ROWID FROM SYSTEMFILE S')
    CachedUpdates = True
    Left = 229
    Top = 450
  end
  object qryBILL_CRED_OWING: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT'
      '    getBillCredAmountOwing(:P_Bill ) as BILL_CRED_OWING'
      'FROM'
      '    dual')
    Left = 335
    Top = 458
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Bill'
        Value = nil
      end>
  end
  object qryGetSeq: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select DOC_DOCID.nextval as nextdoc from dual')
    Left = 452
    Top = 520
  end
  object procGetActiveEmps: TUniStoredProc
    StoredProcName = 'getactiveusers'
    Connection = uniInsight
    Left = 599
    Top = 462
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end>
    CommandStoredProcName = 'getactiveusers'
  end
  object qryTempFeeInsert: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT   ft.ROWID, ft.created, ft.fileid, ft.author,'
      
        '         ft.reason, ft.units, ft.rate, ft.amount, ft.taxcode, ft' +
        '.tax,'
      '         ft.taxrate, ft.elapsed, ft.empcode,'
      '         DECODE (ft.time_type,'
      '                 '#39'M'#39', m.title || '#39' '#39' || m.shortdescr,'
      '                 '#39'Overhead Time'#39
      '                ) AS matlocate,'
      
        '         ft.nmatter, ft.time_type, ft.fee_template, ft.start_dat' +
        'e,'
      
        '         ft.end_date, ft.items, ft.uniqueid, ft.billtype, ft.emp' +
        '_type, ft.notes'
      '    FROM feetmp ft, matter m'
      '   WHERE ft.author = :empcode'
      '     AND ft.nmatter = m.nmatter(+)'
      '     AND NVL (ft.time_type, '#39'M'#39') <> '#39'H'#39
      '     AND ft.nfee IS NULL'
      
        '     AND TRUNC (ft.created) = nvl(trunc(:created), TRUNC (ft.cre' +
        'ated))'
      'ORDER BY ft.uniqueid'
      ''
      ''
      ''
      ''
      '/*'
      
        'SELECT FT.ROWID, FT.CREATED, FT.FILEID, FT.AUTHOR, FT.REASON, FT' +
        '.UNITS, FT.RATE, FT.AMOUNT,'
      
        'FT.TAXCODE, FT.TAX, FT.TAXRATE, FT.ELAPSED, FT.EMPCODE, FT.UNIQU' +
        'EID,FT.NFEE,'
      
        'decode(FT.TIME_TYPE, '#39'M'#39', M.TITLE || '#39' '#39' || M.SHORTDESCR, '#39'Overh' +
        'ead Time'#39') AS MATLOCATE, FT.NMATTER, FT.TIME_TYPE, FT.FEE_TEMPLA' +
        'TE,'
      
        'FT.ITEMS, FT.UNIT, FT.TASK_AMOUNT, FT.LABELCOLOUR, FT.BILLTYPE, ' +
        'FT.EMP_TYPE, FT.TIME_TYPE'
      'FROM FEETMP FT , MATTER M'
      'WHERE FT.AUTHOR=:AUTHOR'
      'AND FT.FILEID = M.FILEID (+)'
      'AND NVL(FT.TIME_TYPE,'#39'M'#39') <> '#39'H'#39
      'AND FT.NFEE IS NULL'
      'order by FT.uniqueid desc'
      '*/')
    Left = 976
    Top = 187
    ParamData = <
      item
        DataType = ftString
        Name = 'empcode'
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'created'
        Value = nil
      end>
  end
  object qryFeeTempUpdate: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'UPDATE FEETMP SET NFEE = :NFEE, LABELCOLOUR = :LABELCOLOUR '
      'WHERE UNIQUEID = :UNIQUEID')
    Left = 914
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NFEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABELCOLOUR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNIQUEID'
        Value = nil
      end>
  end
  object dsEmailTemplates: TUniDataSource
    DataSet = qryEmailTemplates
    Left = 966
    Top = 535
  end
  object qryEmailTemplates: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select bill_email_templates.*, bill_email_templates.rowid'
      'from'
      'bill_email_templates')
    Left = 976
    Top = 600
    object qryEmailTemplatesID: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ID'
      Required = True
      Calculated = True
    end
    object qryEmailTemplatesDESCR: TStringField
      FieldName = 'DESCR'
      Size = 200
    end
    object qryEmailTemplatesBODY_TEXT: TStringField
      FieldName = 'BODY_TEXT'
      Size = 4000
    end
    object qryEmailTemplatesROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object qryCRAllocsRV: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'INSERT INTO CRALLOC'
      '  (NCRALLOC, CREATED, REFNO, TYPE, NCHEQUE, NRECEIPT, NJOURNAL,'
      '   NMEMO, ACCT, AMOUNT, FEE, OUTLAY, SUNDRY, NMATTER, NCLIENT, '
      '   DESCR, FILEID, APPROVAL, CLEARED, DCLEARDATE, PAYER,'
      
        '   TRUST, BILLED, CLIENT_NAME, MATTER_DESC, OVERDRAWN, SYSTEM_DA' +
        'TE, PRIVATE,'
      
        '    SUNDRYTYPE, TAXCODE, TAX,NCHEQREQ, RV_NALLOC,BANK, NINVOICE,' +
        ' SPEC_PURPOSE)'
      'VALUES'
      
        '  (:NCRALLOC, :CREATED, :REFNO, :TYPE, :NCHEQUE, :NRECEIPT, :NJO' +
        'URNAL,'
      
        '   :NMEMO, :ACCT, :AMOUNT, :FEE, :OUTLAY, :SUNDRY, :NMATTER, :NC' +
        'LIENT,'
      '   :DESCR, :FILEID, :APPROVAL, :CLEARED, :DCLEARDATE, :PAYER,'
      
        '   :TRUST, :BILLED, :CLIENT_NAME, :MATTER_DESC, :OVERDRAWN, SysD' +
        'ate, '#39'Y'#39','
      
        '   :SUNDRYTYPE, :TAXCODE, :TAX,:NCHEQREQ, :RV_NALLOC, :BANK, :NI' +
        'NVOICE, :SPEC_PURPOSE)')
    Left = 977
    Top = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCRALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
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
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
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
        Name = 'FEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OUTLAY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APPROVAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLEARED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DCLEARDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLED'
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
      end
      item
        DataType = ftUnknown
        Name = 'OVERDRAWN'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRYTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RV_NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SPEC_PURPOSE'
        Value = nil
      end>
  end
  object qryAllocDisbsTax: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select sum(amount) as amount, sum(tax) as tax'
      'from'
      '('
      'SELECT     '
      '      (ALLOC.AMOUNT*-1) as AMOUNT,'
      'DECODE('
      '  NVL(alloc.tax,0),'
      '  0,'
      '  DECODE('
      '    alloc.billed,'
      '    '#39'Y'#39','
      '    alloc.tax,'
      '    DECODE('
      '      (r.rate - r.bill_rate),'
      '      '#39'0'#39','
      '      alloc.tax,'
      '      ROUND((alloc.amount) * ABS(r.rate)) / 100'
      '    )'
      '  ),'
      '  alloc.tax'
      ') * -1 AS tax '
      'FROM ALLOC,TAXRATE R'
      'WHERE ALLOC.NMEMO = :nmemo'
      
        'AND (nvl(NRECEIPT,0) = 0 OR (nvl(NRECEIPT,0) > 0 AND TYPE = '#39'DR'#39 +
        '))'
      'AND NINVOICE IS NULL'
      'AND ALLOC.TAXCODE = R.TAXCODE (+)'
      
        'AND  TRUNC (alloc.created) >= r.commence and TRUNC(alloc.created' +
        ') <= nvl(r.end_period,sysdate + 1000)'
      '--AND ALLOC.NMEMO = SUBBILLS.NMEMO (+)'
      '--AND ALLOC.NSUBBILL = SUBBILLS.NSUBBILL (+))'
      'AND nvl(alloc.NSUBBILL,0) = NVL(:NSUBBILL, 0))'
      ''
      ''
      '/*'
      
        'SELECT SUM(0 - AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.' +
        'BILL_RATE, 0), 0, NVL(a.tax, 0), NVL(a.amount, 0)),0,0,0-AMOUNT)' +
        ') as TAXABLE_AMOUNT, '
      'SUM(NVL(0 - A.TAX, 0)) as ITEMTAX, '
      
        'SUM( DECODE(NVL(A.TAX,0),0,0-DECODE(NVL(R.RATE-R.BILL_RATE, 0),0' +
        ', NVL(A.TAX, 0),(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100))),NV' +
        'L(-A.TAX, 0))) as tax '
      'FROM ALLOC A,TAXRATE R '
      
        'WHERE TRUNC(A.CREATED) >= r.commence and TRUNC(A.CREATED) <= nvl' +
        '(r.end_period, sysdate + 1000)'
      '  AND NMEMO = :nmemo'
      '  AND NSUBBILL = NVL(:NSUBBILL, NSUBBILL)'
      '  AND A.TAXCODE = R.TAXCODE (+) '
      
        '  AND NINVOICE IS NULL AND (nvl(NRECEIPT,0) = 0 OR (NVL(NRECEIPT' +
        ', 0) > 0 AND TYPE = '#39'DR'#39'))'
      '*/')
    Left = 832
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NSUBBILL'
        Value = nil
      end>
  end
  object qryStopMatterWorkflowTasks: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'update workflowtasks '
      'set'
      '   completed = :completed,'
      '   completedby = :CompletedBy'
      'where nmatter = :nmatter'
      'and TEMPLATELINEID = :TEMPLATELINEID')
    Left = 741
    Top = 78
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'completed'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CompletedBy'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TEMPLATELINEID'
        Value = nil
      end>
  end
  object qryDocDetails: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'SELECT doc_name, search, doc_code, d_create, auth1, PATH, descr,' +
        ' fileid,'
      
        '       docid, npreccategory, document, imageindex, keywords, nma' +
        'tter,'
      
        '       file_extension, nprecclassification, precedent_details, d' +
        '_modif,'
      
        '       display_path, doc_notes, email_from, email_sent_to,folder' +
        '_id, ROWID'
      '  FROM doc'
      ' WHERE docid = :docid')
    Left = 685
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
  object MapiSession: TRwMAPISession
    LogonInfo.UseExtendedMAPI = True
    LogonInfo.Shared = False
    LogonInfo.ProfileRequired = False
    LogonInfo.ForceDownload = False
    LogonInfo.ShowLogonDialog = False
    LogonInfo.NewSession = True
    LogonInfo.NoMail = False
    LogonInfo.NTService = False
    LogonInfo.ShowPasswordDialog = False
    LogonInfo.ShowServiceDialog = False
    LogonInfo.ShortTimeOut = False
    LogonInfo.MultiThreadedNotifications = False
    LogoffInfo.Shared = False
    LogoffInfo.ShowLogoffDialog = False
    OnBeforeLogon = MapiSessionBeforeLogon
    OnAfterLogon = MapiSessionAfterLogon
    Left = 651
    Top = 229
  end
  object OracleUniProvider: TOracleUniProvider
    Left = 134
    Top = 11
  end
  object UniTable1: TUniTable
    Connection = uniInsight
    Left = 856
    Top = 544
  end
  object qryEmpsLogin: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT NAME, CODE'
      'FROM'
      'EMPLOYEE'
      'WHERE '
      'UPPER(USER_NAME) = :P_Code'
      'AND ACTIVE = '#39'Y'#39)
    Left = 282
    Top = 585
    ParamData = <
      item
        DataType = ftString
        Name = 'P_Code'
        Value = nil
      end>
  end
  object VirtualTable1: TVirtualTable
    Left = 935
    Top = 659
    Data = {04000000000000000000}
  end
  object qryTmp3: TUniQuery
    Connection = uniInsight
    Left = 275
    Top = 633
  end
  object tblCountryList: TUniTable
    TableName = 'country_list'
    OrderFields = 'NAME'
    Connection = uniInsight
    KeyFields = 'name'
    Left = 415
    Top = 629
  end
  object dsCountryList: TUniDataSource
    DataSet = tblCountryList
    Left = 491
    Top = 632
  end
  object tbFolders: TUniTable
    TableName = 'AXIOM.RB_FOLDER'
    Connection = uniInsight
    Left = 769
    Top = 21
  end
  object tbItems: TUniTable
    TableName = 'RB_ITEM'
    Connection = uniInsight
    Left = 838
    Top = 75
  end
  object dsFolders: TUniDataSource
    DataSet = tbFolders
    Left = 824
    Top = 11
  end
  object dsItems: TUniDataSource
    DataSet = tbItems
    Left = 892
    Top = 59
  end
  object plFolders: TppDBPipeline
    DataSource = dsFolders
    RefreshAfterPost = True
    UserName = 'plFolders'
    Left = 958
    Top = 18
    object plFoldersppField1: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plFoldersppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FOLDER_ID'
      FieldName = 'FOLDER_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plFoldersppField3: TppField
      FieldAlias = 'FOLDER_NAME'
      FieldName = 'FOLDER_NAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plFoldersppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARENT_ID'
      FieldName = 'PARENT_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
  end
  object plItems: TppDBPipeline
    DataSource = dsItems
    RefreshAfterPost = True
    UserName = 'plItems'
    Left = 956
    Top = 71
    object plItemsppField1: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plItemsppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plItemsppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'FOLDER_ID'
      FieldName = 'FOLDER_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plItemsppField4: TppField
      FieldAlias = 'ITEM_NAME'
      FieldName = 'ITEM_NAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plItemsppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_SIZE'
      FieldName = 'ITEM_SIZE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object plItemsppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_TYPE'
      FieldName = 'ITEM_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object plItemsppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MODIFIED'
      FieldName = 'MODIFIED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plItemsppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DELETED'
      FieldName = 'DELETED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plItemsppField9: TppField
      FieldAlias = 'TEMPLATE'
      FieldName = 'TEMPLATE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object qryWorkingDays: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select count(*) as workdays'
      '      from ( select rownum rnum'
      '               from all_objects'
      
        '              where rownum <= to_date(:todate) - to_date(:fromda' +
        'te)+1 )'
      '     where to_char( to_date(:fromdate)+rnum-1, '#39'DY'#39' ) '
      '                not in ( '#39'SAT'#39', '#39'SUN'#39' )'
      '       and not exists '
      
        '        ( select null from calendar_holidays where publicholiday' +
        ' = 1 and caldate ='
      '                 trunc(to_date(:fromdate)+rnum-1) )')
    Left = 846
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'todate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fromdate'
        Value = nil
      end>
  end
  object qryDailyUnitsBudget: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'SELECT time/get_Num_of_days(:start_date, :end_date, :employee) a' +
        's time'
      '        FROM budget'
      '       WHERE MONTH = TO_CHAR (:rpt_date, '#39'MM'#39')'
      '         AND calendar_year = TO_CHAR (:rpt_date, '#39'YYYY'#39')'
      '         AND employee = :employee')
    Left = 790
    Top = 667
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'end_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'employee'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rpt_date'
        Value = nil
      end>
  end
  object qryTasks: TUniQuery
    SQLLock.Strings = (
      
        'SELECT TYPE, FILEID, REASON, AMOUNT, UNIQUEID, CREATED, UNITS, R' +
        'ATE, AUTHOR, EMPCODE, TAXCODE, TAX, TAXRATE, WITHHOLD, ELAPSED, ' +
        'NMATTER, TIME_TYPE, FEE_TEMPLATE, MINS, START_DATE, END_DATE, LA' +
        'BELCOLOUR, STATE, RESOURCEID, OPTIONS, EVENT_TYPE, CAPTION, ITEM' +
        'S, UNIT, TASK_AMOUNT, NFEE, BILLTYPE, FEEBASIS, EMP_TYPE, VERSIO' +
        'N, SYSTEM_DATE, PROCESSED, MATLOCATE, NOTES, DISCOUNT, IS_TASK, ' +
        'TOTAL_FEE_AMT_PCT FROM FEETMP'
      'WHERE'
      '  UNIQUEID = :Old_UNIQUEID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT TYPE, FILEID, REASON, AMOUNT, UNIQUEID, CREATED, UNITS, R' +
        'ATE, AUTHOR, EMPCODE, TAXCODE, TAX, TAXRATE, WITHHOLD, ELAPSED, ' +
        'NMATTER, TIME_TYPE, FEE_TEMPLATE, MINS, START_DATE, END_DATE, LA' +
        'BELCOLOUR, STATE, RESOURCEID, OPTIONS, EVENT_TYPE, CAPTION, ITEM' +
        'S, UNIT, TASK_AMOUNT, NFEE, BILLTYPE, FEEBASIS, EMP_TYPE, VERSIO' +
        'N, SYSTEM_DATE, PROCESSED, MATLOCATE, NOTES, DISCOUNT, IS_TASK, ' +
        'TOTAL_FEE_AMT_PCT FROM FEETMP'
      'WHERE'
      '  UNIQUEID = :UNIQUEID')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM FEETMP'
      ''
      ')')
    Connection = uniInsight
    SQL.Strings = (
      
        'SELECT   TYPE, fileid, reason, amount, uniqueid, created, units,' +
        ' rate, author,'
      
        '         empcode, taxcode, tax, taxrate, withhold, elapsed, nmat' +
        'ter,'
      
        '         time_type, fee_template, mins, start_date, end_date, la' +
        'belcolour,'
      
        '         state, resourceid, options, event_type, caption, items,' +
        ' unit,'
      
        '         task_amount, nfee, billtype, feebasis, emp_type, VERSIO' +
        'N,'
      
        '         system_date, processed, matlocate, notes, discount, is_' +
        'task,'
      '         CASE'
      '            WHEN fileid IS NULL'
      '               THEN reason'
      '            ELSE '#39'Matter '#39'||fileid || '#39':'#39' || reason'
      '         END AS display_reason'
      '    FROM feetmp'
      '   WHERE author = :author AND is_task = '#39'Y'#39
      'ORDER BY trunc(created) desc')
    Left = 29
    Top = 669
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
  end
  object dsTasks: TUniDataSource
    DataSet = qryTasks
    Left = 88
    Top = 682
  end
  object orsAxiom: TOraSession
    Options.Direct = True
    Options.IPVersion = ivIPBoth
    Options.KeepDesignConnected = False
    Options.LocalFailover = True
    PoolingOptions.ConnectionLifetime = 10000000
    PoolingOptions.Validate = True
    Pooling = True
    Username = 'axiom'
    Server = 'dev-oracle:1521:hohlaw'
    LoginPrompt = False
    Left = 252
    Top = 11
    EncryptedPassword = '9EFF87FF96FF90FF92FF'
  end
  object qryMatterAttachment: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT'
      '  DOC.DOCUMENT,'
      '  DOC.IMAGEINDEX,'
      '  DOC.FILE_EXTENSION,'
      '  DOC.DOC_NAME,'
      '  DOC.SEARCH,'
      '  DOC.DOC_CODE,'
      '  DOC.JURIS,'
      '  DOC.D_CREATE,'
      '  DOC.AUTH1,'
      '  DOC.D_MODIF,'
      '  DOC.AUTH2,'
      '  DOC.PATH,'
      '  DOC.DESCR,'
      '  DOC.FILEID,'
      '  DOC.DOCID,'
      '  DOC.NPRECCATEGORY,'
      '  DOC.NMATTER,'
      '  DOC.PRECEDENT_DETAILS,'
      '  DOC.NPRECCLASSIFICATION,'
      '  DOC.KEYWORDS,'
      '  DOC.DISPLAY_PATH,'
      '  DOC.EXTERNAL_ACCESS,'
      '  DOC.EMAIL_FROM,'
      '  DOC.EMAIL_SENT_TO,'
      '  DOC.NFEE,'
      '  DOC.PARENTDOCID, '
      '  DOC.ROWID'
      'FROM'
      '  DOC'
      'where'
      '  DOCID = :DOCID')
    CachedUpdates = True
    OnNewRecord = qryMatterAttachmentsNewRecord
    Left = 663
    Top = 684
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOCID'
        Value = nil
      end>
  end
  object ScriptRebuildObjects: TUniScript
    SQL.Strings = (
      'BEGIN'
      '  FOR cur_rec IN (SELECT owner,'
      '                         object_name,'
      '                         object_type,'
      '                         DECODE(object_type, '#39'PACKAGE'#39', 1,'
      
        '                                             '#39'PACKAGE BODY'#39', 2, ' +
        '2) AS recompile_order'
      '                  FROM   dba_objects'
      
        '                  WHERE  object_type IN ('#39'PACKAGE'#39', '#39'PACKAGE BOD' +
        'Y'#39', '#39'PROCEDURE'#39', '#39'FUNCTION'#39')'
      '                  AND    owner = '#39'AXIOM'#39
      '                  ORDER BY 4)'
      '  LOOP'
      '    BEGIN'
      '      IF cur_rec.object_type != '#39'PACKAGE BODY'#39' THEN'
      '        EXECUTE IMMEDIATE '#39'ALTER '#39' || cur_rec.object_type ||'
      
        '            '#39' "'#39' || cur_rec.owner || '#39'"."'#39' || cur_rec.object_nam' +
        'e || '#39'" COMPILE'#39';'
      '      ElSE'
      '        EXECUTE IMMEDIATE '#39'ALTER PACKAGE "'#39' || cur_rec.owner ||'
      '            '#39'"."'#39' || cur_rec.object_name || '#39'" COMPILE BODY'#39';'
      '      END IF;'
      '    EXCEPTION'
      '      WHEN OTHERS THEN'
      '           null;'
      '    END;'
      '  END LOOP;'
      'END;'
      '/')
    Delimiter = '/'
    Connection = uniInsight
    Left = 715
    Top = 487
  end
  object qrySaveEmailAttachments: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT'
      '  DOC.DOCUMENT,'
      '  DOC.IMAGEINDEX,'
      '  DOC.FILE_EXTENSION,'
      '  DOC.DOC_NAME,'
      '  DOC.SEARCH,'
      '  DOC.DOC_CODE,'
      '  DOC.JURIS,'
      '  DOC.D_CREATE,'
      '  DOC.AUTH1,'
      '  DOC.D_MODIF,'
      '  DOC.AUTH2,'
      '  DOC.PATH,'
      '  DOC.DESCR,'
      '  DOC.FILEID,'
      '  DOC.DOCID,'
      '  DOC.NPRECCATEGORY,'
      '  DOC.NMATTER,'
      '  DOC.PRECEDENT_DETAILS,'
      '  DOC.NPRECCLASSIFICATION,'
      '  DOC.KEYWORDS,'
      '  DOC.URL,'
      '  DOC.DISPLAY_PATH,'
      '  DOC.PARENTDOCID,'
      '  DOC.IS_ATTACHMENT,'
      '  DOC.ROWID'
      'FROM'
      '  DOC'
      'where'
      '  DOCID = :DOCID')
    CachedUpdates = True
    OnNewRecord = qrySaveEmailAttachmentsNewRecord
    Left = 896
    Top = 694
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOCID'
        Value = nil
      end>
  end
  object qryDeleteOrphans: TUniSQL
    Connection = uniInsight
    SQL.Strings = (
      'DELETE FROM feetmp'
      '      WHERE time_TYPE = '#39'O'#39
      '        AND reason IS NULL'
      '        AND fileid IS NULL'
      '        AND author = :author')
    Left = 558
    Top = 645
    ParamData = <
      item
        DataType = ftString
        Name = 'author'
        ParamType = ptInput
        Value = nil
      end>
  end
  object procBillCreate: TUniStoredProc
    StoredProcName = 'BILL_CREATE'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := BILL_CREATE(:P_ENTITY, :P_NMATTER, :P_ADDFEES, :P_A' +
        'DDDISB, :P_ADDANTD, :P_ADDSUND, :P_ADDUPCRED, :P_ADDFEESUNDRIES,' +
        ' :P_ADDDISBSUNDRIES, :P_BILLTEMPLATE, :P_CREATED, :P_ADDSERVICEF' +
        'EE, :P_CREATEDBY);'
      'end;')
    Connection = uniInsight
    Left = 935
    Top = 118
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_ENTITY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_NMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDFEES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDDISB'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDANTD'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDSUND'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDUPCRED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDFEESUNDRIES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDDISBSUNDRIES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_BILLTEMPLATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDSERVICEFEE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_CREATEDBY'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_CREATE'
  end
  object UniConnPasswdReset: TUniConnection
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.Direct=True'
      'Oracle.IPVersion=ivIPBoth')
    Options.LocalFailover = True
    PoolingOptions.MaxPoolSize = 50
    PoolingOptions.MinPoolSize = 1
    PoolingOptions.ConnectionLifetime = 10000000
    PoolingOptions.Validate = True
    Debug = True
    Username = 'axiom'
    Server = '192.168.0.22:1521:marketing'
    LoginPrompt = False
    OnConnectionLost = uniInsightConnectionLost
    Left = 196
    Top = 7
    EncryptedPassword = '9EFF87FF96FF90FF92FF'
  end
  object qrySearches: TUniQuery
    UpdatingTable = 'searches'
    KeyFields = 'search_id'
    SQLInsert.Strings = (
      'INSERT INTO SEARCHES'
      
        '  (AVAILABLEONLINE, BILLINGTYPENAME, CLIENTREFERENCE, COMMENTS, ' +
        'DATEORDERED, DATECOMPLETED, DESCRIPTION, ORDERID, PARENTORDERID,' +
        ' ORDEREDBY, REFERENCE, RETAILERREFERENCE, RETAILERFEE, RETAILERF' +
        'EEGST, RETAILERFEETOTAL, SUPPLIERFEE, SUPPLIERFEEGST, SUPPLIERFE' +
        'ETOTAL, TOTALFEE, TOTALFEEGST, TOTALFEETOTAL, SERVICENAME, STATU' +
        'S, STATUSMESSAGE, DOWNLOADURL, ONLINEURL, ISBILLABLE, FILEHASH, ' +
        'EMAIL, CLIENTID, SEQUENCENUMBER)'
      'VALUES'
      
        '  (:AVAILABLEONLINE, :BILLINGTYPENAME, :CLIENTREFERENCE, :COMMEN' +
        'TS, :DATEORDERED, :DATECOMPLETED, :DESCRIPTION, :ORDERID, :PAREN' +
        'TORDERID, :ORDEREDBY, :REFERENCE, :RETAILERREFERENCE, :RETAILERF' +
        'EE, :RETAILERFEEGST, :RETAILERFEETOTAL, :SUPPLIERFEE, :SUPPLIERF' +
        'EEGST, :SUPPLIERFEETOTAL, :TOTALFEE, :TOTALFEEGST, :TOTALFEETOTA' +
        'L, :SERVICENAME, :STATUS, :STATUSMESSAGE, :DOWNLOADURL, :ONLINEU' +
        'RL, :ISBILLABLE, :FILEHASH, :EMAIL, :CLIENTID, :SEQUENCENUMBER)')
    SQLDelete.Strings = (
      'DELETE FROM SEARCHES'
      'WHERE'
      '  SEARCH_ID = :Old_SEARCH_ID')
    SQLUpdate.Strings = (
      'UPDATE SEARCHES'
      'SET'
      
        '  AVAILABLEONLINE = :AVAILABLEONLINE, BILLINGTYPENAME = :BILLING' +
        'TYPENAME, CLIENTREFERENCE = :CLIENTREFERENCE, COMMENTS = :COMMEN' +
        'TS, DATEORDERED = :DATEORDERED, DATECOMPLETED = :DATECOMPLETED, ' +
        'DESCRIPTION = :DESCRIPTION, ORDERID = :ORDERID, PARENTORDERID = ' +
        ':PARENTORDERID, ORDEREDBY = :ORDEREDBY, REFERENCE = :REFERENCE, ' +
        'RETAILERREFERENCE = :RETAILERREFERENCE, RETAILERFEE = :RETAILERF' +
        'EE, RETAILERFEEGST = :RETAILERFEEGST, RETAILERFEETOTAL = :RETAIL' +
        'ERFEETOTAL, SUPPLIERFEE = :SUPPLIERFEE, SUPPLIERFEEGST = :SUPPLI' +
        'ERFEEGST, SUPPLIERFEETOTAL = :SUPPLIERFEETOTAL, TOTALFEE = :TOTA' +
        'LFEE, TOTALFEEGST = :TOTALFEEGST, TOTALFEETOTAL = :TOTALFEETOTAL' +
        ', SERVICENAME = :SERVICENAME, STATUS = :STATUS, STATUSMESSAGE = ' +
        ':STATUSMESSAGE, DOWNLOADURL = :DOWNLOADURL, ONLINEURL = :ONLINEU' +
        'RL, ISBILLABLE = :ISBILLABLE, FILEHASH = :FILEHASH, EMAIL = :EMA' +
        'IL, CLIENTID = :CLIENTID, SEQUENCENUMBER = :SEQUENCENUMBER'
      'WHERE'
      '  SEARCH_ID = :Old_SEARCH_ID')
    SQLLock.Strings = (
      
        'SELECT SEARCH_ID, AVAILABLEONLINE, BILLINGTYPENAME, CLIENTREFERE' +
        'NCE, COMMENTS, DATEORDERED, DATECOMPLETED, DESCRIPTION, ORDERID,' +
        ' PARENTORDERID, ORDEREDBY, REFERENCE, RETAILERREFERENCE, RETAILE' +
        'RFEE, RETAILERFEEGST, RETAILERFEETOTAL, SUPPLIERFEE, SUPPLIERFEE' +
        'GST, SUPPLIERFEETOTAL, TOTALFEE, TOTALFEEGST, TOTALFEETOTAL, SER' +
        'VICENAME, STATUS, STATUSMESSAGE, DOWNLOADURL, ONLINEURL, ISBILLA' +
        'BLE, FILEHASH, EMAIL, CLIENTID, SEQUENCENUMBER FROM SEARCHES'
      'WHERE'
      '  SEARCH_ID = :Old_SEARCH_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT SEARCH_ID, AVAILABLEONLINE, BILLINGTYPENAME, CLIENTREFERE' +
        'NCE, COMMENTS, DATEORDERED, DATECOMPLETED, DESCRIPTION, ORDERID,' +
        ' PARENTORDERID, ORDEREDBY, REFERENCE, RETAILERREFERENCE, RETAILE' +
        'RFEE, RETAILERFEEGST, RETAILERFEETOTAL, SUPPLIERFEE, SUPPLIERFEE' +
        'GST, SUPPLIERFEETOTAL, TOTALFEE, TOTALFEEGST, TOTALFEETOTAL, SER' +
        'VICENAME, STATUS, STATUSMESSAGE, DOWNLOADURL, ONLINEURL, ISBILLA' +
        'BLE, FILEHASH, EMAIL, CLIENTID, SEQUENCENUMBER FROM SEARCHES'
      'WHERE'
      '  SEARCH_ID = :SEARCH_ID')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM SEARCHES'
      ''
      ')')
    Connection = uniInsight
    SQL.Strings = (
      'select searches.*, searches.rowid'
      'from searches')
    DetailFields = 'search_id'
    Left = 180
    Top = 678
  end
  object qryTmpProcess: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'SELECT   ft.ROWID, TRUNC (ft.created) AS created, ft.fileid, ft.' +
        'author,'
      
        '         ft.reason, ft.units, ft.rate, ft.amount, ft.taxcode, ft' +
        '.tax,'
      '         ft.taxrate, ft.elapsed, ft.empcode,'
      '         DECODE (ft.time_type,'
      '                 '#39'M'#39', m.title || '#39' '#39' || m.shortdescr,'
      '                 '#39'Overhead Time'#39
      '                ) AS matlocate,'
      
        '         ft.nmatter, ft.time_type, ft.fee_template, ft.start_dat' +
        'e,'
      
        '         ft.end_date, ft.items, ft.uniqueid, ft.billtype, ft.emp' +
        '_type, ft.notes, ft.mins, m.title,'
      
        '         (select name from employee where code = ft.author) as e' +
        'mp_name,'
      '         m.longdescr'
      '    FROM feetmp ft, matter m'
      '   WHERE ft.nmatter = m.nmatter(+)'
      '     AND ft.uniqueid = :uniqueid')
    Active = True
    Left = 259
    Top = 684
    ParamData = <
      item
        DataType = ftInteger
        Name = 'uniqueid'
        ParamType = ptInput
        Value = nil
      end>
  end
  object ppFileNoteRpt: TppReport
    AutoStop = False
    DataPipeline = plTmpProcess
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 60350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppFileNoteRptBeforePrint
    DeviceType = 'PDF'
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
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 487
    Top = 690
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plTmpProcess'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object pplblTransTitle: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblTransTitle'
        Border.mmPadding = 0
        Caption = 'lblTransTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 89451
        mmTop = 2910
        mmWidth = 18923
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Matter Fee Filenote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 82815
        mmTop = 8202
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 789
        mmLeft = 0
        mmTop = 15350
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 51329
      mmPrintPosition = 0
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Matter #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 17992
        mmTop = 3440
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 9790
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 21960
        mmTop = 15610
        mmWidth = 8732
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 22754
        mmTop = 21696
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Minutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 18521
        mmTop = 27781
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 20108
        mmTop = 34660
        mmWidth = 10584
        BandType = 4
        LayerName = Foreground1
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region1'
        Brush.Style = bsClear
        Pen.Style = psClear
        ShiftRelativeTo = ppDBMemo2
        Stretch = True
        Transparent = True
        mmHeight = 7144
        mmLeft = 0
        mmTop = 42335
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Notes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4498
          mmLeft = 21698
          mmTop = 43656
          mmWidth = 8995
          BandType = 4
          LayerName = Foreground1
        end
        object ppDBMemo3: TppDBMemo
          DesignLayer = ppDesignLayer2
          UserName = 'DBMemo3'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'NOTES'
          DataPipeline = plTmpProcess
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plTmpProcess'
          mmHeight = 4468
          mmLeft = 34660
          mmTop = 43656
          mmWidth = 148058
          BandType = 4
          LayerName = Foreground1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 3439
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'UNITS'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 21695
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'MINS'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 27781
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo2'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'REASON'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4763
        mmLeft = 34660
        mmTop = 34660
        mmWidth = 148167
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'LONGDESCR'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 9790
        mmWidth = 148167
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'TITLE'
        DataPipeline = plTmpProcess
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTmpProcess'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 15610
        mmWidth = 148197
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object pplblFooter: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblFooter'
        Border.mmPadding = 0
        Caption = 'lblFooter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 89959
        mmTop = 1852
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 789
        mmLeft = 0
        mmTop = 263
        mmWidth = 197300
        BandType = 7
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
  object UniStoredProc1: TUniStoredProc
    StoredProcName = 'BILL_CREATE'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := BILL_CREATE(:P_ENTITY, :P_NMATTER, :P_ADDFEES, :P_A' +
        'DDDISB, :P_ADDANTD, :P_ADDSUND, :P_ADDUPCRED, :P_ADDFEESUNDRIES,' +
        ' :P_ADDDISBSUNDRIES, :P_BILLTEMPLATE, :P_CREATED, :P_ADDSERVICEF' +
        'EE);'
      'end;')
    Connection = uniInsight
    Left = 645
    Top = 281
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_ENTITY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_NMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDFEES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDDISB'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDANTD'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDSUND'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDUPCRED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDFEESUNDRIES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDDISBSUNDRIES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_BILLTEMPLATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDSERVICEFEE'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_CREATE'
  end
  object qryGetBillTemplate: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select billtemplate, item_bill, code'
      'from'
      'matter, billtemplate'
      'where nmatter = :nmatter'
      'and matter.billtemplate = billtemplate.code')
    Left = 694
    Top = 556
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object procShowTax: TUniStoredProc
    StoredProcName = 'SHOWTAX'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := SHOWTAX(:PDAMOUNT, :DGSTFREE, :STYPE, :SFILEID, :SD' +
        'EFAULTTAX, :NNMATTER, :NNMEMO, :DTAXDATE);'
      'end;')
    Connection = uniInsight
    Left = 635
    Top = 739
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'PDAMOUNT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'DGSTFREE'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'STYPE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'SFILEID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'SDEFAULTTAX'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'NNMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'NNMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DTAXDATE'
        ParamType = ptInputOutput
        Value = nil
      end>
    CommandStoredProcName = 'SHOWTAX'
  end
  object qryInsertNNameDoc: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'insert into'
      'PHONEBOOK_DOC(nname, docid)'
      'values'
      '(:nname, :docid)')
    Left = 24
    Top = 738
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
  object tblStates: TUniTable
    TableName = 'STATES'
    Connection = uniInsight
    IndexFieldNames = 'NAME'
    Left = 140
    Top = 740
  end
  object dsStates: TUniDataSource
    DataSet = tblStates
    Left = 219
    Top = 743
  end
  object procAlterUserProfile: TUniStoredProc
    StoredProcName = 'ALTER_AXIOM_USER_PROFILE'
    Connection = uniInsight
    Left = 776
    Top = 744
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'U_PROFILE'
        Value = nil
      end>
  end
  object qryPrecedentList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT DISTINCT p.nprec, p.descr AS filename, p.PATH, 1 AS prec,'
      
        '                p.nprec AS docid, '#39'Precedents'#39' AS NAME, NULL AS ' +
        'descr,'
      
        '                NULL AS code, NULL AS doctype, NULL AS npreccate' +
        'gory,'
      '                NULL AS nprecclassification'
      '           FROM prec p CROSS JOIN mattertype m'
      '          WHERE (p.nprec IN (SELECT workflowtypelink.nprec'
      '                               FROM workflowtypelink'
      
        '                              WHERE workflowtype = m.workflowtyp' +
        'e))'
      'union'
      'SELECT   wdt.docid, wdt.documentname AS filename,'
      
        '         workflowdocparties (wdt.docid), 2 AS prec, wdt.docid AS' +
        ' docid, nvl(NAME, '#39'No Group'#39') as name,'
      
        '         wdt.description, wt.code, wdt.doctype, wdt.npreccategor' +
        'y,'
      '         wdt.nprecclassification'
      
        '    FROM workflowdocgroups wdg RIGHT OUTER JOIN workflowdoctempl' +
        'ates wdt'
      '         ON (wdg.groupid = wdt.groupid)'
      
        '         JOIN workflowtype wt ON (wdt.workflowtypecode = wt.code' +
        ')'
      '   WHERE (    wdt.workflow_only = '#39'N'#39
      
        '          AND wdt.workflowtypecode = NVL (:workflowtypecode, wor' +
        'kflowtypecode)'
      '         )'
      'ORDER BY 7, 2')
    MasterFields = 'TYPE'
    DetailFields = 'TYPE'
    Left = 313
    Top = 746
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end>
  end
  object dsPrecedentList: TUniDataSource
    DataSet = qryPrecedentList
    Left = 417
    Top = 748
  end
  object qryMatterTrustBankList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select *'
      'from bank'
      'where'
      'trust = '#39'T'#39
      'and'
      'entity = :entity'
      'and'
      'active = '#39'Y'#39
      'and '
      'acct <> :acct')
    Left = 79
    Top = 798
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'acct'
        Value = nil
      end>
  end
  object dsMatterTrustBankList: TUniDataSource
    DataSet = qryMatterTrustBankList
    Left = 230
    Top = 809
  end
  object qryValidateMatterTrust: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT 1'
      '  FROM (SELECT nmatter, acct'
      '          FROM matter'
      '         WHERE nmatter = :nmatter'
      '        UNION'
      '        SELECT nmatter, bank'
      '          FROM bank_matter_trust'
      '         WHERE nmatter = :nmatter)'
      ' WHERE acct = :acct')
    Left = 562
    Top = 694
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'acct'
        Value = nil
      end>
  end
  object TSSpellChecker: TdxSpellChecker
    CheckAsYouTypeOptions.Active = True
    DictionaryItems = <
      item
        DictionaryTypeClassName = 'TdxHunspellDictionary'
        DictionaryType.DictionaryPath = '.\Spelling\en_US.dic'
        DictionaryType.GrammarPath = '.\Spelling\en_US.aff'
        DictionaryType.Language = 3081
      end
      item
        DictionaryTypeClassName = 'TdxUserSpellCheckerDictionary'
        DictionaryType.Enabled = False
        DictionaryType.DictionaryPath = '.\Spelling\user.dic'
        DictionaryType.Options = []
      end>
    SpellingOptions.IgnoreRepeatedWords = True
    OnAddWord = TSSpellCheckerAddWord
    OnSpellingComplete = TSSpellCheckerSpellingComplete
    Left = 870
    Top = 754
  end
  object qryDocFolderExists: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'select folder_id from document_folders where nmatter = :p_nmatte' +
        'r and imp_pth = :p_imp_pth')
    Left = 648
    Top = 808
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_imp_pth'
        Value = nil
      end>
  end
  object qryDocFolderInsert: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'select  folder_id, descr, parent_id, nmatter, folder_level, tmpl' +
        '_id, imp_pth, ROWID'
      'from document_folders where folder_id = :p_folder_id')
    Left = 752
    Top = 808
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_folder_id'
        Value = nil
      end>
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfOffice11
    ScrollbarMode = sbmHybrid
    Left = 1014
    Top = 349
  end
  object qryDiaryLoc: TUniQuery
    UpdatingTable = 'DIARYLOC'
    KeyFields = 'LOCATION'
    SQLInsert.Strings = (
      'INSERT INTO DIARYLOC'
      '  (LOCATION)'
      'VALUES'
      '  (:LOCATION)')
    SQLDelete.Strings = (
      'DELETE FROM DIARYLOC'
      'WHERE'
      '  LOCATION = :Old_LOCATION')
    SQLUpdate.Strings = (
      'UPDATE DIARYLOC'
      'SET'
      '  LOCATION = :LOCATION'
      'WHERE'
      '  LOCATION = :Old_LOCATION')
    SQLLock.Strings = (
      'SELECT LOCATION FROM DIARYLOC'
      'WHERE'
      '  LOCATION = :Old_LOCATION'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT LOCATION FROM DIARYLOC'
      'WHERE'
      '  LOCATION = :LOCATION')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM DIARYLOC'
      ''
      ')')
    Connection = uniInsight
    SQL.Strings = (
      'select * from DIARYLOC'
      'WHERE'
      'upper(LOCATION) = upper(nvl(:LOCATION, LOCATION))'
      'order by location')
    Left = 1003
    Top = 746
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOCATION'
        Value = nil
      end>
  end
  object qryDiarySub: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      
        'select caption, descr, reminder_for from diary where entryid = :' +
        'entryid')
    Left = 384
    Top = 816
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entryid'
        Value = nil
      end>
  end
  object qryEmployeesFull: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT accesslevel, active, allowmultiplecopies, allow_trust_od,'
      
        '       authorisation_passwd, authorise_bills, auth_client_paymen' +
        't_limit,'
      
        '       auth_disbs_payment_limit, auto_process_timesheet, auto_ti' +
        'mer,'
      
        '       bank_line_approver, birthdate, branch, chargeable_hours_f' +
        'riday,'
      '       chargeable_hours_monday, chargeable_hours_saturday,'
      '       chargeable_hours_sunday, chargeable_hours_thursday,'
      
        '       chargeable_hours_tuesday, chargeable_hours_wednesday, cha' +
        'rt_suffix,'
      '       cheque_printer, classic_version, code, cost_per_hour,'
      
        '       currentaxiomationversion, daily_target_charge_units, defa' +
        'ult_entity,'
      
        '       def_cr_rate, dept, dflt_autotimer_task, dflt_time_rec_met' +
        'hod,'
      '       diarynotify, disbunrec_chart, disbwoff_chart, email,'
      
        '       email_incoming_fldr, email_profile_default, emp_default_u' +
        'rl, end_date,'
      
        '       entity, experience, fax, feewoff_chart, fee_alert_min_uni' +
        'ts, fee_chart,'
      
        '       fee_enquiry_access, fee_file_notes, givennames, grid_font' +
        '_size,'
      
        '       hide_fee_notes, hours_friday, hours_monday, hours_saturda' +
        'y,'
      
        '       hours_sunday, hours_thursday, hours_tuesday, hours_wednes' +
        'day, ilars,'
      
        '       ilars_number, infotrack_password, infotrack_user, isautho' +
        'r,'
      
        '       iscontroller, isfeeearner, isoperator, isparalegal, ispar' +
        'tner,'
      '       istime_recorder, label_printer, login, login_id,'
      
        '       matter_acc_payable_btn, matter_cheqreq_btn, matter_close_' +
        'btn,'
      
        '       matter_edit_btn, matter_edit_client_btn, matter_email_btn' +
        ','
      '       matter_fee_btn, matter_master_btn, matter_multiline_tabs,'
      '       matter_new_bill_btn, matter_open_btn, matter_payment_btn,'
      
        '       matter_receipt_btn, matter_research_btn, matter_search_bt' +
        'n,'
      '       matter_sms_btn, matter_snapshot_btn, matter_sundry_btn,'
      
        '       matter_timer_btn, matter_wkflow_btn, mat_ledg_gst_tick, m' +
        'onthly_bills,'
      
        '       monthly_time, NAME, nemployee, net_cost_hour, nfee_author' +
        'ity,'
      
        '       non_working_days, notes, outlook_signature, outlook_sync,' +
        ' PASSWORD,'
      
        '       phone, POSITION, process_time_on_exit, prof_fees, prof_fe' +
        'es_wo, rate,'
      
        '       rate_2, rate_3, rate_4, rate_class, receipt_printer, REFR' +
        'ESH,'
      
        '       releasenotesread, reopenlength, reportlevel, save_ts_time' +
        '_stamp, sex,'
      '       show_nav_bar, signatory, start_date, surname,'
      
        '       target_daily_charge_units, target_daily_nonbillable_units' +
        ','
      
        '       target_daily_oh_units, time_sheet_descr_drop, time_sheet_' +
        'sel_descr,'
      
        '       time_sheet_view_layout, trust_cheque_printer, trust_recei' +
        'pt_printer,'
      
        '       TYPE, user_name, use_decimal_units, view_emp_cheqreqs_onl' +
        'y,'
      
        '       view_restricted_matters, view_type, weekly_hours, work_fr' +
        'iday,'
      
        '       work_monday, work_saturday, work_sunday, work_thursday, w' +
        'ork_tuesday,'
      
        '       work_wednesday, ytd_bills, ytd_time, is_cashier, AUTHORIS' +
        'ATION_PASSWD,'
      '       is_credit_controller'
      '  FROM employee'
      'where code = nvl(:code, code)')
    Left = 832
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object procMatterCurrency: TUniStoredProc
    StoredProcName = 'get_matter_currency'
    SQL.Strings = (
      'begin'
      
        '  get_matter_currency(:PNMATTER, :PENTITY, :PENTITY_CURR_ID, :PB' +
        'ASE_CURR_ID, :PMATTER_CURR_ID, :PMATTER_CURR);'
      'end;')
    Connection = uniInsight
    Left = 992
    Top = 112
    ParamData = <
      item
        DataType = ftFloat
        Name = 'PNMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PENTITY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PENTITY_CURR_ID'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PBASE_CURR_ID'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PMATTER_CURR_ID'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PMATTER_CURR'
        ParamType = ptInputOutput
        Value = nil
      end>
    CommandStoredProcName = 'get_matter_currency'
  end
  object procCalcFXTotal: TUniStoredProc
    StoredProcName = 'CALCULATE_FX'
    SQL.Strings = (
      'begin'
      
        '  CALCULATE_FX(:PNCURRENCYBASE, :PNCURRENCYENTITY, :PNCURRENCYTR' +
        'AN, :PTRANSDATE, :PTRANSAMOUNT, :PCURRENCYVALBASE, :PCURRENCYVAL' +
        'ENTITY, :PCURRENCYVALTRAN, :PCURRENCYRATE, :PFXRATE);'
      'end;')
    Connection = uniInsight
    Left = 1008
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'PNCURRENCYBASE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PNCURRENCYENTITY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PNCURRENCYTRAN'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'PTRANSDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'PTRANSAMOUNT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'PCURRENCYVALBASE'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'PCURRENCYVALENTITY'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'PCURRENCYVALTRAN'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'PCURRENCYRATE'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'PFXRATE'
        ParamType = ptInputOutput
        Value = nil
      end>
    CommandStoredProcName = 'CALCULATE_FX'
  end
  object qryBankList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM BANK'
      'where entity = nvl(:entity, entity)'
      'and trust = nvl(:trust, trust)'
      'and active = '#39'Y'#39
      'Order By ACCT')
    Left = 925
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end>
  end
  object dsBankList: TUniDataSource
    DataSet = qryBankList
    Left = 1009
    Top = 405
  end
  object spAxiomEmail: TUniStoredProc
    StoredProcName = 'AXIOM.HTML_EMAIL'
    SQL.Strings = (
      'begin'
      
        '  AXIOM.HTML_EMAIL(:P_TO, :P_FROM, :P_SUBJECT, :P_TEXT, :P_HTML,' +
        ' :P_SMTP_HOSTNAME, :P_SMTP_PORTNUM);'
      'end;')
    Connection = uniInsight
    Left = 497
    Top = 786
    ParamData = <
      item
        DataType = ftString
        Name = 'P_TO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_FROM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_SUBJECT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_TEXT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_HTML'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_SMTP_HOSTNAME'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_SMTP_PORTNUM'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'AXIOM.HTML_EMAIL'
  end
  object qryDefaultBankList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT * FROM BANK'
      'where entity = nvl(:entity, entity)'
      'and trust = nvl(:trust, trust)'
      
        'and (acct In (Select DEFAULT_OFFICE_BANK From ENTITY Where entit' +
        'y = nvl(:entity, entity)) '
      
        'Or acct In (Select DEFAULT_CLIENT_BANK From ENTITY Where entity ' +
        '= nvl(:entity, entity)))'
      'Order By ACCT;'
      '')
    Left = 1029
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trust'
        Value = nil
      end>
  end
  object dsDefaultBankList: TUniDataSource
    DataSet = qryBankList
    Left = 1033
    Top = 69
  end
  object procCanAuthoriseBill: TUniStoredProc
    StoredProcName = 'CAN_AUTHORISE_BILLS'
    SQL.Strings = (
      'declare'
      '  v_RESULT boolean;'
      'begin'
      
        '  v_RESULT := CAN_AUTHORISE_BILLS(:P_AUTHOR, :P_NMATTER, :P_DEPT' +
        ');'
      '  :RESULT := sys.DIUTIL.BOOL_TO_INT(v_RESULT);'
      'end;')
    Connection = uniInsight
    Left = 588
    Top = 741
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_AUTHOR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_NMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_DEPT'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'CAN_AUTHORISE_BILLS'
  end
  object dsCurrencyList: TUniDataSource
    DataSet = qryCurrencyList
    Left = 1024
    Top = 568
  end
  object qryCurrencyList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select ISO4217_CURRENCY_CODE, max(ISO4217_CURRENCY_NAME)'
      'from'
      'country_list'
      'Group By ISO4217_CURRENCY_CODE'
      'Order By ISO4217_CURRENCY_CODE')
    Left = 1032
    Top = 512
  end
  object qryEmpAuthor: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'select code, name'
      'from employee where active = '#39'Y'#39' and isauthor = '#39'Y'#39
      'order by name')
    Left = 992
    Top = 652
  end
  object dsEmpAuthor: TUniDataSource
    DataSet = qryEmpAuthor
    Left = 1022
    Top = 706
  end
  object qryTaxList: TUniQuery
    Connection = uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR FROM TAXTYPE'
      'WHERE USE_FOR_BILLING = NVL(:USE_FOR_BILLING, USE_FOR_BILLING)'
      'Order By Code')
    Left = 813
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USE_FOR_BILLING'
        Value = nil
      end>
  end
  object dsTaxList: TUniDataSource
    DataSet = qryTaxList
    Left = 865
    Top = 293
  end
  object dsTmpProcess: TUniDataSource
    DataSet = qryTmpProcess
    Left = 350
    Top = 694
  end
  object plTmpProcess: TppDBPipeline
    DataSource = dsTmpProcess
    UserName = 'plTmpProcess'
    Left = 421
    Top = 697
    object plTmpProcessppField1: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 0
    end
    object plTmpProcessppField2: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plTmpProcessppField3: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plTmpProcessppField4: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object plTmpProcessppField5: TppField
      FieldAlias = 'REASON'
      FieldName = 'REASON'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 4
    end
    object plTmpProcessppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNITS'
      FieldName = 'UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plTmpProcessppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'RATE'
      FieldName = 'RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plTmpProcessppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plTmpProcessppField9: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object plTmpProcessppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object plTmpProcessppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAXRATE'
      FieldName = 'TAXRATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plTmpProcessppField12: TppField
      FieldAlias = 'ELAPSED'
      FieldName = 'ELAPSED'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 11
    end
    object plTmpProcessppField13: TppField
      FieldAlias = 'EMPCODE'
      FieldName = 'EMPCODE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object plTmpProcessppField14: TppField
      FieldAlias = 'MATLOCATE'
      FieldName = 'MATLOCATE'
      FieldLength = 201
      DisplayWidth = 201
      Position = 13
    end
    object plTmpProcessppField15: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 14
    end
    object plTmpProcessppField16: TppField
      FieldAlias = 'TIME_TYPE'
      FieldName = 'TIME_TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object plTmpProcessppField17: TppField
      FieldAlias = 'FEE_TEMPLATE'
      FieldName = 'FEE_TEMPLATE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
    object plTmpProcessppField18: TppField
      FieldAlias = 'START_DATE'
      FieldName = 'START_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 17
    end
    object plTmpProcessppField19: TppField
      FieldAlias = 'END_DATE'
      FieldName = 'END_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 18
    end
    object plTmpProcessppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEMS'
      FieldName = 'ITEMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object plTmpProcessppField21: TppField
      FieldAlias = 'UNIQUEID'
      FieldName = 'UNIQUEID'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 20
    end
    object plTmpProcessppField22: TppField
      FieldAlias = 'BILLTYPE'
      FieldName = 'BILLTYPE'
      FieldLength = 22
      DisplayWidth = 22
      Position = 21
    end
    object plTmpProcessppField23: TppField
      FieldAlias = 'EMP_TYPE'
      FieldName = 'EMP_TYPE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 22
    end
    object plTmpProcessppField24: TppField
      FieldAlias = 'NOTES'
      FieldName = 'NOTES'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 23
    end
    object plTmpProcessppField25: TppField
      FieldAlias = 'MINS'
      FieldName = 'MINS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 24
    end
    object plTmpProcessppField26: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 140
      DisplayWidth = 140
      Position = 25
    end
    object plTmpProcessppField27: TppField
      FieldAlias = 'EMP_NAME'
      FieldName = 'EMP_NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 26
    end
    object plTmpProcessppField28: TppField
      FieldAlias = 'LONGDESCR'
      FieldName = 'LONGDESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 27
    end
  end
end
