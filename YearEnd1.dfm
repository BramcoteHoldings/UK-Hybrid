object frmYearEnd1: TfrmYearEnd1
  Left = 239
  Top = 213
  BorderStyle = bsDialog
  Caption = 'Profit and Loss Year End Close 1'
  ClientHeight = 229
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 7
    Top = 142
    Width = 113
    Height = 15
    Caption = 'Update Year End as at'
  end
  object Label2: TLabel
    Left = 7
    Top = 169
    Width = 156
    Height = 15
    Caption = 'Profit/Loss summary account'
  end
  object mmoMessage: TMemo
    Left = 7
    Top = 7
    Width = 350
    Height = 120
    Color = clInfoBk
    Ctl3D = False
    Lines.Strings = (
      
        'This is the first part of the year end closing procedure. It wil' +
        'l '
      
        'journal the profit and loss accounts (revenue and expenditure, o' +
        'r'
      'income and expense) into the Profit & Loss Summary ledger. '
      ''
      
        'After this is done, you should manually journal the Profit & Los' +
        's '
      'Summary ledger into the partners'#39' Capital accounts in the ratio '
      'required before doing the Year End 2 procedure.')
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object btnOK: TBitBtn
    Left = 210
    Top = 198
    Width = 69
    Height = 23
    Caption = '&OK'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 282
    Top = 198
    Width = 70
    Height = 23
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object dtpYearEnd: TDateTimePicker
    Left = 168
    Top = 137
    Width = 90
    Height = 23
    Date = 37072.851911435200000000
    Time = 37072.851911435200000000
    TabOrder = 3
  end
  object tbPLSum: TEdit
    Left = 168
    Top = 166
    Width = 90
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object btnLedger: TBitBtn
    Left = 261
    Top = 166
    Width = 23
    Height = 20
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
      055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
      88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
      F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
      F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
      0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
      00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
      0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
      05555575FF777777755555500055555555555557775555555555}
    NumGlyphs = 2
    TabOrder = 5
    OnClick = btnLedgerClick
  end
  object qryYearEnd: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '-- ENTITY changes '
      'alter table AXIOM2.ENTITY'
      'add (PROFIT_APPR_ACCT VARCHAR2(12),'
      #9' LAST_ROLLOVER DATE);'
      ''
      '-- EMPTYPESECURITY changes'
      'insert into AXIOM2.EMPTYPESECURITY'
      '(EMPTYPE, ITEM, ENABLED)'
      'values'
      '('#39'SAD'#39', '#39'Prior-PeriodTransactions'#39', 1); '
      ''
      ''
      '-- Stored Procedures '
      'CREATE OR REPLACE FUNCTION CHECK_AUTHORIZED'
      ' (TRANS_TYPE IN VARCHAR2,'
      '  USER_CODE IN VARCHAR2)'
      'RETURN CHAR'
      'IS'
      '  cAuthority CHAR(1);'
      'BEGIN'
      '  IF TRANS_TYPE = '#39'PPT'#39' THEN '
      '    SELECT DECODE(NVL(ENABLED, 0), 1, '#39'T'#39', '#39'F'#39')'
      '    INTO cAuthority '
      '    FROM EMPTYPESECURITY'
      '    WHERE EMPTYPE = (SELECT TYPE'
      '    '#9#9#9#9' FROM EMPLOYEE'
      #9'  '#9#9#9'     WHERE CODE = USER_CODE) '
      '    AND ITEM = '#39'Prior-PeriodTransactions'#39';'
      #9
      #9'RETURN cAuthority;'
      '  END IF;'
      'END;'
      '/'
      ''
      ''
      'CREATE OR REPLACE FUNCTION NEXTNJOURNAL'
      '( aENTITY IN VARCHAR2'
      ')'
      ' RETURN NUMBER'
      ' IS'
      ''
      'iNJOURNAL NUMBER;'
      ''
      'BEGIN'
      
        '  SELECT NJOURNAL+1 INTO iNJOURNAL FROM ENTITY WHERE CODE = aENT' +
        'ITY;'
      '  UPDATE ENTITY SET NJOURNAL = iNJOURNAL;'
      '  RETURN iNJOURNAL;'
      'END;'
      '/'
      ''
      ''
      '-- Rollover Code'
      'CREATE OR REPLACE PROCEDURE CREATE_PAJ'
      ' (aROLLOVER_DATE IN DATE,'
      '  aACCT IN VARCHAR2,'
      '  aCHART IN VARCHAR2,'
      '  aAMOUNT IN OUT NUMBER,'
      '  ATAX IN OUT NUMBER,'
      '  aWHO IN VARCHAR2)'
      'IS'
      '  cAccountType VARCHAR2(1);'
      '  dRolloverDate DATE;'
      '  nAMOUNT NUMBER(17, 2);'
      '  nTAX NUMBER(17, 2);'
      '  nNEXTJOURNAL NUMBER(10);'
      'BEGIN'
      '  -- Only for Income or Expense accounts'
      '  SELECT TYPE'
      '  INTO cAccountType'
      '  FROM CHART'
      '  WHERE BANK = aACCT'
      '  AND CODE = aCHART;'
      ''
      '  IF cAccountType IN ('#39'I'#39', '#39'E'#39')  THEN'
      '    -- Accumulate the totals of transactions in this entity'
      ''
      '    SELECT LAST_ROLLOVER'
      '    INTO dRolloverDate'
      '    FROM ENTITY'
      '    WHERE CODE = aACCT;'
      ''
      '    IF aACCT IS NULL THEN'
      ''
      '      -- Accumulate all tranasctions'
      #9'  SELECT SUM(NVL(AMOUNT, 0)), SUM(NVL(TAX, 0))'
      '  '#9'  INTO nAMOUNT, nTAX'
      #9'  FROM TRANSITEM'
      '  '#9'  WHERE ACCT = aACCT'
      #9'  AND CHART = aCHART;'
      ''
      '    ELSE'
      '      -- Accumulate all transactions since last PAJ '
      #9'  SELECT SUM(NVL(AMOUNT, 0)), SUM(NVL(TAX, 0))'
      '  '#9'  INTO nAMOUNT, nTAX'
      #9'  FROM TRANSITEM'
      '  '#9'  WHERE ACCT = aACCT'
      #9'  AND CHART = aCHART'
      #9'  AND CREATED > (SELECT MAX(CREATED)'
      #9'                 FROM TRANSITEM'
      #9#9#9'   '#9'     WHERE ACCT = aACCT'
      #9'                 AND CHART = aCHART'
      '                     AND OWNER_CODE = '#39'PAJ'#39');'
      ''
      '    END IF;'
      ''
      '    -- Create a Profit Accumulation Journal entry'
      '  '
      '    nNEXTJOURNAL:= NEXTNJOURNAL(aACCT);'
      ' '
      '  '
      '    INSERT INTO JOURNAL'
      '    (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TYPE, '
      '     TRUST, SYSTEM_DATE)'
      '    VALUES'
      
        '    (aROLLOVER_DATE, aACCT, -nAMOUNT - nTAX, nNEXTJOURNAL, '#39'Prof' +
        'it Appropriation Journal'#39', 4, '#39'G'#39', SYSDATE);'
      ' '
      
        '    -- Create a PAJ entry in this account, and a reverse entry i' +
        'n the PAA for this entity'
      '    INSERT INTO TRANSITEM'
      
        '      (ACCT, CHART, CREATED, NJOURNAL, DESCR, OWNER_CODE, AMOUNT' +
        ', TAX, WHO)'
      '    VALUES'
      
        '      (aACCT, aCHART, aROLLOVER_DATE, nNEXTJOURNAL, '#39'Profit Appr' +
        'opriation Journal'#39', '#39'PAJ'#39', -nAMOUNT, -nTAX, aWHO);'
      #9'  '
      #9'aAMOUNT:= aAMOUNT + nAMOUNT;'
      #9'aTAX:= aTAX + nTAX;'
      '  END IF;'
      'END;'
      '/'
      ''
      'CREATE OR REPLACE PROCEDURE DO_ROLLOVER'
      ' (aROLLOVER_DATE IN DATE,'
      '  aENTITY IN VARCHAR2,'
      '  aWHO IN VARCHAR2)'
      'IS'
      '  CURSOR ACCTS_CURSOR IS'
      
        '    SELECT TYPE, CODE FROM CHART WHERE BANK = aENTITY AND TYPE I' +
        'N ('#39'I'#39', '#39'E'#39');'
      '--  ACCT_VAL ACCTS_CURSOR%ROWTYPE;'
      ''
      '  nNEXTJOURNAL NUMBER(10);'#9
      '  nTOTAL NUMBER(17, 2);'
      '  nTAX NUMBER(17, 2);'
      '  cPAA VARCHAR2(12);'
      '  PAA_NOT_FOUND EXCEPTION;'
      'BEGIN '
      
        '  -- Roll Over the accounts up to the given rollover date for th' +
        'e given entity '
      '  nTOTAL:= 0.0;'
      '  nTAX:= 0.0;'
      '  '
      '  FOR ACCT_VAL IN ACCTS_CURSOR'
      '    LOOP'
      
        '      CREATE_PAJ(aROLLOVER_DATE, aENTITY, ACCT_VAL.CODE, nTOTAL,' +
        ' nTAX, aWHO);'
      #9'END LOOP; '
      ''
      '  SELECT PROFIT_APPR_ACCT'
      '  INTO cPAA'
      '  FROM ENTITY'
      '  WHERE CODE = aENTITY;'
      ''
      '    -- Create a Profit Accumulation Journal entry'
      '  '
      '    nNEXTJOURNAL:= NEXTNJOURNAL(aENTITY);'
      ' '
      '  '
      '    INSERT INTO JOURNAL'
      '    (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TYPE, '
      '     TRUST, SYSTEM_DATE)'
      '    VALUES'
      
        '    (aROLLOVER_DATE, aENTITY, nTOTAL + nTAX, nNEXTJOURNAL, '#39'Prof' +
        'it Appropriation Journal'#39', 4, '#39'G'#39', SYSDATE);'
      '  '
      '  '
      '  -- Create a reverse entry in the PAA for this entity'
      ''
      '  IF cPAA IS NOT NULL THEN'
      '    INSERT INTO TRANSITEM'
      
        '      (ACCT, CHART, CREATED, DESCR, OWNER_CODE, AMOUNT, TAX, WHO' +
        ')'
      '    VALUES'
      
        '      (aENTITY, cPAA, aROLLOVER_DATE, '#39'Profit Appropriation Jour' +
        'nal'#39', '#39'PAJ'#39', nTOTAL, nTAX, aWHO);'
      '  ELSE'
      '    RAISE PAA_NOT_FOUND;'
      '  END IF;'
      ''
      '  -- Now update the ENTITY.LAST_ROLLOVER date field '
      '  UPDATE ENTITY'
      '  SET LAST_ROLLOVER = aROLLOVER_DATE'
      '  WHERE CODE = aENTITY;'
      #9' '
      'EXCEPTION'
      '  WHEN PAA_NOT_FOUND THEN'
      '    RAISE_APPLICATION_ERROR(-20002,'
      
        #9'      '#39'Profit Appropriation Account not configured for entity "' +
        #39' || aENTITY || '#39'"'#39');'
      #9
      'END;'
      '/'
      ''
      ''
      '-- Prior-Period Journal code '
      'CREATE OR REPLACE PROCEDURE CREATE_PPJ'
      ' (aACCT IN VARCHAR2, '
      '  aCHART IN VARCHAR2, '
      '  aCREATED IN DATE, '
      '  aAMOUNT IN NUMBER, '
      '  aTAX IN NUMBER,'
      '  aWHO IN VARCHAR2)'
      'IS'
      '  nNEXTJOURNAL NUMBER(10);'
      '  cPAA VARCHAR2(12);'
      '  PAA_NOT_FOUND EXCEPTION;'
      'BEGIN'
      '  -- Create a Prior-Period Journal entry'
      '  '
      '  nNEXTJOURNAL:= NEXTNJOURNAL(aACCT);'
      ' '
      '  '
      '  INSERT INTO JOURNAL'
      '  (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TYPE, '
      '   TRUST, SYSTEM_DATE)'
      '  VALUES'
      
        '  (aCREATED, aACCT, aAMOUNT + aTAX, nNEXTJOURNAL, '#39'Prior-Period ' +
        'Journal'#39', 5, '#39'G'#39', SYSDATE);'
      '  '
      
        '  -- Create a PPJ entry in this account, and a reverse entry in ' +
        'the PAA for this entity'
      '  INSERT INTO TRANSITEM'
      
        '    (ACCT, CHART, CREATED, NJOURNAL, DESCR, OWNER_CODE, AMOUNT, ' +
        'TAX, WHO)'
      '  VALUES'
      
        '    (aACCT, aCHART, aCREATED, nNEXTJOURNAL, '#39'Prior-Period Journa' +
        'l'#39', '#39'PPJ'#39', -aAMOUNT, -aTAX, aWHO);'
      #9
      '  SELECT PROFIT_APPR_ACCT '
      '  INTO cPAA'
      '  FROM ENTITY'
      '  WHERE CODE = aACCT;'
      '  '
      '  IF cPAA IS NOT NULL THEN'
      '    INSERT INTO TRANSITEM'
      
        '      (ACCT, CHART, CREATED, NJOURNAL, DESCR, OWNER_CODE, AMOUNT' +
        ', TAX, WHO)'
      '    VALUES'
      
        '      (aACCT, cPAA, aCREATED, nNEXTJOURNAL, '#39'Prior-Period Journa' +
        'l'#39', '#39'PPJ'#39', aAMOUNT, aTAX, aWHO);'
      '  ELSE'
      '    RAISE PAA_NOT_FOUND;'
      '  END IF;  '
      'EXCEPTION'
      '  WHEN PAA_NOT_FOUND THEN'
      '    RAISE_APPLICATION_ERROR(-20002, '
      
        #9'      '#39'Profit Appropriation Account not configured for entity "' +
        #39' || aACCT || '#39'"'#39');'#9'  '
      'END;'
      '/'
      ''
      ''
      '-- TRANSITEM changes '
      'alter table AXIOM2.TRANSITEM'
      'add (SYSTEMDATE DATE,'
      '     WHO VARCHAR2(3));'
      ''
      'update transitem'
      'set SYSTEMDATE = CREATED'
      'where SYSTEMDATE is null;'
      ''
      ''
      'CREATE OR REPLACE TRIGGER "AXIOM2".TRG_BI_TRANSITEM'
      ' BEFORE INSERT'
      ' ON TRANSITEM'
      ' FOR EACH ROW'
      '-- PL/SQL Block'
      'BEGIN'
      ''
      '    IF :NEW.NACCOUNT IS NULL THEN'
      #9'  :NEW.NACCOUNT := NEXTNACCOUNTNUM;'
      '    END IF;'
      ''
      #9'-- Set the System Date'
      #9'IF :NEW.SYSTEMDATE IS NULL THEN'
      #9'  :NEW.SYSTEMDATE:= SYSDATE;'
      #9'END IF;'
      'END;'
      '/'
      ''
      'CREATE OR REPLACE TRIGGER "AXIOM2".TRG_BUI_TRANSITEM'
      '  BEFORE INSERT OR UPDATE -- OR DELETE'
      '  ON TRANSITEM'
      '  FOR EACH ROW'
      '-- PL/SQL Block'
      'DECLARE'
      '  dTransactionDate DATE;'
      '  dLockDate DATE;'
      '  cEntity VARCHAR2(2);'
      '  cUser VARCHAR2(3);'
      '  dRolloverDate DATE;'
      '  '
      '  UNAUTHORIZED EXCEPTION;'
      '  '
      'BEGIN'
      '  -- Check if chart is locked for transaction date (created) '
      '  IF INSERTING OR UPDATING THEN'
      '    dTransactionDate:= :NEW.CREATED; '
      #9' '
      '    cEntity:= :NEW.ACCT;  '
      '    '
      #9'SELECT LOCKDATE '
      #9'INTO dLockDate'
      #9'FROM ENTITY'
      #9'WHERE CODE = cEntity;'
      #9
      #9'IF dLockDate >= dTransactionDate THEN'
      #9'  -- Accounts have been locked for this period.  '
      ''
      
        #9'  -- Does the user have the authority to post this transaction ' +
        'to a locked period?'
      #9'  IF CHECK_AUTHORIZED('#39'PPT'#39', :NEW.WHO) = '#39'T'#39' THEN'
      #9'    -- If so, post the change.'
      #9#9'NULL;'
      #9'  ELSE'
      
        #9'    -- If not, raise an exception and do not allow the transact' +
        'ion to be posted.'
      #9#9'RAISE UNAUTHORIZED;'
      ''
      #9'  END IF;'
      #9'END IF;'
      #9
      
        #9'-- now check if the account has been rolled-over for the period' +
        ' of the transaction '
      #9'-- if so, post a PPJ to the account and to the PAA '
      #9
      #9'SELECT LAST_ROLLOVER '
      #9'INTO dRolloverDate'
      #9'FROM ENTITY'
      #9'WHERE CODE = cEntity;'
      #9
      #9'IF dRolloverDate >= dTransactionDate THEN'
      #9'  -- Account has been rolled over'
      #9'  -- create a PPJ entry in this account and also in the PAA '
      #9'  CREATE_PPJ(:NEW.ACCT, :NEW.CHART, :NEW.CREATED,  '
      #9'             :NEW.AMOUNT, :NEW.TAX, :NEW.WHO);'
      #9'END IF;'
      #9
      '/*'
      '  Code removed 22.10.2002 GG'
      '  '
      
        '  Not required: Delete is not a required action because deleting' +
        ' from the database can '
      '  '#9'  '#9#9#9'only happen from within an SQL tool such as TOAD.'
      #9#9#9#9
      #9#9#9#9'JR has authorised that this is not required.'
      '  '
      '  ELSE '
      '    -- DELETING '
      '    dTransactionDate:= :OLD.CREATED; '
      ''
      '    cEntity:= :OLD.ACCT;'
      ''
      #9'SELECT LOCKDATE '
      #9'INTO dLockDate'
      #9'FROM ENTITY'
      #9'WHERE CODE = cEntity;'
      #9
      #9'IF dLockDate >= dTransactionDate THEN'
      #9'  -- Accounts have been locked for this period.'
      ''
      
        #9'  -- Does the user have the authority to delete this transactio' +
        'n from a locked period? '
      #9'  IF CHECK_AUTHORIZED('#39'PPT'#39', :OLD.WHO) = '#39'T'#39' THEN'
      #9'    -- If so, delete the record.'
      #9#9'NULL;'
      #9'  ELSE'
      
        #9'    -- If not, raise an exception and do not allow the transact' +
        'ion to be deleted.'
      #9#9'RAISE UNAUTHORIZED;'
      #9#9
      #9'  END IF;'
      #9'END IF;'
      ''
      
        #9'-- now check if the account has been rolled-over for the period' +
        ' of the transaction '
      #9'-- if so, post a PPJ to the account and to the PAA '
      #9
      #9'SELECT LAST_ROLLOVER '
      #9'INTO dRolloverDate'
      #9'FROM ENTITY'
      #9'WHERE CODE = cEntity;'
      #9
      #9'IF dRolloverDate >= dTransactionDate THEN'
      #9'  -- Account has been rolled over'
      #9'  -- create a PPJ entry in this account and also in the PAA '
      #9'  CREATE_PPJ(:OLD.ACCT, :OLD.CHART, :OLD.CREATED,  '
      #9'             :OLD.AMOUNT, :OLD.TAX, :OLD.WHO);'
      #9'END IF;'
      #9
      '*/'
      '  END IF;'
      '  '
      'EXCEPTION'
      '  WHEN UNAUTHORIZED THEN'
      '    RAISE_APPLICATION_ERROR(-20001, '
      
        #9'      '#39'You do not have authority to post Prior-Period Transacti' +
        'ons'#39');'
      #9
      'END;'
      '/'
      '')
    Left = 272
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NEW'
        Value = nil
      end>
  end
  object qryChart: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT ADDTO FROM CHART WHERE ADDTO IS NOT NULL')
    Left = 304
    Top = 16
  end
  object qryJournalInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO JOURNAL'
      '  (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TYPE, '
      '   TRUST, SYSTEM_DATE)'
      'VALUES'
      '  (:CREATED, :ACCT, :AMOUNT, :NJOURNAL, :REASON, :TYPE, '
      '   '#39'G'#39', SysDate)')
    Left = 272
    Top = 48
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
        Name = 'TYPE'
        Value = nil
      end>
  end
  object qryTransitemInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO TRANSITEM'
      '  (ACCT, AMOUNT, CHART, CREATED, DESCR, NACCOUNT, NJOURNAL,'
      '   REFNO, NOWNER, OWNER_CODE, WHO)'
      'VALUES'
      
        '  (:ACCT, :AMOUNT, :CHART, :CREATED, :DESCR, :NACCOUNT, :NJOURNA' +
        'L,'
      '   :REFNO, :NOWNER, :OWNER_CODE, :WHO)')
    Left = 304
    Top = 48
    ParamData = <
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
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NACCOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OWNER_CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WHO'
        Value = nil
      end>
  end
end
