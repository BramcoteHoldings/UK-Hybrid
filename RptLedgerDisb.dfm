object frmRptLedgerDisb: TfrmRptLedgerDisb
  Left = 575
  Top = 346
  BorderStyle = bsDialog
  Caption = 'Matter Disbursement Ledger'
  ClientHeight = 138
  ClientWidth = 672
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
    672
    138)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 51
    Width = 28
    Height = 15
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 9
    Top = 77
    Width = 13
    Height = 15
    Caption = 'To'
  end
  object Label3: TLabel
    Left = 9
    Top = 9
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object lblFile: TLabel
    Left = 86
    Top = 9
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
    Left = 171
    Top = 9
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
  object lblDesc: TLabel
    Left = 86
    Top = 26
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
  object dtpFrom: TDateTimePicker
    Left = 108
    Top = 51
    Width = 92
    Height = 22
    Date = 35612.524133958300000000
    Time = 35612.524133958300000000
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 108
    Top = 77
    Width = 92
    Height = 22
    Date = 35976.524408888900000000
    Time = 35976.524408888900000000
    TabOrder = 1
  end
  object DateChangeButton1: TDateChangeButton
    Left = 206
    Top = 51
    Width = 85
    Height = 23
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
    Left = 206
    Top = 77
    Width = 85
    Height = 23
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
    Left = 300
    Top = 51
    Width = 86
    Height = 23
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
    Left = 300
    Top = 77
    Width = 86
    Height = 23
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
    Left = 394
    Top = 51
    Width = 86
    Height = 23
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
    Left = 394
    Top = 77
    Width = 86
    Height = 23
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
    Left = 489
    Top = 51
    Width = 85
    Height = 23
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
    Left = 489
    Top = 77
    Width = 85
    Height = 23
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
    Left = 576
    Top = 106
    Width = 81
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
    TabOrder = 10
    OnClick = btnPrintClick
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
    TabOrder = 11
    OnClick = btnMatterClick
  end
  object chkUnbilled: TCheckBox
    Left = 86
    Top = 111
    Width = 164
    Height = 19
    Caption = 'Print only &unbilled items'
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object cbAnticipated: TCheckBox
    Left = 255
    Top = 111
    Width = 228
    Height = 19
    Caption = 'Include Anticipated Disbursements'
    TabOrder = 13
  end
  object chkGst: TCheckBox
    Left = 490
    Top = 111
    Width = 78
    Height = 19
    Caption = 'Show Tax'
    TabOrder = 14
  end
  object chkFrom: TCheckBox
    Left = 86
    Top = 54
    Width = 18
    Height = 18
    Checked = True
    State = cbChecked
    TabOrder = 15
  end
  object chkTo: TCheckBox
    Left = 86
    Top = 79
    Width = 18
    Height = 19
    Checked = True
    State = cbChecked
    TabOrder = 16
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT OPENED, FILEID, P.SEARCH, LONGDESCR, SHORTDESCR, NMATTER'
      'FROM MATTER M, PHONEBOOK P  WHERE FILEID = :P_File'
      'AND M.NCLIENT = P.NCLIENT')
    Active = True
    Left = 157
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = Null
      end>
  end
  object qryTmpLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT alloc.created, alloc.taxcode, alloc.refno, alloc.payer,'
      
        '       nmemo.dispatched AS invoicedate, nmemo.refno AS bill, all' +
        'oc.amount,alloc.amount * -1 as balance,'
      '       alloc.descr, alloc.sundrytype,'
      '       DECODE (alloc.billed,'
      '               '#39'Y'#39', alloc.tax,'
      '               DECODE (r.rate - r.bill_rate,'
      '                       '#39'0'#39', alloc.tax,'
      '                       (alloc.amount * (ABS (r.rate) / 100))'
      '                      )'
      '              ) AS tax,'
      '       calc_disb_percent (alloc.nmatter) AS disb_percent,'
      '       TO_NUMBER (DECODE (SUBSTR (alloc.amount, 0, 1),'
      '                          '#39'0'#39', TO_NUMBER (NULL),'
      '                          '#39'-'#39', ABS (alloc.amount)'
      '                         )'
      '                 ) debit,'
      '       TO_NUMBER (DECODE (SUBSTR (alloc.amount, 0, 1),'
      '                          '#39'-'#39', TO_NUMBER (NULL),'
      '                          ABS (alloc.amount)'
      '                         )'
      '                 ) credit'
      '  FROM alloc, nmemo, taxrate r'
      ' WHERE alloc.nmatter = 80563'
      '   AND alloc.trust <> '#39'T'#39
      '   AND alloc.ninvoice IS NULL'
      
        '   AND (   (alloc.ncheque <> 0 AND alloc.TYPE <> '#39'J1'#39' AND alloc.' +
        'TYPE <> '#39'RF'#39
      '           )'
      '        OR alloc.TYPE = '#39'J2'#39
      '        OR alloc.TYPE = '#39'DR'#39
      '       )'
      '   AND alloc.nmemo = nmemo.nmemo(+)'
      '   AND alloc.taxcode = r.taxcode(+)'
      'UNION ALL'
      'SELECT dispatched AS created, NULL AS taxcode, refno, bill_to,'
      
        '       dispatched AS invoicedate, refno AS bill, disb AS amount,' +
        'disb * -1 as balance,'
      
        '       '#39'Client Bill '#39' || refno, NULL AS sundrytype, disbtax AS t' +
        'ax,'
      '       calc_disb_percent (nmatter) AS disb_percent,'
      '       DECODE (SUBSTR ((disb + NVL (disbtax, 0)), 0, 1),'
      '               '#39'0'#39', TO_NUMBER (NULL),'
      '               '#39'-'#39', ABS (disb),'
      '               0'
      '              ) debit,'
      '       DECODE (SUBSTR ((disb + NVL (disbtax, 0)), 0, 1),'
      '               '#39'-'#39', TO_NUMBER (NULL),'
      '               ABS (disb)'
      '              ) credit'
      '  FROM nmemo'
      ' WHERE nmatter = 80563'
      '   AND dispatched IS NOT NULL'
      '   AND ((disb <> 0 AND rv_type <> '#39'D'#39'))'
      ''
      ''
      ''
      '/*'
      
        'SELECT ALLOC.CREATED, ALLOC.REFNO, ALLOC.PAYER, NMEMO.DISPATCHED' +
        ' AS INVOICEDATE, NMEMO.REFNO AS BILL, ALLOC.AMOUNT, ALLOC.DESCR,' +
        ' ALLOC.SUNDRYTYPE, abs(ALLOC.TAX) as TAX,'
      'calc_disb_percent(alloc.nmatter) as disb_percent'
      'FROM ALLOC, NMEMO'
      
        'WHERE ALLOC.NMATTER = 980009 AND ALLOC.TRUST <> '#39'T'#39' AND (ALLOC.N' +
        'CHEQUE <> 0 OR ALLOC.TYPE = '#39'J1'#39' OR ALLOC.TYPE = '#39'DR'#39')'
      'AND ALLOC.NMEMO = NMEMO.NMEMO(+)'
      'UNION'
      
        'SELECT DISPATCHED AS CREATED, REFNO, BILL_TO, DISPATCHED AS INVO' +
        'ICEDATE, REFNO AS BILL, DISB*-1 as AMOUNT, '#39'Client Invoice '#39' || ' +
        'REFNO, Null as SUNDRYTYPE, abs(DISBTAX) AS TAX'
      ',calc_disb_percent(nmatter) as disb_percent'
      'FROM NMEMO'
      
        'WHERE NMATTER = 980009 AND DISPATCHED IS NOT NULL AND DISB <> 0 ' +
        'AND RV_TYPE <> '#39'D'#39
      'ORDER BY CREATED'
      '*/')
    Active = True
    Left = 248
    Top = 2
  end
  object plMatter: TppDBPipeline
    DataSource = dsMatter
    UserName = 'plMatter'
    Left = 85
    Top = 3
    object plMatterppField1: TppField
      FieldAlias = 'OPENED'
      FieldName = 'OPENED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object plMatterppField2: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
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
      FieldAlias = 'LONGDESCR'
      FieldName = 'LONGDESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 3
    end
    object plMatterppField5: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object plMatterppField6: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 113
    Top = 3
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plTmpLedger
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
    PassSetting = psTwoPass
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
    BeforePrint = ppReport1BeforePrint
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
    TextFileName = '($MyDocuments)\SundryLedger.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 568
    Top = 4
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plTmpLedger'
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 0
        mmWidth = 37571
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 184680
        mmTop = 0
        mmWidth = 10847
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Matter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 12965
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Disbursement Ledger'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 76994
        mmTop = 265
        mmWidth = 43656
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 4276
        mmLeft = 14288
        mmTop = 12965
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 4276
        mmLeft = 79375
        mmTop = 12965
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 67998
        mmTop = 12965
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 529
        mmTop = 18256
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Anchors = [atLeft, atBottom]
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 186796
        mmTop = 37306
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        Anchors = [atLeft, atBottom]
        Caption = 'Inc Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 170127
        mmTop = 41540
        mmWidth = 10848
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
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 40746
        mmTop = 41540
        mmWidth = 17198
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
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 37306
        mmWidth = 6879
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 17992
        mmLeft = 19315
        mmTop = 18256
        mmWidth = 84667
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'Component'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 145521
        mmTop = 41540
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Caption = 'Billed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 137584
        mmTop = 41540
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        OnGetText = ppLabel18GetText
        Caption = 'Inc Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 184944
        mmTop = 41540
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Caption = 'Refno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 24606
        mmTop = 37306
        mmWidth = 8732
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Caption = 'Exp Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 24606
        mmTop = 41540
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        Caption = 'Payer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 40746
        mmTop = 37306
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Caption = 'Invoice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 135202
        mmTop = 37306
        mmWidth = 10584
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 157163
        mmTop = 37306
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 171450
        mmTop = 37306
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object pplblPeriod: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPeriod'
        Caption = 'lblPeriod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 91811
        mmTop = 6085
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'CREATED'
        DataPipeline = plTmpLedger
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 794
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        DataField = 'DEBIT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 164042
        mmTop = 794
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'CREDIT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 179917
        mmTop = 794
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'BILL'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 124619
        mmTop = 794
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'TAX'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 147902
        mmTop = 794
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3704
        mmLeft = 40746
        mmTop = 5292
        mmWidth = 76994
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'REFNO'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 24606
        mmTop = 794
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        DataField = 'SUNDRYTYPE'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 24606
        mmTop = 5292
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        DataField = 'PAYER'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 41010
        mmTop = 794
        mmWidth = 79375
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'INVOICEDATE'
        DataPipeline = plTmpLedger
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 119856
        mmTop = 5292
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        DataField = 'TAXCODE'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 148432
        mmTop = 5292
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
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
        DataField = 'CREDIT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 179917
        mmTop = 529
        mmWidth = 15875
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
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 134409
        mmTop = 529
        mmWidth = 7937
        BandType = 7
        LayerName = Foreground
      end
      object ppdbInterestAmt: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbInterestAmt'
        AutoSize = True
        DataField = 'DISB_PERCENT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3705
        mmLeft = 100542
        mmTop = 4233
        mmWidth = 794
        BandType = 7
        LayerName = Foreground
      end
      object pplblInterestMsg: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblInterestMsg'
        AutoSize = False
        Caption = 'Interest due on Unbilled disbursements:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3852
        mmLeft = 31221
        mmTop = 4233
        mmWidth = 61383
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        DataField = 'TAX'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 145521
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        DataField = 'DEBIT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 164042
        mmTop = 529
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Caption = 'Balance:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 130704
        mmTop = 4763
        mmWidth = 11907
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        DataField = 'BALANCE'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3852
        mmLeft = 107156
        mmTop = 7144
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 169863
        mmTop = 4763
        mmWidth = 13494
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F75726365066C70726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A0D0A202056616C7565203A3D20444243616C63332E56616C
        7565202D444243616C63312E56616C75653B200D0A0D0A656E643B0D0A0D436F
        6D706F6E656E744E616D6506095661726961626C6531094576656E744E616D65
        06064F6E43616C63074576656E7449440221084361726574506F730102000200
        000000}
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
  object dsTmpLedger: TUniDataSource
    DataSet = qryTmpLedger
    Left = 291
    Top = 5
  end
  object plTmpLedger: TppDBPipeline
    DataSource = dsTmpLedger
    UserName = 'plTmpLedger'
    Left = 323
    object plTmpLedgerppField1: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object plTmpLedgerppField2: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object plTmpLedgerppField3: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plTmpLedgerppField4: TppField
      FieldAlias = 'PAYER'
      FieldName = 'PAYER'
      FieldLength = 85
      DisplayWidth = 85
      Position = 3
    end
    object plTmpLedgerppField5: TppField
      FieldAlias = 'INVOICEDATE'
      FieldName = 'INVOICEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plTmpLedgerppField6: TppField
      FieldAlias = 'BILL'
      FieldName = 'BILL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plTmpLedgerppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plTmpLedgerppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'BALANCE'
      FieldName = 'BALANCE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plTmpLedgerppField9: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 8
    end
    object plTmpLedgerppField10: TppField
      FieldAlias = 'SUNDRYTYPE'
      FieldName = 'SUNDRYTYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 9
    end
    object plTmpLedgerppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plTmpLedgerppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISB_PERCENT'
      FieldName = 'DISB_PERCENT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object plTmpLedgerppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT'
      FieldName = 'DEBIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object plTmpLedgerppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT'
      FieldName = 'CREDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
  end
end
