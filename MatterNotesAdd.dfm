object frmMatterNotesAdd: TfrmMatterNotesAdd
  Left = 910
  Top = 333
  Caption = 'Matter Note Entry'
  ClientHeight = 470
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    600
    470)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 9
    Width = 24
    Height = 15
    Caption = 'Date'
  end
  object Label2: TLabel
    Left = 9
    Top = 33
    Width = 56
    Height = 15
    Caption = 'Entered By'
  end
  object Label3: TLabel
    Left = 9
    Top = 78
    Width = 26
    Height = 15
    Caption = 'Note'
  end
  object Label4: TLabel
    Left = 9
    Top = 57
    Width = 24
    Height = 15
    Caption = 'Type'
  end
  object Label19: TLabel
    Left = 6
    Top = 398
    Width = 35
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = '0/4000'
    ExplicitTop = 370
  end
  object Label20: TLabel
    Left = 6
    Top = 415
    Width = 58
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = '(Max 4000)'
    ExplicitTop = 387
  end
  object cxButton1: TcxButton
    Left = 446
    Top = 439
    Width = 70
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AB4F
      4FFF964F4CFFAB4F4FFFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC4C4
      C4FFAB4F4FFFAB4F4FFFAB4F4FFFFF00FF00FF00FF00FF00FF00B58474FFAB4F
      4FFFCD6764FF964F4CFFC3A2A9FFC49C94FFDCDADBFFFFFCFFFFE9EAE9FFDCDA
      DBFF963635FFAB4F4FFFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
      64FFCD6764FF964F4CFFC3B5B4FFAB4F4FFFC2907DFFC4C4C4FFFFFCFFFFE9EA
      E9FF963635FFAB4F4FFFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
      64FFCD6764FF9B4F54FFDBCBC7FF963635FFAB4F4FFFAE837AFFC6C4C6FFFFFC
      FFFF963635FFBC6B6DFFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
      64FFCD6764FF9B4F54FFDBCBC7FFDBCBC7FFDBCBC7FFC3B5B4FFC6C4C6FFDCDA
      DBFF963635FFAB4F4FFFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
      64FFCD6764FFBC6B6DFFC2907DFFC2907DFFC2907DFFC2907DFFBC6B6DFFFF61
      83FFAB4F4FFFCD6764FFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCD67
      64FFCD6764FFCD6764FFCD6764FFCD6764FFCD6764FFCD6764FFCD6764FFCD67
      64FFCD6764FFCD6764FFCD6764FF964F4CFFFF00FF00FF00FF00B58474FFCE67
      6DFFFF6183FFFFA5ACFFFFA5ACFFFFA5ACFFFFA5ACFFFFA5ACFFFFA5ACFFFFA5
      ACFFFF6183FFAB4F4FFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCD67
      64FF964F4CFFF6F3F6FFF6F3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFA5ACFFCD6764FFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCE67
      6DFFAB4F4FFFF6F3F6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFF6F3
      F6FFFFA5ACFFAB4F4FFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCE67
      6DFFAB4F4FFFF6F3F6FFF6F3F6FFF6F3F6FFF6F3F6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFA5ACFFAB4F4FFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCE67
      6DFF964F4CFFF6F3F6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFF6F3
      F6FFFFA5ACFFBC6B6DFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FFCE67
      6DFFAB4F4FFFF6F3F6FFF6F3F6FFF6F3F6FFF6F3F6FFF6F3F6FFF6F3F6FFFFFF
      FFFFFFA5ACFFAB4F4FFFCE676DFF964F4CFFFF00FF00FF00FF00B58474FF964F
      4CFF963635FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4C6FFC6C4
      C6FFFF6183FF963635FF964F4CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 3
    ExplicitLeft = 405
    ExplicitTop = 411
  end
  object cxButton2: TcxButton
    Left = 522
    Top = 439
    Width = 70
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6E6E619B2B2B24D9292926D8D8D8D729B9B9B64C7C7
      C738F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC0391919F6E2B2B6BD4050563FA000065FF000060FF00004FFF1616
      3DE96262629DD4D4D42BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4
      F40B6060909F000084FF00008EFF00008EFF00008FFF00008CFF000088FF0000
      81FF010154FF34343CCBC2C2C23DFFFFFF00FFFFFF00FFFFFF00FDFDFD025A5A
      9AA5000096FF000097FF00009BFF00009FFF0000A0FF00009DFF000097FF0000
      8FFF000088FF000062FF36363EC9D6D6D629FFFFFF00FFFFFF008F8FB7700101
      A3FF08089EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848B8FFB7B7
      E3FF2727A5FF00008CFF010152FF7171718EFFFFFF00DDDDEF222828ABD90000
      ABFF2828A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7ECFFFFFF
      F7FF5E5EB7FF00009AFF020287FF2E2E45D1FFFFFF009797E5690606B0FD0303
      B9FF0000C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFFF1FF7575
      B9FF0606B1FF0101ABFF0202A0FF12135DEDFFFFFF005859D0AB0808BBFF0707
      C8FF0505D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575C9FF0000
      BEFF0101C3FF0303B8FF0303ACFF0F0F6EF2FFFFFF004B4BD2BC0C0CC9FF0D0D
      D8FF0B0BDCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858DBFF0000
      CAFF0303CBFF0606C5FF0606B8FF111178F1FFFFFF007272E6931414D8FF1717
      EAFF0B0BF1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFEFFFF6363
      E5FF0303D7FF0A0ACFFF0A0AC3FF21217FE2FFFFFF00BBBBF7452525E5F22222
      FBFF3F3FE9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3D6FFFFFF
      FEFF6161E5FF0808DBFF0F0FCAFF4F4F85B2FFFFFF00F3F3FD0C5E5EF1AF3232
      FFFF5252EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252B4FFADAD
      B0FF4D4DE1FF1818EDFF1818B1F5B6B6B949FFFFFF00FFFFFF00D6D6FC293E3E
      FBE75353FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838FCFF4242
      EBFF3232FFFF1F1FE9FF7E7EA784FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C2
      FC404848FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767FFFF5151
      FFFF3030FBFD7C7CB488FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DCDCFE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353FFFF5151
      F2D2A6A6CD5CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAAFD5DE1E1
      F81EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    TabOrder = 4
    ExplicitLeft = 481
    ExplicitTop = 411
  end
  object lBy: TcxDBLabel
    Left = 75
    Top = 31
    AutoSize = True
    DataBinding.DataField = 'CREATEDBY'
    DataBinding.DataSource = dsMatterNotes
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
  end
  object cmbNoteType: TcxDBLookupComboBox
    Left = 75
    Top = 53
    DataBinding.DataField = 'NMATTERNOTEID'
    DataBinding.DataSource = dsMatterNotes
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 20
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMatterNotesType
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 135
  end
  object cmbDate: TcxDBDateEdit
    Left = 75
    Top = 5
    DataBinding.DataField = 'CREATED'
    DataBinding.DataSource = dsMatterNotes
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 135
  end
  object btnNotePrint: TcxButton
    Left = 331
    Top = 439
    Width = 97
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'Print Note'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000C744558745469746C65005072696E743BC83632EA00000267494441
      54785E7D93CB6B135114C6BF99C434A60F05698B1B5716752582E84AAD2822B6
      88B8101F50B45441210BEBC285150591A250A326462AA218F20FB810178A482C
      AD165AD0958216051F68D1966426F3B82FCFDCCC0C71512F7C73EE3DDCEF77EE
      DC87A19442D40C6AB74A332F4CD3EC05745E7FA33982F1CAF0E0D65D34E69127
      897F9B49EA3D7374A376AA901041F2E5D9ED0012A4A5019C0B28092C5A5E58D9
      808244476B0B38135111C4005AB55E7D587D191712928C147579052308908272
      5C03D2E4610064A0C0648E8E5776DF2EBF7D33385CB0BF7C7E0F2915494288C0
      28C0833E69EEE33B1C3E35FA67ECE1CCF4C5DCD33D0012C9E0B33CD3513EB477
      6DD744E54930D4D5852008240CD55807A3B1EB3AB0EC1A8EF4ADDF547A2C4B00
      D66880E0AAAB7B550675CB42329186904A5754A119000125015C38561DAB3B33
      604C75462B303D5F5042229D4AE0E78FEF3878EC4274046150210C686F4BE8B9
      9EC7D00460700832347000378B252C2C542145E0931AA1A4D23BBC72453B4E0F
      1D87C3380138026F03E032D409D2B3A107C5FC95C6A1C8F0084D8A8D0C744602
      B6CB41459B003E47CDE1A8D7194E666FE07FED5EFE2C7C9102F385E60600C3F7
      04AA1643D576B0BFBF0FD981CD284CCDEBCD6402641038BFA31BC5F22C7E2FDA
      A03F81CF1A0013009BFFF5753277E719EE8E3F070FCFDD63244E002E29070DE3
      D4B976BD8C91CB0FF0E9C3E46B10C708EF762BA985D43632F6722E7B628BDE79
      4087F846161E4DE3EAB99DEB0054490EC94E2AA54490085FA3655BD6ABDCFDA9
      6DF1B6A9F8ADC2756B1300BE91C75EEA31F9B94BFDFB00A44866EC44FCB23D92
      DB6CF80BF54A6944F3A08E160000000049454E44AE426082}
    TabOrder = 6
    OnClick = btnNotePrintClick
    ExplicitLeft = 290
    ExplicitTop = 411
  end
  object mlNote: TcxMemo
    Left = 75
    Top = 83
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'mlNote')
    Properties.MaxLength = 4000
    Properties.ScrollBars = ssVertical
    TabOrder = 2
    OnKeyUp = mlNoteKeyUp
    ExplicitWidth = 476
    ExplicitHeight = 322
    Height = 350
    Width = 517
  end
  object qryMatterNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT matternotes.*, matternotes.ROWID '
      'FROM matternotes')
    CachedUpdates = True
    AfterInsert = qryMatterNotesAfterInsert
    Left = 18
    Top = 118
  end
  object dsMatterNotes: TUniDataSource
    DataSet = qryMatterNotes
    Left = 57
    Top = 120
  end
  object qryMaxSequence: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(max(nvl(sequence,0))+1,1) as newsequence from mattern' +
        'otes'
      'where nmatter = :nmatter')
    Left = 233
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qryMaxSequenceNEWSEQUENCE: TFloatField
      FieldName = 'NEWSEQUENCE'
    end
  end
  object dsMatterNotesType: TUniDataSource
    DataSet = qryMatterNotesType
    Left = 482
    Top = 16
  end
  object qryMatterNotesType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from MATTER_NOTES_TYPE')
    Left = 409
    Top = 16
  end
  object ppMatterNoteRpt: TppReport
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 60350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppMatterNoteRptBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
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
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 298
    Top = 22
    Version = '20.01'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object pplblTransTitle: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblTransTitle'
        Border.mmPadding = 0
        Caption = 'lblTransTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 89451
        mmTop = 2910
        mmWidth = 18923
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Matter Filenote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 86519
        mmTop = 8202
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15619
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Matter #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 18521
        mmTop = 3440
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 21167
        mmTop = 9525
        mmWidth = 9789
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 15610
        mmWidth = 8466
        BandType = 4
        LayerName = Foreground
      end
      object pplblMatter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMatter'
        Border.mmPadding = 0
        Caption = 'lblMatter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 34660
        mmTop = 3440
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object pplblMatterDesc: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMatterDesc'
        Border.mmPadding = 0
        Caption = 'lblMatterDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 9525
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object pplblClient: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblClient'
        Border.mmPadding = 0
        Caption = 'lblClient'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 15610
        mmWidth = 11907
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Note'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 21696
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
      object ppMemoNotes: TppRichText
        DesignLayer = ppDesignLayer1
        UserName = 'MemoNotes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Border.mmPadding = 0
        ExportRTFAsBitmap = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        mmHeight = 4763
        mmLeft = 34660
        mmTop = 21696
        mmWidth = 142611
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object pplblFooter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblFooter'
        Border.mmPadding = 0
        Caption = 'lblFooter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 89959
        mmTop = 1852
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 524
        mmLeft = 0
        mmTop = 528
        mmWidth = 197300
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
end
