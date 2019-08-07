object frmRptLedgerUnconCheqReq: TfrmRptLedgerUnconCheqReq
  Left = 609
  Top = 457
  Caption = 'Matter Unconverted CheqReq Ledger'
  ClientHeight = 170
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object lblFrom: TLabel
    Left = 8
    Top = 54
    Width = 28
    Height = 15
    Caption = 'From'
  end
  object lblTo: TLabel
    Left = 8
    Top = 79
    Width = 13
    Height = 15
    Caption = 'To'
  end
  object lblRequestedBy: TLabel
    Left = 8
    Top = 106
    Width = 71
    Height = 15
    Caption = 'Requested By'
  end
  object lblFile: TLabel
    Left = 86
    Top = 9
    Width = 31
    Height = 15
    Caption = 'lblFile'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblDesc: TLabel
    Left = 86
    Top = 26
    Width = 38
    Height = 15
    Caption = 'lblDesc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblClient: TLabel
    Left = 171
    Top = 9
    Width = 44
    Height = 15
    Caption = 'lblClient'
    ShowAccelChar = False
  end
  object btnMatter: TBitBtn
    Left = 51
    Top = 9
    Width = 23
    Height = 22
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 0
    OnClick = btnMatterClick
  end
  object chkBilled: TCheckBox
    Left = 283
    Top = 103
    Width = 130
    Height = 18
    Caption = 'Show Billed Items'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object chkRev: TCheckBox
    Left = 283
    Top = 145
    Width = 151
    Height = 18
    Caption = 'Show Reversed Items'
    TabOrder = 4
  end
  object dtpTo: TDateTimePicker
    Left = 115
    Top = 77
    Width = 96
    Height = 22
    Date = 38058.647232430600000000
    Time = 38058.647232430600000000
    TabOrder = 1
  end
  object btnPreview: TBitBtn
    Left = 503
    Top = 129
    Width = 80
    Height = 26
    Caption = 'Preview'
    Glyph.Data = {
      36040000424D7604000000000000760000002800000010000000100000000100
      2000000000000004000000000000000000001000000000000000C0C0C000C0C0
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
    TabOrder = 5
    OnClick = btnPreviewClick
  end
  object cmbAuthor: TcxLookupComboBox
    Left = 94
    Top = 103
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 65
        FieldName = 'NAME'
      end
      item
        Caption = 'Code'
        Width = 20
        FieldName = 'CODE'
      end>
    Properties.ListSource = dsAuthor
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 2
    Width = 177
  end
  object dtpFrom: TDateTimePicker
    Left = 115
    Top = 51
    Width = 96
    Height = 22
    Date = 35505.651784988400000000
    Time = 35505.651784988400000000
    TabOrder = 6
  end
  object DateChangeButton1: TDateChangeButton
    Left = 214
    Top = 51
    Width = 86
    Height = 23
    Caption = 'Today'
    TabOrder = 7
    TabStop = False
    ChangeType = ctToday
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton2: TDateChangeButton
    Left = 309
    Top = 51
    Width = 85
    Height = 23
    Caption = 'This Week'
    TabOrder = 8
    TabStop = False
    ChangeType = ctThisWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton3: TDateChangeButton
    Left = 403
    Top = 51
    Width = 86
    Height = 23
    Caption = 'This Month'
    TabOrder = 9
    TabStop = False
    ChangeType = ctThisMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton4: TDateChangeButton
    Left = 497
    Top = 51
    Width = 86
    Height = 23
    Caption = 'Year To Date'
    TabOrder = 10
    TabStop = False
    ChangeType = ctYearToDate
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton5: TDateChangeButton
    Left = 214
    Top = 77
    Width = 86
    Height = 23
    Caption = 'Yesterday'
    TabOrder = 11
    TabStop = False
    ChangeType = ctYesterday
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton6: TDateChangeButton
    Left = 309
    Top = 77
    Width = 85
    Height = 23
    Caption = 'Last Week'
    TabOrder = 12
    TabStop = False
    ChangeType = ctLastWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton7: TDateChangeButton
    Left = 403
    Top = 77
    Width = 86
    Height = 23
    Caption = 'Last Month'
    TabOrder = 13
    TabStop = False
    ChangeType = ctLastMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton8: TDateChangeButton
    Left = 497
    Top = 77
    Width = 86
    Height = 23
    Caption = 'Last Year'
    TabOrder = 14
    TabStop = False
    ChangeType = ctLastYear
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object chkAntd: TCheckBox
    Left = 283
    Top = 123
    Width = 216
    Height = 18
    Caption = 'Show Anticipated Disbursements'
    TabOrder = 15
  end
  object chkFrom: TCheckBox
    Left = 94
    Top = 54
    Width = 19
    Height = 18
    Checked = True
    State = cbChecked
    TabOrder = 16
  end
  object chkTo: TCheckBox
    Left = 94
    Top = 79
    Width = 19
    Height = 19
    Checked = True
    State = cbChecked
    TabOrder = 17
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT OPENED, FILEID, TITLE, LONGDESCR, SHORTDESCR, NMATTER, SE' +
        'ARCH'
      'FROM MATTER, CLIENT'
      'WHERE FILEID = :P_File'
      'AND MATTER.CLIENTID = CLIENT.CODE')
    Left = 48
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object rbRptUnconCheqReq: TppReport
    AutoStop = False
    DataPipeline = ppUnconCheqReq
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
    PassSetting = psTwoPass
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
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rbRptUnconCheqReqBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
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
    XLSSettings.WorksheetName = 'Report'
    Left = 248
    Top = 248
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppUnconCheqReq'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Unconverted Cheque Requisitions Ledger'
        Color = 13816530
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4924
        mmLeft = 2117
        mmTop = 1323
        mmWidth = 197909
        BandType = 1
        LayerName = Foreground
      end
      object pplblMatter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMatter'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 2117
        mmTop = 11113
        mmWidth = 9789
        BandType = 1
        LayerName = Foreground
      end
      object pplblDescription: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblDescription'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 22225
        mmWidth = 16933
        BandType = 1
        LayerName = Foreground
      end
      object ppMatter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Matter'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 21167
        mmTop = 11113
        mmWidth = 10318
        BandType = 1
        LayerName = Foreground
      end
      object ppDescription: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Description'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 21167
        mmTop = 22225
        mmWidth = 173302
        BandType = 1
        LayerName = Foreground
      end
      object pplblClient: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblClient'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 16669
        mmWidth = 8466
        BandType = 1
        LayerName = Foreground
      end
      object ppClient: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Client'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 21167
        mmTop = 16669
        mmWidth = 8466
        BandType = 1
        LayerName = Foreground
      end
      object ppFor: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'For'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'For'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 31750
        mmWidth = 5105
        BandType = 1
        LayerName = Foreground
      end
      object ppFilterDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'FilterDate'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 21167
        mmTop = 37306
        mmWidth = 7673
        BandType = 1
        LayerName = Foreground
      end
      object ppFilter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Filter'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 21167
        mmTop = 31750
        mmWidth = 7595
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object pplblFor: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblFor'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'For'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 5556
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblBank: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblBank'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Bank'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 24606
        mmTop = 5556
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblPayeeDesc: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPayeeDesc'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Payee'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 38365
        mmTop = 5556
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblReqBy: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblReqBy'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Req By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 102394
        mmTop = 6615
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblBill: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblBill'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Bill Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 123031
        mmTop = 5556
        mmWidth = 20643
        BandType = 0
        LayerName = Foreground
      end
      object pplblStatus: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblStatus'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 5556
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblAmount: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblAmount'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 5556
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1588
        mmTop = 21960
        mmWidth = 201084
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1588
        mmTop = 23018
        mmWidth = 201084
        BandType = 0
        LayerName = Foreground
      end
      object pplblBilled: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblBilled'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Billed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 126476
        mmTop = 11113
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblOwing: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblOwing'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Owing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 126476
        mmTop = 16669
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblPayable: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPayable'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Payable'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 16669
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblTax: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblTax'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 177789
        mmTop = 11113
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object pplblPaid: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPaid'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Paid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 177789
        mmTop = 16669
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 38365
        mmTop = 10848
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppBank: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Bank'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'BANK'
        DataPipeline = ppUnconCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3968
        mmLeft = 24606
        mmTop = 1588
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppDesc: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Desc'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = ppUnconCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 4022
        mmLeft = 38365
        mmTop = 8202
        mmWidth = 66940
        BandType = 4
        LayerName = Foreground
      end
      object ppAuthor: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Author'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AUTHOR'
        DataPipeline = ppUnconCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3968
        mmLeft = 107686
        mmTop = 1588
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppBillNo: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'BillNo'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'BILLNO'
        DataPipeline = ppUnconCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3968
        mmLeft = 133620
        mmTop = 1588
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppAmount: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Amount'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = ppUnconCheqReq
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3968
        mmLeft = 181512
        mmTop = 1588
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppReqDate: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'ReqDate'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REQDATE'
        DataPipeline = ppUnconCheqReq
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3968
        mmLeft = 2117
        mmTop = 1588
        mmWidth = 12964
        BandType = 4
        LayerName = Foreground
      end
      object ppTax: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Tax'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = ppUnconCheqReq
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3968
        mmLeft = 189185
        mmTop = 8202
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppPaid: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Paid'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PAID'
        DataPipeline = ppUnconCheqReq
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3969
        mmLeft = 187646
        mmTop = 14846
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
      object ppStatus: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Status'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'STATUS'
        DataPipeline = ppUnconCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 4498
        mmLeft = 152664
        mmTop = 1323
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppInvoiceDate: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'InvoiceDate'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INVOICEDATE'
        DataPipeline = ppUnconCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3969
        mmLeft = 124624
        mmTop = 8208
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object ppOwing: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Owing'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        OnCalc = ppOwingCalc
        Transparent = True
        mmHeight = 3968
        mmLeft = 134413
        mmTop = 14817
        mmWidth = 9261
        BandType = 4
        LayerName = Foreground
      end
      object ppPayable: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Payable'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        OnCalc = ppPayableCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 155046
        mmTop = 14824
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBPayable: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBPayable'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PAYABLE'
        DataPipeline = ppUnconCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 8210
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PAYEE'
        DataPipeline = ppUnconCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 4022
        mmLeft = 38365
        mmTop = 1323
        mmWidth = 67204
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4497
        mmLeft = 2117
        mmTop = 1588
        mmWidth = 33602
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4497
        mmLeft = 183886
        mmTop = 1588
        mmWidth = 10583
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Color = clGrayText
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 265
        mmWidth = 197379
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24606
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1852
        mmTop = 1323
        mmWidth = 201084
        BandType = 7
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 527
        mmLeft = 1852
        mmTop = 2381
        mmWidth = 201084
        BandType = 7
        LayerName = Foreground
      end
      object ppTotalAmount: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'TotalAmount'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = ppUnconCheqReq
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 4191
        mmLeft = 180037
        mmTop = 3704
        mmWidth = 14442
        BandType = 7
        LayerName = Foreground
      end
      object ppTotalTax: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'TotalTax'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = ppUnconCheqReq
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppUnconCheqReq'
        mmHeight = 4498
        mmLeft = 177808
        mmTop = 10583
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 3704
        mmWidth = 11907
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 10583
        mmWidth = 4763
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 17198
        mmWidth = 7144
        BandType = 7
        LayerName = Foreground
      end
      object ppTotal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Total'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        OnCalc = ppTotalCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 187333
        mmTop = 17198
        mmWidth = 7144
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
  object qryUnconCheqReq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT c.REQDATE, c.BANK, c.PAYEE, c.DESCR,'
      '       c.INVOICEDATE, c.BILLED, c.AUTHOR, c.HELD,'
      '       c.CONVERTED, c.NOTE, c.TAXCODE,'
      '       nvl(sum(nvl(c.amount ,0)),0) AMOUNT,'
      '       nvl(sum(c.tax),0) TAX,  n.REFNO AS BILLNO,'
      '       DECODE(c.HELD,'#39'Y'#39','#39'Held'#39','
      '                     '#39'W'#39','#39'Waiting'#39','
      '                     NULL) STATUS,'
      '       nvl(sum(a.AMOUNT) + SUM(a.TAX) *-1, 0) PAID,'
      '       nvl(sum(t.AMOUNT), 0) PAYABLE'
      '       FROM cheqreq c, nmemo n, alloc a, cheqreq_trans t'
      '       WHERE c.FILEID = :FileId'
      '       AND c.NMEMO = n.NMEMO (+)'
      '       AND c.NCHEQREQ = a.NCHEQREQ (+)'
      '       AND c.NCHEQREQ = t.NCHEQREQ (+)'
      '       AND c.CONVERTED = '#39'N'#39)
    Left = 152
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FileId'
        Value = nil
      end>
    object qryUnconCheqReqREQDATE: TDateTimeField
      FieldName = 'REQDATE'
    end
    object qryUnconCheqReqBANK: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object qryUnconCheqReqPAYEE: TStringField
      FieldName = 'PAYEE'
      Size = 80
    end
    object qryUnconCheqReqDESCR: TStringField
      FieldName = 'DESCR'
      Size = 120
    end
    object qryUnconCheqReqINVOICEDATE: TDateTimeField
      FieldName = 'INVOICEDATE'
    end
    object qryUnconCheqReqBILLED: TStringField
      FieldName = 'BILLED'
      Size = 1
    end
    object qryUnconCheqReqAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qryUnconCheqReqHELD: TStringField
      FieldName = 'HELD'
      Size = 1
    end
    object qryUnconCheqReqCONVERTED: TStringField
      FieldName = 'CONVERTED'
      Size = 1
    end
    object qryUnconCheqReqNOTE: TStringField
      FieldName = 'NOTE'
      Size = 400
    end
    object qryUnconCheqReqAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object qryUnconCheqReqTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryUnconCheqReqBILLNO: TStringField
      FieldName = 'BILLNO'
    end
    object qryUnconCheqReqSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 7
    end
    object qryUnconCheqReqPAID: TFloatField
      FieldName = 'PAID'
    end
    object qryUnconCheqReqTAXCODE: TStringField
      FieldName = 'TAXCODE'
      Size = 8
    end
    object qryUnconCheqReqPAYABLE: TFloatField
      FieldName = 'PAYABLE'
    end
  end
  object dsUnconCheqReq: TDataSource
    DataSet = qryUnconCheqReq
    Left = 48
    Top = 248
  end
  object ppUnconCheqReq: TppDBPipeline
    DataSource = dsUnconCheqReq
    UserName = 'UnconCheqReq'
    Left = 152
    Top = 248
    object ppUnconCheqReqppField1: TppField
      FieldAlias = 'REQDATE'
      FieldName = 'REQDATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField2: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField3: TppField
      FieldAlias = 'PAYEE'
      FieldName = 'PAYEE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField4: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField5: TppField
      FieldAlias = 'INVOICEDATE'
      FieldName = 'INVOICEDATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField6: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField7: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField8: TppField
      FieldAlias = 'HELD'
      FieldName = 'HELD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField9: TppField
      FieldAlias = 'CONVERTED'
      FieldName = 'CONVERTED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField10: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField11: TppField
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField12: TppField
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField13: TppField
      FieldAlias = 'BILLNO'
      FieldName = 'BILLNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField14: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField15: TppField
      FieldAlias = 'PAID'
      FieldName = 'PAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField16: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppUnconCheqReqppField17: TppField
      FieldAlias = 'PAYABLE'
      FieldName = 'PAYABLE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object qryAuthor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name FROM employee')
    Left = 368
    Top = 192
  end
  object dsAuthor: TDataSource
    DataSet = qryAuthor
    Left = 432
    Top = 192
  end
end
