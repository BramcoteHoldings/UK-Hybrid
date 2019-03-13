object frmRptMatterNotes: TfrmRptMatterNotes
  Left = 228
  Top = 278
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Debtor Notes Report'
  ClientHeight = 151
  ClientWidth = 560
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object lblVersion: TLabel
    Left = 3
    Top = 113
    Width = 63
    Height = 13
    AutoSize = False
    Caption = 'XXXX'
  end
  object btnPrint: TBitBtn
    Left = 392
    Top = 107
    Width = 75
    Height = 25
    Caption = '&Print'
    Default = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFF88880000000000088888777777777778F8808888888880
      808887FFFFFFFFF7F78F00000000000008087777777777777F7F0888888AAA88
      0008788888877788777F08888887778808087FFFFFFFFFFF7F78000000000000
      088077777777777778F7088888888880808078FFFFFFFFF78787800000000008
      08008777777777787877880FFFFFFFF080808878F8FFFFF7F7F78880F00000F0
      00088887F777778777788880FFFFFFFF088888878F8FFFFF7F8888880F00000F
      088888887F77777878F888880FFFFFFFF088888878FFFFFFF7F8888880000000
      0088888887777777778888888888888888888888888888888888}
    NumGlyphs = 2
    TabOrder = 0
    OnClick = btnPrintClick
  end
  object grpPeriodRange: TGroupBox
    Left = 8
    Top = 8
    Width = 537
    Height = 89
    Caption = 'Period Range '
    TabOrder = 1
    object lblDateFrom: TLabel
      Left = 8
      Top = 28
      Width = 52
      Height = 14
      Caption = 'Date From:'
    end
    object lblDateTo: TLabel
      Left = 8
      Top = 52
      Width = 39
      Height = 14
      Caption = 'Date To:'
    end
    object bToday: TDateChangeButton
      Left = 176
      Top = 24
      Width = 80
      Height = 21
      Caption = 'Today'
      TabOrder = 0
      TabStop = False
      ChangeType = ctToday
      DateFrom = dtpDateFrom
      DateTo = dtpDateTo
    end
    object bYesterday: TDateChangeButton
      Left = 176
      Top = 48
      Width = 80
      Height = 21
      Caption = 'Yesterday'
      TabOrder = 1
      TabStop = False
      ChangeType = ctYesterday
      DateFrom = dtpDateFrom
      DateTo = dtpDateTo
    end
    object bThisWeek: TDateChangeButton
      Left = 264
      Top = 24
      Width = 80
      Height = 21
      Caption = 'This Week'
      TabOrder = 2
      TabStop = False
      ChangeType = ctThisWeek
      DateFrom = dtpDateFrom
      DateTo = dtpDateTo
    end
    object DateChangeButton3: TDateChangeButton
      Left = 264
      Top = 48
      Width = 80
      Height = 21
      Caption = 'Last Week'
      TabOrder = 3
      TabStop = False
      ChangeType = ctLastWeek
      DateFrom = dtpDateFrom
      DateTo = dtpDateTo
    end
    object bThisMonth: TDateChangeButton
      Left = 352
      Top = 24
      Width = 80
      Height = 21
      Caption = 'This Month'
      TabOrder = 4
      TabStop = False
      ChangeType = ctThisMonth
      DateFrom = dtpDateFrom
      DateTo = dtpDateTo
    end
    object bLastMonth: TDateChangeButton
      Left = 352
      Top = 48
      Width = 80
      Height = 21
      Caption = 'Last Month'
      TabOrder = 5
      TabStop = False
      ChangeType = ctLastMonth
      DateFrom = dtpDateFrom
      DateTo = dtpDateTo
    end
    object bYearToDate: TDateChangeButton
      Left = 440
      Top = 24
      Width = 80
      Height = 21
      Caption = 'Year To Date'
      TabOrder = 6
      TabStop = False
      ChangeType = ctYearToDate
      DateFrom = dtpDateFrom
      DateTo = dtpDateTo
    end
    object bLastYear: TDateChangeButton
      Left = 440
      Top = 48
      Width = 80
      Height = 21
      Caption = 'Last Year'
      TabOrder = 7
      TabStop = False
      ChangeType = ctLastYear
      DateFrom = dtpDateFrom
      DateTo = dtpDateTo
    end
    object dtpDateFrom: TDateTimePicker
      Left = 72
      Top = 24
      Width = 97
      Height = 22
      Date = 36342.516199398100000000
      Time = 36342.516199398100000000
      ShowCheckbox = True
      Checked = False
      TabOrder = 8
    end
    object dtpDateTo: TDateTimePicker
      Left = 72
      Top = 48
      Width = 97
      Height = 22
      Date = 36372.517055486100000000
      Time = 36372.517055486100000000
      ShowCheckbox = True
      Checked = False
      TabOrder = 9
    end
  end
  object btnClose: TButton
    Left = 470
    Top = 107
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plMatterNotes
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 150
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
    Left = 299
    Top = 103
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plMatterNotes'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 14
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 6085
        mmLeft = 794
        mmTop = 529
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = 15395562
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 6615
        mmLeft = 0
        mmTop = 9525
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Debtor Notes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5165
        mmLeft = 794
        mmTop = 10319
        mmWidth = 23622
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'Lawyer Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 3620
        mmTop = 18785
        mmWidth = 18965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Practice Area:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 3884
        mmTop = 23548
        mmWidth = 18203
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Matter No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 82815
        mmTop = 18785
        mmWidth = 14478
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'Matter Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 82815
        mmTop = 23548
        mmWidth = 25739
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 82815
        mmTop = 28310
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 38894
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Caption = 'Date Entered'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 794
        mmTop = 34131
        mmWidth = 17187
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Caption = 'Entered By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 37306
        mmTop = 34131
        mmWidth = 14266
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Caption = 'Note'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 82815
        mmTop = 34396
        mmWidth = 6435
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4276
        mmLeft = 181939
        mmTop = 10848
        mmWidth = 9356
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblLawyer'
        OnGetText = ppLabel11GetText
        Caption = 'Lawyer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 24077
        mmTop = 18785
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object lblPractice: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPractice'
        OnGetText = lblPracticeGetText
        Caption = 'Practice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 24077
        mmTop = 23548
        mmWidth = 10414
        BandType = 0
        LayerName = Foreground
      end
      object ppMatterNo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = ppMatterNoGetText
        Caption = 'MatterNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 112184
        mmTop = 18785
        mmWidth = 12869
        BandType = 0
        LayerName = Foreground
      end
      object ppMatterDesc: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'MatterDesc'
        OnGetText = ppMatterDescGetText
        Caption = 'MatterDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 112184
        mmTop = 23548
        mmWidth = 15282
        BandType = 0
        LayerName = Foreground
      end
      object ppClient: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Client'
        OnGetText = ppClientGetText
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 112184
        mmTop = 28310
        mmWidth = 7578
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'CREATED'
        DataPipeline = plMatterNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatterNotes'
        mmHeight = 3852
        mmLeft = 794
        mmTop = 265
        mmWidth = 35190
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'CREATEDBY'
        DataPipeline = plMatterNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatterNotes'
        mmHeight = 3852
        mmLeft = 37306
        mmTop = 265
        mmWidth = 44186
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'NOTE'
        DataPipeline = plMatterNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plMatterNotes'
        mmHeight = 4233
        mmLeft = 82815
        mmTop = 265
        mmWidth = 110067
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Anchors = [atLeft, atBottom]
        Border.Color = clGray
        Pen.Color = clActiveBorder
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 5556
        mmWidth = 197200
        BandType = 4
        LayerName = Foreground
      end
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
  object plMatterNotes: TppDBPipeline
    DataSource = dsMatterNotes
    UserName = 'plMatterNotes'
    Left = 235
    Top = 101
    object plMatterNotesppField1: TppField
      FieldAlias = 'CREATEDBY'
      FieldName = 'CREATEDBY'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plMatterNotesppField2: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plMatterNotesppField3: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 2
    end
  end
  object dsMatterNotes: TUniDataSource
    DataSet = qryMatterNotes
    Left = 185
    Top = 100
  end
  object qryMatterNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      'E.NAME AS CREATEDBY,'
      'TO_CHAR(M.CREATED, '#39'DD-MM-YYYY  HH:MI:SS'#39') as CREATED,'
      'M.NOTE'
      'from '
      'DebtorNotes m,'
      'Employee E '
      'where '
      'E.Code = M.CREATEDBY (+) AND'
      'M.nmatter = :MATTER')
    Active = True
    Left = 131
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MATTER'
        Value = Null
      end>
  end
end
