object frmCheqReqPrint: TfrmCheqReqPrint
  Left = 1031
  Top = 275
  Caption = 'CheqReq Printing'
  ClientHeight = 298
  ClientWidth = 258
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
  PixelsPerInch = 106
  TextHeight = 13
  object qryDetail: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT '#39'Matter'#39' as Type, M.FILEID as Refno, M.TITLE AS DESCR, M.' +
        'SHORTDESCR AS MATTER, 0 as Amount'
      'FROM MATTER M'
      'WHERE M.FILEID = '#39'000000'#39)
    CachedUpdates = True
    Active = True
    Left = 163
    Top = 6
  end
  object qryHeader: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.REQDATE as DueDate, C.PAYEE, C.DESCR, C.AMOUNT'
      
        '  , C.NCHEQREQ || '#39' '#39' as Refno, C.TAX, C.BANK, C.NOTE, C.HELD, C' +
        '.ANTICIPATED'
      '  , C.FILEID, C.LEDGER'
      
        '  , E.Name, B.NAME AS BANKNAME, B.TRUST, (C.AMOUNT+C.TAX) AS Tot' +
        'al, 0 as nname, c.chqno'
      'FROM CHEQREQ C, EMPLOYEE E, BANK B'
      'WHERE C.NCHEQREQ = :NCHEQREQ'
      '  AND C.AUTHOR = E.CODE'
      '  AND C.BANK = B.ACCT')
    CachedUpdates = True
    Active = True
    OnCalcFields = qryHeaderCalcFields
    Left = 97
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end>
  end
  object CheqReqPrint: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 209900
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    ModalPreview = False
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
    TextFileName = '($MyDocuments)\CheqReq.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 24
    Top = 45
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
  object qryGetCheqReq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select item_name '
      'from rb_item '
      'where upper(item_name) = '#39'CHEQREQ'#39' '
      'and deleted is null')
    Left = 164
    Top = 48
  end
  object rptCheqReq: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 209900
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rptCheqReqBeforePrint
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
    Left = 174
    Top = 122
    Version = '16.03'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 87313
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 179388
        mmTop = 0
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Caption = 'Office Cheque Requisition'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic, fsUnderline]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8682
        mmLeft = 63595
        mmTop = 9525
        mmWidth = 70189
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Caption = 'Insight Software'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8682
        mmLeft = 77089
        mmTop = 794
        mmWidth = 43730
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Caption = 'Date Required'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 28046
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Caption = 'Payee'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 9260
        mmTop = 33338
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 38629
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 43921
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        DataField = 'DUEDATE'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4262
        mmLeft = 35983
        mmTop = 27806
        mmWidth = 39158
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        DataField = 'PAYEE'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4022
        mmLeft = 35983
        mmTop = 33338
        mmWidth = 154517
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        DataField = 'DESCR'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4022
        mmLeft = 35983
        mmTop = 38629
        mmWidth = 154782
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        DataField = 'AMOUNT'
        DataPipeline = plHeader
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4149
        mmLeft = 35983
        mmTop = 43656
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Caption = 'Tax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 86784
        mmTop = 43656
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        DataField = 'TAX'
        DataPipeline = plHeader
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4022
        mmLeft = 94192
        mmTop = 43921
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 141552
        mmTop = 43921
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        DataField = 'TOTAL'
        DataPipeline = plHeader
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4191
        mmLeft = 159015
        mmTop = 43656
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Caption = 'Bank'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 9260
        mmTop = 49213
        mmWidth = 7409
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        DataField = 'BANK'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4022
        mmLeft = 35983
        mmTop = 49213
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        DataField = 'BANKNAME'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4022
        mmLeft = 46831
        mmTop = 49213
        mmWidth = 143669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Caption = 'Requested By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 54504
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        DataField = 'NAME'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4022
        mmLeft = 35983
        mmTop = 54504
        mmWidth = 73290
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Caption = 'Authorised.....................................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 121973
        mmTop = 54504
        mmWidth = 57679
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Caption = 'Entered By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 59796
        mmWidth = 15611
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        DataField = 'HoldDescr'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4022
        mmLeft = 9260
        mmTop = 65088
        mmWidth = 181240
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Caption = 'Note'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 70379
        mmWidth = 6880
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'NOTE'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4498
        mmLeft = 9260
        mmTop = 75936
        mmWidth = 180975
        BandType = 0
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object pplblEnteredBy: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblEnteredBy'
        Caption = 'Entered By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 35719
        mmTop = 59796
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Anchors = [atLeft, atBottom]
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 794
        mmTop = 82286
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Anchors = [atLeft, atBottom]
        Caption = 'Refno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 18521
        mmTop = 82286
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Anchors = [atLeft, atBottom]
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 46038
        mmTop = 82286
        mmWidth = 16668
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Anchors = [atLeft, atBottom]
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 86784
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Anchors = [atLeft, atBottom]
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 182034
        mmTop = 82286
        mmWidth = 11112
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Caption = 'CheqReq#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 28046
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        DataField = 'REFNO'
        DataPipeline = plHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4233
        mmLeft = 165629
        mmTop = 27781
        mmWidth = 24606
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Caption = 'Cheque No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4074
        mmLeft = 84108
        mmTop = 28035
        mmWidth = 16534
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        DataField = 'CHQNO'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4312
        mmLeft = 103755
        mmTop = 27795
        mmWidth = 29713
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        DataField = 'TYPE'
        DataPipeline = plDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 4022
        mmLeft = 794
        mmTop = 265
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        DataField = 'REFNO'
        DataPipeline = plDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 4022
        mmLeft = 18253
        mmTop = 265
        mmWidth = 25935
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        DataField = 'DESCR'
        DataPipeline = plDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 4022
        mmLeft = 46038
        mmTop = 265
        mmWidth = 115094
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        DataField = 'AMOUNT'
        DataPipeline = plDetail
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 4022
        mmLeft = 170921
        mmTop = 265
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        DataField = 'MATTER'
        DataPipeline = plDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 4022
        mmLeft = 46038
        mmTop = 5292
        mmWidth = 136790
        BandType = 4
        LayerName = Foreground1
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        4C6162656C314F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506C270726F636564757265204C6162656C
        314F6E476574546578742876617220546578743A20537472696E67293B0D0A62
        6567696E0D0A202020696620706C4865616465725B275452555354275D203D20
        275427207468656E0D0A20202020202054657874203A3D202754727573742043
        6865717565205265717569736974696F6E270D0A202020656C73650D0A202020
        20202054657874203A3D20274F66666963652043686571756520526571756973
        6974696F6E273B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        6506064C6162656C31094576656E744E616D6506094F6E476574546578740745
        76656E7449440235084361726574506F730102000200000000}
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
  object plHeader: TppDBPipeline
    DataSource = dsHeader
    UserName = 'plHeader'
    Left = 85
    Top = 158
    object plHeaderppField1: TppField
      FieldAlias = 'DUEDATE'
      FieldName = 'DUEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object plHeaderppField2: TppField
      FieldAlias = 'PAYEE'
      FieldName = 'PAYEE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 1
    end
    object plHeaderppField3: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 2
    end
    object plHeaderppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plHeaderppField5: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 41
      DisplayWidth = 41
      Position = 4
    end
    object plHeaderppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plHeaderppField7: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object plHeaderppField8: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 400
      DisplayWidth = 400
      Position = 7
    end
    object plHeaderppField9: TppField
      FieldAlias = 'HELD'
      FieldName = 'HELD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object plHeaderppField10: TppField
      FieldAlias = 'ANTICIPATED'
      FieldName = 'ANTICIPATED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object plHeaderppField11: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plHeaderppField12: TppField
      FieldAlias = 'LEDGER'
      FieldName = 'LEDGER'
      FieldLength = 40
      DisplayWidth = 40
      Position = 11
    end
    object plHeaderppField13: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 12
    end
    object plHeaderppField14: TppField
      FieldAlias = 'BANKNAME'
      FieldName = 'BANKNAME'
      FieldLength = 85
      DisplayWidth = 85
      Position = 13
    end
    object plHeaderppField15: TppField
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object plHeaderppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object plHeaderppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object plHeaderppField18: TppField
      FieldAlias = 'CHQNO'
      FieldName = 'CHQNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 17
    end
  end
  object plDetail: TppDBPipeline
    DataSource = dsDetail
    UserName = 'plDetail'
    Left = 85
    Top = 230
    object plDetailppField1: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 0
    end
    object plDetailppField2: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plDetailppField3: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 85
      DisplayWidth = 85
      Position = 2
    end
    object plDetailppField4: TppField
      FieldAlias = 'MATTER'
      FieldName = 'MATTER'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plDetailppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object dsHeader: TUniDataSource
    DataSet = qryHeader
    Left = 24
    Top = 159
  end
  object dsDetail: TUniDataSource
    DataSet = qryDetail
    Left = 29
    Top = 230
  end
end
