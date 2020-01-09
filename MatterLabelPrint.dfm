object frmMatterLabelPrint: TfrmMatterLabelPrint
  Left = 731
  Top = 447
  Caption = 'Matter Label Print'
  ClientHeight = 140
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'Select  *  from Matter  where FileID =:FILEID'
      'union'
      'Select  *  from Matter  where FileID =:FILEID'
      'union'
      'Select  *  from Matter  where FileID =:FILEID')
    AfterScroll = qryMattersAfterScroll
    Left = 145
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object dsMatters: TUniDataSource
    DataSet = qryMatters
    Left = 200
    Top = 4
  end
  object qryContact: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'Select  *  from phonebook'
      'where nclient = :nclient')
    MasterSource = dsMatters
    Left = 254
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object qryClient: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'Select  *  from Client'
      'where NClient = :NClient')
    MasterSource = dsMatters
    Left = 314
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NClient'
        Value = nil
      end>
  end
  object qryBillTo: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'Select  *  from phonebook'
      'where search = :Bill_To')
    MasterSource = dsMatters
    Left = 362
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Bill_To'
        Value = nil
      end>
  end
  object qryOtherParty: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'Select WorkPhone from PhoneBook')
    Left = 411
    Top = 68
  end
  object qryClientContact: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PHONEBOOK '
      'WHERE SEARCH = :CONTACT')
    MasterSource = dsMatters
    Left = 390
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONTACT'
        Value = nil
      end>
  end
  object qryDataSource: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      ' m.fileid as ID_01,'
      ' pb.name as CLIENTNAME,'
      ' e.NAME as FEE_EARNER_NAME,'
      ' pb.ADDRESS as CLIENT_ADDR1 ,'
      ' '#39#39' as CLIENT_ADDR2,'
      ' pb.SUBURB as CLIENT_SUBURB,'
      ' pb.STATE as CLIENT_STATE,'
      ' pb.POSTCODE as CLIENT_POSTCODE,'
      ' pb.POSTALADDRESS,'
      ' pb.POSTALSUBURB,'
      ' pb.POSTALSTATE,'
      ' pb.POSTALPOSTCODE,'
      ' pb.POSTALCOUNTRY,'
      ' pb.DX, pb.DXLOC,'
      ' pb.CUST_ADDRESS, pb.CUST_SUBURB,'
      ' pb.CUST_POSTCODE, pb.CUST_STATE,pb.CUST_COUNTRY,'
      ' m.LONGDESCR as MATTER_HEADING_1,'
      ' '#39#39' as MATTER_HEADING_2,'
      ' mt.DESCR as MATTER_TYPE, '
      ' pb.WORKPHONE as CLIENT_PHONE_01,'
      ' pb.HOMEPHONE as CLIENT_HOME_PHONE,'
      ' pb.MOBILE as CLIENT_MOBILE_PHONE,'
      ' pb.FAX   as CLIENT_FAX_01,'
      ' pb.EMAIL as CLIENT_EMAIL,'
      'DECODE(pb.WHICHADDRESS,'
      #39'S'#39', Pb.ADDRESS,'
      'NULL, Pb.ADDRESS,'
      #39'P'#39', Pb.POSTALADDRESS,'
      #39'C'#39', pb.CUST_ADDRESS,'
      #39'D'#39', '#39'DX '#39
      ') as default_address, '
      'DECODE(pb.WHICHADDRESS,'
      #39'S'#39', Pb.SUBURB,'
      'NULL,Pb.SUBURB,'
      #39'P'#39', Pb.POSTALSUBURB,'
      #39'C'#39', pb.CUST_SUBURB,'
      #39'D'#39', Pb.DX'
      ') as default_suburb,'
      'DECODE(pb.WHICHADDRESS,'
      #39'S'#39', Pb.STATE,     '
      'NULL,Pb.STATE,     '
      #39'P'#39', Pb.POSTALSTATE,'
      #39'C'#39', pb.CUST_STATE,    '
      #39'D'#39', Pb.DXLOC'
      ') as default_state,'
      'DECODE(pb.WHICHADDRESS,'
      #39'S'#39', pb.postcode,'
      'NULL,Pb.POSTCODE,'
      #39'P'#39', Pb.POSTALPOSTCODE,'
      #39'C'#39', pb.CUST_POSTCODE,'
      #39'D'#39', '#39#39
      ') as default_postcode,'
      'DECODE(pb.WHICHADDRESS,'
      #39'S'#39',  Pb.COUNTRY,'
      'NULL,Pb.COUNTRY,'
      #39'P'#39', Pb.POSTALCOUNTRY,'
      #39'C'#39', pb.CUST_COUNTRY,'
      #39'D'#39','#39#39' '
      ') as default_country,'
      ' m.SHORTDESCR,'
      ' m.PARTNER,'
      ' m.OPERATOR,'
      ' m.AUTHOR,'
      ' m.CONTROLLER,'
      ' m.PARALEGAL,'
      ' m.OPENED,'
      ' m.EXP_COMPLETION,'
      ' nvl(m.SLEDATE,NULL) sledate,'
      ' nvl(m.FEEBASIS,NULL) feebasis,'
      ' m.TYPE,'
      ' c.CODE, '
      ' mc.name as matter_contactname,'
      ' mc.LONGNAME as matter_contactlongname,'
      ' mc.WORKPHONE as matter_contactworkphone,'
      ' mc.FAX as matter_contactfax,'
      ' mc.EMAIL as matter_contactemail,'
      ' mc.SHORTNAME as matter_contactshortname,'
      ' mc.GIVENNAMES as matter_contactgivennames,'
      ' mc.LASTNAME as matter_contactlastname,'
      ' pb.WORKPHONE as client_partyworkphone,'
      ' pb.HOMEPHONE as client_partyhomephone,'
      ' pb.MOBILE as client_partymobile,'
      ' pb.FAX as client_partyfax,'
      ' pb.GENDER as client_partygender,'
      ' pb.NAME as client_partyname,'
      ' pb.LONGNAME as client_partylongname,'
      ' pb.ADDRESS as client_partyaddress,'
      ' m.opref as matter_reference'
      'from matter m,'
      '  phonebook pb,'
      '  employee e,'
      '  mattertype mt, '
      '  client c, '
      '  phonebook mc'
      'where m.nclient = pb.nclient'
      'and m.TYPE = mt.CODE'
      'and m.author = e.code'
      'and m.NCLIENT = c.NCLIENT'
      'and m.NCONTACT = mc.NNAME(+)'
      'and m.nmatter = :nmatter')
    Left = 496
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object Report: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
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
    TextFileName = '($MyDocuments)\MatterLabel.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 61
    Top = 15
    Version = '20.01'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
