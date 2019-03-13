object frmRptTransitRegister: TfrmRptTransitRegister
  Left = 367
  Top = 246
  Caption = 'Matter Transit Register'
  ClientHeight = 151
  ClientWidth = 589
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
    589
    151)
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
    Left = 105
    Top = 51
    Width = 100
    Height = 22
    Date = 35612.524133958300000000
    Time = 35612.524133958300000000
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 105
    Top = 77
    Width = 100
    Height = 22
    Date = 35976.524408888900000000
    Time = 35976.524408888900000000
    TabOrder = 1
  end
  object DateChangeButton1: TDateChangeButton
    Left = 206
    Top = 51
    Width = 85
    Height = 24
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
    Height = 25
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
    Height = 24
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
    Height = 25
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
    Height = 24
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
    Height = 25
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
    Height = 24
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
    Height = 25
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
    Left = 494
    Top = 119
    Width = 80
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
  object chkFrom: TCheckBox
    Left = 85
    Top = 53
    Width = 18
    Height = 18
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object chkTo: TCheckBox
    Left = 85
    Top = 78
    Width = 18
    Height = 18
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT FILEID, NMATTER, P.SEARCH, SHORTDESCR, OPENED, LONGDESCR '
      'FROM MATTER M, PHONEBOOK P  WHERE FILEID = :P_File'
      'AND M.NCLIENT = P.NCLIENT')
    Left = 218
    Top = 65534
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = Null
      end>
  end
  object qryTransitRegister: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT *'
      'FROM TRANSIT'
      'WHERE NMATTER =:P_Matter'
      'ORDER BY CREATED')
    Active = True
    Left = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = Null
      end>
  end
  object plTransitRegister: TppDBPipeline
    DataSource = dsTransitRegister
    UserName = 'plTransitRegister'
    Left = 323
    object plTransitRegisterppField1: TppField
      FieldAlias = 'NTRANSIT'
      FieldName = 'NTRANSIT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object plTransitRegisterppField2: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plTransitRegisterppField3: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 2
    end
    object plTransitRegisterppField4: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 1000
      DisplayWidth = 1000
      Position = 3
    end
    object plTransitRegisterppField5: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plTransitRegisterppField6: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object plTransitRegisterppField7: TppField
      FieldAlias = 'RCVD_DATE'
      FieldName = 'RCVD_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object plTransitRegisterppField8: TppField
      FieldAlias = 'RCVD_FROM'
      FieldName = 'RCVD_FROM'
      FieldLength = 40
      DisplayWidth = 40
      Position = 7
    end
    object plTransitRegisterppField9: TppField
      FieldAlias = 'PAID_TO'
      FieldName = 'PAID_TO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 8
    end
    object plTransitRegisterppField10: TppField
      FieldAlias = 'PAID_DATE'
      FieldName = 'PAID_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object plTransitRegisterppField11: TppField
      FieldAlias = 'PAYMENT_TYPE'
      FieldName = 'PAYMENT_TYPE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 10
    end
    object plTransitRegisterppField12: TppField
      FieldAlias = 'CHQNO'
      FieldName = 'CHQNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object plTransitRegisterppField13: TppField
      FieldAlias = 'BRANCH'
      FieldName = 'BRANCH'
      FieldLength = 60
      DisplayWidth = 60
      Position = 12
    end
    object plTransitRegisterppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object plTransitRegisterppField15: TppField
      FieldAlias = 'SYSTEM_DATE'
      FieldName = 'SYSTEM_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object plTransitRegisterppField16: TppField
      FieldAlias = 'BANK_BRANCH'
      FieldName = 'BANK_BRANCH'
      FieldLength = 60
      DisplayWidth = 60
      Position = 15
    end
    object plTransitRegisterppField17: TppField
      FieldAlias = 'BSB'
      FieldName = 'BSB'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object plTransitRegisterppField18: TppField
      FieldAlias = 'BANK_ACCOUNT'
      FieldName = 'BANK_ACCOUNT'
      FieldLength = 25
      DisplayWidth = 25
      Position = 17
    end
    object plTransitRegisterppField19: TppField
      FieldAlias = 'PAID_TO_ADDRESS'
      FieldName = 'PAID_TO_ADDRESS'
      FieldLength = 400
      DisplayWidth = 400
      Position = 18
    end
  end
  object plMatter: TppDBPipeline
    DataSource = dsMatter
    UserName = 'plMatter'
    Left = 125
    Top = 3
    object plMatterppField1: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 0
      DisplayWidth = 0
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
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 176
  end
  object dsTransitRegister: TUniDataSource
    DataSet = qryTransitRegister
    Left = 291
    Top = 5
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plTransitRegister
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
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
    Left = 319
    Top = 100
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plTransitRegister'
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
        mmLeft = 1323
        mmTop = 0
        mmWidth = 34660
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
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 1323
        mmTop = 7938
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Transit Register'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 84667
        mmTop = 265
        mmWidth = 28046
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
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 68792
        mmTop = 7938
        mmWidth = 9525
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
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 13229
        mmWidth = 17462
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
        mmTop = 41540
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Anchors = [atLeft, atBottom]
        Caption = 'Reference'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 41540
        mmWidth = 13229
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
        mmLeft = 1323
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
        mmLeft = 22228
        mmTop = 13229
        mmWidth = 156369
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
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'CREATED'
        DataPipeline = plTransitRegister
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3598
        mmLeft = 1324
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'CREATED'
        DataPipeline = plTransitRegister
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
        mmLeft = 24606
        mmTop = 794
        mmWidth = 120386
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'RCVD_FROM'
        DataPipeline = plTransitRegister
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 5821
        mmWidth = 52388
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        DataField = 'CHQNO'
        DataPipeline = plTransitRegister
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
        mmLeft = 121973
        mmTop = 5821
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        DataField = 'REFNO'
        DataPipeline = plTransitRegister
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 794
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        DataField = 'AMOUNT'
        DataPipeline = plTransitRegister
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3598
        mmLeft = 174890
        mmTop = 794
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        DataField = 'RCVD_DATE'
        DataPipeline = plTransitRegister
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 5821
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        DataField = 'PAID_DATE'
        DataPipeline = plTransitRegister
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 10848
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'BRANCH'
        DataPipeline = plTransitRegister
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
        mmLeft = 87842
        mmTop = 5821
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'PAID_TO'
        DataPipeline = plTransitRegister
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 10848
        mmWidth = 53975
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 24871
        mmTop = 5821
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 24606
        mmTop = 10848
        mmWidth = 3440
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 143404
        mmTop = 5821
        mmWidth = 6880
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 143404
        mmTop = 10848
        mmWidth = 6880
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        DataField = 'AMOUNT'
        DataPipeline = plTransitRegister
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransitRegister'
        mmHeight = 3704
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
