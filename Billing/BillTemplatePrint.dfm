object dmBillTemplate: TdmBillTemplate
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 207
  Width = 199
  object BillPrint: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Bill'
    PrinterSetup.Duplex = dpVertical
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
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = BillPrintBeforePrint
    DeviceType = 'PDFFile'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OnPreviewFormCreate = BillPrintPreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 64
    Top = 18
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
  object tblRb_Item: TUniTable
    TableName = 'RB_ITEM'
    Connection = dmAxiom.uniInsight
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 37
    Top = 67
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
    DataSet = tblRb_Item
    Left = 37
    Top = 121
  end
  object plReports: TppDBPipeline
    DataSource = dsRB_Item
    UserName = 'plReports'
    Left = 139
    Top = 23
  end
end
