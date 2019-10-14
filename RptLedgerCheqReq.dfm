object frmRptLedgerCheqReq: TfrmRptLedgerCheqReq
  Left = 680
  Top = 339
  Caption = 'Matter CheqReq Ledger'
  ClientHeight = 138
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    514
    138)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 7
    Top = 44
    Width = 28
    Height = 15
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 7
    Top = 70
    Width = 12
    Height = 15
    Caption = 'To'
  end
  object Label3: TLabel
    Left = 7
    Top = 7
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object lblFile: TLabel
    Left = 74
    Top = 8
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblClient: TLabel
    Left = 149
    Top = 7
    Width = 3
    Height = 15
    ShowAccelChar = False
  end
  object lblDesc: TLabel
    Left = 290
    Top = 94
    Width = 2
    Height = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblAuthor: TLabel
    Left = 7
    Top = 97
    Width = 71
    Height = 15
    Caption = 'Requested By'
  end
  object lblAuthorName: TLabel
    Left = 143
    Top = 91
    Width = 3
    Height = 15
  end
  object NumberLabel1: TNumberLabel
    Left = 192
    Top = 52
    Width = 6
    Height = 13
    Alignment = taRightJustify
    Caption = '0'
    DecimalPlaces = 0
    DisplayFormat = dfInteger
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -11
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -11
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -11
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
  end
  object cbAuthor: TComboBox
    Left = 83
    Top = 94
    Width = 53
    Height = 23
    Style = csDropDownList
    TabOrder = 11
    OnChange = cbAuthorChange
  end
  object dtpFrom: TDateTimePicker
    Left = 101
    Top = 41
    Width = 80
    Height = 23
    Date = 35612.524133958300000000
    Time = 35612.524133958300000000
    TabOrder = 1
  end
  object dtpTo: TDateTimePicker
    Left = 101
    Top = 67
    Width = 80
    Height = 23
    Date = 35976.524408888900000000
    Time = 35976.524408888900000000
    TabOrder = 2
  end
  object DateChangeButton1: TDateChangeButton
    Left = 187
    Top = 41
    Width = 75
    Height = 23
    Caption = 'Today'
    TabOrder = 3
    TabStop = False
    OnClick = DateChangeButton1Click
    ChangeType = ctToday
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton2: TDateChangeButton
    Left = 187
    Top = 67
    Width = 75
    Height = 23
    Caption = 'Yesterday'
    TabOrder = 4
    TabStop = False
    OnClick = DateChangeButton1Click
    ChangeType = ctYesterday
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton3: TDateChangeButton
    Left = 269
    Top = 41
    Width = 74
    Height = 23
    Caption = 'This Week'
    TabOrder = 5
    TabStop = False
    OnClick = DateChangeButton1Click
    ChangeType = ctThisWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton4: TDateChangeButton
    Left = 269
    Top = 67
    Width = 74
    Height = 23
    Caption = 'Last Week'
    TabOrder = 6
    TabStop = False
    OnClick = DateChangeButton1Click
    ChangeType = ctLastWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object dcThisMonth: TDateChangeButton
    Left = 351
    Top = 41
    Width = 74
    Height = 23
    Caption = 'This Month'
    TabOrder = 7
    TabStop = False
    OnClick = DateChangeButton1Click
    ChangeType = ctThisMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton6: TDateChangeButton
    Left = 351
    Top = 67
    Width = 74
    Height = 23
    Caption = 'Last Month'
    TabOrder = 8
    TabStop = False
    OnClick = DateChangeButton1Click
    ChangeType = ctLastMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton7: TDateChangeButton
    Left = 432
    Top = 41
    Width = 75
    Height = 23
    Caption = 'Year To Date'
    TabOrder = 9
    TabStop = False
    OnClick = DateChangeButton1Click
    ChangeType = ctYearToDate
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton8: TDateChangeButton
    Left = 432
    Top = 67
    Width = 75
    Height = 23
    Caption = 'Last Year'
    TabOrder = 10
    TabStop = False
    OnClick = DateChangeButton1Click
    ChangeType = ctLastYear
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object btnPrint: TBitBtn
    Left = 432
    Top = 106
    Width = 75
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Preview'
    Default = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888800000000000088000FFFFFFFFFF080000FFFFFFF000000080FFFFFF07887
      0F880FFFFF0788E7F0080FFFFF08888780880FFFFF08E88780880FFFFF07EE87
      F0880FFFFFF0788708880FFFFFFF000088880FFFFFFFFFF088880FFFFFFF0000
      88880FFFFFFF080888880FFFFFFF008888880000000008888888}
    TabOrder = 12
    OnClick = btnPrintClick
  end
  object btnMatter: TBitBtn
    Left = 45
    Top = 7
    Width = 22
    Height = 23
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
    Left = 143
    Top = 93
    Width = 120
    Height = 16
    Caption = 'Show Billed Items ?'
    TabOrder = 13
  end
  object chkRev: TCheckBox
    Left = 143
    Top = 110
    Width = 149
    Height = 16
    Caption = 'Show Reversed Items'
    TabOrder = 14
  end
  object chkFrom: TCheckBox
    Left = 83
    Top = 43
    Width = 16
    Height = 15
    TabOrder = 15
  end
  object chkTo: TCheckBox
    Left = 83
    Top = 69
    Width = 16
    Height = 16
    TabOrder = 16
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT OPENED, FILEID, P.SEARCH, LONGDESCR, SHORTDESCR, NMATTER'
      'FROM MATTER M, PHONEBOOK P  WHERE FILEID = :P_File'
      'AND M.NCLIENT = P.NCLIENT')
    Active = True
    Left = 556
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = Null
      end>
  end
  object qryCheqReqLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CHEQREQ.REQDATE, CHEQREQ.BANK, CHEQREQ.PAYEE, CHEQREQ.DES' +
        'CR, CHEQREQ.AMOUNT,'
      
        ' CHEQREQ.INVOICEDATE, CHEQREQ.BILLED, CHEQREQ.AUTHOR, CHEQREQ.HE' +
        'LD, CHEQREQ.CONVERTED,'
      
        '  CHEQREQ.NOTE, CHEQREQ.TAX, NMEMO.REFNO AS BILLNO,(nvl(PAYABLE.' +
        'AMT,0) - nvl(PAID.AMT,0)) as PAYABLE,'
      
        '  (nvl(CHEQREQ.AMOUNT,0) + nvl(CHEQREQ.TAX,0))-nvl(PAID.AMT,0) a' +
        's OWING,nvl(PAID.AMT,0) as PAID, '
      
        '  DECODE(CHEQREQ.HELD,'#39'Y'#39','#39'Held'#39','#39'W'#39','#39'Waiting'#39',NULL) STATUS, CHE' +
        'QREQ.TAXCODE '
      '  FROM CHEQREQ, NMEMO,'
      
        '  (SELECT SUM(AMOUNT) as AMT,NCHEQREQ FROM CHEQREQ_TRANS GROUP B' +
        'Y NCHEQREQ)  PAYABLE,'
      
        '  (SELECT (SUM(AMOUNT) + SUM(TAX)) *-1 as amt,ncheqreq from allo' +
        'c where ncheqreq is not null group by ncheqreq)  paid'
      '  WHERE CHEQREQ.FILEID = :FILEID '
      'AND CHEQREQ.TRUST = '#39'G'#39'  AND CHEQREQ.ANTICIPATED = '#39'Y'#39'  '
      
        'AND CHEQREQ.NCHEQREQ = PAYABLE.NCHEQREQ (+)   AND CHEQREQ.NCHEQR' +
        'EQ = PAID.NCHEQREQ (+)   '
      'AND CHEQREQ.NMEMO = NMEMO.NMEMO(+)  AND CHEQREQ.BILLED = '#39'N'#39'   '
      'AND REV_NCHEQREQ IS NULL '
      'ORDER BY 1'
      ''
      '/*'
      
        'SELECT CHEQREQ.REQDATE, CHEQREQ.BANK, CHEQREQ.PAYEE, CHEQREQ.DES' +
        'CR, CHEQREQ.AMOUNT,'
      
        '  CHEQREQ.INVOICEDATE, CHEQREQ.BILLED, CHEQREQ.AUTHOR, CHEQREQ.H' +
        'ELD, CHEQREQ.CONVERTED, CHEQREQ.NOTE,'
      '  CHEQREQ.TAX, CHEQREQ.TAXCODE, NMEMO.REFNO AS BILLNO'
      'FROM CHEQREQ, NMEMO'
      'WHERE CHEQREQ.FILEID = :FILEID'
      'AND CHEQREQ.NMEMO = NMEMO.NMEMO(+)'
      'AND BILLED = '#39'N'#39
      'AND CONVERTED <> '#39'R'#39
      '*/')
    Active = True
    OnCalcFields = qryCheqReqLedgerCalcFields
    Left = 476
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = Null
      end>
  end
  object dsCheqReqLedger: TUniDataSource
    DataSet = qryCheqReqLedger
    Left = 336
    Top = 5
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsCheqReqLedger
    UserName = 'DBPipeline1'
    Left = 391
    Top = 8
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'REQDATE'
      FieldName = 'REQDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PAYEE'
      FieldName = 'PAYEE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'INVOICEDATE'
      FieldName = 'INVOICEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'HELD'
      FieldName = 'HELD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'CONVERTED'
      FieldName = 'CONVERTED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 400
      DisplayWidth = 400
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'BILLNO'
      FieldName = 'BILLNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAYABLE'
      FieldName = 'PAYABLE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'OWING'
      FieldName = 'OWING'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAID'
      FieldName = 'PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 7
      DisplayWidth = 7
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 17
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
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
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 209900
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 457
    Top = 8
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 46302
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 529
        mmTop = 0
        mmWidth = 34459
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 184680
        mmTop = 0
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Matter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 7938
        mmWidth = 10922
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Anticipated Disbursement Ledger'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 56886
        mmTop = 265
        mmWidth = 67468
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 15081
        mmTop = 7938
        mmWidth = 36777
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'SEARCH'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 80169
        mmTop = 7938
        mmWidth = 98425
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Client:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 68792
        mmTop = 7938
        mmWidth = 9906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Description:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 13229
        mmWidth = 18542
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Owing'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 125942
        mmTop = 41804
        mmWidth = 8975
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Billed'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 125942
        mmTop = 37571
        mmWidth = 7832
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Bill'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 125942
        mmTop = 33073
        mmWidth = 4276
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Req By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 113242
        mmTop = 33073
        mmWidth = 10414
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 152136
        mmTop = 33073
        mmWidth = 9059
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 184764
        mmTop = 33073
        mmWidth = 11007
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Tax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 191030
        mmTop = 37571
        mmWidth = 4868
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'Paid'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 189442
        mmTop = 41804
        mmWidth = 6392
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Payable'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 152136
        mmTop = 41804
        mmWidth = 11515
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Payee'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 34396
        mmTop = 33073
        mmWidth = 9017
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 34396
        mmTop = 37571
        mmWidth = 16002
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Bank'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 25665
        mmTop = 33073
        mmWidth = 7281
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'For'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 794
        mmTop = 33073
        mmWidth = 4784
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 45773
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'LONGDESCR'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 17992
        mmLeft = 20108
        mmTop = 13229
        mmWidth = 66411
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'REQDATE'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 794
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'BANK'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 25665
        mmTop = 794
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PAYEE'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 34396
        mmTop = 794
        mmWidth = 78052
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 34396
        mmTop = 5821
        mmWidth = 77788
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'AUTHOR'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 113242
        mmTop = 794
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'TAXCODE'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 113506
        mmTop = 5821
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'BILLNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 125942
        mmTop = 794
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 174890
        mmTop = 794
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 174890
        mmTop = 5821
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'STATUS'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 152136
        mmTop = 794
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'INVOICEDATE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 125942
        mmTop = 5821
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'OWING'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 125942
        mmTop = 10848
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'PAYABLE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 152136
        mmTop = 10848
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'PAID'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 174890
        mmTop = 10848
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 529
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 5027
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 171186
        mmTop = 9525
        mmWidth = 24606
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 265
        mmWidth = 197200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'Amount:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 143934
        mmTop = 529
        mmWidth = 11896
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'Tax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 143934
        mmTop = 5027
        mmWidth = 5757
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 143934
        mmTop = 9525
        mmWidth = 7620
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' :=  DBCalc1.Value + DBCalc2.Value;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
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
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 619
    Top = 21
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsMatter
    UserName = 'DBPipeline2'
    Left = 674
    Top = 24
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'OPENED'
      FieldName = 'OPENED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'LONGDESCR'
      FieldName = 'LONGDESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
  end
end
