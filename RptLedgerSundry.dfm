object frmRptLedgerSundry: TfrmRptLedgerSundry
  Left = 661
  Top = 278
  Caption = 'Matter Sundry Ledger'
  ClientHeight = 179
  ClientWidth = 665
  Color = clBtnFace
  Constraints.MinHeight = 220
  Constraints.MinWidth = 674
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    665
    179)
  PixelsPerInch = 106
  TextHeight = 17
  object Label1: TLabel
    Left = 10
    Top = 61
    Width = 30
    Height = 17
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 10
    Top = 90
    Width = 14
    Height = 17
    Caption = 'To'
  end
  object Label3: TLabel
    Left = 10
    Top = 10
    Width = 39
    Height = 17
    Caption = 'Matter'
  end
  object lblFile: TLabel
    Left = 97
    Top = 10
    Width = 4
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblClient: TLabel
    Left = 194
    Top = 10
    Width = 4
    Height = 17
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
    Width = 4
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object dtpFrom: TDateTimePicker
    Left = 118
    Top = 57
    Width = 114
    Height = 25
    Date = 35612.524133958300000000
    Time = 35612.524133958300000000
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 118
    Top = 87
    Width = 114
    Height = 25
    Date = 35976.524408888900000000
    Time = 35976.524408888900000000
    TabOrder = 1
  end
  object DateChangeButton1: TDateChangeButton
    Left = 233
    Top = 58
    Width = 97
    Height = 26
    Caption = 'Today'
    TabOrder = 2
    TabStop = False
    ChangeType = ctToday
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton2: TDateChangeButton
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
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton3: TDateChangeButton
    Left = 340
    Top = 58
    Width = 97
    Height = 26
    Caption = 'This Week'
    TabOrder = 4
    TabStop = False
    ChangeType = ctThisWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton4: TDateChangeButton
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
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object dcThisMonth: TDateChangeButton
    Left = 447
    Top = 58
    Width = 97
    Height = 26
    Caption = 'This Month'
    TabOrder = 6
    TabStop = False
    ChangeType = ctThisMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton6: TDateChangeButton
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
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton7: TDateChangeButton
    Left = 554
    Top = 58
    Width = 97
    Height = 26
    Caption = 'Year To Date'
    TabOrder = 8
    TabStop = False
    ChangeType = ctYearToDate
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
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
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object btnPrint: TBitBtn
    Left = 560
    Top = 140
    Width = 91
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = '&Preview'
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
    TabOrder = 10
    OnClick = btnPrintClick
  end
  object btnMatter: TBitBtn
    Left = 58
    Top = 10
    Width = 26
    Height = 25
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 11
    OnClick = btnMatterClick
  end
  object chkUnbilled: TCheckBox
    Left = 97
    Top = 126
    Width = 186
    Height = 21
    Caption = 'Print only &unbilled items'
    TabOrder = 12
  end
  object chkGst: TCheckBox
    Left = 294
    Top = 126
    Width = 117
    Height = 21
    Caption = 'Show Tax'
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object chkFrom: TCheckBox
    Left = 97
    Top = 61
    Width = 21
    Height = 21
    Checked = True
    State = cbChecked
    TabOrder = 14
  end
  object chkTo: TCheckBox
    Left = 97
    Top = 90
    Width = 21
    Height = 21
    Checked = True
    State = cbChecked
    TabOrder = 15
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT FILEID, NMATTER, P.SEARCH, SHORTDESCR, OPENED, LONGDESCR '
      'FROM MATTER M, PHONEBOOK P  WHERE FILEID = :P_File'
      'AND M.NCLIENT = P.NCLIENT')
    Left = 148
    Top = 65535
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object qrySundLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUNDRY. ACCT, NVL(SUNDRY.CREATED,NULL) created, SUNDRY.AM' +
        'OUNT, SUNDRY.DESCR, SUNDRY.UNITS,'
      'SUNDRY.BILLED, NMEMO.REFNO, SUNDRYTYPE.DESCR AS TYPEDESC  '
      'FROM SUNDRY, SUNDRYTYPE, NMEMO'
      'WHERE SUNDRY.NMATTER = :P_Matter '
      'AND SUNDRY.NMEMO = NMEMO.NMEMO(+)'
      'AND SUNDRY.CREATED >= :P_DateFrom '
      'AND SUNDRY.CREATED <= :P_DateTo '
      'AND SUNDRYTYPE.CODE = SUNDRY.TYPE '
      'ORDER BY CREATED')
    Left = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object qrySundLedgerSum: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT Sundry.Type,Max(SUNDRYTYPE.DESCR)  AS TYPEDESC, 0 as Unbi' +
        'lledUnits, 0 as Unbilled,'
      ' Sum(SUNDRY.UNITS) as TotalUnits, Sum(SUNDRY.AMOUNT) as Total'
      'FROM SUNDRY, SUNDRYTYPE'
      'WHERE sundry.nmatter=:P_Matter'
      'and  Sundry.Type=SundryType.Code(+)'
      'AND SUNDRY.CREATED >= :P_DateFrom'
      'AND SUNDRY.CREATED <= :P_DateTo'
      'group by sundry.type'
      'UNION ALL'
      
        'SELECT Sundry.Type,Max(SUNDRYTYPE.DESCR)  AS TYPEDESC, Sum(SUNDR' +
        'Y.UNITS) as UnbilledUnits,'
      ' Sum(SUNDRY.AMOUNT) as Unbilled, 0 as TotalUnits, 0 as Total'
      'FROM SUNDRY, SUNDRYTYPe'
      'WHERE sundry.nmatter=:P_Matter'
      'and  Sundry.Type=SundryType.Code(+)'
      'AND SUNDRY.CREATED >= :P_DateFrom'
      'AND SUNDRY.CREATED <= :P_DateTo'
      'and BILLED = '#39'N'#39
      'group by sundry.type'
      'order by 1')
    Left = 314
    Top = 2
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 113
    Top = 3
  end
  object dsSundLedger: TUniDataSource
    DataSet = qrySundLedger
    Left = 234
    Top = 2
  end
  object dsSundLedgerSum: TUniDataSource
    DataSet = qrySundLedgerSum
    Left = 344
    Top = 4
  end
  object plMatter: TppDBPipeline
    DataSource = dsMatter
    UserName = 'plMatter'
    Left = 85
    Top = 3
    object plMatterppField1: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plMatterppField2: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plMatterppField3: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object plMatterppField4: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plMatterppField5: TppField
      FieldAlias = 'OPENED'
      FieldName = 'OPENED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plMatterppField6: TppField
      FieldAlias = 'LONGDESCR'
      FieldName = 'LONGDESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 5
    end
  end
  object plSundLedger: TppDBPipeline
    DataSource = dsSundLedger
    UserName = 'plSundLedger'
    Left = 269
    Top = 2
    object plSundLedgerppField1: TppField
      FieldAlias = 'ACCT'
      FieldName = 'ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 0
    end
    object plSundLedgerppField2: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plSundLedgerppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plSundLedgerppField4: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 3
    end
    object plSundLedgerppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNITS'
      FieldName = 'UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plSundLedgerppField6: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object plSundLedgerppField7: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plSundLedgerppField8: TppField
      FieldAlias = 'TYPEDESC'
      FieldName = 'TYPEDESC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
  end
  object plSundLedgerSum: TppDBPipeline
    DataSource = dsSundLedgerSum
    UserName = 'plSundLedgerSum'
    Left = 383
    Top = 6
    object plSundLedgerSumppField1: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 0
    end
    object plSundLedgerSumppField2: TppField
      FieldAlias = 'TYPEDESC'
      FieldName = 'TYPEDESC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plSundLedgerSumppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILLEDUNITS'
      FieldName = 'UNBILLEDUNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plSundLedgerSumppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILLED'
      FieldName = 'UNBILLED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plSundLedgerSumppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALUNITS'
      FieldName = 'TOTALUNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plSundLedgerSumppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plSundLedger
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\SundryLedger.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 371
    Top = 90
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plSundLedger'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 46302
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 0
        mmWidth = 34661
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
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
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Matter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 1323
        mmTop = 7938
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Sundry Ledger'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 85725
        mmTop = 265
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'FILEID'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3969
        mmLeft = 15081
        mmTop = 7938
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'SEARCH'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
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
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 68792
        mmTop = 7938
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 13229
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Anchors = [atLeft, atBottom]
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 185473
        mmTop = 37306
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Anchors = [atLeft, atBottom]
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 171980
        mmTop = 41540
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Anchors = [atLeft, atBottom]
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 24606
        mmTop = 41540
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Anchors = [atLeft, atBottom]
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 41540
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
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
        CharWrap = False
        DataField = 'LONGDESCR'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plMatter'
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
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Bill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 149225
        mmTop = 41540
        mmWidth = 4234
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'Billed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 139965
        mmTop = 41540
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 112713
        mmTop = 41540
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        OnGetText = ppLabel18GetText
        Caption = 'Ex Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 41540
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'CREATED'
        DataPipeline = plSundLedger
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plSundLedger'
        mmHeight = 4149
        mmLeft = 794
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        DataField = 'UNITS'
        DataPipeline = plSundLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plSundLedger'
        mmHeight = 4149
        mmLeft = 171980
        mmTop = 794
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        DataField = 'AMOUNT'
        DataPipeline = plSundLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plSundLedger'
        mmHeight = 4149
        mmLeft = 182827
        mmTop = 794
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'REFNO'
        DataPipeline = plSundLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSundLedger'
        mmHeight = 4149
        mmLeft = 149225
        mmTop = 794
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'BILLED'
        DataPipeline = plSundLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSundLedger'
        mmHeight = 4149
        mmLeft = 142082
        mmTop = 794
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = plSundLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plSundLedger'
        mmHeight = 3704
        mmLeft = 24871
        mmTop = 794
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo4: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo4'
        CharWrap = False
        DataField = 'TYPEDESC'
        DataPipeline = plSundLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plSundLedger'
        mmHeight = 3704
        mmLeft = 112713
        mmTop = 794
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        DataField = 'AMOUNT'
        DataPipeline = plSundLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plSundLedger'
        mmHeight = 4106
        mmLeft = 170657
        mmTop = 529
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 265
        mmWidth = 197200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 143934
        mmTop = 529
        mmWidth = 8202
        BandType = 7
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plSundLedgerSum'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8202
        mmWidth = 197200
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plSundLedgerSum
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
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
          Version = '16.03'
          mmColumnWidth = 0
          DataPipelineName = 'plSundLedgerSum'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label8'
              Caption = 'Code'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 8202
              mmWidth = 6350
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label9'
              Caption = 'Description'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 16933
              mmTop = 8202
              mmWidth = 14817
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label11'
              Caption = 'Unbilled Units'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 107156
              mmTop = 8202
              mmWidth = 18521
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label12'
              Caption = 'Unbilled'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 143404
              mmTop = 8202
              mmWidth = 10848
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label14'
              Caption = 'Total Units'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 161661
              mmTop = 8202
              mmWidth = 14287
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label16'
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 188648
              mmTop = 8202
              mmWidth = 6615
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line3'
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 12700
              mmWidth = 197200
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line4'
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 197200
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc2'
              DataField = 'UNBILLED'
              DataPipeline = plSundLedgerSum
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plSundLedgerSum'
              mmHeight = 4106
              mmLeft = 134144
              mmTop = 794
              mmWidth = 20638
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc3'
              DataField = 'TOTAL'
              DataPipeline = plSundLedgerSum
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plSundLedgerSum'
              mmHeight = 4106
              mmLeft = 178330
              mmTop = 794
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'TYPEDESC'
            DataPipeline = plSundLedgerSum
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plSundLedgerSum'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              Background.Brush.Style = bsClear
              PrintHeight = phDynamic
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object ppDBText7: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText7'
                DataField = 'TYPE'
                DataPipeline = plSundLedgerSum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plSundLedgerSum'
                mmHeight = 4233
                mmLeft = 0
                mmTop = 0
                mmWidth = 14288
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBMemo3: TppDBMemo
                DesignLayer = ppDesignLayer2
                UserName = 'DBMemo3'
                CharWrap = False
                DataField = 'TYPEDESC'
                DataPipeline = plSundLedgerSum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                RemoveEmptyLines = False
                Stretch = True
                Transparent = True
                DataPipelineName = 'plSundLedgerSum'
                mmHeight = 3704
                mmLeft = 15875
                mmTop = 265
                mmWidth = 84667
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                mmLeading = 0
              end
              object ppDBCalc4: TppDBCalc
                DesignLayer = ppDesignLayer2
                UserName = 'DBCalc4'
                DataField = 'UNBILLEDUNITS'
                DataPipeline = plSundLedgerSum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plSundLedgerSum'
                mmHeight = 4149
                mmLeft = 104246
                mmTop = 0
                mmWidth = 22490
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBCalc5: TppDBCalc
                DesignLayer = ppDesignLayer2
                UserName = 'DBCalc5'
                DataField = 'UNBILLED'
                DataPipeline = plSundLedgerSum
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plSundLedgerSum'
                mmHeight = 4233
                mmLeft = 130969
                mmTop = 0
                mmWidth = 23813
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBCalc6: TppDBCalc
                DesignLayer = ppDesignLayer2
                UserName = 'DBCalc6'
                DataField = 'TOTALUNITS'
                DataPipeline = plSundLedgerSum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plSundLedgerSum'
                mmHeight = 4149
                mmLeft = 159544
                mmTop = 0
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBCalc7: TppDBCalc
                DesignLayer = ppDesignLayer2
                UserName = 'DBCalc7'
                DataField = 'TOTAL'
                DataPipeline = plSundLedgerSum
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plSundLedgerSum'
                mmHeight = 4149
                mmLeft = 178330
                mmTop = 0
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
            end
          end
          object raCodeModule2: TraCodeModule
            ProgramStream = {00}
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
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
