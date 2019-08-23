object frmRptLedgerTrust: TfrmRptLedgerTrust
  Left = 357
  Top = 226
  BorderStyle = bsDialog
  Caption = 'Matter Trust Ledger'
  ClientHeight = 303
  ClientWidth = 669
  Color = clBtnFace
  Constraints.MinHeight = 299
  Constraints.MinWidth = 669
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    669
    303)
  PixelsPerInch = 106
  TextHeight = 15
  object Label1: TLabel
    Left = 10
    Top = 92
    Width = 28
    Height = 15
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 10
    Top = 120
    Width = 13
    Height = 15
    Caption = 'To'
  end
  object Label3: TLabel
    Left = 10
    Top = 10
    Width = 35
    Height = 15
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
  object Label4: TLabel
    Left = 10
    Top = 57
    Width = 26
    Height = 15
    Caption = 'Bank'
  end
  object dtpFrom: TDateTimePicker
    Left = 125
    Top = 87
    Width = 106
    Height = 23
    Date = 35612.524133958300000000
    Time = 35612.524133958300000000
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 125
    Top = 115
    Width = 106
    Height = 23
    Date = 35976.524408888900000000
    Time = 35976.524408888900000000
    TabOrder = 1
  end
  object DateChangeButton1: TDateChangeButton
    Left = 233
    Top = 87
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
    Top = 115
    Width = 97
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
    Left = 340
    Top = 87
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
    Top = 115
    Width = 97
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
    Left = 447
    Top = 87
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
    Top = 115
    Width = 97
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
    Left = 554
    Top = 87
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
    Top = 115
    Width = 97
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
    Left = 554
    Top = 267
    Width = 97
    Height = 31
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
    OnClick = btnPrinClick
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
  object BitBtn1: TBitBtn
    Left = 10
    Top = 267
    Width = 114
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = '&Statement'
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
    TabOrder = 12
    OnClick = BitBtn1Click
  end
  object chkWrap: TCheckBox
    Left = 10
    Top = 239
    Width = 212
    Height = 20
    Alignment = taLeftJustify
    Caption = '&Wrap description?'
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object chInvestments: TCheckBox
    Left = 10
    Top = 219
    Width = 212
    Height = 20
    Alignment = taLeftJustify
    Caption = 'Include Controlled Monies?'
    TabOrder = 14
  end
  object cbTrust: TCheckBox
    Left = 10
    Top = 198
    Width = 212
    Height = 21
    Alignment = taLeftJustify
    Caption = 'Include Trust?'
    Checked = True
    State = cbChecked
    TabOrder = 15
  end
  object rgOrderBy: TcxRadioGroup
    Left = 10
    Top = 147
    Caption = 'Order by'
    Enabled = False
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'System Date'
      end
      item
        Caption = 'Created Date'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 16
    Transparent = True
    Height = 44
    Width = 277
  end
  object rgSequence: TcxRadioGroup
    Left = 332
    Top = 147
    Caption = 'Sequence'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Ascending'
      end
      item
        Caption = 'Descending'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 17
    Transparent = True
    Height = 44
    Width = 277
  end
  object chkFrom: TCheckBox
    Left = 101
    Top = 89
    Width = 17
    Height = 21
    Checked = True
    State = cbChecked
    TabOrder = 18
  end
  object chkTo: TCheckBox
    Left = 101
    Top = 118
    Width = 17
    Height = 20
    Checked = True
    State = cbChecked
    TabOrder = 19
  end
  object cmbBanks: TcxLookupComboBox
    Left = 101
    Top = 54
    Properties.KeyFieldNames = 'ACCT'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsBanks
    TabOrder = 20
    Width = 396
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FILEID, NMATTER, NVL(P.NAME, P.SEARCH) AS SEARCH, SHORTDE' +
        'SCR, OPENED, LONGDESCR,'
      'NVL(P.ADDRESS, F.ADDRESS) as ADDRESS,'
      
        'DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, F.SUBURB), P.SUBURB) ||'#39'  ' +
        #39'||'
      'DECODE(P.ADDRESS, NULL, NVL(P.STATE, F.STATE), P.STATE)||'#39'  '#39'||'
      
        'DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, F.POSTCODE), P.POSTCODE)' +
        '||'#39'  '#39'||'
      
        'DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, F.COUNTRY), P.COUNTRY) as' +
        ' SUBURB '
      'FROM '
      'MATTER M, PHONEBOOK P, PHONEBOOK F  '
      'WHERE FILEID = :P_File'
      'AND M.NCLIENT = P.NCLIENT'
      'AND p.nnamemaster = f.nname (+)')
    Active = True
    Left = 486
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = Null
      end>
  end
  object qryTrustLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ordtype, RTYPE,RTYPETEXT, SYSTEM_DATE,CREATED , dm, NALLO' +
        'C,AMOUNT, PAYER, SPEC_PURPOSE, CLEARED, '
      ' DCLEARDATE, DESCR, REFNO,ALLOCTYPE , DEBIT '
      ' ,CREDIT,SUM(x) '
      '       OVER (partition by RTYPE'
      
        '             ORDER BY rtype,trunc(created), nalloc) "Running Tot' +
        'al" '
      ' from '
      'TRUST_LIST_RPT'
      'where EMPCODE = :EMPCODE'
      ''
      ''
      ''
      ''
      '/*'
      
        'SELECT '#39'Trust'#39' as RTYPETEXT,Created AS CREATED, NCHEQUE AS NMBR,' +
        ' AMOUNT, PAYER, SPEC_PURPOSE, CLEARED, DCLEARDATE, DESCR, REFNO,'
      
        'DECODE(SUBSTR((ALLOC.AMOUNT),0,1),'#39'0'#39',to_number(NULL),'#39'-'#39',ABS(AL' +
        'LOC.AMOUNT ),to_number(NULL)) DEBIT,'
      
        'DECODE(SUBSTR((ALLOC.AMOUNT),0,1),'#39'-'#39',to_number(NULL),ABS(ALLOC.' +
        'AMOUNT)) CREDIT, TYPE as ALLOCTYPE, 0 "running total"'
      'FROM ALLOC'
      'WHERE NMATTER = :P_Matter'
      '  AND TRUST = '#39'T'#39
      'AND Created >= :P_DateFrom'
      'AND Created <= :P_DateTo'
      'order by trunc(created),(amount*-1) */')
    Active = True
    OnCalcFields = qryTrustLedgerCalcFields
    Left = 524
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPCODE'
        Value = Null
      end>
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 540
    Top = 7
  end
  object dsTrustLedger: TUniDataSource
    DataSet = qryTrustLedger
    Left = 608
    Top = 166
  end
  object plMatter: TppDBPipeline
    DataSource = dsMatter
    UserName = 'plMatter'
    Left = 611
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
    object plMatterppField7: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 250
      DisplayWidth = 250
      Position = 6
    end
    object plMatterppField8: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 126
      DisplayWidth = 126
      Position = 7
    end
  end
  object plTrustLedger: TppDBPipeline
    DataSource = dsTrustLedger
    UserName = 'plTrustLedger'
    Left = 622
    Top = 86
    object plTrustLedgerppField1: TppField
      FieldAlias = 'ORDTYPE'
      FieldName = 'ORDTYPE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object plTrustLedgerppField2: TppField
      FieldAlias = 'RTYPE'
      FieldName = 'RTYPE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plTrustLedgerppField3: TppField
      FieldAlias = 'RTYPETEXT'
      FieldName = 'RTYPETEXT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plTrustLedgerppField4: TppField
      FieldAlias = 'SYSTEM_DATE'
      FieldName = 'SYSTEM_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plTrustLedgerppField5: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plTrustLedgerppField6: TppField
      FieldAlias = 'DM'
      FieldName = 'DM'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
    object plTrustLedgerppField7: TppField
      FieldAlias = 'NALLOC'
      FieldName = 'NALLOC'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 6
    end
    object plTrustLedgerppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plTrustLedgerppField9: TppField
      FieldAlias = 'PAYER'
      FieldName = 'PAYER'
      FieldLength = 250
      DisplayWidth = 250
      Position = 8
    end
    object plTrustLedgerppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPEC_PURPOSE'
      FieldName = 'SPEC_PURPOSE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object plTrustLedgerppField11: TppField
      FieldAlias = 'CLEARED'
      FieldName = 'CLEARED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object plTrustLedgerppField12: TppField
      FieldAlias = 'DCLEARDATE'
      FieldName = 'DCLEARDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object plTrustLedgerppField13: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 12
    end
    object plTrustLedgerppField14: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plTrustLedgerppField15: TppField
      FieldAlias = 'ALLOCTYPE'
      FieldName = 'ALLOCTYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object plTrustLedgerppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT'
      FieldName = 'DEBIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object plTrustLedgerppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT'
      FieldName = 'CREDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object plTrustLedgerppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Running Total'
      FieldName = 'Running Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
  end
  object rptTrustLedger: TppReport
    AutoStop = False
    DataPipeline = plTrustLedger
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
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rptTrustLedgerBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
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
    Left = 481
    Top = 4
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'plTrustLedger'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 58738
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = 14211288
        Pen.Style = psClear
        mmHeight = 15081
        mmLeft = 46302
        mmTop = 18256
        mmWidth = 110861
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3705
        mmLeft = 178859
        mmTop = 1058
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3705
        mmLeft = 15081
        mmTop = 1058
        mmWidth = 30957
        BandType = 0
        LayerName = Foreground
      end
      object pplblReportTitle: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblReportTitle'
        Border.mmPadding = 0
        Caption = 'Trust/Controlled Monies Ledger'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 68792
        mmTop = 1058
        mmWidth = 52387
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 94192
        mmTop = 7408
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Matter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 18254
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 4233
        mmLeft = 16931
        mmTop = 18254
        mmWidth = 25405
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 33338
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'LONGDESCR'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plMatter'
        mmHeight = 12700
        mmLeft = 24077
        mmTop = 33338
        mmWidth = 114300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 46302
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'SEARCH'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3969
        mmLeft = 58208
        mmTop = 19050
        mmWidth = 98954
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 184415
        mmTop = 49213
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 57415
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 161396
        mmTop = 49213
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 136790
        mmTop = 49213
        mmWidth = 7937
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 44979
        mmTop = 49213
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Ref'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 24077
        mmTop = 49213
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Entry Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 2117
        mmTop = 49213
        mmWidth = 14287
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3705
        mmLeft = 2381
        mmTop = 1058
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Banked Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 53711
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        OnGetText = ppLabel17GetText
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 12700
        mmWidth = 793
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'ADDRESS'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3968
        mmLeft = 58208
        mmTop = 23548
        mmWidth = 98954
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'SUBURB'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3969
        mmLeft = 58208
        mmTop = 28046
        mmWidth = 98954
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 5819
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppRegion4: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region4'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        ShiftRelativeTo = ppRegion3
        Transparent = True
        mmHeight = 5292
        mmLeft = 0
        mmTop = 10848
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel15: TppLabel
          OnPrint = ppDBText7Print
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Anchors = []
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Due to clear:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          Visible = False
          mmHeight = 3704
          mmLeft = 44979
          mmTop = 11642
          mmWidth = 19844
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          OnPrint = ppDBText7Print
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Anchors = []
          Border.mmPadding = 0
          DataField = 'DCLEARDATE'
          DataPipeline = plTrustLedger
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          Visible = False
          DataPipelineName = 'plTrustLedger'
          mmHeight = 3704
          mmLeft = 66411
          mmTop = 11642
          mmWidth = 33867
          BandType = 4
          LayerName = Foreground
        end
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Brush.Style = bsClear
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 5556
        mmLeft = 0
        mmTop = 0
        mmWidth = 120650
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'SYSTEM_DATE'
          DataPipeline = plTrustLedger
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 3598
          mmLeft = 2117
          mmTop = 1058
          mmWidth = 20108
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'REFNO'
          DataPipeline = plTrustLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 3704
          mmLeft = 23813
          mmTop = 1058
          mmWidth = 19579
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'PAYER'
          DataPipeline = plTrustLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          WordWrap = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 3704
          mmLeft = 44716
          mmTop = 1058
          mmWidth = 75141
          BandType = 4
          LayerName = Foreground
        end
      end
      object ppRegion3: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region3'
        Anchors = [atTop]
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        ShiftRelativeTo = ppRegion2
        Stretch = True
        Transparent = True
        mmHeight = 6350
        mmLeft = 0
        mmTop = 5027
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          Border.mmPadding = 0
          DataField = 'CREATED'
          DataPipeline = plTrustLedger
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 3704
          mmLeft = 2117
          mmTop = 6350
          mmWidth = 20108
          BandType = 4
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          OnPrint = ppLabel12Print
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          Border.mmPadding = 0
          Caption = 'Protected'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          Visible = False
          mmHeight = 3704
          mmLeft = 121444
          mmTop = 6350
          mmWidth = 15346
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'ALLOCTYPE'
          DataPipeline = plTrustLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 3598
          mmLeft = 24077
          mmTop = 6350
          mmWidth = 17992
          BandType = 4
          LayerName = Foreground
        end
        object ppVariable1: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable1'
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtCurrency
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 3704
          mmLeft = 156898
          mmTop = 6350
          mmWidth = 14023
          BandType = 4
          LayerName = Foreground
        end
        object memoDescr: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'memoDescr'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'DESCR'
          DataPipeline = plTrustLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 3673
          mmLeft = 44715
          mmTop = 6349
          mmWidth = 75183
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Anchors = [atTop, atRight]
        Border.mmPadding = 0
        DataField = 'DEBIT'
        DataPipeline = plTrustLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTrustLedger'
        mmHeight = 3598
        mmLeft = 120386
        mmTop = 1059
        mmWidth = 24700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Anchors = [atTop, atRight]
        Border.mmPadding = 0
        DataField = 'CREDIT'
        DataPipeline = plTrustLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTrustLedger'
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 1059
        mmWidth = 24700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'running total'
        DataPipeline = plTrustLedger
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTrustLedger'
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 1059
        mmWidth = 24700
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'RTYPETEXT'
      DataPipeline = plTrustLedger
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plTrustLedger'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppShape3: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape3'
          Anchors = [atLeft, atBottom]
          Brush.Color = 14211288
          ParentWidth = True
          Pen.Style = psClear
          Shape = stRoundRect
          mmHeight = 6879
          mmLeft = 0
          mmTop = 2381
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'RTYPETEXT'
          DataPipeline = plTrustLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 4233
          mmLeft = 4763
          mmTop = 3704
          mmWidth = 43921
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'dbcCredit'
          Border.mmPadding = 0
          DataField = 'CREDIT'
          DataPipeline = plTrustLedger
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 4233
          mmLeft = 145257
          mmTop = 794
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          Border.mmPadding = 0
          Caption = 'Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 112448
          mmTop = 5556
          mmWidth = 10319
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppVariable2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable2'
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          CalcComponent = ppGroup1
          CalcType = veGroupEnd
          DataType = dtCurrency
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetComponent = ppGroup1
          ResetType = veGroupStart
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 158221
          mmTop = 5556
          mmWidth = 12436
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 265
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'dbcDebit'
          Border.mmPadding = 0
          DataField = 'DEBIT'
          DataPipeline = plTrustLedger
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plTrustLedger'
          mmHeight = 4233
          mmLeft = 114565
          mmTop = 794
          mmWidth = 30427
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraVarProgram'
        raProgram.ChildType = 17
        raProgram.ProgramName = 'Variables'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variables;'#13#10'var'#13#10'  TrustRunningTotal: currency;'#13#10'  Wra' +
          'pDescription: boolean;'#13#10'  FinishedReport: boolean;'#13#10#13#10'begin'#13#10#13#10'e' +
          'nd;'#13#10
        raProgram.CaretPos = (
          3
          2)
      end
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraProgram'
        raProgram.ChildType = 21
        raProgram.ProgramName = 'GlobalProcedure1'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 'procedure GlobalProcedure1;'#13#10'begin'#13#10#13#10'end;'#13#10
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'ReportBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure ReportBeforePrint;'#13#10'begin'#13#10'   FinishedReport := False;' +
          #13#10'   TrustRunningTotal := 0;'#13#10'end;'#13#10
        raProgram.ComponentName = 'Report'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 1
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable2OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable2OnPrint;'#13#10'begin'#13#10'   FinishedReport := True;'#13#10 +
          '   Variable2.value :=  dbcCredit.value - dbcDebit.value;'#13#10'   '#13#10'e' +
          'nd;'#13#10
        raProgram.ComponentName = 'Variable2'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo5: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Group1BeforeGroupBreak'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Group1BeforeGroupBreak;'#13#10'begin'#13#10'   FinishedReport := F' +
          'alse;'#13#10'   TrustRunningTotal := 0;'#13#10'end;'#13#10
        raProgram.ComponentName = 'Group1'
        raProgram.EventName = 'BeforeGroupBreak'
        raProgram.EventID = 28
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo6: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBText4OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBText4OnPrint;'#13#10'var'#13#10'   LineNo: integer;'#13#10'begin'#13#10'   D' +
          'BText4.Height := 3.704;'#13#10'   if Length(plTrustLedger['#39'PAYER'#39']) > ' +
          '53 then'#13#10'   begin'#13#10'     LineNo := (Length(plTrustLedger['#39'PAYER'#39']' +
          ')/53);'#13#10'     DBText4.Height := 3.704 * (LineNo+1);'#13#10'   end;'#13#10'end' +
          ';'#13#10
        raProgram.ComponentName = 'DBText4'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
        raProgram.CaretPos = (
          3
          5)
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
  object qryCr_View: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 371
    Top = 191
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 290
    Top = 192
  end
  object qryBanks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT bank.acct, bank.NAME, bank.trust'
      '  FROM matter, bank'
      ' WHERE trust = '#39'T'#39
      '   AND matter.acct = bank.acct'
      '   AND matter.nmatter = :nmatter'
      '   AND active = '#39'Y'#39'   '
      'UNION'
      'SELECT bank.acct, bank.NAME, bank.trust'
      '  FROM bank'
      ' WHERE trust = '#39'T'#39' AND bank.acct IN ( SELECT bank'
      '                                       FROM bank_matter_trust'
      
        '                                      WHERE bank_matter_trust.nm' +
        'atter = :nmatter)'
      '       AND bank.active = '#39'Y'#39';')
    Left = 344
    Top = 257
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsBanks: TUniDataSource
    DataSet = qryBanks
    Left = 395
    Top = 260
  end
end
