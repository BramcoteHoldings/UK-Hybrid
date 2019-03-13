object frmReceiptPrint: TfrmReceiptPrint
  Left = 654
  Top = 82
  Caption = 'Receipt Printing'
  ClientHeight = 215
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qryReceipt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT R.*, E.NAME '
      'FROM EMPLOYEE E, RECEIPT R '
      'WHERE NRECEIPT = :P_Nreceipt'
      'and R.WHO = E.USER_NAME(+)')
    CachedUpdates = True
    Left = 135
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nreceipt'
        Value = nil
      end>
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT A.AMOUNT, A.DESCR, A.APPROVAL, A.CREATED, A.ACCT, A.NMATT' +
        'ER, A.REFNO,'
      
        '  A.TYPE, A.NCLIENT, A.PAYER, A.TRUST, A.BILLED, A.FILEID, A.CLI' +
        'ENT_NAME,'
      
        '  A.SYSTEM_DATE, A.MATTER_DESC, A.PRIORBALANCE,A.DCLEARDATE, B.M' +
        'ODBY,'
      
        '  B.REFNO AS BILLREFNO,DECODE(A.TRUST,'#39'T'#39',0,A.DISB*-1) as DISB_A' +
        'MNT,DECODE(A.TRUST,'#39'T'#39',A.AMOUNT*-1,0) as TRUST_AMNT,'
      
        '  initcap(to_words(a.amount)) as word_amount,initcap(to_words(DE' +
        'CODE(A.TRUST,'#39'T'#39',A.AMOUNT*-1,0))) as TRUST_AMNT_WORDS '
      'FROM ALLOC A, NMEMO B'
      'WHERE A.NRECEIPT = :P_Nreceipt'
      '  AND A.NMEMO = B.NMEMO(+)')
    CachedUpdates = True
    Left = 85
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nreceipt'
        Value = nil
      end>
  end
  object qryPhonebook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT P.* FROM PHONEBOOK P'
      'WHERE P.NNAME=:NNAME')
    CachedUpdates = True
    Left = 138
    Top = 154
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end>
  end
  object qryPrintedUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE RECEIPT SET PRINTED = '#39'Y'#39' WHERE NRECEIPT = :NRECEIPT')
    CachedUpdates = True
    Left = 129
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end>
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '/*DEFINED IN MISCFUNC*/'
      'SELECT M.*'
      
        ',decode(nvl(M.RATE,0),'#39'0'#39',M.RATE,M.FEECODE) AS RateDescr,decode(' +
        'nvl(M.RATE,0),'#39'0'#39',BRAN.Descr,NULL)'
      'AS BranchDescr,FT.TAX AS TaxWip'
      ' ,UFT.TAX AS TaxUnBillWip'
      ' ,AT.TAX TaxDisb'
      ' ,UAT.TAX As TaxUnBillDisb'
      ' ,CR.TAX AS TaxUpCred, UCR.TAX AS TaxUnBillUpCred'
      ' ,CT.TAX TaxAntd'
      ' ,UCT.TAX TaxUnBillAntd'
      ' ,ST.TAX TaxSund'
      ' ,UST.TAX TaxUnBillSund'
      ' ,UBD.AMOUNT CAL_UNBILL_DISB'
      ' ,UBAD.AMOUNT CAL_UNBILL_ANTD'
      ' ,WIP.AMOUNT CAL_UNBILL_FEES'
      ' ,BFEE.AMOUNT CAL_BILL_FEES'
      ' ,TBAL.AMOUNT CAL_TRUST_BAL'
      ' ,CTBAL.AMOUNT CAL_CL_TRUST_BAL'
      ' ,DEB.AMOUNT CAL_DEBTORS'
      ' ,FT.TAX + AT.TAX + CT.TAX + ST.TAX  + CR.TAX TaxTotal'
      ' ,MT.DESCR as MATTER_TYPE'
      ' ,M.ROWID'
      'FROM MATTERTYPE MT, MATTER M,'
      '/*CALC TAX VALUES HERE*/'
      
        '(SELECT NVL(SUM(TAX),0) TAX FROM FEE WHERE BILLED  = '#39'Y'#39' AND NMA' +
        'TTER = :P_File AND nvl(TYPE,'#39'NA'#39') <> '#39'wo'#39') FT,'
      
        '(SELECT NVL(SUM(TAX),0) TAX FROM FEE WHERE BILLED  = '#39'N'#39' AND NMA' +
        'TTER = :P_File AND nvl(TYPE,'#39'NA'#39') <> '#39'wo'#39') UFT,'
      
        '(SELECT NVL(SUM(TAX),0) *-1 TAX FROM ALLOC WHERE BILLED = '#39'Y'#39' AN' +
        'D NMATTER = :P_File AND NINVOICE IS NOT NULL AND TYPE not in ('#39'J' +
        '1'#39','#39'J2'#39')) CR,'
      
        '(SELECT NVL(SUM(TAX),0) *-1 TAX FROM ALLOC WHERE BILLED = '#39'N'#39' AN' +
        'D NMATTER = :P_File AND NINVOICE IS NOT NULL AND TYPE not in ('#39'J' +
        '1'#39','#39'J2'#39')) UCR,'
      
        '(SELECT NVL(SUM(TAX),0) *-1 TAX FROM ALLOC WHERE BILLED = '#39'Y'#39' AN' +
        'D NMATTER = :P_FilE AND NINVOICE IS NULL AND TYPE not in ('#39'J1'#39','#39 +
        'J2'#39')) AT,'
      
        '(SELECT NVL(SUM(TAX),0) *-1 TAX FROM ALLOC WHERE BILLED = '#39'N'#39' AN' +
        'D NMATTER = :P_File AND NINVOICE IS NULL AND TYPE not in ('#39'J1'#39','#39 +
        'J2'#39')) UAT,'
      
        '(SELECT NVL(SUM(TAX),0)  TAX FROM CHEQREQ WHERE BILLED = '#39'Y'#39' AND' +
        ' NMATTER = :P_File) CT,'
      
        '(SELECT NVL(SUM(TAX),0)  TAX FROM CHEQREQ WHERE BILLED = '#39'N'#39' AND' +
        ' NMATTER = :P_File) UCT,'
      
        '(SELECT NVL(SUM(TAX),0)  TAX FROM SUNDRY WHERE BILLED = '#39'Y'#39' AND ' +
        'NMATTER = :P_File AND nvl(TYPE,'#39'NA'#39') <> '#39'wo'#39') ST,'
      
        '(SELECT NVL(SUM(TAX),0)  TAX FROM SUNDRY WHERE BILLED = '#39'N'#39' AND ' +
        'NMATTER = :P_File AND nvl(TYPE,'#39'NA'#39') <> '#39'wo'#39') UST,'
      '/*CALC AMOUNTS HERE*/'
      
        '(select nvl(sum(nvl(amount  ,0)),0) amount from cheqreq where nm' +
        'atter = :P_File and billed = '#39'N'#39') UBAD,'
      
        '(select nvl(sum(nvl(amount * -1,0)),0) as AMOUNT from alloc wher' +
        'e nmatter = :P_File and nvl(billed,'#39'N'#39') = '#39'N'#39' AND nvl(TRUST,'#39'G'#39')' +
        ' <> '#39'T'#39' and (nvl(ncheque,0) > 0 or (nvl(njournal,0) > 0and type ' +
        '= '#39'J2'#39'))) UBD,'
      
        '(select nvl(sum(nvl(amount,0)),0) as AMOUNT from fee where nmatt' +
        'er = :P_File and billed = '#39'N'#39') WIP,'
      
        '(select nvl(sum(amount),0) as AMOUNT from fee where nmatter = :P' +
        '_File and billed = '#39'Y'#39') BFEE,'
      
        '(select nvl(sum(amount),0) as amount from alloc where nmatter = ' +
        ':P_File and  trust = '#39'T'#39') TBAL,'
      
        '(select nvl(sum(amount),0) as amount from alloc where nmatter = ' +
        ':P_File and  trust = '#39'T'#39' and cleared = '#39'Y'#39') CTBAL,'
      '(SELECT SUM(AMOUNT)as amount from'
      '        (SELECT (NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)) as AMOUNT'
      '         FROM ALLOC'
      '         WHERE ALLOC.NMATTER = :p_file'
      
        '         AND ALLOC.TRUST <> '#39'T'#39' AND ALLOC.TYPE <> '#39'DR'#39' AND (ALLO' +
        'C.NRECEIPT <> 0 OR ALLOC.TYPE = '#39'J1'#39' OR ALLOC.TYPE = '#39'RF'#39')'
      '         UNION ALL'
      
        '         SELECT (NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)' +
        '+NVL(TAX,0))*-1 as AMOUNT'
      '         FROM NMEMO'
      '         WHERE NMATTER = :p_file'
      '         AND DISPATCHED IS NOT NULL'
      '         AND RV_TYPE <> '#39'D'#39')) DEB,'
      '(SELECT CODE,DESCR FROM BRANCH) BRAN'
      'WHERE M.NMATTER = :P_File'
      'AND M.BRANCH = BRAN.CODE (+)'
      'AND M.TYPE = MT.CODE'
      '')
    Left = 84
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object QryAllocTotals: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM(A.AMOUNT)'
      
        '  ,sum(DECODE(A.TRUST,'#39'T'#39',0,A.AMOUNT)) as DISB_AMNT,sum(DECODE(A' +
        '.TRUST,'#39'T'#39',A.AMOUNT,0)) as TRUST_AMNT'
      'FROM ALLOC A'
      'WHERE A.NRECEIPT = :P_Nreceipt')
    CachedUpdates = True
    Left = 239
    Top = 23
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nreceipt'
        Value = nil
      end>
  end
  object qryTransItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      '  chart,'
      '  who'
      'from'
      '  transItem'
      'where'
      '  amount >= 0 and'
      '  nreceipt = :P_Nreceipt and'
      '  acct = :acct')
    Left = 20
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nreceipt'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'acct'
        Value = nil
      end>
  end
  object Report: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    EmailSettings.Enabled = True
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
    EmailSettings.Subject = 'Receipt'
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
    Left = 308
    Top = 57
    Version = '16.03'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
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
    object ppParameterList1: TppParameterList
    end
  end
end
