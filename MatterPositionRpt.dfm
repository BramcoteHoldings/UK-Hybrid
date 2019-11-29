object frmPositionReport: TfrmPositionReport
  Left = 0
  Top = 0
  Caption = 'frmPositionReport'
  ClientHeight = 222
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rptMatterPosition: TppReport
    AutoStop = False
    DataPipeline = plClientDetails
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
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rptMatterPositionBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
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
    PreviewFormSettings.PageSeparation = 1
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Matter Position Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 31
    Top = 8
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'plClientDetails'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Style = psClear
        Shape = stRoundRect
        mmHeight = 8467
        mmLeft = 0
        mmTop = 15610
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 20
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8297
        mmLeft = 0
        mmTop = 5556
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter Position Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 73819
        mmTop = 16669
        mmWidth = 49742
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 155311
        mmTop = 529
        mmWidth = 37888
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Printed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4234
        mmLeft = 141023
        mmTop = 529
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 200290
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Color = clSilver
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 99219
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 7144
        mmTop = 4233
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Code:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 25665
        mmTop = 16140
        mmWidth = 9789
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PB Search:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 16669
        mmTop = 21431
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 11113
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Home Phone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 26723
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Work Phone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 13758
        mmTop = 32015
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 42863
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'E-Mail Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 9790
        mmTop = 48154
        mmWidth = 25664
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Partner:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 53446
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Introduced Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 7673
        mmTop = 69321
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4022
        mmLeft = 38082
        mmTop = 11113
        mmWidth = 62177
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 16140
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SEARCH'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 3969
        mmLeft = 38082
        mmTop = 21699
        mmWidth = 78581
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'HOMEPHONE'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 26988
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WORKPHONE'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4234
        mmLeft = 38100
        mmTop = 32279
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAX'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4234
        mmLeft = 38100
        mmTop = 43127
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'EMAIL'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 48419
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PARTNER'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 53446
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INTRODUCED'
        DataPipeline = plClientDetails
        DisplayFormat = 'dd-mmmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 69586
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 11113
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Current Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 2910
        mmTop = 102659
        mmWidth = 32809
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Unbilled Fees:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 115888
        mmWidth = 33602
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Unbilled Disbursements:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 15610
        mmTop = 147373
        mmWidth = 50007
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount Billed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 153459
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount Paid:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 159544
        mmWidth = 32279
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount Written Off:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 165365
        mmWidth = 42598
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount Outstanding:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 20902
        mmTop = 171450
        mmWidth = 44715
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'UNBILL_FEES'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 116152
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTAL'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 147373
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALBILLED'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 153459
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALPAID'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 159544
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALWRITEOFF'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 165365
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALOWING'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 171450
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBRichText1: TppDBRichText
        OnPrint = ppDBRichText1Print
        DesignLayer = ppDesignLayer2
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ExportRTFAsBitmap = False
        DataField = 'ADDRESS'
        DataPipeline = plClientDetails
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 28575
        mmLeft = 119063
        mmTop = 11377
        mmWidth = 67204
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '(at time of report)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 108744
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblController'
        OnGetText = ppLabel26GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lblController'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 14552
        mmTop = 58738
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'ppLabel27'
        OnGetText = ppLabel27GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ppLabel27'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 17992
        mmTop = 64029
        mmWidth = 17462
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 3440
        mmTop = 80698
        mmWidth = 32014
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cheques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 73819
        mmTop = 121444
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Sundries'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4234
        mmLeft = 73819
        mmTop = 127529
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Anticipated'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 73819
        mmTop = 133615
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Unbilled:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 121444
        mmWidth = 24607
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'UNBILL_DISB'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 100013
        mmTop = 121444
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'UNBILL_SUND'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 100013
        mmTop = 127529
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'UNBILL_ANTD'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 100013
        mmTop = 133615
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Creditors'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 74083
        mmTop = 139436
        mmWidth = 15082
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'UNBILL_CRED'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 100013
        mmTop = 139436
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label46'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Cleared Trust:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 32544
        mmTop = 182298
        mmWidth = 33073
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TRUST'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 3979
        mmLeft = 110067
        mmTop = 182563
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plInvestments'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 195263
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plInvestments
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
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
          Version = '20.0'
          mmColumnWidth = 0
          DataPipelineName = 'plInvestments'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 14288
            mmPrintPosition = 0
            object ppLabel47: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label47'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'Account'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4233
              mmLeft = 5556
              mmTop = 8467
              mmWidth = 13494
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel48: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label48'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'Details'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4233
              mmLeft = 49213
              mmTop = 8467
              mmWidth = 11377
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel49: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label49'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'Balance'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4233
              mmLeft = 171186
              mmTop = 8467
              mmWidth = 13758
              BandType = 1
              LayerName = Foreground7
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer9
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 265
              mmWidth = 197300
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel50: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label50'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'Investment Balance'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5027
              mmLeft = 3704
              mmTop = 1588
              mmWidth = 39688
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel52: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label52'
              Border.mmPadding = 0
              Caption = 'Type'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4233
              mmLeft = 124354
              mmTop = 8467
              mmWidth = 8203
              BandType = 1
              LayerName = Foreground7
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer9
              UserName = 'Line12'
              Border.mmPadding = 0
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 13494
              mmWidth = 197300
              BandType = 1
              LayerName = Foreground7
            end
          end
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText25'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'BALANCE'
              DataPipeline = plInvestments
              DisplayFormat = '$#,0.00;-$#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plInvestments'
              mmHeight = 3979
              mmLeft = 157163
              mmTop = 1323
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground7
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText26'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'DETAILS'
              DataPipeline = plInvestments
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plInvestments'
              mmHeight = 3979
              mmLeft = 49213
              mmTop = 1323
              mmWidth = 70379
              BandType = 4
              LayerName = Foreground7
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText27'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'ACCOUNT'
              DataPipeline = plInvestments
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plInvestments'
              mmHeight = 3979
              mmLeft = 5556
              mmTop = 1323
              mmWidth = 41804
              BandType = 4
              LayerName = Foreground7
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText29'
              Border.mmPadding = 0
              DataField = 'TYPE'
              DataPipeline = plInvestments
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plInvestments'
              mmHeight = 4022
              mmLeft = 124354
              mmTop = 1323
              mmWidth = 30427
              BandType = 4
              LayerName = Foreground7
            end
          end
          object ppDesignLayers9: TppDesignLayers
            object ppDesignLayer9: TppDesignLayer
              UserName = 'Foreground7'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = 'Matter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4234
        mmLeft = 23548
        mmTop = 74877
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 4234
        mmLeft = 38100
        mmTop = 74877
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = 'Mobile Phone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 11113
        mmTop = 37835
        mmWidth = 24341
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        Border.mmPadding = 0
        DataField = 'MOBILE'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 3979
        mmLeft = 38100
        mmTop = 37571
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBRichText2: TppDBRichText
        DesignLayer = ppDesignLayer2
        UserName = 'DBRichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Border.mmPadding = 0
        ExportRTFAsBitmap = False
        DataField = 'LONGDESCR'
        DataPipeline = plMatter
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 16128
        mmLeft = 38082
        mmTop = 80696
        mmWidth = 148167
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'MAUTHOR'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 4233
        mmLeft = 38082
        mmTop = 64027
        mmWidth = 52652
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'MCONTROLLER'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 4233
        mmLeft = 38082
        mmTop = 58737
        mmWidth = 52652
        BandType = 4
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
    object ppParameterList4: TppParameterList
    end
  end
  object plPositionTotals: TppDBPipeline
    DataSource = dsPositionTotals
    CloseDataSource = True
    UserName = 'plPositionTotals'
    Left = 95
    Top = 4
    object plPositionTotalsppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_FEES'
      FieldName = 'UNBILL_FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object plPositionTotalsppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_DISB'
      FieldName = 'UNBILL_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object plPositionTotalsppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_ANTD'
      FieldName = 'UNBILL_ANTD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plPositionTotalsppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_SUND'
      FieldName = 'UNBILL_SUND'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plPositionTotalsppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CL_TRUST_BAL'
      FieldName = 'CL_TRUST_BAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plPositionTotalsppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_CRED'
      FieldName = 'UNBILL_CRED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plPositionTotalsppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
  end
  object qInvestments: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT d.account_number Account, account_name Details, account_t' +
        'ype Type,'
      'sum(it.amount  ) Balance'
      'FROM INVESTMENT_TRANS it,DEPOSIT_ACCOUNT d,BANK b'
      'WHERE it.NDEPOSITACCOUNT = d.NDEPOSITACCOUNT'
      'AND d.BANK = b.ACCT'
      'AND it.nmatter = :nmatter'
      
        'GROUP BY d.account_number , account_name , account_type, d.nmatt' +
        'er, b.name'
      '--HAVING SUM(it.amount) <> 0')
    Active = True
    Left = 19
    Top = 51
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = Null
      end>
  end
  object dsInvestments: TUniDataSource
    DataSet = qInvestments
    Left = 94
    Top = 52
  end
  object qClientDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  GetClearedtrust(:nmatter) as trust,'
      '  p.nname  AS nname,'
      '  NVL(P.GIVENNAMES, B.GIVENNAMES) AS givennames,'
      '  NVL(P.LASTNAME, B.LASTNAME)  AS lastname,'
      '  p.search AS search,'
      '  case '
      '     when p.WHICHADDRESS = '#39'S'#39' then '
      '         NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '             DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.' +
        'SUBURB) || '#39' '#39' ||'
      
        '             DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.ST' +
        'ATE) || '#39' '#39' ||'
      
        '             DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE)' +
        ', P.POSTCODE) ||'
      
        '             DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COU' +
        'NTRY), P.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRES' +
        'S, NULL, NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY))'
      
        '      when p.WHICHADDRESS = '#39'P'#39' then trim( NVL(P.POSTALADDRESS, ' +
        'B.POSTALADDRESS) || chr(13) || chr(10) ||'
      
        '             DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B' +
        '.POSTALSUBURB), P.POSTALSUBURB) || '#39' '#39' ||'
      
        '             DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.' +
        'POSTALSTATE), P.POSTALSTATE) || '#39' '#39' ||'
      
        '             DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE,' +
        ' B.POSTALPOSTCODE), P.POSTALPOSTCODE) ||'
      
        '             DECODE(DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCO' +
        'UNTRY, B.POSTALCOUNTRY), P.POSTALCOUNTRY),NULL,'#39#39', chr(13) || ch' +
        'r(10) || '
      
        '                   DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOU' +
        'NTRY, B.POSTALCOUNTRY), P.POSTALCOUNTRY)))'
      
        '      when p.WHICHADDRESS = '#39'D'#39' then trim('#39'DX '#39' || NVL(P.DX, B.D' +
        'X) || chr(13) || chr(10) || NVL(P.DXLOC, B.DXLOC))'
      
        '      when p.WHICHADDRESS = '#39'C'#39' then trim(NVL(P.CUST_ADDRESS, B.' +
        'CUST_ADDRESS) || chr(13) || chr(10) ||'
      
        '             DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_SUBURB, B.C' +
        'UST_SUBURB), P.CUST_SUBURB) || '#39' '#39' ||'
      
        '             DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_STATE, B.CU' +
        'ST_STATE), P.CUST_STATE) || '#39' '#39' ||'
      
        '             DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_POSTCODE, B' +
        '.CUST_POSTCODE), P.CUST_POSTCODE)  ||'
      
        '             DECODE(DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUN' +
        'TRY, B.CUST_COUNTRY), P.CUST_COUNTRY),NULL,'#39#39', chr(13) || chr(10' +
        ') || '
      
        '             DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, B.' +
        'CUST_COUNTRY), P.CUST_COUNTRY)))'
      '    end'
      ' AS address,'
      '  NVL(P.WORKPHONE, B.WORKPHONE)   AS workphone,'
      '  NVL(P.HOMEPHONE, B.HOMEPHONE)   AS homephone,'
      '  NVL(P.FAX, B.FAX)               AS fax,'
      '  c.code                          AS code,'
      '  NVL(P.NAME, B.NAME)             AS name,'
      '  NVL(P.SHORTNAME, B.SHORTNAME)   AS shortname,'
      '  NVL(P.LONGNAME, B.LONGNAME)     AS longname,'
      '  NVL(P.EMAIL, B.EMAIL)           AS email,'
      '  NVL(P.MOBILE, B.MOBILE)         AS mobile,'
      '  c.introduced,'
      '--  monies.partner AS partnercode,  '
      '--  e.name    AS partner,'
      
        '  (select employee.name from matter, employee where matter.nmatt' +
        'er = :nmatter and matter.partner = employee.code) as partner,  '
      
        '  (select partner from matter where matter.nmatter = :nmatter) a' +
        's partnercode,'
      '  monies.totalbilled,'
      '  monies.totalpaid,'
      '  monies.totalwriteoff,'
      '  monies.totalowing'
      'FROM'
      '  client c,'
      '  phonebook p,'
      '  phonebook b,'
      '--  employee e,'
      '  ('
      '    SELECT'
      '      m.nclient,      '
      '      sum(total) AS totalbilled,'
      '      sum(NVL(bills.paid,0)) AS totalpaid,'
      '      sum(NVL(bills.totalwoff,0)) AS totalwriteoff,'
      '      sum(NVL(bills.owing,0)) AS totalowing'
      '    FROM matter m,                                          '
      '      (SELECT'
      '        m.nmatter,'
      
        '        sum((NVL(fees_woff,0) + NVL(disb_woff,0) + NVL(antd_woff' +
        ',0) + NVL(sund_woff,0) + NVL(tax_woff,0) + NVL(upcred_woff,0) ))' +
        ' AS totalwoff,'
      '        sum(total) total,'
      '        sum(owing) owing,'
      
        '        sum(NVL(fees_paid,0) + NVL(disb_paid,0) + NVL(antd_paid,' +
        '0) + NVL(sund_paid,0) + NVL(tax_paid,0) + NVL(upcred_paid,0)) AS' +
        ' paid'
      '      FROM '
      '        nmemo n, matter m   '
      '      WHERE '
      '        n.nmatter  = m.nmatter'
      '      AND n.nmatter = :nmatter '
      '      AND rv_type NOT IN ('#39'C'#39','#39'R'#39')'
      '      AND refno <> '#39'DRAFT'#39
      '      GROUP BY m.nmatter'
      '      ORDER BY nmatter DESC) bills'
      '    WHERE m.nclient = :nclient'
      '      AND bills.nmatter(+) = m.nmatter'
      '    GROUP BY m.nclient'
      '  ) monies'
      'WHERE'
      '  c.nclient = :nclient '
      '  AND p.nclient = c.nclient'
      '  AND p.nnamemaster = b.nname (+) '
      '  AND monies.nclient = c.nclient'
      '--  AND e.code(+) = monies.partner'
      ''
      ''
      '/*'
      'SELECT'
      '  GetClearedtrust(:nmatter) as trust,'
      '  p.nname  AS nname,'
      '  NVL(P.GIVENNAMES, B.GIVENNAMES) AS givennames,'
      '  NVL(P.LASTNAME, B.LASTNAME)  AS lastname,'
      '  p.search AS search,'
      '  case '
      '     when p.WHICHADDRESS = '#39'S'#39' then '
      '         NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '             DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.' +
        'SUBURB) || '#39' '#39' ||'
      
        '             DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.ST' +
        'ATE) || '#39' '#39' ||'
      
        '             DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE)' +
        ', P.POSTCODE) ||'
      
        '             DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COU' +
        'NTRY), P.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRES' +
        'S, NULL, NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY))'
      
        '      when p.WHICHADDRESS = '#39'P'#39' then trim( NVL(P.POSTALADDRESS, ' +
        'B.POSTALADDRESS) || chr(13) || chr(10) ||'
      
        '             DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B' +
        '.POSTALSUBURB), P.POSTALSUBURB) || '#39' '#39' ||'
      
        '             DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.' +
        'POSTALSTATE), P.POSTALSTATE) || '#39' '#39' ||'
      
        '             DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE,' +
        ' B.POSTALPOSTCODE), P.POSTALPOSTCODE) ||'
      
        '             DECODE(DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCO' +
        'UNTRY, B.POSTALCOUNTRY), P.POSTALCOUNTRY),NULL,'#39#39', chr(13) || ch' +
        'r(10) || '
      
        '                   DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOU' +
        'NTRY, B.POSTALCOUNTRY), P.POSTALCOUNTRY)))'
      
        '      when p.WHICHADDRESS = '#39'D'#39' then trim('#39'DX '#39' || NVL(P.DX, B.D' +
        'X) || chr(13) || chr(10) || NVL(P.DXLOC, B.DXLOC))'
      
        '      when p.WHICHADDRESS = '#39'C'#39' then trim(NVL(P.CUST_ADDRESS, B.' +
        'CUST_ADDRESS) || chr(13) || chr(10) ||'
      
        '             DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_SUBURB, B.C' +
        'UST_SUBURB), P.CUST_SUBURB) || '#39' '#39' ||'
      
        '             DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_STATE, B.CU' +
        'ST_STATE), P.CUST_STATE) || '#39' '#39' ||'
      
        '             DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_POSTCODE, B' +
        '.CUST_POSTCODE), P.CUST_POSTCODE)  ||'
      
        '             DECODE(DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUN' +
        'TRY, B.CUST_COUNTRY), P.CUST_COUNTRY),NULL,'#39#39', chr(13) || chr(10' +
        ') || '
      
        '             DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, B.' +
        'CUST_COUNTRY), P.CUST_COUNTRY)))'
      '    end'
      ' AS address,'
      '  NVL(P.WORKPHONE, B.WORKPHONE)   AS workphone,'
      '  NVL(P.HOMEPHONE, B.HOMEPHONE)   AS homephone,'
      '  NVL(P.FAX, B.FAX)               AS fax,'
      '  c.code                          AS code,'
      '  NVL(P.NAME, B.NAME)             AS name,'
      '  NVL(P.SHORTNAME, B.SHORTNAME)   AS shortname,'
      '  NVL(P.LONGNAME, B.LONGNAME)     AS longname,'
      '  NVL(P.EMAIL, B.EMAIL)           AS email,'
      '  NVL(P.MOBILE, B.MOBILE)         AS mobile,'
      '  c.introduced,'
      '  monies.partner AS partnercode,  '
      '  e.name    AS partner,'
      '  monies.totalbilled,'
      '  monies.totalpaid,'
      '  monies.totalwriteoff,'
      '  monies.totalowing'
      'FROM'
      '  client c,'
      '  phonebook p,'
      '  phonebook b,'
      '  employee e,'
      '  ('
      '    SELECT'
      '      m.nclient,'
      '      max(m.partner) as partner,'
      '      sum(total) AS totalbilled,'
      '      sum(NVL(bills.paid,0)) AS totalpaid,'
      '      sum(NVL(bills.totalwoff,0)) AS totalwriteoff,'
      '      sum(NVL(bills.owing,0)) AS totalowing'
      '    FROM matter m,                                          '
      '      (SELECT'
      '        m.nmatter,'
      
        '        sum((NVL(fees_woff,0) + NVL(disb_woff,0) + NVL(antd_woff' +
        ',0) + NVL(sund_woff,0) + NVL(tax_woff,0) + NVL(upcred_woff,0) ))' +
        ' AS totalwoff,'
      '        sum(total) total,'
      '        sum(owing) owing,'
      
        '        sum(NVL(fees_paid,0) + NVL(disb_paid,0) + NVL(antd_paid,' +
        '0) + NVL(sund_paid,0) + NVL(tax_paid,0) + NVL(upcred_paid,0)) AS' +
        ' paid'
      '      FROM '
      '        nmemo n, matter m   '
      '      WHERE '
      '        n.nmatter  = m.nmatter'
      '      AND n.nmatter = :nmatter '
      '      AND rv_type NOT IN ('#39'C'#39','#39'R'#39')'
      '      AND refno <> '#39'DRAFT'#39
      '      GROUP BY m.nmatter'
      '      ORDER BY nmatter DESC) bills'
      '    WHERE m.nclient = :nclient'
      '      AND bills.nmatter(+) = m.nmatter'
      '    GROUP BY m.nclient'
      '  ) monies'
      'WHERE'
      '  c.nclient = :nclient '
      '  AND p.nclient = c.nclient'
      '  AND p.nnamemaster = b.nname (+) '
      '  AND monies.nclient = c.nclient'
      '  AND e.code(+) = monies.partner'
      '*/')
    Active = True
    Left = 14
    Top = 102
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = Null
      end>
  end
  object dsClientDetails: TDataSource
    DataSet = qClientDetails
    Left = 95
    Top = 109
  end
  object qryPositionTotals: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      '  getWIPAmount(:P_File) AS unbill_fees,'
      '  getUnbillDisbAmount( :P_File ) AS unbill_disb,'
      '  getAntDisbAmount( :P_File ) AS unbill_antd,'
      '  getSundriesAmount( :P_File ) AS unbill_sund,'
      '  getClearedTrustAmount(:P_File ) AS cl_trust_bal,'
      '  getUnbillCredAmount(:P_File) AS UNBILL_CRED,'
      
        '  getUnbillDisbAmount( :P_File ) + getAntDisbAmount( :P_File ) +' +
        ' getSundriesAmount( :P_File ) + getUnbillCredAmount(:P_File) AS ' +
        'total'
      '  from dual'
      ''
      ''
      '/*'
      'SELECT'
      '  monies.totalwip,'
      '  monies.totalunbdisb,'
      '  monies.totalunbilleddisb,'
      '  monies.totalcheqreq,'
      '  monies.totalsundries,'
      '  monies.totalCreditors'
      'FROM'
      '  ('
      '    SELECT'
      '      m.nclient,'
      
        '      SUM(NVL(wip.tax_amount,0) + NVL(wip.tax_amount,0)*(SELECT ' +
        'GST_MULTIPLIER FROM SYSTEMFILE) + NVL(wip.free_amount,0)) AS tot' +
        'alwip,'
      
        '      SUM(NVL(ubd.amount,0) + NVL(uat.tax,0) + NVL(ubad.amount,0' +
        ') + NVL(uct.tax,0) + NVL(usund.amount,0) + NVL(ust.tax,0) + NVL(' +
        'ucred.amount,0) + NVL(ucredtax.tax,0)) AS totalunbdisb,'
      
        '      SUM(NVL(ubd.amount,0) + NVL(uat.tax,0)) AS totalunbilleddi' +
        'sb,'
      '      SUM(NVL(ubad.amount,0) + NVL(uct.tax,0)) AS totalcheqreq,'
      
        '      SUM(NVL(usund.amount,0) + NVL(ust.tax,0)) AS totalsundries' +
        ','
      
        '      SUM(NVL(ucred.amount,0) + NVL(ucredtax.tax,0)) AS totalCre' +
        'ditors'
      '    FROM matter m,'
      
        '      (SELECT m.nmatter, NVL(SUM(NVL(f.amount,0)),0) AS tax_amou' +
        'nt,0 as free_amount'
      '        FROM taxtype t, fee f, matter m     '
      '        WHERE f.nmatter = m.nmatter'
      '          AND f.nmatter = :nmatter'
      '          AND f.billed = '#39'N'#39'  '
      '          AND f.billtype = '#39'Billable'#39' '
      #9'  AND f.TAXCODE = t.CODE'
      #9'  AND t.TAXTYPE = '#39'TAX'#39
      '          GROUP BY m.nmatter'#9#9'  '
      '      union all'
      
        '      SELECT m.nmatter,0,NVL(SUM(NVL(f.amount,0)),0) AS free_amo' +
        'unt '
      '        FROM taxtype t, fee f, matter m     '
      '        WHERE f.nmatter = m.nmatter'
      '          AND f.nmatter = :nmatter'
      '          AND f.billed = '#39'N'#39'  '
      '          AND f.billtype = '#39'Billable'#39' '
      #9'  AND f.TAXCODE = t.CODE'
      #9'  AND t.TAXTYPE IN ('#39'FREE,N/A'#39')'
      '          GROUP BY m.nmatter) wip,'
      
        '      (SELECT m.nmatter, NVL(SUM(NVL(a.amount * -1,0)),0) AS amo' +
        'unt '
      '        FROM alloc a, matter m   '
      '        WHERE a.nmatter = m.nmatter'
      '          AND a.nmatter = :nmatter'
      '          AND a.ninvoice is null'
      '          AND NVL(a.billed,'#39'N'#39') = '#39'N'#39
      '          AND NVL(a.trust,'#39'G'#39') <> '#39'T'#39
      
        '          AND (NVL(a.ncheque,0) > 0 OR (NVL(a.njournal,0) > 0 AN' +
        'D a.type = '#39'J2'#39'))'
      '        GROUP BY m.nmatter) ubd,'
      '      (SELECT m.nmatter, NVL(SUM(NVL(a.tax * -1,0)),0) AS tax'
      '        FROM alloc a,matter m'
      '        WHERE a.nmatter = m.nmatter'
      '          AND a.nmatter = :nmatter'
      '          AND a.ninvoice is null'
      '          AND NVL(a.billed,'#39'N'#39') = '#39'N'#39
      '          AND NVL(a.trust,'#39'G'#39') <> '#39'T'#39
      
        '          AND (NVL(a.ncheque,0) > 0 OR (NVL(a.njournal,0) > 0 AN' +
        'D a.type = '#39'J2'#39'))'
      '        GROUP BY m.nmatter) uat,'
      '      (SELECT m.nmatter, NVL(SUM(NVL(c.amount  ,0)),0) AS amount'
      '        FROM cheqreq c, matter m '
      '        WHERE c.nmatter = m.nmatter'
      '          AND c.nmatter = :nmatter'
      '          AND c.billed = '#39'N'#39
      '        GROUP BY m.nmatter) ubad,'
      '      (SELECT m.nmatter, NVL(SUM(c.tax),0) AS tax'
      '        FROM cheqreq c, matter m'
      '        WHERE c.nmatter = m.nmatter'
      '          AND c.nmatter = :nmatter'
      '          AND c.billed = '#39'N'#39
      '        GROUP BY m.nmatter) uct,'
      '      (SELECT m.nmatter, SUM(NVL(s.amount, 0))  AS amount'
      '        FROM sundry s, matter m'
      '        WHERE s.nmatter = m.nmatter'
      '          AND s.nmatter = :nmatter'
      '          AND s.billed = '#39'N'#39
      '        GROUP BY m.nmatter) usund,'
      '      (SELECT m.nmatter, NVL(SUM(s.tax),0) AS tax'
      '        FROM sundry s, matter m  '
      '        WHERE s.nmatter = m.nmatter'
      '          AND s.nmatter = :nmatter'
      '          AND s.billed = '#39'N'#39'          '
      '          AND NVL(s.type,'#39'NA'#39') <> '#39'wo'#39' '
      '        GROUP BY m.nmatter) ust,'
      '      (SELECT nvl(SUM(a.amount * -1),0) AS amount'
      '        FROM matter m, alloc a, invoice c'
      '        WHERE m.nmatter = a.nmatter'
      '          AND a.ninvoice = c.ninvoice'
      '          AND a.nmemo is null'
      '          AND m.nmatter = :nmatter'
      '          AND a.billed = '#39'N'#39')'#9'ucred,'
      '      (SELECT nvl(SUM(a.tax * -1),0) AS tax'
      '        FROM matter m, alloc a, invoice c'
      '        WHERE m.nmatter = a.nmatter'
      '          AND a.ninvoice = c.ninvoice'
      '          AND a.nmemo is null'
      '          AND m.nmatter = :nmatter'
      '          AND a.billed = '#39'N'#39') ucredtax'#9#9'  '
      ' WHERE m.nmatter = :nmatter'
      '      AND ubad.nmatter(+) = m.nmatter'
      '      AND ubd.nmatter(+) = m.nmatter'
      '      AND wip.nmatter(+) = m.nmatter'
      '      AND usund.nmatter(+) = m.nmatter'
      '      AND ust.nmatter(+) = m.nmatter'
      '      AND uct.nmatter(+) = m.nmatter'
      '      AND uat.nmatter(+) = m.nmatter'
      '    GROUP BY m.nclient'
      '  ) monies'
      '*/')
    Active = True
    Left = 190
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = Null
      end>
  end
  object dsPositionTotals: TUniDataSource
    DataSet = qryPositionTotals
    Left = 206
    Top = 54
  end
  object plClientDetails: TppBDEPipeline
    DataSource = dsClientDetails
    UserName = 'plClientDetails'
    Left = 161
    Top = 121
    object plClientDetailsppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object plClientDetailsppField2: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plClientDetailsppField3: TppField
      FieldAlias = 'GIVENNAMES'
      FieldName = 'GIVENNAMES'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plClientDetailsppField4: TppField
      FieldAlias = 'LASTNAME'
      FieldName = 'LASTNAME'
      FieldLength = 200
      DisplayWidth = 200
      Position = 3
    end
    object plClientDetailsppField5: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 140
      DisplayWidth = 140
      Position = 4
    end
    object plClientDetailsppField6: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 376
      DisplayWidth = 376
      Position = 5
    end
    object plClientDetailsppField7: TppField
      FieldAlias = 'WORKPHONE'
      FieldName = 'WORKPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object plClientDetailsppField8: TppField
      FieldAlias = 'HOMEPHONE'
      FieldName = 'HOMEPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object plClientDetailsppField9: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object plClientDetailsppField10: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 9
    end
    object plClientDetailsppField11: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 10
    end
    object plClientDetailsppField12: TppField
      FieldAlias = 'SHORTNAME'
      FieldName = 'SHORTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 11
    end
    object plClientDetailsppField13: TppField
      FieldAlias = 'LONGNAME'
      FieldName = 'LONGNAME'
      FieldLength = 300
      DisplayWidth = 300
      Position = 12
    end
    object plClientDetailsppField14: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 13
    end
    object plClientDetailsppField15: TppField
      FieldAlias = 'MOBILE'
      FieldName = 'MOBILE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 14
    end
    object plClientDetailsppField16: TppField
      FieldAlias = 'INTRODUCED'
      FieldName = 'INTRODUCED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
    end
    object plClientDetailsppField17: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object plClientDetailsppField18: TppField
      FieldAlias = 'PARTNERCODE'
      FieldName = 'PARTNERCODE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object plClientDetailsppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALBILLED'
      FieldName = 'TOTALBILLED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object plClientDetailsppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALPAID'
      FieldName = 'TOTALPAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object plClientDetailsppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALWRITEOFF'
      FieldName = 'TOTALWRITEOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object plClientDetailsppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALOWING'
      FieldName = 'TOTALOWING'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
  end
  object plInvestments: TppDBPipeline
    DataSource = dsInvestments
    UserName = 'plInvestments'
    Left = 143
    Top = 61
    object plInvestmentsppField1: TppField
      FieldAlias = 'ACCOUNT'
      FieldName = 'ACCOUNT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plInvestmentsppField2: TppField
      FieldAlias = 'DETAILS'
      FieldName = 'DETAILS'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plInvestmentsppField3: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plInvestmentsppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'BALANCE'
      FieldName = 'BALANCE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  fileid, shortdescr, longdescr, a.name as mauthor, c.name as mc' +
        'ontroller'
      'from matter, employee a, employee c '
      'where nmatter = :nmatter'
      'and author = a.code'
      'and controller = c.code')
    Active = True
    Left = 16
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = Null
      end>
  end
  object dsMatter: TDataSource
    DataSet = qryMatter
    Left = 97
    Top = 162
  end
  object plMatter: TppBDEPipeline
    DataSource = dsMatter
    UserName = 'plMatter'
    Left = 163
    Top = 174
    object plMatterppField1: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plMatterppField2: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plMatterppField3: TppField
      FieldAlias = 'LONGDESCR'
      FieldName = 'LONGDESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 2
    end
    object plMatterppField4: TppField
      FieldAlias = 'MAUTHOR'
      FieldName = 'MAUTHOR'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object plMatterppField5: TppField
      FieldAlias = 'MCONTROLLER'
      FieldName = 'MCONTROLLER'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
  end
end
