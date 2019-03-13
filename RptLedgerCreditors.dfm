object frmRptLedgerCreditors: TfrmRptLedgerCreditors
  Left = 678
  Top = 329
  Caption = 'Ledger Creditors'
  ClientHeight = 187
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 17
  object lblFrom: TLabel
    Left = 10
    Top = 62
    Width = 30
    Height = 17
    Caption = 'From'
  end
  object lblTo: TLabel
    Left = 10
    Top = 92
    Width = 14
    Height = 17
    Caption = 'To'
  end
  object lblClient: TLabel
    Left = 194
    Top = 10
    Width = 46
    Height = 17
    Caption = 'lblClient'
    ShowAccelChar = False
  end
  object lblFile: TLabel
    Left = 97
    Top = 10
    Width = 33
    Height = 17
    Caption = 'lblFile'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblDesc: TLabel
    Left = 97
    Top = 29
    Width = 42
    Height = 17
    Caption = 'lblDesc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 39
    Height = 17
    Caption = 'Matter'
  end
  object dtpFrom: TDateTimePicker
    Left = 118
    Top = 57
    Width = 114
    Height = 25
    Date = 35505.651784988400000000
    Time = 35505.651784988400000000
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 118
    Top = 87
    Width = 114
    Height = 25
    Date = 38058.647232430600000000
    Time = 38058.647232430600000000
    TabOrder = 1
  end
  object DateChangeButton1: TDateChangeButton
    Left = 233
    Top = 57
    Width = 97
    Height = 26
    Caption = 'Today'
    TabOrder = 2
    TabStop = False
    ChangeType = ctToday
    DateFrom = dtpFrom
    DateTo = dtpTo
  end
  object DateChangeButton5: TDateChangeButton
    Left = 233
    Top = 87
    Width = 97
    Height = 26
    Caption = 'Yesterday'
    TabOrder = 3
    TabStop = False
    ChangeType = ctYesterday
    DateFrom = dtpFrom
    DateTo = dtpTo
  end
  object DateChangeButton2: TDateChangeButton
    Left = 340
    Top = 57
    Width = 97
    Height = 26
    Caption = 'This Week'
    TabOrder = 4
    TabStop = False
    ChangeType = ctThisWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
  end
  object DateChangeButton6: TDateChangeButton
    Left = 340
    Top = 87
    Width = 97
    Height = 26
    Caption = 'Last Week'
    TabOrder = 5
    TabStop = False
    ChangeType = ctLastWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
  end
  object DateChangeButton3: TDateChangeButton
    Left = 447
    Top = 57
    Width = 97
    Height = 26
    Caption = 'This Month'
    TabOrder = 6
    TabStop = False
    ChangeType = ctThisMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
  end
  object DateChangeButton7: TDateChangeButton
    Left = 447
    Top = 87
    Width = 97
    Height = 26
    Caption = 'Last Month'
    TabOrder = 7
    TabStop = False
    ChangeType = ctLastMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
  end
  object DateChangeButton4: TDateChangeButton
    Left = 554
    Top = 57
    Width = 97
    Height = 26
    Caption = 'Year To Date'
    TabOrder = 8
    TabStop = False
    ChangeType = ctYearToDate
    DateFrom = dtpFrom
    DateTo = dtpTo
  end
  object DateChangeButton8: TDateChangeButton
    Left = 554
    Top = 87
    Width = 97
    Height = 26
    Caption = 'Last Year'
    TabOrder = 9
    TabStop = False
    ChangeType = ctLastYear
    DateFrom = dtpFrom
    DateTo = dtpTo
  end
  object btnPreview: TBitBtn
    Left = 560
    Top = 145
    Width = 91
    Height = 30
    Caption = 'Preview'
    Glyph.Data = {
      76040000424DB604000000000000B60000002800000010000000100000000100
      2000000000000004000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000C0C0
      C000C0C0C0008080800000000000FFFFFF00C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000C0C0C000C0C0
      C000FFFF000080808000FFFFFF000000000000000000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C00080808000C0C0C00000000000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF0000C0C0
      C000C0C0C00080808000C0C0C00000000000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFF0000FFFF
      0000C0C0C00080808000FFFFFF0000000000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000C0C0
      C000C0C0C0008080800000000000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
    TabOrder = 10
    OnClick = btnPreviewClick
  end
  object chkUnbilled: TcxCheckBox
    Left = 92
    Top = 117
    Caption = 'Print unbilled only'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Transparent = True
  end
  object chkUnpaid: TcxCheckBox
    Left = 92
    Top = 143
    Caption = 'Print unpaid only'
    Properties.NullStyle = nssUnchecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Transparent = True
  end
  object chkFrom: TCheckBox
    Left = 97
    Top = 60
    Width = 21
    Height = 20
    TabOrder = 13
  end
  object chkTo: TCheckBox
    Left = 97
    Top = 90
    Width = 21
    Height = 21
    Checked = True
    State = cbChecked
    TabOrder = 14
  end
  object ppCreditor: TppDBPipeline
    DataSource = dsCreditorRpt
    UserName = 'Creditor'
    Left = 16
    Top = 139
  end
  object rbRptCreditor: TppReport
    AutoStop = False
    DataPipeline = ppCreditor
    NoDataBehaviors = [ndBlankReport]
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rbRptCreditorBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    ModalPreview = False
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
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
    Left = 9
    Top = 95
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppCreditor'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22754
      mmPrintPosition = 0
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Creditors Ledger'
        Color = 13816530
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        mmHeight = 6055
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 195263
        BandType = 1
        LayerName = Foreground
      end
      object ppMatter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMatter1'
        Border.Weight = 1.000000000000000000
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 7673
        mmWidth = 9789
        BandType = 1
        LayerName = Foreground
      end
      object ppCredMatter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Matter1'
        Border.Weight = 1.000000000000000000
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 21167
        mmTop = 7673
        mmWidth = 10583
        BandType = 1
        LayerName = Foreground
      end
      object ppCredClient: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Client1'
        Border.Weight = 1.000000000000000000
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 21167
        mmTop = 12965
        mmWidth = 8731
        BandType = 1
        LayerName = Foreground
      end
      object ppClient: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblClient1'
        Border.Weight = 1.000000000000000000
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 12965
        mmWidth = 8731
        BandType = 1
        LayerName = Foreground
      end
      object ppDescription: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblDescription1'
        Border.Weight = 1.000000000000000000
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 2117
        mmTop = 18256
        mmWidth = 17198
        BandType = 1
        LayerName = Foreground
      end
      object ppCredDescription: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Description1'
        Border.Weight = 1.000000000000000000
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 21167
        mmTop = 18256
        mmWidth = 17198
        BandType = 1
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable4'
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 7673
        mmWidth = 35189
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppCredlblDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblFor1'
        Border.Weight = 1.000000000000000000
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 794
        mmWidth = 5291
        BandType = 0
        LayerName = Foreground
      end
      object ppCredRef: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblBank1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Creditor Reference'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 20370
        mmTop = 794
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppCredCreditor: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPayeeDesc1'
        Border.Weight = 1.000000000000000000
        Caption = 'Creditor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 42598
        mmTop = 794
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppCredDescr: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblReqBy1'
        Border.Weight = 1.000000000000000000
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 78052
        mmTop = 794
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppCredInv: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CredInv'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 135729
        mmTop = 794
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppCredTax: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CredTax'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 169069
        mmTop = 794
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppCredAmt: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CredAmt'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Amount Inc of Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 9260
        mmLeft = 182034
        mmTop = 0
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CredInv1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Last Payment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 127792
        mmTop = 5027
        mmWidth = 21431
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
        mmTop = 10583
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CredAmt1'
        Border.Weight = 1.000000000000000000
        Caption = 'Amount Ex Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8466
        mmLeft = 153988
        mmTop = 794
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        ParentWidth = True
        Pen.Style = psClear
        ShiftRelativeTo = ppDBMemo3
        mmHeight = 6085
        mmLeft = 0
        mmTop = 3969
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Anchors = [atLeft, atBottom]
          DataField = 'LAST_PAYMENT'
          DataPipeline = ppCreditor
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppCreditor'
          mmHeight = 3768
          mmLeft = 125939
          mmTop = 5028
          mmWidth = 23283
          BandType = 4
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          AutoSize = False
          Caption = 'From Trust:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3768
          mmLeft = 69850
          mmTop = 5028
          mmWidth = 15615
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          DataField = 'FROM_TRUST'
          DataPipeline = ppCreditor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppCreditor'
          mmHeight = 4233
          mmLeft = 86254
          mmTop = 5028
          mmWidth = 7408
          BandType = 4
          LayerName = Foreground
        end
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.Weight = 1.000000000000000000
        DataField = 'CREDITOR'
        DataPipeline = ppCreditor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 3768
        mmLeft = 42596
        mmTop = 0
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo3: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo3'
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = ppCreditor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 4233
        mmLeft = 78036
        mmTop = 0
        mmWidth = 58206
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'INVOICE_DATE'
        DataPipeline = ppCreditor
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 3768
        mmLeft = 1588
        mmTop = 0
        mmWidth = 17989
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.Weight = 1.000000000000000000
        DataField = 'INVREF'
        DataPipeline = ppCreditor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 3768
        mmLeft = 20370
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.Weight = 1.000000000000000000
        DataField = 'MEMOREF'
        DataPipeline = ppCreditor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 4233
        mmLeft = 138639
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        Border.Weight = 1.000000000000000000
        DataField = 'TAX'
        DataPipeline = ppCreditor
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 3768
        mmLeft = 168539
        mmTop = 0
        mmWidth = 10055
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        Border.Weight = 1.000000000000000000
        DataField = 'AMTINCTAX'
        DataPipeline = ppCreditor
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 3768
        mmLeft = 179388
        mmTop = 0
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'AMT'
        DataPipeline = ppCreditor
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 3768
        mmLeft = 150282
        mmTop = 0
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1058
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
      object ppCredTotalAmt: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CredTotalAmt'
        Border.Weight = 1.000000000000000000
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 144727
        mmTop = 3704
        mmWidth = 9790
        BandType = 7
        LayerName = Foreground
      end
      object ppCredTotalTax: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CredTotalTax'
        Border.Weight = 1.000000000000000000
        Caption = 'Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 144727
        mmTop = 8996
        mmWidth = 3969
        BandType = 7
        LayerName = Foreground
      end
      object ppCredTotal: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CredTotal'
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 144727
        mmTop = 14023
        mmWidth = 5821
        BandType = 7
        LayerName = Foreground
      end
      object ppCredTotalCalc: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Total'
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppCredTotalCalcCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 191030
        mmTop = 14288
        mmWidth = 5820
        BandType = 7
        LayerName = Foreground
      end
      object ppCredSumAmt: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'CredSumAmt'
        Border.Weight = 1.000000000000000000
        DataField = 'AMT'
        DataPipeline = ppCreditor
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 3725
        mmLeft = 173567
        mmTop = 3704
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground
      end
      object ppCredSumTax: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'CredSumTax'
        Border.Weight = 1.000000000000000000
        DataField = 'TAX'
        DataPipeline = ppCreditor
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCreditor'
        mmHeight = 3725
        mmLeft = 173567
        mmTop = 8996
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground
      end
      object ppsTotalUnbilledExGST: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'sTotalUnbilledExGST'
        Border.Weight = 1.000000000000000000
        Caption = 'Total Unbilled'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 144727
        mmTop = 19579
        mmWidth = 16934
        BandType = 7
        LayerName = Foreground
      end
      object ppTotalUnbilledGST: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'TotalUnbilledGST'
        Border.Weight = 1.000000000000000000
        Caption = 'Tax to be Added'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 144727
        mmTop = 24871
        mmWidth = 19580
        BandType = 7
        LayerName = Foreground
      end
      object ppTotalUnbilled: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'TotalUnbilled'
        Border.Weight = 1.000000000000000000
        Caption = 'Total (inc Tax)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 144727
        mmTop = 31485
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground
      end
      object ppUnbill: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Unbill'
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppUnbillCalc
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 189442
        mmTop = 19579
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground
      end
      object ppUnbillGST: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'UnbillGST'
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppUnbillGSTCalc
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 184944
        mmTop = 24871
        mmWidth = 12171
        BandType = 7
        LayerName = Foreground
      end
      object ppUnbillTotal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'UnbillTotal'
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppUnbillTotalCalc
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 183886
        mmTop = 31485
        mmWidth = 13229
        BandType = 7
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
  object dsCreditorRpt: TUniDataSource
    DataSet = qryCreditorRpt
    Left = 307
    Top = 101
  end
  object qryCreditorRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT m.fileid, c.refno as InvRef, c.creditor, a.descr, a.nmemo' +
        ', invoice_date,'
      
        '       (a.amount * -1) as Amt, (a.tax * -1) as Tax, ((a.amount *' +
        ' -1) + (a.tax * -1)) as AmtIncTax, '
      
        '(select refno from nmemo n where a.billed = '#39'Y'#39' and n.nmemo = a.' +
        'nmemo) as MemoRef, c.last_payment, a.nalloc,'
      
        'nvl((select distinct decode(alloc.trust,'#39'T'#39', '#39'Yes'#39', '#39'No'#39') from a' +
        'lloc where alloc.ncheque = c.ncheque),'#39'No'#39')  from_trust'
      'FROM matter m, alloc a, invoice c'
      'WHERE m.nmatter = :p_nmatter '
      'AND   m.nmatter = a.nmatter'
      'AND   a.ninvoice = c.ninvoice(+)'
      'AND   a.ninvoice is not null')
    Active = True
    Left = 226
    Top = 99
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nmatter'
        Value = nil
      end>
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT OPENED, FILEID, LONGDESCR, SHORTDESCR, NMATTER, SEARCH'
      'FROM MATTER M, PHONEBOOK P'
      'WHERE FILEID = :P_File'
      'AND M.NCLIENT = P.NCLIENT')
    Left = 136
    Top = 139
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object qryGSTBillTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT GST_Bill_Total FROM systemfile')
    Left = 358
    Top = 105
  end
end
