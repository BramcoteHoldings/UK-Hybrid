object frmTrustJournal: TfrmTrustJournal
  Left = 428
  Top = 352
  Caption = 'Trust Journal'
  ClientHeight = 612
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1026
    612)
  PixelsPerInch = 106
  TextHeight = 15
  object Label2: TLabel
    Left = 8
    Top = 39
    Width = 24
    Height = 15
    Caption = '&Date'
  end
  object Label8: TLabel
    Left = 8
    Top = 68
    Width = 79
    Height = 15
    Caption = 'Default Reason'
    FocusControl = tbDesc
  end
  object lblAmountMsg: TLabel
    Left = 784
    Top = 583
    Width = 31
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalCredit: TLabel
    Left = 997
    Top = 583
    Width = 4
    Height = 17
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalDebit: TLabel
    Left = 909
    Top = 583
    Width = 4
    Height = 17
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 261
    Top = 39
    Width = 57
    Height = 15
    Caption = 'Trust &Bank '
  end
  object lblBankName: TLabel
    Left = 405
    Top = 40
    Width = 3
    Height = 15
    ShowAccelChar = False
  end
  object lblWarning: TLabel
    Left = 8
    Top = 589
    Width = 62
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'lblWarning'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 516
  end
  object tbDesc: TEdit
    Left = 110
    Top = 65
    Width = 287
    Height = 23
    TabOrder = 1
    OnExit = tbDescExit
    OnKeyPress = tbDescKeyPress
  end
  object dbgrLedger: TcxGrid
    Left = 8
    Top = 96
    Width = 1008
    Height = 471
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    OnEnter = dbgrLedger12Enter
    OnExit = dbgrLedgerExit
    LookAndFeel.NativeStyle = True
    object tvLedger: TcxGridDBTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Appending = True
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 57
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownRows = 3
        Properties.Items.Strings = (
          'Matter'
          'Protected')
        Properties.ReadOnly = False
        MinWidth = 23
        Width = 51
      end
      object tvLedgerREFNO: TcxGridDBColumn
        Caption = 'Reference'
        DataBinding.FieldName = 'REFNO'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Properties.OnButtonClick = cxGrid1DBTableView1REFNO1PropertiesButtonClick
        Properties.OnValidate = cxGrid1DBTableView1REFNO1PropertiesValidate
        MinWidth = 23
        Width = 67
      end
      object tvLedgerLONGDESC: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'LONGDESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        MinWidth = 23
        Options.Editing = False
        Options.Focusing = False
        Width = 142
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnValidate = tvLedgerREASON1PropertiesValidate
        MinWidth = 23
        Width = 238
      end
      object tvLedgerDEBIT: TcxGridDBColumn
        Caption = 'Debit'
        DataBinding.FieldName = 'DEBIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.EditFormat = True
        Properties.DisplayFormat = '$,0.00;'
        Properties.OnValidate = tvLedgerDEBITPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 23
        Width = 79
      end
      object tvLedgerCREDIT: TcxGridDBColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;'
        Properties.OnValidate = tvLedgerCREDITPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 23
        Width = 79
      end
    end
    object dbgrLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 110
    Top = 36
    AutoSize = False
    EditValue = 43901.4185511458d
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Height = 26
    Width = 116
  end
  object cbBank: TcxLookupComboBox
    Left = 324
    Top = 37
    Properties.CharCase = ecUpperCase
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 12
    Properties.KeyFieldNames = 'ACCT'
    Properties.ListColumns = <
      item
        FieldName = 'ACCT'
      end
      item
        FieldName = 'NAME'
      end
      item
        FieldName = 'TRUST'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dmAxiom.dsBankList
    Properties.OnChange = cxLookupComboBox1PropertiesChange
    TabOrder = 3
    Width = 73
  end
  object qryAllocInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (AMOUNT, DESCR, CREATED, ACCT, NMATTER, REFNO,'
      '   TYPE, NCLIENT, NJOURNAL, PAYER, TRUST, BILLED, FILEID,'
      '   NALLOC, NMEMO, CLIENT_NAME, MATTER_DESC,'
      '   SPEC_PURPOSE, PRIVATE, NCHEQUE, NRECEIPT, CLEARED, BANK,'
      '   trust_jnl_descr  )'
      'VALUES'
      '  (:AMOUNT, :DESCR, :CREATED, :ACCT, :NMATTER, :REFNO,'
      '   '#39'J3'#39', :NCLIENT, :NJOURNAL, :PAYER, '#39'T'#39', '#39'N'#39', :FILEID,'
      '   :NALLOC, NULL, :CLIENT_NAME, :MATTER_DESC,'
      '   :SPEC_PURPOSE, '#39'N'#39', NULL, NULL, :CLEARED, :BANK,'
      '   :trust_jnl_descr  )')
    Left = 587
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLIENT_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATTER_DESC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SPEC_PURPOSE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLEARED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trust_jnl_descr'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT L.ROWID, L.CREATED, L.TYPE, L.REFNO, L.LONGDESC, L.REASON' +
        ', L.DEBIT, L.CREDIT, L.UNIQUEID, L.trust_jnl_descr'
      'FROM LGRALLOC L')
    CachedUpdates = True
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    Left = 523
    Top = 30
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 424
    Top = 63
  end
  object popGrid: TPopupMenu
    Left = 483
    Top = 31
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
  end
  object qryJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT J.ROWID, J.* FROM JOURNAL J WHERE J.NJOURNAL = -1')
    CachedUpdates = True
    Left = 555
    Top = 31
  end
  object qryCheckAlloc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nmatter, sum(priorbalance) as priorbalance, sum(amount) A' +
        'S Total_Amount'
      'from alloc'
      'where FILEID = :FILEID AND Trust = '#39'T'#39
      'group by nmatter')
    Left = 635
    Top = 31
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryCheckMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nmatter, fileid, title, shortdescr, acct'
      'FROM matter'
      'WHERE fileid = :p_fileid')
    Left = 691
    Top = 31
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_fileid'
        Value = nil
      end>
  end
  object qrySpecPurposeAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select sum(spec_purpose) as spec_purpose from alloc where fileid' +
        ' = :fileid')
    Left = 746
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end>
  end
  object qryJournalPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '   REFNO,ACCT, TRUNC(CREATED) AS CREATED, NJOURNAL, AMOUNT, REAS' +
        'ON, TYPE, REV_NJOURNAL, NMEMO, TRUST'
      'FROM'
      '   JOURNAL'
      'WHERE'
      '   NJOURNAL = :NJOURNAL'
      'AND'
      '   NVL(ACCT,:ACCT) = :ACCT')
    Left = 238
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end>
  end
  object dsJournalPrint: TUniDataSource
    DataSet = qryJournalPrint
    Left = 310
    Top = 367
  end
  object plJournalPrint: TppDBPipeline
    DataSource = dsJournalPrint
    UserName = 'plJournalPrint'
    Left = 371
    Top = 373
    object plJournalPrintppField1: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plJournalPrintppField2: TppField
      FieldAlias = 'ACCT'
      FieldName = 'ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object plJournalPrintppField3: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plJournalPrintppField4: TppField
      FieldAlias = 'NJOURNAL'
      FieldName = 'NJOURNAL'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 3
    end
    object plJournalPrintppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plJournalPrintppField6: TppField
      FieldAlias = 'REASON'
      FieldName = 'REASON'
      FieldLength = 400
      DisplayWidth = 400
      Position = 5
    end
    object plJournalPrintppField7: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object plJournalPrintppField8: TppField
      FieldAlias = 'REV_NJOURNAL'
      FieldName = 'REV_NJOURNAL'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 7
    end
    object plJournalPrintppField9: TppField
      FieldAlias = 'NMEMO'
      FieldName = 'NMEMO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object plJournalPrintppField10: TppField
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
  end
  object rptJournal: TppReport
    AutoStop = False
    DataPipeline = plAllocPrint
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpVertical
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
    BeforePrint = rptJournalBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    Left = 444
    Top = 366
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plAllocPrint'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 42598
      mmPrintPosition = 0
      object lblCompanyJournals: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lblCompany'
        Border.mmPadding = 0
        Caption = 'lblCompany'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 88503
        mmTop = 529
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Journal Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 86048
        mmTop = 5027
        mmWidth = 25019
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 265
        mmTop = 20108
        mmWidth = 8805
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Jrnl #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 265
        mmTop = 25400
        mmWidth = 9356
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 30692
        mmWidth = 20532
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label7'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Matter/Code'
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
        mmTop = 37571
        mmWidth = 19304
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label8'
        Anchors = [atLeft, atBottom]
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
        mmHeight = 4022
        mmLeft = 48154
        mmTop = 37571
        mmWidth = 17568
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label9'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 155311
        mmTop = 37571
        mmWidth = 8170
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label10'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 179557
        mmTop = 37571
        mmWidth = 9356
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line2'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 42333
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 142802
        mmTop = 20108
        mmWidth = 11980
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 61235
        mmTop = 20108
        mmWidth = 7027
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 529
        mmWidth = 31369
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plJournalPrint
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 3598
        mmLeft = 21167
        mmTop = 20108
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'NJOURNAL'
        DataPipeline = plJournalPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 3598
        mmLeft = 21167
        mmTop = 25400
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'TYPE'
        DataPipeline = plJournalPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 3598
        mmLeft = 70644
        mmTop = 20108
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plJournalPrint
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 3598
        mmLeft = 157692
        mmTop = 20108
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'REASON'
        DataPipeline = plJournalPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 4233
        mmLeft = 21167
        mmTop = 30692
        mmWidth = 167482
        BandType = 0
        LayerName = Foreground2
      end
      object lblEntity: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lblEntity'
        Border.mmPadding = 0
        Caption = 'lblEntity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 13494
        mmWidth = 13843
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = plAllocPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'plAllocPrint'
        mmHeight = 3641
        mmLeft = 21167
        mmTop = 794
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBMemo3: TppDBMemo
        DesignLayer = ppDesignLayer4
        UserName = 'DBMemo3'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = plAllocPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plAllocPrint'
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 794
        mmWidth = 91546
        BandType = 4
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText10'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'DEBIT'
        DataPipeline = plAllocPrint
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAllocPrint'
        mmHeight = 3641
        mmLeft = 141288
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText11'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'CREDIT'
        DataPipeline = plAllocPrint
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAllocPrint'
        mmHeight = 3641
        mmLeft = 166688
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 265
        mmWidth = 197200
        BandType = 8
        LayerName = Foreground2
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lblFileName'
        Border.mmPadding = 0
        Caption = 'lblFileName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3768
        mmLeft = 0
        mmTop = 1058
        mmWidth = 13758
        BandType = 8
        LayerName = Foreground2
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object plAllocPrint: TppDBPipeline
    DataSource = dsAllocPrint
    UserName = 'plAllocPrint'
    Left = 366
    Top = 425
  end
  object dsAllocPrint: TUniDataSource
    DataSet = qryAllocPrint
    Left = 295
    Top = 416
  end
  object qryAllocPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT njournal, alloc.fileid AS "CODE", alloc.client_name AS "D' +
        'ESCR",'
      '       CASE'
      '          WHEN (alloc.amount < 0)'
      '             THEN (alloc.amount * -1 + NVL (alloc.tax * -1, 0))'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (alloc.amount > 0)'
      '             THEN (alloc.amount + NVL (alloc.tax, 0))'
      '          ELSE 0'
      '       END AS credit'
      '  FROM alloc'
      ' WHERE njournal = :njournal AND alloc.bank = :acct')
    MasterSource = dsJournalPrint
    MasterFields = 'NJOURNAL'
    DetailFields = 'NJOURNAL'
    Left = 230
    Top = 418
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'NJOURNAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ACCT'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryNAccountPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  CHART.COMPONENT_CODE_DISPLAY AS "CODE",'
      '  TRANSITEM.DESCR AS "TDESCR",'
      '  CHART.REPORT_DESC AS "DESCR",'
      '  TRANSITEM.AMOUNT AS "AMOUNT",'
      '      CASE'
      '          WHEN (TRANSITEM.AMOUNT) < 0'
      '             THEN (TRANSITEM.AMOUNT * -1)'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (TRANSITEM.AMOUNT) > 0'
      '             THEN (TRANSITEM.AMOUNT * -1)'
      '          ELSE 0'
      '       END AS credit,'
      'njournal'
      'FROM'
      '  TRANSITEM,'
      '  CHART'
      'WHERE'
      '  (TRANSITEM.OWNER_CODE = '#39'JOURNAL'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PAJ'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PPJ'#39' )AND'
      '  TRANSITEM.NJOURNAL <> 0 AND'
      '  TRANSITEM.ACCT = :Acct AND'
      '  TRANSITEM.CHART = CHART.CODE AND'
      '  TRANSITEM.ACCT = CHART.BANK')
    MasterSource = dsJournalPrint
    MasterFields = 'NJOURNAL'
    DetailFields = 'NJOURNAL'
    Left = 222
    Top = 478
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end>
  end
  object dsNAccountPrint: TUniDataSource
    DataSet = qryNAccountPrint
    Left = 326
    Top = 472
  end
  object qryBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' NAME, CASH_AT_BANK, LASTCHQ, CHEQUE, TRUST,'
      ' CL_BALANCE, BALANCE, CURRENCY, ROWID'
      'FROM'
      ' BANK'
      'WHERE ACCT = :P_Code'
      'AND ENTITY = :P_Entity')
    Left = 168
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Entity'
        Value = nil
      end>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 883
    Top = 59
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1060
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnOk'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbPrintJournal'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnOk: TdxBarButton
      Caption = 'Post'
      Category = 0
      Hint = 'Post'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000041744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E53657453796D626F6C73333B436F6E646974696F6E616C46
        6F726D617474696E673B9DC5ED720000025449444154785EAD935D6C4B6118C7
        DF2A1BFD38DA4E6DB122D5B5DBAC92CA1CC4B0656CA9CE6ABE3A22662C9DB656
        5F4985359D91655DCC47EDA327CA120417222415DA1925F4424AB6650BDD8A0B
        71C1848CC415B3C7FB9EB4F45CB8907993DFB938CFF3FFE579DEE445003021D8
        CF3F1C1E66322605C3C7FC11D8996C54C768D01EAF06D93A311D1A646D57234B
        7B16DADD96C586153902E10EB7F2AA95A9800D0E8581C81202B6F92BC4D097F1
        281A1D7F813EFF1C409FC6FAD0C71FCFD8B09A164BAA9A95FE5BCF1BA07F8401
        739B9104A7FD16D49E51E1F01037FC9D0D4FCA2DA0E455CDAAF0EDBE2608BF3D
        06CECB4B416F4B77E15A6AF21DF0E3BB4D21A14478CE02816CEBF1798FBB074F
        42E84D3D345D2F84129BFC12AE89493D21E097EFCF5C53E32907936BB69F5E27
        53113B46B4FE50A6FF66A411824307E0ECDD52D0D765448452FE0C124EBEC4A9
        D5A7CBA0F7C33908F47B60674BDE68F1AE9916833DC3D7756F2F04861DC0840C
        603CA878AFA40579E4F25659B123499052B05DEA719C5F043DAF9C303872031A
        2E1AC1D76D879E980BBAC26B61E391B9633945227D7C32DE4A731A47C0C38868
        93A4639F570757222678FAAE13825127F89EE8C17C6A3EE82AA813A4878443AF
        5BD0B26A294780E23B51B891B178B4C03C2A01EFC3D5E0BAB618E8CAE9BDB826
        273D0F626E148C36227A9B842B58827FC425126D99D857D39A0DAD779643716D
        FAB759DAD41564CDFBC36E14787914F9070EA3FC4A8A2BC8DF42111212596EA9
        F04291350DD48582FAC4E80B378B114147D824E60AB8203E868A8F2D62A57F39
        FFE5354E885F4F2C8B1CABF609A90000000049454E44AE426082}
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Cancel'
      Category = 0
      Hint = 'Cancel'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001D744558745469746C6500436C6F73653B457869743B426172733B52
        6962626F6E3B4603B9E8000002AD49444154785E85934B4C546714C77FF73232
        0C041DC2237644C368F109868D98A0290BDA60E2DE9526921856C3C2A08C2E1A
        A336A64DB48D81A8892D6E241A7CA20B1530261849DA4D47596818082F015118
        0698B973DFB7773EB1333BEE97FFCD3927DFF97DE77B1CE9E3AF17293FF3B30C
        48426B7D9939765A1290337AE1DC4B8F2CD73B0E802306C24CEB9BE7ACFA6206
        86650FECFCE55283079025DBAE2F3D5CB79A94B58E206692C5CF1606933DAF7F
        006451BA69986099A8C3C38C3C7846D791D3BCB97413351A151AFCADD38D8589
        DE7F412A3A426A388AC801D92300A689E36A2A1225129923D8D1C9FC9387FCDD
        D587244BC4037BDC581B91AB97716C93F2AA6D989A004802A0AF28382EF19F3B
        FD34F4F7515852C4E2AE20FFFED10140CDC9101B0ABD54B4FFCEAB1F7F62D3F9
        0AB4643203589E9C469F9926B8BF8AF947DD94B5849072246A5A43E040913F9F
        BC75394C3DEE2658BB9BD4F07BE2E3B35915A83AFAA719766CCDE7C3403F43C8
        6C6D6EC65FE8C391C0B660E8FA359203BD546EF7A34E4C60A49C2C8066602514
        B4D94F98F12596150DDB721043DC84CC4A3A168FA14FA75CA085A17D05885B30
        D280548AE8FB39947D8D048E3661D936DE5C99BC5C8FB0BF3BD684527B88D1D1
        18B6AAE22E9A5D8186954C105B50680C87503D3EF2BDEE9E6FFD0940F9F11380
        8FFA700BBD4FEEB2A94842D73D990A74DDC45C49B2A37A336FDB4E5122AB8C5F
        6FE7CBBDDB7C763571A39D328FCEBB702BDF6F2FC352750C4DCFBC0343750189
        243E3381131BE369DD018A4BD71328CE136730D7D3CDD3CEBFD8B2A518AF99C0
        4C030CFEDF82EBE802602C2CE22DC8676F7500633981E2DE0C1694FAFD6C2C29
        419D8FA12515B06C4C43461080822B6595CF7D927410475A3DF9ACA6B0859FDD
        50C2566C7BF0ECD258A3E846200FF066B5AAB4462B3B800628FF0122CC6063F4
        5F96130000000049454E44AE426082}
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
    object cbPrintJournal: TcxBarEditItem
      Caption = 'Print Journal'
      Category = 0
      Hint = 'Print Journal'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = True
    end
  end
end
