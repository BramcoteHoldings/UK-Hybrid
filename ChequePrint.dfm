object frmChequePrint: TfrmChequePrint
  Left = 372
  Top = 153
  Caption = 'Cheque Printing'
  ClientHeight = 422
  ClientWidth = 271
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
  object DBImage: TDBImage
    Left = 90
    Top = 295
    Width = 105
    Height = 105
    TabOrder = 0
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.ROWID, C.* FROM CHEQUE C WHERE C.NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 122
    Top = 148
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT AMOUNT+TAX AS AMOUNT, DESCR, NCHEQUE, APPROVAL, NRECEIPT,' +
        ' CLEARED, DCLEARDATE, CREATED, ACCT, NMATTER, REFNO, TYPE, '
      
        '  NCLIENT, NJOURNAL, PAYER, TRUST, FEE, OUTLAY, BILLED, FILEID, ' +
        'NALLOC, NTRANS, NMEMO, SUNDRY, CLIENT_NAME, SYSTEM_DATE, '
      
        '  MATTER_DESC, OVERDRAWN, DISB_ONLY, PRIVATE, SPEC_PURPOSE, TAXC' +
        'ODE, TAX'
      'FROM ALLOC '
      'WHERE NCHEQUE = :P_Ncheque')
    Left = 90
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryPhonebook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT P.* FROM PHONEBOOK P,MATTER M,CLIENT C'
      'WHERE P.SEARCH = C.SEARCH'
      'AND C.NCLIENT = M.NCLIENT'
      'AND M.FILEID = :FILEID')
    Left = 98
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryPrintedUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE CHEQUE SET PRINTED = '#39'Y'#39' WHERE NCHEQUE = :NCHEQUE')
    Left = 130
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end>
  end
  object qryCreditorInvoice: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM INVOICE I, TRANSITEM T'
      'WHERE I.NCHEQUE = T.NINVOICE'
      '  AND T.NOWNER = :NCHEQUE'
      '  AND OWNER_CODE = '#39'CHEQUE'#39)
    Left = 126
    Top = 53
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end>
  end
  object qryPhoneBookPayee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PHONEBOOK WHERE NNAME = :NNAME')
    Left = 98
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end>
  end
  object qryPrinter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PRINTER'
      'WHERE CODE = :CODE')
    Left = 123
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object dsSignature: TUniDataSource
    DataSet = qrySignature
    Left = 123
    Top = 116
  end
  object qrySignature: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT *'
      'FROM SIGNATURE'
      'WHERE CODE = :CODE')
    Left = 91
    Top = 116
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM MATTER')
    Left = 91
    Top = 152
  end
  object dsPhoneBookPayee: TUniDataSource
    DataSet = qryPhoneBookPayee
    Left = 36
    Top = 90
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
    AfterPrint = ChequeAfterPrint
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
    Left = 104
    Top = 211
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
