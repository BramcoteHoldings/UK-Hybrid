object frmRptLedgerFees: TfrmRptLedgerFees
  Left = 939
  Top = 420
  Caption = 'Matter Fee Ledger'
  ClientHeight = 282
  ClientWidth = 557
  Color = clBtnFace
  Constraints.MinHeight = 306
  Constraints.MinWidth = 564
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    557
    282)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 28
    Height = 15
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 13
    Height = 15
    Caption = 'To'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object lblFile: TLabel
    Left = 80
    Top = 8
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblClient: TLabel
    Left = 160
    Top = 8
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblDesc: TLabel
    Left = 80
    Top = 24
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblAuthor: TLabel
    Left = 39
    Top = 192
    Width = 37
    Height = 15
    Alignment = taRightJustify
    Caption = 'Author'
  end
  object lblAuthorName: TLabel
    Left = 144
    Top = 192
    Width = 3
    Height = 15
  end
  object lblPartner: TLabel
    Left = 38
    Top = 168
    Width = 38
    Height = 15
    Alignment = taRightJustify
    Caption = 'Partner'
  end
  object lblPartnerName: TLabel
    Left = 144
    Top = 168
    Width = 3
    Height = 15
  end
  object Label5: TLabel
    Left = 30
    Top = 216
    Width = 46
    Height = 15
    Alignment = taRightJustify
    Caption = 'Fee Type'
  end
  object lblFeeTypeDescr: TLabel
    Left = 144
    Top = 216
    Width = 3
    Height = 15
  end
  object Label6: TLabel
    Left = 13
    Top = 240
    Width = 63
    Height = 15
    Alignment = taRightJustify
    Caption = 'Bill Number'
  end
  object cbFeeType: TComboBox
    Left = 80
    Top = 216
    Width = 57
    Height = 23
    Style = csDropDownList
    TabOrder = 13
    OnChange = cbFeeTypeChange
    OnDropDown = cbFeeTypeDropDown
  end
  object cbAuthor: TComboBox
    Left = 80
    Top = 192
    Width = 57
    Height = 23
    Style = csDropDownList
    TabOrder = 12
    OnChange = cbAuthorChange
    OnDropDown = cbAuthorDropDown
  end
  object cbPartner: TComboBox
    Left = 80
    Top = 168
    Width = 57
    Height = 23
    Style = csDropDownList
    TabOrder = 11
    OnChange = cbPartnerChange
    OnDropDown = cbPartnerDropDown
  end
  object dtpFrom: TDateTimePicker
    Left = 98
    Top = 48
    Width = 89
    Height = 23
    Date = 35612.524133958300000000
    Time = 35612.524133958300000000
    TabOrder = 1
  end
  object dtpTo: TDateTimePicker
    Left = 98
    Top = 72
    Width = 89
    Height = 23
    Date = 35976.524408888900000000
    Time = 35976.524408888900000000
    TabOrder = 2
  end
  object DateChangeButton1: TDateChangeButton
    Left = 192
    Top = 48
    Width = 80
    Height = 21
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
    Left = 192
    Top = 72
    Width = 80
    Height = 21
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
    Left = 280
    Top = 48
    Width = 80
    Height = 21
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
    Left = 280
    Top = 72
    Width = 80
    Height = 21
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
    Left = 368
    Top = 48
    Width = 80
    Height = 21
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
    Left = 368
    Top = 72
    Width = 80
    Height = 21
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
    Left = 456
    Top = 48
    Width = 80
    Height = 21
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
    Left = 456
    Top = 72
    Width = 80
    Height = 21
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
    Left = 470
    Top = 252
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
    TabOrder = 14
    OnClick = btnPrintClick
  end
  object btnMatter: TBitBtn
    Left = 48
    Top = 8
    Width = 21
    Height = 21
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
  object rgBilled: TRadioGroup
    Left = 80
    Top = 104
    Width = 254
    Height = 57
    Caption = 'Select fees'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemIndex = 2
    Items.Strings = (
      'All (Fees and WIP)'
      'Work in Progress'
      'Billed (Generated)'
      'Billings (Invoiced)')
    ParentFont = False
    TabOrder = 15
  end
  object rgValue: TRadioGroup
    Left = 339
    Top = 104
    Width = 206
    Height = 57
    Caption = 'Select value'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'All'
      'Positive Only'
      'Negative Only'
      'Zero value')
    ParentFont = False
    TabOrder = 16
  end
  object chkShowPartner: TCheckBox
    Left = 144
    Top = 168
    Width = 97
    Height = 17
    Caption = 'Show Partner'
    TabOrder = 17
  end
  object chkGST: TCheckBox
    Left = 144
    Top = 189
    Width = 97
    Height = 17
    Caption = 'Show Tax'
    TabOrder = 18
  end
  object chkSummary: TCheckBox
    Left = 144
    Top = 208
    Width = 97
    Height = 17
    Caption = 'Summary Only'
    TabOrder = 19
  end
  object edBillNum: TEdit
    Left = 80
    Top = 240
    Width = 103
    Height = 23
    TabOrder = 20
  end
  object rgBillable: TRadioGroup
    Left = 328
    Top = 168
    Width = 217
    Height = 70
    Caption = 'Select Billable'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'All (Billable and Non Billable)'
      'Billable'
      'Non Billable')
    ParentFont = False
    TabOrder = 21
  end
  object chkFrom: TCheckBox
    Left = 80
    Top = 50
    Width = 17
    Height = 17
    Checked = True
    State = cbChecked
    TabOrder = 22
  end
  object chkTo: TCheckBox
    Left = 80
    Top = 74
    Width = 17
    Height = 17
    Checked = True
    State = cbChecked
    TabOrder = 23
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT OPENED, FILEID, P.SEARCH, LONGDESCR, SHORTDESCR, NMATTER'
      'FROM MATTER M, PHONEBOOK P  WHERE FILEID = :P_File'
      'AND M.NCLIENT = P.NCLIENT')
    Active = True
    Left = 196
    Top = 65535
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object qryFeesLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(FEE.CREATED,NULL) as created, FEE.BANK_ACCT, FEE.AMOU' +
        'NT, FEE.DESCR, FEE.UNITS, '
      
        '              FEE.MINS, FEE.INVOICEDATE, FEE.BILLED, FEE.AUTHOR,' +
        ' FEE.PARTNER, FEE.NOTES,'
      
        '              FEE.TAX, FEE.TYPE, NMEMO.REFNO, FEE.ITEMS, SCALECO' +
        'ST.CODE||'#39' - '#39'||SCALECOST.DESCR as TASK_DESCR,'
      '              0 as "running total", FEE.NMATTER'
      'FROM FEE, NMEMO, SCALECOST'
      'WHERE FEE.NMATTER = :P_Matter '
      'AND FEE.NMEMO = NMEMO.NMEMO(+)'
      'AND FEE.CREATED >= :P_DateFrom '
      'AND FEE.CREATED < :P_DateTo '
      'AND FEE.BILLTYPE = '#39'Billable'#39
      'AND FEE.TASK = SCALECOST.CODE(+)'
      'ORDER BY FEE.CREATED')
    Debug = True
    Active = True
    Left = 248
    Top = 65535
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
  object qryFeeByAuthor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, 0 AS WIPUNITS, 0 ' +
        'as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total, MAX(' +
        'fee.nmatter) as nmatter '
      'FROM FEE, EMPLOYEE'
      'WHERE FEE.NMATTER = 993711'
      'AND FEE.AUTHOR = EMPLOYEE.CODE(+)'
      'Group BY FEE.Author'
      'UNION ALL'
      
        'SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, SUM(UNITS) AS WIP' +
        'UNITS, Sum(FEE.AMOUNT) as WIP, 0 AS TOTALUNITS, 0 as Total, MAX(' +
        'fee.nmatter) as nmatter  '
      'FROM FEE, EMPLOYEE'
      'WHERE FEE.NMATTER = 993711'
      'AND FEE.AUTHOR = EMPLOYEE.CODE(+)'
      'AND BILLED = '#39'N'#39
      'Group BY FEE.Author'
      'ORDER BY 1')
    Active = True
    Left = 288
  end
  object tmrSuicide: TTimer
    Enabled = False
    Interval = 250
    OnTimer = tmrSuicideTimer
    Left = 416
    Top = 8
  end
  object qryFeeByAuthorNonBillable: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, 0 AS WIPUNITS, 0 ' +
        'as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total, MAX(' +
        'fee.nmatter) as nmatter  '
      'FROM FEE, EMPLOYEE'
      'WHERE FEE.NMATTER = 993711'
      'AND FEE.AUTHOR = EMPLOYEE.CODE(+)'
      'Group BY FEE.Author'
      'UNION ALL'
      
        'SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, SUM(UNITS) AS WIP' +
        'UNITS, Sum(FEE.AMOUNT) as WIP, 0 AS TOTALUNITS, 0 as Total, MAX(' +
        'fee.nmatter) as nmatter  '
      'FROM FEE, EMPLOYEE'
      'WHERE FEE.NMATTER = 993711'
      'AND FEE.AUTHOR = EMPLOYEE.CODE(+)'
      'AND BILLED = '#39'N'#39
      'Group BY FEE.Author'
      'ORDER BY 1')
    Left = 380
    Top = 1
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plMatter
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
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = p
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    Icon.Data = {
      0000010002002020100000000000E80200002600000010101000000000002801
      00000E0300002800000020000000400000000100040000000000800200000000
      0000000000000000000000000000000000000000800000800000008080008000
      0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000888888880000000000
      088888888888888888888880000088888888888888888888887CC88000008888
      88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
      CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
      F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
      000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
      000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
      000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
      001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
      003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
      0000C00000000000000000000000000000000000000000000000000080000080
      00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
      888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
      8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
      7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
      CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
      0000000F00000007000000030000000100000000000000000000000000000003
      0000001F0000001F0000007F0000007F0000FFFF0000}
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    Left = 23
    Top = 99
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plMatter'
    object ppTitleBand4: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Style = psClear
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 0
        mmTop = 2910
        mmWidth = 197300
        BandType = 1
        LayerName = Foreground
      end
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
        mmHeight = 3968
        mmLeft = 18785
        mmTop = 4763
        mmWidth = 34661
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3968
        mmLeft = 5821
        mmTop = 4763
        mmWidth = 10583
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Fee Ledger'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5028
        mmLeft = 84931
        mmTop = 4763
        mmWidth = 18521
        BandType = 1
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
        mmHeight = 3968
        mmLeft = 178859
        mmTop = 4763
        mmWidth = 9525
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 10054
        mmTop = 18785
        mmWidth = 9790
        BandType = 1
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
        mmLeft = 25400
        mmTop = 18785
        mmWidth = 24606
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 51065
        mmTop = 18785
        mmWidth = 8466
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        AutoSize = True
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
        mmHeight = 3969
        mmLeft = 62971
        mmTop = 18785
        mmWidth = 794
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        DataField = 'LONGDESCR'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plMatter'
        mmHeight = 12965
        mmLeft = 31750
        mmTop = 24871
        mmWidth = 109273
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 10054
        mmTop = 24871
        mmWidth = 16934
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 89165
        mmTop = 10319
        mmWidth = 9525
        BandType = 1
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Pen.Color = clSilver
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 37306
        mmWidth = 197300
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object srFeessLedger: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'srFeessLedger'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        TraverseAllData = False
        DataPipelineName = 'plFeesLedger'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 794
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plFeesLedger
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
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
          Version = '16.03'
          mmColumnWidth = 0
          DataPipelineName = 'plFeesLedger'
          object ppDetailBand2: TppDetailBand
            Save = True
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 15800
            mmPrintPosition = 0
            object ppRegion2: TppRegion
              DesignLayer = ppDesignLayer2
              UserName = 'Region2'
              KeepTogether = True
              Brush.Style = bsClear
              ParentWidth = True
              Pen.Style = psClear
              Pen.Width = 0
              ShiftRelativeTo = ppRegion3
              Stretch = True
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 4498
              mmWidth = 197300
              BandType = 4
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBText12: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText12'
                DataField = 'PARTNER'
                DataPipeline = plFeesLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4149
                mmLeft = 106892
                mmTop = 5292
                mmWidth = 10319
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText13: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText13'
                DataField = 'INVOICEDATE'
                DataPipeline = plFeesLedger
                DisplayFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4149
                mmLeft = 118534
                mmTop = 5292
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText14: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText14'
                DataField = 'MINS'
                DataPipeline = plFeesLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4149
                mmLeft = 137054
                mmTop = 5292
                mmWidth = 7938
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText15: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText15'
                DataField = 'TAX'
                DataPipeline = plFeesLedger
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4233
                mmLeft = 149225
                mmTop = 5292
                mmWidth = 21167
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBMemo2: TppDBMemo
                DesignLayer = ppDesignLayer2
                UserName = 'DBMemo2'
                CharWrap = False
                DataField = 'DESCR'
                DataPipeline = plFeesLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                RemoveEmptyLines = False
                Stretch = True
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4203
                mmLeft = 23283
                mmTop = 5290
                mmWidth = 82603
                BandType = 4
                LayerName = Foreground1
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                mmLeading = 0
              end
            end
            object ppRegion3: TppRegion
              DesignLayer = ppDesignLayer2
              UserName = 'Region3'
              Brush.Style = bsClear
              ParentWidth = True
              Pen.Style = psClear
              Stretch = True
              Transparent = True
              mmHeight = 5292
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 4
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBText3: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText3'
                DataField = 'CREATED'
                DataPipeline = plFeesLedger
                DisplayFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4233
                mmLeft = 2646
                mmTop = 794
                mmWidth = 19844
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText5: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText5'
                DataField = 'AUTHOR'
                DataPipeline = plFeesLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4149
                mmLeft = 106892
                mmTop = 794
                mmWidth = 10319
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText6: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText6'
                DataField = 'REFNO'
                DataPipeline = plFeesLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4149
                mmLeft = 118534
                mmTop = 794
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText7: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText7'
                DataField = 'UNITS'
                DataPipeline = plFeesLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4149
                mmLeft = 137054
                mmTop = 794
                mmWidth = 7938
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText9: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText9'
                DataField = 'running total'
                DataPipeline = plFeesLedger
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 3979
                mmLeft = 174096
                mmTop = 794
                mmWidth = 21431
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText8: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText8'
                DataField = 'AMOUNT'
                DataPipeline = plFeesLedger
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 4233
                mmLeft = 149225
                mmTop = 794
                mmWidth = 21167
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBMemo1: TppDBMemo
                DesignLayer = ppDesignLayer2
                UserName = 'DBMemo1'
                CharWrap = False
                DataField = 'TASK_DESCR'
                DataPipeline = plFeesLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                RemoveEmptyLines = False
                Stretch = True
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 3938
                mmLeft = 23283
                mmTop = 793
                mmWidth = 82603
                BandType = 4
                LayerName = Foreground1
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                mmLeading = 0
              end
            end
            object ppRegion1: TppRegion
              DesignLayer = ppDesignLayer2
              UserName = 'Region1'
              Brush.Style = bsClear
              ParentWidth = True
              Pen.Style = psClear
              ShiftRelativeTo = ppRegion2
              Stretch = True
              Transparent = True
              mmHeight = 6350
              mmLeft = 0
              mmTop = 9525
              mmWidth = 197300
              BandType = 4
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBRichText1: TppDBRichText
                DesignLayer = ppDesignLayer2
                UserName = 'DBRichText1'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                SaveOrder = 0
                ExportRTFAsBitmap = False
                DataField = 'NOTES'
                DataPipeline = plFeesLedger
                RemoveEmptyLines = False
                Stretch = True
                Transparent = True
                DataPipelineName = 'plFeesLedger'
                mmHeight = 3673
                mmLeft = 23284
                mmTop = 10896
                mmWidth = 82603
                BandType = 4
                LayerName = Foreground1
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
              end
            end
          end
          object ppFooterBand1: TppFooterBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 2381
            mmPrintPosition = 0
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line8'
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 265
              mmWidth = 197300
              BandType = 8
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Save = True
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 10583
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc1'
              DataField = 'UNITS'
              DataPipeline = plFeesLedger
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesLedger'
              mmHeight = 4106
              mmLeft = 127794
              mmTop = 794
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc2'
              DataField = 'MINS'
              DataPipeline = plFeesLedger
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesLedger'
              mmHeight = 4106
              mmLeft = 127794
              mmTop = 5292
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc3'
              DataField = 'AMOUNT'
              DataPipeline = plFeesLedger
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesLedger'
              mmHeight = 4233
              mmLeft = 148432
              mmTop = 794
              mmWidth = 22490
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line2'
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc12: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc12'
              DataField = 'TAX'
              DataPipeline = plFeesLedger
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesLedger'
              mmHeight = 4233
              mmLeft = 147638
              mmTop = 5292
              mmWidth = 23283
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'NMATTER'
            DataPipeline = plFeesLedger
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plFeesLedger'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 17727
              mmPrintPosition = 0
              object ppLabel6: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label6'
                Caption = 'Date'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3705
                mmLeft = 2646
                mmTop = 2910
                mmWidth = 6879
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel8: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label8'
                Caption = 'Narration'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3705
                mmLeft = 23283
                mmTop = 7408
                mmWidth = 13759
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel11: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label11'
                Caption = 'Author'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 106892
                mmTop = 8202
                mmWidth = 9525
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel13: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label13'
                Caption = 'Bill'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 118534
                mmTop = 8202
                mmWidth = 5027
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel15: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label15'
                Caption = 'Units'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 135202
                mmTop = 8202
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel17: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label17'
                Caption = 'Amount'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 159279
                mmTop = 8202
                mmWidth = 11113
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel26: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label26'
                Caption = 'Partner'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 106892
                mmTop = 12700
                mmWidth = 10319
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel27: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label27'
                Caption = 'Billed'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 118534
                mmTop = 12700
                mmWidth = 8731
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel28: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label28'
                Caption = 'Minutes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 137054
                mmTop = 12700
                mmWidth = 11907
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel29: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label29'
                Caption = 'Tax'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 165629
                mmTop = 12700
                mmWidth = 4763
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLine7: TppLine
                DesignLayer = ppDesignLayer2
                UserName = 'Line7'
                Pen.Color = clSilver
                Pen.Width = 2
                ParentWidth = True
                Position = lpBottom
                Weight = 1.500000000000000000
                mmHeight = 1058
                mmLeft = 0
                mmTop = 16409
                mmWidth = 197300
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel38: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label38'
                Caption = 'Running Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 175419
                mmTop = 12700
                mmWidth = 20108
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel39: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label39'
                Caption = 'Task'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3705
                mmLeft = 23283
                mmTop = 2910
                mmWidth = 6615
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel41: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label41'
                Caption = 'Notes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 23283
                mmTop = 11906
                mmWidth = 8467
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              Background.Brush.Style = bsClear
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
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
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        ShiftRelativeTo = srFeessLedger
        TraverseAllData = False
        DataPipelineName = 'plFeesByAuthor'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6879
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = plFeesByAuthor
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
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
          Version = '16.03'
          mmColumnWidth = 0
          DataPipelineName = 'plFeesByAuthor'
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText17'
              DataField = 'AUTHOR'
              DataPipeline = plFeesByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 529
              mmWidth = 16404
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText18'
              DataField = 'NAME'
              DataPipeline = plFeesByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4233
              mmLeft = 20373
              mmTop = 529
              mmWidth = 63765
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText21'
              BlankWhenZero = True
              DataField = 'TOTAL'
              DataPipeline = plFeesByAuthor
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4233
              mmLeft = 163777
              mmTop = 529
              mmWidth = 20373
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText22'
              BlankWhenZero = True
              DataField = 'TOTALUNITS'
              DataPipeline = plFeesByAuthor
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4233
              mmLeft = 135467
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText27'
              BlankWhenZero = True
              DataField = 'WIPUNITS'
              DataPipeline = plFeesByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4233
              mmLeft = 89429
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText28'
              BlankWhenZero = True
              DataField = 'WIP'
              DataPipeline = plFeesByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4233
              mmLeft = 112713
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBCalc8: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc8'
              DataField = 'WIPUNITS'
              DataPipeline = plFeesByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4191
              mmLeft = 89429
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground2
            end
            object ppDBCalc9: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc9'
              DataField = 'WIP'
              DataPipeline = plFeesByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4191
              mmLeft = 112713
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground2
            end
            object ppDBCalc10: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc10'
              DataField = 'TOTALUNITS'
              DataPipeline = plFeesByAuthor
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4191
              mmLeft = 135467
              mmTop = 794
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground2
            end
            object ppDBCalc11: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc11'
              DataField = 'TOTAL'
              DataPipeline = plFeesByAuthor
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeesByAuthor'
              mmHeight = 4191
              mmLeft = 161661
              mmTop = 794
              mmWidth = 22490
              BandType = 7
              LayerName = Foreground2
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line3'
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground2
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'NMATTER'
            DataPipeline = plFeesByAuthor
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plFeesByAuthor'
            NewFile = False
            object ppGroupHeaderBand2: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 12965
              mmPrintPosition = 0
              object ppLabel43: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label43'
                Caption = 'Billable Author'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                Transparent = True
                WordWrap = True
                mmHeight = 7673
                mmLeft = 1852
                mmTop = 3175
                mmWidth = 12436
                BandType = 3
                GroupNo = 0
                LayerName = Foreground2
              end
              object ppLabel44: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label202'
                Caption = 'W.I.P. Units'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3705
                mmLeft = 91281
                mmTop = 7408
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
                LayerName = Foreground2
              end
              object ppLabel45: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label45'
                Caption = 'W.I.P.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3705
                mmLeft = 122238
                mmTop = 7408
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
                LayerName = Foreground2
              end
              object ppLabel46: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label46'
                Caption = 'Total Units'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3705
                mmLeft = 138377
                mmTop = 7408
                mmWidth = 14288
                BandType = 3
                GroupNo = 0
                LayerName = Foreground2
              end
              object ppLabel47: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label47'
                Caption = 'Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3705
                mmLeft = 177536
                mmTop = 7408
                mmWidth = 6614
                BandType = 3
                GroupNo = 0
                LayerName = Foreground2
              end
              object ppLine10: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line10'
                Pen.Color = clSilver
                Pen.Width = 2
                ParentWidth = True
                Position = lpBottom
                Weight = 1.500000000000000000
                mmHeight = 794
                mmLeft = 0
                mmTop = 11906
                mmWidth = 197300
                BandType = 3
                GroupNo = 0
                LayerName = Foreground2
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              Background.Brush.Style = bsClear
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport3: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport2
        TraverseAllData = False
        DataPipelineName = 'plFeeByAuthorNonBillable'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12700
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = plFeeByAuthorNonBillable
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
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
          Version = '16.03'
          mmColumnWidth = 0
          DataPipelineName = 'plFeeByAuthorNonBillable'
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText19'
              DataField = 'AUTHOR'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 529
              mmWidth = 16404
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText20'
              DataField = 'NAME'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 20373
              mmTop = 529
              mmWidth = 62442
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText23'
              BlankWhenZero = True
              DataField = 'TOTALUNITS'
              DataPipeline = plFeeByAuthorNonBillable
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 135467
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText24'
              BlankWhenZero = True
              DataField = 'TOTAL'
              DataPipeline = plFeeByAuthorNonBillable
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 161132
              mmTop = 529
              mmWidth = 22490
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText25'
              BlankWhenZero = True
              DataField = 'WIPUNITS'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 89429
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText26'
              BlankWhenZero = True
              DataField = 'WIP'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 112448
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground3
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBCalc17: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc17'
              DataField = 'WIPUNITS'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4191
              mmLeft = 89429
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc18: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc18'
              DataField = 'WIP'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4191
              mmLeft = 112448
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc19: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc101'
              DataField = 'TOTALUNITS'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4191
              mmLeft = 135467
              mmTop = 794
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc20: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc20'
              DataField = 'TOTAL'
              DataPipeline = plFeeByAuthorNonBillable
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4191
              mmLeft = 161132
              mmTop = 794
              mmWidth = 22490
              BandType = 7
              LayerName = Foreground3
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line6'
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground3
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'NMATTER'
            DataPipeline = plFeeByAuthorNonBillable
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group3'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plFeeByAuthorNonBillable'
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 17198
              mmPrintPosition = 0
              object ppLabel30: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label30'
                Caption = 'Non Billable Author'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                Transparent = True
                WordWrap = True
                mmHeight = 11642
                mmLeft = 1852
                mmTop = 2646
                mmWidth = 13494
                BandType = 3
                GroupNo = 0
                LayerName = Foreground3
              end
              object ppLabel31: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label201'
                Caption = 'W.I.P. Units'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 91281
                mmTop = 6879
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
                LayerName = Foreground3
              end
              object ppLabel32: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label32'
                Caption = 'W.I.P.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 121973
                mmTop = 6879
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
                LayerName = Foreground3
              end
              object ppLabel33: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label33'
                Caption = 'Total Units'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 138377
                mmTop = 6879
                mmWidth = 14288
                BandType = 3
                GroupNo = 0
                LayerName = Foreground3
              end
              object ppLabel34: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label34'
                Caption = 'Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 177007
                mmTop = 6879
                mmWidth = 6614
                BandType = 3
                GroupNo = 0
                LayerName = Foreground3
              end
              object ppLine1: TppLine
                DesignLayer = ppDesignLayer4
                UserName = 'Line1'
                Pen.Color = clSilver
                Pen.Width = 2
                ParentWidth = True
                Position = lpBottom
                Weight = 1.500000000000000000
                mmHeight = 794
                mmLeft = 0
                mmTop = 15610
                mmWidth = 197300
                BandType = 3
                GroupNo = 0
                LayerName = Foreground3
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              Background.Brush.Style = bsClear
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppDesignLayers4: TppDesignLayers
            object ppDesignLayer4: TppDesignLayer
              UserName = 'Foreground3'
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
  object plMatter: TppDBPipeline
    DataSource = dsMatter
    UserName = 'plMatter'
    Left = 697
    Top = 59
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
  object plFeesLedger: TppDBPipeline
    DataSource = dsFeesLedger
    UserName = 'plFeesLedger'
    Left = 699
    Top = 107
    object plFeesLedgerppField1: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object plFeesLedgerppField2: TppField
      FieldAlias = 'BANK_ACCT'
      FieldName = 'BANK_ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object plFeesLedgerppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plFeesLedgerppField4: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 3
    end
    object plFeesLedgerppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNITS'
      FieldName = 'UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plFeesLedgerppField6: TppField
      FieldAlias = 'MINS'
      FieldName = 'MINS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
    object plFeesLedgerppField7: TppField
      FieldAlias = 'INVOICEDATE'
      FieldName = 'INVOICEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object plFeesLedgerppField8: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object plFeesLedgerppField9: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object plFeesLedgerppField10: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object plFeesLedgerppField11: TppField
      FieldAlias = 'NOTES'
      FieldName = 'NOTES'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 10
    end
    object plFeesLedgerppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object plFeesLedgerppField13: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object plFeesLedgerppField14: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plFeesLedgerppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEMS'
      FieldName = 'ITEMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object plFeesLedgerppField16: TppField
      FieldAlias = 'TASK_DESCR'
      FieldName = 'TASK_DESCR'
      FieldLength = 1023
      DisplayWidth = 1023
      Position = 15
    end
    object plFeesLedgerppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'running total'
      FieldName = 'running total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object plFeesLedgerppField18: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 17
    end
  end
  object plFeesByAuthor: TppDBPipeline
    DataSource = dsFeesByAuthor
    UserName = 'plFeesByAuthor'
    Left = 697
    Top = 156
    object plFeesByAuthorppField1: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object plFeesByAuthorppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object plFeesByAuthorppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'WIPUNITS'
      FieldName = 'WIPUNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plFeesByAuthorppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'WIP'
      FieldName = 'WIP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plFeesByAuthorppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALUNITS'
      FieldName = 'TOTALUNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plFeesByAuthorppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plFeesByAuthorppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
  end
  object plFeeByAuthorNonBillable: TppDBPipeline
    DataSource = dsFeeByAuthorNonBillable
    UserName = 'plFeeByAuthorNonBillable'
    Left = 693
    Top = 207
    object plFeeByAuthorNonBillableppField1: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object plFeeByAuthorNonBillableppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object plFeeByAuthorNonBillableppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'WIPUNITS'
      FieldName = 'WIPUNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plFeeByAuthorNonBillableppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'WIP'
      FieldName = 'WIP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plFeeByAuthorNonBillableppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALUNITS'
      FieldName = 'TOTALUNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plFeeByAuthorNonBillableppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plFeeByAuthorNonBillableppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 641
    Top = 60
  end
  object dsFeesLedger: TUniDataSource
    DataSet = qryFeesLedger
    Left = 642
    Top = 115
  end
  object dsFeesByAuthor: TUniDataSource
    DataSet = qryFeeByAuthor
    Left = 643
    Top = 162
  end
  object dsFeeByAuthorNonBillable: TUniDataSource
    DataSet = qryFeeByAuthorNonBillable
    Left = 641
    Top = 212
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = plMatter
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
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppReport2BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010002002020100000000000E80200002600000010101000000000002801
      00000E0300002800000020000000400000000100040000000000800200000000
      0000000000000000000000000000000000000000800000800000008080008000
      0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000888888880000000000
      088888888888888888888880000088888888888888888888887CC88000008888
      88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
      CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
      F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
      000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
      000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
      000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
      001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
      003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
      0000C00000000000000000000000000000000000000000000000000080000080
      00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
      888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
      8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
      7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
      CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
      0000000F00000007000000030000000100000000000000000000000000000003
      0000001F0000001F0000007F0000007F0000FFFF0000}
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    Left = 22
    Top = 149
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plMatter'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer8
        UserName = 'Shape1'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Style = psClear
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 0
        mmTop = 2910
        mmWidth = 197300
        BandType = 1
        LayerName = Foreground4
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 18785
        mmTop = 4763
        mmWidth = 38862
        BandType = 1
        LayerName = Foreground4
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label1'
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 5821
        mmTop = 4763
        mmWidth = 10964
        BandType = 1
        LayerName = Foreground4
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label2'
        Caption = 'Fee Ledger'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 82815
        mmTop = 4763
        mmWidth = 22490
        BandType = 1
        LayerName = Foreground4
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable2'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 4763
        mmWidth = 10626
        BandType = 1
        LayerName = Foreground4
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label3'
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 10054
        mmTop = 18785
        mmWidth = 9948
        BandType = 1
        LayerName = Foreground4
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer8
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
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 18785
        mmWidth = 17198
        BandType = 1
        LayerName = Foreground4
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label4'
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 51065
        mmTop = 18785
        mmWidth = 8932
        BandType = 1
        LayerName = Foreground4
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText2'
        AutoSize = True
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
        mmHeight = 4498
        mmLeft = 62971
        mmTop = 18785
        mmWidth = 794
        BandType = 1
        LayerName = Foreground4
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText16'
        DataField = 'LONGDESCR'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plMatter'
        mmHeight = 12965
        mmLeft = 31750
        mmTop = 24871
        mmWidth = 109273
        BandType = 1
        LayerName = Foreground4
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label5'
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 10054
        mmTop = 24871
        mmWidth = 17568
        BandType = 1
        LayerName = Foreground4
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 88636
        mmTop = 10319
        mmWidth = 10118
        BandType = 1
        LayerName = Foreground4
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line5'
        Pen.Color = clSilver
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 37306
        mmWidth = 197300
        BandType = 1
        LayerName = Foreground4
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer8
        UserName = 'srFeessLedger'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        TraverseAllData = False
        DataPipelineName = 'plFeeItemsLedger'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 794
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = plFeeItemsLedger
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
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
          Version = '16.03'
          mmColumnWidth = 0
          DataPipelineName = 'plFeeItemsLedger'
          object ppDetailBand6: TppDetailBand
            Save = True
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 15800
            mmPrintPosition = 0
            object ppRegion4: TppRegion
              DesignLayer = ppDesignLayer5
              UserName = 'Region2'
              KeepTogether = True
              Brush.Style = bsClear
              ParentWidth = True
              Pen.Style = psClear
              Pen.Width = 0
              ShiftRelativeTo = ppRegion5
              Stretch = True
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 4498
              mmWidth = 197300
              BandType = 4
              LayerName = BandLayer8
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBText31: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText12'
                DataField = 'PARTNER'
                DataPipeline = plFeeItemsLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4149
                mmLeft = 106892
                mmTop = 5292
                mmWidth = 10319
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText32: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText13'
                DataField = 'INVOICEDATE'
                DataPipeline = plFeeItemsLedger
                DisplayFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4149
                mmLeft = 118534
                mmTop = 5292
                mmWidth = 17198
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText33: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText14'
                DataField = 'MINS'
                DataPipeline = plFeeItemsLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4149
                mmLeft = 137054
                mmTop = 5292
                mmWidth = 7938
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText34: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText15'
                DataField = 'TAX'
                DataPipeline = plFeeItemsLedger
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4233
                mmLeft = 149225
                mmTop = 5292
                mmWidth = 21167
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText35: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText4'
                DataField = 'DESCR'
                DataPipeline = plFeeItemsLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                WordWrap = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 3969
                mmLeft = 23283
                mmTop = 5292
                mmWidth = 82550
                BandType = 4
                LayerName = BandLayer8
              end
            end
            object ppRegion5: TppRegion
              DesignLayer = ppDesignLayer5
              UserName = 'Region3'
              Brush.Style = bsClear
              ParentWidth = True
              Pen.Style = psClear
              Stretch = True
              Transparent = True
              mmHeight = 5292
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 4
              LayerName = BandLayer8
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBText36: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText3'
                DataField = 'CREATED'
                DataPipeline = plFeeItemsLedger
                DisplayFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4233
                mmLeft = 2646
                mmTop = 794
                mmWidth = 19844
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText37: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText5'
                DataField = 'AUTHOR'
                DataPipeline = plFeeItemsLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4149
                mmLeft = 106892
                mmTop = 794
                mmWidth = 10319
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText38: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText6'
                DataField = 'REFNO'
                DataPipeline = plFeeItemsLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4149
                mmLeft = 118534
                mmTop = 794
                mmWidth = 17198
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText39: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText7'
                DataField = 'UNITS'
                DataPipeline = plFeeItemsLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4149
                mmLeft = 137054
                mmTop = 794
                mmWidth = 7938
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText40: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText9'
                DataField = 'running total'
                DataPipeline = plFeeItemsLedger
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 3979
                mmLeft = 174096
                mmTop = 794
                mmWidth = 21431
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText41: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText8'
                DataField = 'AMOUNT'
                DataPipeline = plFeeItemsLedger
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 4233
                mmLeft = 149225
                mmTop = 794
                mmWidth = 21167
                BandType = 4
                LayerName = BandLayer8
              end
              object ppDBText42: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText11'
                DataField = 'TASK_DESCR'
                DataPipeline = plFeeItemsLedger
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                WordWrap = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 3969
                mmLeft = 23280
                mmTop = 794
                mmWidth = 82550
                BandType = 4
                LayerName = BandLayer8
              end
            end
            object ppRegion6: TppRegion
              DesignLayer = ppDesignLayer5
              UserName = 'Region1'
              Brush.Style = bsClear
              ParentWidth = True
              Pen.Style = psClear
              ShiftRelativeTo = ppRegion4
              Stretch = True
              Transparent = True
              mmHeight = 6350
              mmLeft = 0
              mmTop = 9525
              mmWidth = 197300
              BandType = 4
              LayerName = BandLayer8
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBRichText2: TppDBRichText
                DesignLayer = ppDesignLayer5
                UserName = 'DBRichText1'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                SaveOrder = 0
                ExportRTFAsBitmap = False
                DataField = 'NOTES'
                DataPipeline = plFeeItemsLedger
                RemoveEmptyLines = False
                Stretch = True
                Transparent = True
                DataPipelineName = 'plFeeItemsLedger'
                mmHeight = 3673
                mmLeft = 23284
                mmTop = 10896
                mmWidth = 82603
                BandType = 4
                LayerName = BandLayer8
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
              end
            end
          end
          object ppFooterBand2: TppFooterBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 2381
            mmPrintPosition = 0
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer5
              UserName = 'Line8'
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 265
              mmWidth = 197300
              BandType = 8
              LayerName = BandLayer8
            end
          end
          object ppSummaryBand4: TppSummaryBand
            Save = True
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 10583
            mmPrintPosition = 0
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc1'
              DataField = 'UNITS'
              DataPipeline = plFeeItemsLedger
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeItemsLedger'
              mmHeight = 4106
              mmLeft = 127794
              mmTop = 794
              mmWidth = 17198
              BandType = 7
              LayerName = BandLayer8
            end
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc2'
              DataField = 'MINS'
              DataPipeline = plFeeItemsLedger
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeItemsLedger'
              mmHeight = 4106
              mmLeft = 127794
              mmTop = 5292
              mmWidth = 17198
              BandType = 7
              LayerName = BandLayer8
            end
            object ppDBCalc6: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc3'
              DataField = 'AMOUNT'
              DataPipeline = plFeeItemsLedger
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeItemsLedger'
              mmHeight = 4233
              mmLeft = 148432
              mmTop = 794
              mmWidth = 22490
              BandType = 7
              LayerName = BandLayer8
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer5
              UserName = 'Line2'
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = BandLayer8
            end
            object ppDBCalc7: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc12'
              DataField = 'TAX'
              DataPipeline = plFeeItemsLedger
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeItemsLedger'
              mmHeight = 4233
              mmLeft = 147638
              mmTop = 5292
              mmWidth = 23283
              BandType = 7
              LayerName = BandLayer8
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'NMATTER'
            DataPipeline = plFeeItemsLedger
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plFeeItemsLedger'
            NewFile = False
            object ppGroupHeaderBand4: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 17727
              mmPrintPosition = 0
              object ppLabel19: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label6'
                Caption = 'Date'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 2646
                mmTop = 2915
                mmWidth = 5556
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel20: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label8'
                Caption = 'Narration'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 4233
                mmLeft = 23283
                mmTop = 7413
                mmWidth = 10054
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel21: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label11'
                Caption = 'Author'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 106892
                mmTop = 8207
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel22: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label13'
                Caption = 'Bill'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 118534
                mmTop = 8207
                mmWidth = 3440
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel23: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label15'
                Caption = 'Items'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 136790
                mmTop = 8202
                mmWidth = 6085
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel24: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label17'
                Caption = 'Amount'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 161396
                mmTop = 8207
                mmWidth = 8996
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel25: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label26'
                Caption = 'Partner'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 106892
                mmTop = 12705
                mmWidth = 8467
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel35: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label27'
                Caption = 'Billed'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 118534
                mmTop = 12705
                mmWidth = 6350
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel36: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label28'
                Caption = 'Minutes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3704
                mmLeft = 137054
                mmTop = 12705
                mmWidth = 8996
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel37: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label29'
                Caption = 'Tax'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 166159
                mmTop = 12705
                mmWidth = 4233
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLine12: TppLine
                DesignLayer = ppDesignLayer5
                UserName = 'Line7'
                Pen.Color = clSilver
                Pen.Width = 2
                ParentWidth = True
                Position = lpBottom
                Weight = 1.500000000000000000
                mmHeight = 1058
                mmLeft = 0
                mmTop = 16409
                mmWidth = 197300
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel40: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label38'
                Caption = 'Running Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 179388
                mmTop = 12705
                mmWidth = 16140
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel42: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label39'
                Caption = 'Task'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 4233
                mmLeft = 23283
                mmTop = 2915
                mmWidth = 5292
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
              object ppLabel48: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label41'
                Caption = 'Notes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 4233
                mmLeft = 23283
                mmTop = 11911
                mmWidth = 6615
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer8
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              Background.Brush.Style = bsClear
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object raCodeModule3: TraCodeModule
            ProgramStream = {
              01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060E
              444254657874344F6E5072696E740B50726F6772616D54797065070B74745072
              6F63656475726506536F7572636506FD70726F63656475726520444254657874
              344F6E5072696E743B0D0A7661720D0A2020204C696E654E6F3A20696E746567
              65723B0D0A626567696E0D0A202020444254657874342E486569676874203A3D
              20342E323B0D0A2020206966204C656E67746828706C466565734C6564676572
              5B274445534352275D29203E203533207468656E0D0A202020626567696E0D0A
              20202020204C696E654E6F203A3D20284C656E67746828706C466565734C6564
              6765725B274445534352275D292F3533293B0D0A202020202044425465787434
              2E486569676874203A3D20342E32202A20284C696E654E6F2B31293B0D0A2020
              20656E643B0D0A656E643B0D0A0D436F6D706F6E656E744E616D650607444254
              65787434094576656E744E616D6506074F6E5072696E74074576656E74494402
              20084361726574506F730102000200000001060F5472614576656E7448616E64
              6C65720B50726F6772616D4E616D65060F44425465787431314F6E5072696E74
              0B50726F6772616D54797065070B747450726F63656475726506536F75726365
              0C0A01000070726F6365647572652044425465787431314F6E5072696E743B0D
              0A7661720D0A2020204C696E654E6F3A20696E74656765723B0D0A626567696E
              0D0A20202044425465787431312E486569676874203A3D20342E323B0D0A2020
              206966204C656E67746828706C466565734C65646765725B275441534B5F4445
              534352275D29203E203533207468656E0D0A202020626567696E0D0A20202020
              204C696E654E6F203A3D20284C656E67746828706C466565734C65646765725B
              275441534B5F4445534352275D292F3533293B0D0A2020202020444254657874
              31312E486569676874203A3D20342E32202A20284C696E654E6F2B31293B0D0A
              202020656E643B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060844
              42546578743131094576656E744E616D6506074F6E5072696E74074576656E74
              49440220084361726574506F730102000200000000}
          end
          object ppDesignLayers5: TppDesignLayers
            object ppDesignLayer5: TppDesignLayer
              UserName = 'BandLayer8'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport4: TppSubReport
        DesignLayer = ppDesignLayer8
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'plItemsByAuthor'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6879
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          DataPipeline = plItemsByAuthor
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
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
          Version = '16.03'
          mmColumnWidth = 0
          DataPipelineName = 'plItemsByAuthor'
          object ppDetailBand7: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText43: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText17'
              DataField = 'AUTHOR'
              DataPipeline = plItemsByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 529
              mmWidth = 16404
              BandType = 4
              LayerName = BandLayer9
            end
            object ppDBText44: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText18'
              DataField = 'NAME'
              DataPipeline = plItemsByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4233
              mmLeft = 20373
              mmTop = 529
              mmWidth = 63765
              BandType = 4
              LayerName = BandLayer9
            end
            object ppDBText45: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText21'
              BlankWhenZero = True
              DataField = 'TOTAL'
              DataPipeline = plItemsByAuthor
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4233
              mmLeft = 163777
              mmTop = 529
              mmWidth = 20373
              BandType = 4
              LayerName = BandLayer9
            end
            object ppDBText46: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText22'
              BlankWhenZero = True
              DataField = 'TOTALUNITS'
              DataPipeline = plItemsByAuthor
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4233
              mmLeft = 135467
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = BandLayer9
            end
            object ppDBText47: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText27'
              BlankWhenZero = True
              DataField = 'WIPUNITS'
              DataPipeline = plItemsByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4233
              mmLeft = 89429
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = BandLayer9
            end
            object ppDBText48: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText28'
              BlankWhenZero = True
              DataField = 'WIP'
              DataPipeline = plItemsByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4233
              mmLeft = 112713
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = BandLayer9
            end
          end
          object ppSummaryBand5: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBCalc13: TppDBCalc
              DesignLayer = ppDesignLayer6
              UserName = 'DBCalc8'
              DataField = 'WIPUNITS'
              DataPipeline = plItemsByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4191
              mmLeft = 89429
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = BandLayer9
            end
            object ppDBCalc14: TppDBCalc
              DesignLayer = ppDesignLayer6
              UserName = 'DBCalc9'
              DataField = 'WIP'
              DataPipeline = plItemsByAuthor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4191
              mmLeft = 112713
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = BandLayer9
            end
            object ppDBCalc15: TppDBCalc
              DesignLayer = ppDesignLayer6
              UserName = 'DBCalc10'
              DataField = 'TOTALUNITS'
              DataPipeline = plItemsByAuthor
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4191
              mmLeft = 135467
              mmTop = 794
              mmWidth = 17198
              BandType = 7
              LayerName = BandLayer9
            end
            object ppDBCalc16: TppDBCalc
              DesignLayer = ppDesignLayer6
              UserName = 'DBCalc11'
              DataField = 'TOTAL'
              DataPipeline = plItemsByAuthor
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItemsByAuthor'
              mmHeight = 4191
              mmLeft = 161661
              mmTop = 794
              mmWidth = 22490
              BandType = 7
              LayerName = BandLayer9
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer6
              UserName = 'Line3'
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = BandLayer9
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'NMATTER'
            DataPipeline = plItemsByAuthor
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plItemsByAuthor'
            NewFile = False
            object ppGroupHeaderBand5: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 12965
              mmPrintPosition = 0
              object ppLabel49: TppLabel
                DesignLayer = ppDesignLayer6
                UserName = 'Label43'
                Caption = 'Billable Author'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                Transparent = True
                WordWrap = True
                mmHeight = 8467
                mmLeft = 1852
                mmTop = 3175
                mmWidth = 12435
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer9
              end
              object ppLabel50: TppLabel
                DesignLayer = ppDesignLayer6
                UserName = 'Label202'
                Caption = 'Item Units'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4234
                mmLeft = 91546
                mmTop = 7408
                mmWidth = 12435
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer9
              end
              object ppLabel51: TppLabel
                DesignLayer = ppDesignLayer6
                UserName = 'Label45'
                Caption = 'Item Amount'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4234
                mmLeft = 114036
                mmTop = 7408
                mmWidth = 15875
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer9
              end
              object ppLabel52: TppLabel
                DesignLayer = ppDesignLayer6
                UserName = 'Label46'
                Caption = 'Total Items'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4234
                mmLeft = 138907
                mmTop = 7408
                mmWidth = 13758
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer9
              end
              object ppLabel53: TppLabel
                DesignLayer = ppDesignLayer6
                UserName = 'Label47'
                Caption = 'Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 177800
                mmTop = 7408
                mmWidth = 6350
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer9
              end
              object ppLine14: TppLine
                DesignLayer = ppDesignLayer6
                UserName = 'Line10'
                Pen.Color = clSilver
                Pen.Width = 2
                ParentWidth = True
                Position = lpBottom
                Weight = 1.500000000000000000
                mmHeight = 794
                mmLeft = 0
                mmTop = 11906
                mmWidth = 197300
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer9
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              Background.Brush.Style = bsClear
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppDesignLayers6: TppDesignLayers
            object ppDesignLayer6: TppDesignLayer
              UserName = 'BandLayer9'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport5: TppSubReport
        DesignLayer = ppDesignLayer8
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport4
        TraverseAllData = False
        DataPipelineName = 'plFeeByAuthorNonBillable'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12700
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport6: TppChildReport
          AutoStop = False
          DataPipeline = plFeeByAuthorNonBillable
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
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
          Version = '16.03'
          mmColumnWidth = 0
          DataPipelineName = 'plFeeByAuthorNonBillable'
          object ppDetailBand8: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText49: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText19'
              DataField = 'AUTHOR'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 529
              mmWidth = 16404
              BandType = 4
              LayerName = BandLayer10
            end
            object ppDBText50: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText20'
              DataField = 'NAME'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 20373
              mmTop = 529
              mmWidth = 62442
              BandType = 4
              LayerName = BandLayer10
            end
            object ppDBText51: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText23'
              BlankWhenZero = True
              DataField = 'TOTALUNITS'
              DataPipeline = plFeeByAuthorNonBillable
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 135467
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = BandLayer10
            end
            object ppDBText52: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText24'
              BlankWhenZero = True
              DataField = 'TOTAL'
              DataPipeline = plFeeByAuthorNonBillable
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 161132
              mmTop = 529
              mmWidth = 22490
              BandType = 4
              LayerName = BandLayer10
            end
            object ppDBText53: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText25'
              BlankWhenZero = True
              DataField = 'WIPUNITS'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 89429
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = BandLayer10
            end
            object ppDBText54: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText26'
              BlankWhenZero = True
              DataField = 'WIP'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4233
              mmLeft = 112448
              mmTop = 529
              mmWidth = 17198
              BandType = 4
              LayerName = BandLayer10
            end
          end
          object ppSummaryBand6: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBCalc21: TppDBCalc
              DesignLayer = ppDesignLayer7
              UserName = 'DBCalc17'
              DataField = 'WIPUNITS'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4191
              mmLeft = 89429
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = BandLayer10
            end
            object ppDBCalc22: TppDBCalc
              DesignLayer = ppDesignLayer7
              UserName = 'DBCalc18'
              DataField = 'WIP'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4191
              mmLeft = 112448
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = BandLayer10
            end
            object ppDBCalc23: TppDBCalc
              DesignLayer = ppDesignLayer7
              UserName = 'DBCalc101'
              DataField = 'TOTALUNITS'
              DataPipeline = plFeeByAuthorNonBillable
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4191
              mmLeft = 135467
              mmTop = 794
              mmWidth = 17198
              BandType = 7
              LayerName = BandLayer10
            end
            object ppDBCalc24: TppDBCalc
              DesignLayer = ppDesignLayer7
              UserName = 'DBCalc20'
              DataField = 'TOTAL'
              DataPipeline = plFeeByAuthorNonBillable
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFeeByAuthorNonBillable'
              mmHeight = 4191
              mmLeft = 161132
              mmTop = 794
              mmWidth = 22490
              BandType = 7
              LayerName = BandLayer10
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer7
              UserName = 'Line6'
              Pen.Color = clSilver
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = BandLayer10
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'NMATTER'
            DataPipeline = plFeeByAuthorNonBillable
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group3'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plFeeByAuthorNonBillable'
            NewFile = False
            object ppGroupHeaderBand6: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 17198
              mmPrintPosition = 0
              object ppLabel54: TppLabel
                DesignLayer = ppDesignLayer7
                UserName = 'Label30'
                Caption = 'Non Billable Author'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                Transparent = True
                WordWrap = True
                mmHeight = 12700
                mmLeft = 1852
                mmTop = 2646
                mmWidth = 13494
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer10
              end
              object ppLabel55: TppLabel
                DesignLayer = ppDesignLayer7
                UserName = 'Label201'
                Caption = 'W.I.P. Units'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 92075
                mmTop = 6879
                mmWidth = 14552
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer10
              end
              object ppLabel56: TppLabel
                DesignLayer = ppDesignLayer7
                UserName = 'Label32'
                Caption = 'W.I.P.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 122238
                mmTop = 6879
                mmWidth = 7408
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer10
              end
              object ppLabel57: TppLabel
                DesignLayer = ppDesignLayer7
                UserName = 'Label33'
                Caption = 'Total Units'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 139171
                mmTop = 6879
                mmWidth = 13494
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer10
              end
              object ppLabel58: TppLabel
                DesignLayer = ppDesignLayer7
                UserName = 'Label34'
                Caption = 'Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial Narrow'
                Font.Size = 9
                Font.Style = [fsBold]
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 177271
                mmTop = 6879
                mmWidth = 6350
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer10
              end
              object ppLine16: TppLine
                DesignLayer = ppDesignLayer7
                UserName = 'Line1'
                Pen.Color = clSilver
                Pen.Width = 2
                ParentWidth = True
                Position = lpBottom
                Weight = 1.500000000000000000
                mmHeight = 794
                mmLeft = 0
                mmTop = 15610
                mmWidth = 197300
                BandType = 3
                GroupNo = 0
                LayerName = BandLayer10
              end
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              Background.Brush.Style = bsClear
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppDesignLayers7: TppDesignLayers
            object ppDesignLayer7: TppDesignLayer
              UserName = 'BandLayer10'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers8: TppDesignLayers
      object ppDesignLayer8: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object qryFeeItemsLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(FEE.CREATED,NULL) as created, FEE.BANK_ACCT, FEE.TASK' +
        '_AMOUNT, FEE.DESCR, FEE.ITEMS, '
      
        '              FEE.MINS, FEE.INVOICEDATE, FEE.BILLED, FEE.AUTHOR,' +
        ' FEE.PARTNER, FEE.NOTES,'
      
        '              FEE.TAX, FEE.TYPE, NMEMO.REFNO, FEE.ITEMS, SCALECO' +
        'ST.CODE||'#39' - '#39'||SCALECOST.DESCR as TASK_DESCR,'
      '              0 as "running total", FEE.NMATTER'
      'FROM FEE, NMEMO, SCALECOST'
      'WHERE FEE.NMATTER = :P_Matter '
      'AND FEE.NMEMO = NMEMO.NMEMO(+)'
      'AND FEE.CREATED >= :P_DateFrom '
      'AND FEE.CREATED < :P_DateTo '
      'AND FEE.BILLTYPE = '#39'Billable'#39
      'AND FEE.TASK = SCALECOST.CODE(+)'
      'ORDER BY FEE.CREATED')
    Debug = True
    Active = True
    Left = 266
    Top = 202
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
  object dsFeeItemsLedger: TUniDataSource
    DataSet = qryFeeItemsLedger
    Left = 648
    Top = 272
  end
  object plFeeItemsLedger: TppDBPipeline
    DataSource = dsFeeItemsLedger
    UserName = 'plFeeItemsLedger'
    Left = 705
    Top = 264
    object plFeeItemsLedgerppField1: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object plFeeItemsLedgerppField2: TppField
      FieldAlias = 'BANK_ACCT'
      FieldName = 'BANK_ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object plFeeItemsLedgerppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASK_AMOUNT'
      FieldName = 'TASK_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plFeeItemsLedgerppField4: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 3
    end
    object plFeeItemsLedgerppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEMS'
      FieldName = 'ITEMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plFeeItemsLedgerppField6: TppField
      FieldAlias = 'MINS'
      FieldName = 'MINS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
    object plFeeItemsLedgerppField7: TppField
      FieldAlias = 'INVOICEDATE'
      FieldName = 'INVOICEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object plFeeItemsLedgerppField8: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object plFeeItemsLedgerppField9: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object plFeeItemsLedgerppField10: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object plFeeItemsLedgerppField11: TppField
      FieldAlias = 'NOTES'
      FieldName = 'NOTES'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 10
    end
    object plFeeItemsLedgerppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object plFeeItemsLedgerppField13: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object plFeeItemsLedgerppField14: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plFeeItemsLedgerppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEMS_1'
      FieldName = 'ITEMS_1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object plFeeItemsLedgerppField16: TppField
      FieldAlias = 'TASK_DESCR'
      FieldName = 'TASK_DESCR'
      FieldLength = 1023
      DisplayWidth = 1023
      Position = 15
    end
    object plFeeItemsLedgerppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'running total'
      FieldName = 'running total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object plFeeItemsLedgerppField18: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 17
    end
  end
  object qryItemsByAuthor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, 0 AS WIPUNITS, 0 ' +
        'as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total, MAX(' +
        'fee.nmatter) as nmatter '
      'FROM FEE, EMPLOYEE'
      'WHERE FEE.NMATTER = 993711'
      'AND FEE.AUTHOR = EMPLOYEE.CODE(+)'
      'Group BY FEE.Author'
      'UNION ALL'
      
        'SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, SUM(UNITS) AS WIP' +
        'UNITS, Sum(FEE.AMOUNT) as WIP, 0 AS TOTALUNITS, 0 as Total, MAX(' +
        'fee.nmatter) as nmatter  '
      'FROM FEE, EMPLOYEE'
      'WHERE FEE.NMATTER = 993711'
      'AND FEE.AUTHOR = EMPLOYEE.CODE(+)'
      'AND BILLED = '#39'N'#39
      'Group BY FEE.Author'
      'ORDER BY 1')
    Left = 403
    Top = 252
  end
  object dsItemsByAuthor: TUniDataSource
    DataSet = qryItemsByAuthor
    Left = 406
    Top = 316
  end
  object plItemsByAuthor: TppDBPipeline
    DataSource = dsItemsByAuthor
    UserName = 'plItemsByAuthor'
    Left = 491
    Top = 319
  end
end
