object frmRptLedgerDebt: TfrmRptLedgerDebt
  Left = 667
  Top = 281
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Matter Debtor Ledger'
  ClientHeight = 153
  ClientWidth = 553
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
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 56
    Width = 31
    Height = 15
    Caption = 'From:'
  end
  object Label2: TLabel
    Left = 9
    Top = 81
    Width = 16
    Height = 15
    Caption = 'To:'
  end
  object Label3: TLabel
    Left = 9
    Top = 13
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
    Left = 66
    Top = 51
    Width = 100
    Height = 22
    Date = 35612.524133958300000000
    Time = 35612.524133958300000000
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 66
    Top = 77
    Width = 100
    Height = 22
    Date = 35976.524408888900000000
    Time = 35976.524408888900000000
    TabOrder = 1
  end
  object DateChangeButton1: TDateChangeButton
    Left = 171
    Top = 51
    Width = 86
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
    Left = 171
    Top = 77
    Width = 86
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
    Left = 266
    Top = 51
    Width = 85
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
    Left = 266
    Top = 77
    Width = 85
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
    Left = 360
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
    Left = 360
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
    Left = 454
    Top = 51
    Width = 86
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
    Left = 454
    Top = 77
    Width = 86
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
    Left = 460
    Top = 117
    Width = 80
    Height = 27
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
  object chkGst: TCheckBox
    Left = 51
    Top = 111
    Width = 104
    Height = 19
    Caption = 'Show Tax'
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object rgSeq: TRadioGroup
    Left = 171
    Top = 103
    Width = 199
    Height = 35
    Caption = 'Sequence'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Bill/Date'
      'Date')
    TabOrder = 13
  end
  object chkFrom: TCheckBox
    Left = 45
    Top = 54
    Width = 18
    Height = 18
    Checked = True
    State = cbChecked
    TabOrder = 14
  end
  object chkTo: TCheckBox
    Left = 45
    Top = 79
    Width = 18
    Height = 19
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
    Active = True
    Left = 216
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
      
        'SELECT 2 as report_order, NMEMO.generated as NMEMO_GEN,NMEMO.NME' +
        'MO, ALLOC.CREATED, '
      'NMEMO.REFNO, ALLOC.PAYER, ALLOC.BILLED, NMEMO.REFNO AS BILLNO, '
      '(NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)) as AMOUNT, ALLOC.DESCR,'
      
        'nvl(DECODE(SUBSTR((NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)),0,1),'#39'0' +
        #39',to_number(NULL),'#39'-'#39',ABS((NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0))' +
        ' ),to_number(NULL)  ),0) DEBIT ,'
      
        'nvl(DECODE(SUBSTR((NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)),0,1),'#39'-' +
        #39',to_number(NULL),ABS((NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)))  )' +
        ',0) CREDIT '
      'FROM ALLOC, NMEMO'
      'WHERE ALLOC.NMEMO = NMEMO.NMEMO(+)'
      'AND ALLOC.NMATTER = 34'
      'AND ALLOC.TRUST <> '#39'T'#39' AND ALLOC.TYPE <> '#39'DR'#39' '
      
        'AND (ALLOC.NRECEIPT <> 0 OR ALLOC.TYPE = '#39'J1'#39' OR ALLOC.TYPE = '#39'R' +
        'F'#39') '
      'UNION ALL'
      
        'SELECT 1 as report_order,NMEMO.generated AS NMEMO_GEN,NMEMO, DIS' +
        'PATCHED "CREATED", REFNO, BILL_TO, '#39' '#39', REFNO, '
      
        '(NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+N' +
        'VL(TAX,0))*-1 as AMOUNT, '
      #39'Client Bill '#39' || REFNO,'
      
        'nvl(DECODE(SUBSTR(((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD' +
        ',0)+NVL(UPCRED,0)+NVL(TAX,0))*-1 ),0,1),'#39'0'#39',to_number(NULL),'#39'-'#39',' +
        'ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,' +
        '0)+NVL(TAX,0)) ),to_number(NULL)  ),0) DEBIT ,'
      
        'nvl(DECODE(SUBSTR(((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD' +
        ',0)+NVL(UPCRED,0)+NVL(TAX,0))*-1 ),0,1),'#39'-'#39',to_number(NULL),ABS(' +
        '(NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+N' +
        'VL(TAX,0)) )  ),0) CREDIT'
      'FROM NMEMO'
      'WHERE NMATTER = 34'
      'AND DISPATCHED IS NOT NULL AND RV_TYPE <> '#39'D'#39' '
      'ORDER BY NMEMO_GEN,report_order,CREATED'
      ''
      ''
      '/*'
      
        'SELECT NVL(ALLOC.CREATED,NULL) AS CREATED, ALLOC.REFNO, AMOUNT*-' +
        '1 as AMOUNT, ALLOC.DESCR'
      'FROM ALLOC, NMEMO'
      'WHERE ALLOC.NMEMO = NMEMO.NMEMO(+)'
      
        'AND ALLOC.NMATTER = 980009 AND ALLOC.TRUST <> '#39'T'#39' AND (ALLOC.NRE' +
        'CEIPT <> 0 OR ALLOC.TYPE = '#39'J1'#39')'
      'UNION ALL'
      
        'SELECT DISPATCHED AS CREATED, REFNO, (FEES+DISB+SUND+ANTD+UPCRED' +
        ')*-1 as AMOUNT, '#39'Client Invoice '#39' || REFNO AS DESCR'
      'FROM NMEMO'
      'WHERE NMATTER = 980009  AND DISPATCHED IS NOT NULL'
      'ORDER BY CREATED'
      '*/')
    Debug = True
    Active = True
    OnCalcFields = qryTmpLedgerCalcFields
    Left = 301
    Top = 4
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 184
    Top = 2
  end
  object dsTmpLedger: TUniDataSource
    DataSet = qryTmpLedger
    Left = 350
    Top = 10
  end
  object plMatter: TppDBPipeline
    DataSource = dsMatter
    UserName = 'plMatter'
    Left = 131
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
  object plTmpLedger: TppDBPipeline
    DataSource = dsTmpLedger
    UserName = 'plTmpLedger'
    Left = 399
    Top = 12
    object plTmpLedgerppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPORT_ORDER'
      FieldName = 'REPORT_ORDER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object plTmpLedgerppField2: TppField
      FieldAlias = 'NMEMO_GEN'
      FieldName = 'NMEMO_GEN'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plTmpLedgerppField3: TppField
      FieldAlias = 'NMEMO'
      FieldName = 'NMEMO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 2
    end
    object plTmpLedgerppField4: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plTmpLedgerppField5: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plTmpLedgerppField6: TppField
      FieldAlias = 'PAYER'
      FieldName = 'PAYER'
      FieldLength = 85
      DisplayWidth = 85
      Position = 5
    end
    object plTmpLedgerppField7: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object plTmpLedgerppField8: TppField
      FieldAlias = 'BILLNO'
      FieldName = 'BILLNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plTmpLedgerppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plTmpLedgerppField10: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 9
    end
    object plTmpLedgerppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT'
      FieldName = 'DEBIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plTmpLedgerppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT'
      FieldName = 'CREDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plTmpLedger
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
    PassSetting = psTwoPass
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 473
    Top = 5
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
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 529
        mmWidth = 30956
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
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 183357
        mmTop = 794
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Debtors Ledger'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 6087
        mmLeft = 83080
        mmTop = 529
        mmWidth = 31756
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 12171
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object pplblPeriod: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPeriod'
        OnGetText = pplblPeriodGetText
        Caption = 'lblPeriod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 92340
        mmTop = 6879
        mmWidth = 13494
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
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 12171
        mmWidth = 30956
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
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 12171
        mmWidth = 95779
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3705
        mmLeft = 65881
        mmTop = 12435
        mmWidth = 9261
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 17463
        mmWidth = 16669
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
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 17727
        mmLeft = 19579
        mmTop = 17463
        mmWidth = 71702
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
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 40746
        mmWidth = 6880
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Caption = 'Refno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 19579
        mmTop = 40746
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 38100
        mmTop = 40746
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 143394
        mmTop = 40746
        mmWidth = 7937
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 165354
        mmTop = 40746
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 184411
        mmTop = 40746
        mmWidth = 11641
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
        mmTop = 45508
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'CREDIT'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3704
        mmLeft = 109009
        mmTop = 40746
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'DEBIT'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3704
        mmLeft = 89959
        mmTop = 40746
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'CREATED'
        DataPipeline = plTmpLedger
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3768
        mmLeft = 794
        mmTop = 529
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'REFNO'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3768
        mmLeft = 19579
        mmTop = 529
        mmWidth = 16934
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'DESCR'
        DataPipeline = plTmpLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3768
        mmLeft = 38100
        mmTop = 529
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        BlankWhenZero = True
        DataField = 'DEBIT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3704
        mmLeft = 130162
        mmTop = 561
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        BlankWhenZero = True
        DataField = 'CREDIT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3768
        mmLeft = 152654
        mmTop = 529
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        HyperlinkEnabled = False
        AutoSize = False
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3439
        mmLeft = 174887
        mmTop = 694
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        DataField = 'DEBIT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3725
        mmLeft = 131487
        mmTop = 794
        mmWidth = 19844
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        DataField = 'CREDIT'
        DataPipeline = plTmpLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTmpLedger'
        mmHeight = 3725
        mmLeft = 153977
        mmTop = 794
        mmWidth = 19844
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'Totals'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3439
        mmLeft = 108479
        mmTop = 794
        mmWidth = 8202
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 108479
        mmTop = 6350
        mmWidth = 10584
        BandType = 7
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 107950
        mmTop = 5292
        mmWidth = 67726
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '$#,0.00; ;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 139425
        mmTop = 6350
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable3'
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '$#,0.00; ; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 161915
        mmTop = 6350
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F75726365066F70726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A0D0A202056616C7565203A3D202028444243616C63312E56
        616C7565202D20444243616C63322E56616C7565293B0D0A0D0A656E643B0D0A
        0D436F6D706F6E656E744E616D6506095661726961626C6531094576656E744E
        616D6506064F6E43616C63074576656E7449440221084361726574506F730102
        000200000001060F5472614576656E7448616E646C65720B50726F6772616D4E
        616D65060F5661726961626C65324F6E43616C630B50726F6772616D54797065
        070B747450726F63656475726506536F75726365066C70726F63656475726520
        5661726961626C65324F6E43616C63287661722056616C75653A205661726961
        6E74293B0D0A626567696E0D0A0D0A202056616C7565203A3D20444243616C63
        332E56616C7565202D20444243616C63342E56616C75653B0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D6506095661726961626C6532094576656E
        744E616D6506064F6E43616C63074576656E7449440221084361726574506F73
        0102000200000001060F5472614576656E7448616E646C65720B50726F677261
        6D4E616D65060F5661726961626C65334F6E43616C630B50726F6772616D5479
        7065070B747450726F63656475726506536F75726365066C70726F6365647572
        65205661726961626C65334F6E43616C63287661722056616C75653A20566172
        69616E74293B0D0A626567696E0D0A0D0A202056616C7565203A3D2044424361
        6C63342E56616C7565202D20444243616C63332E56616C75653B0D0A0D0A656E
        643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C6533094576
        656E744E616D6506064F6E43616C63074576656E744944022108436172657450
        6F730102000200000001060F5472614576656E7448616E646C65720B50726F67
        72616D4E616D6506105661726961626C65334F6E5072696E740B50726F677261
        6D54797065070B747450726F63656475726506536F75726365067870726F6365
        64757265205661726961626C65334F6E5072696E743B0D0A626567696E0D0A20
        202020696620444243616C63342E56616C7565203C20444243616C63332E5661
        6C7565207468656E0D0A2020202020205661726961626C65332E56697369626C
        65203A3D2046616C73653B0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        6506095661726961626C6533094576656E744E616D6506074F6E5072696E7407
        4576656E7449440220084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D6506105661726961626C
        65324F6E5072696E740B50726F6772616D54797065070B747450726F63656475
        726506536F75726365067770726F636564757265205661726961626C65324F6E
        5072696E743B0D0A626567696E0D0A202020696620444243616C63332E56616C
        7565203C20444243616C63342E56616C7565207468656E0D0A20202020202056
        61726961626C65322E56697369626C65203A3D2046616C73653B0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D6506095661726961626C6532094576656E
        744E616D6506074F6E5072696E74074576656E7449440220084361726574506F
        730102000200000000}
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
