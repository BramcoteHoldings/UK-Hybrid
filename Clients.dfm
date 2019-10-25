object frmClients: TfrmClients
  Left = 315
  Top = 119
  Caption = 'Clients'
  ClientHeight = 656
  ClientWidth = 1087
  Color = clBtnFace
  Constraints.MinWidth = 614
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label29: TLabel
    Left = 9
    Top = 39
    Width = 62
    Height = 15
    Caption = 'Client Code'
  end
  object dblblClientNameCaption: TDBText
    Left = 9
    Top = 63
    Width = 129
    Height = 15
    DataField = 'CLIENTNAMECAPTION'
    DataSource = dsGender
  end
  object dblblClientContactCaption: TDBText
    Left = 9
    Top = 89
    Width = 129
    Height = 15
    DataField = 'CLIENTCONTACTCAPTION'
    DataSource = dsGender
  end
  object lblGender: TLabel
    Left = 9
    Top = 113
    Width = 58
    Height = 15
    Caption = 'Client Type'
  end
  object lblTaxNumberMsg: TLabel
    Left = 9
    Top = 137
    Width = 34
    Height = 15
    Caption = 'A.C.N.'
  end
  object Label21: TLabel
    Left = 596
    Top = 89
    Width = 78
    Height = 15
    Caption = 'Client Number'
    Visible = False
  end
  object Label30: TLabel
    Left = 326
    Top = 65
    Width = 58
    Height = 15
    Caption = 'Introduced'
  end
  object lblPartner: TLabel
    Left = 326
    Top = 89
    Width = 38
    Height = 15
    Caption = 'Partner'
  end
  object lblMatters: TLabel
    Left = 326
    Top = 113
    Width = 68
    Height = 15
    Caption = 'Total Matters'
  end
  object lblArchived: TLabel
    Left = 326
    Top = 137
    Width = 90
    Height = 15
    Caption = 'Archived Matters'
  end
  object lblClientPack: TLabel
    Left = 549
    Top = 39
    Width = 109
    Height = 15
    Caption = 'Client care pack sent'
    Visible = False
  end
  object Label4: TLabel
    Left = 289
    Top = 39
    Width = 64
    Height = 15
    Caption = 'Super Client'
  end
  object dblblTaxNo: TcxDBLabel
    Left = 144
    Top = 137
    DataBinding.DataField = 'ACN'
    DataBinding.DataSource = dsClients
    ParentColor = False
    ParentFont = False
    Properties.ShowAccelChar = False
    Style.HotTrack = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Height = 18
    Width = 176
  end
  object dblblGenderDescr: TcxDBLabel
    Left = 144
    Top = 113
    DataBinding.DataField = 'DESCR'
    DataBinding.DataSource = dsGender
    ParentColor = False
    ParentFont = False
    Properties.ShowAccelChar = False
    Style.HotTrack = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Height = 18
    Width = 176
  end
  object dblblContact: TcxDBLabel
    Left = 144
    Top = 89
    DataBinding.DataField = 'CONTACT'
    DataBinding.DataSource = dsClients
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    Properties.ShowAccelChar = False
    ShowHint = True
    Style.HotTrack = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    OnMouseEnter = dblblContactMouseEnter
    Height = 17
    Width = 176
  end
  object dblblName: TcxDBLabel
    Left = 144
    Top = 63
    DataBinding.DataField = 'NAME'
    DataBinding.DataSource = dsClients
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    Properties.ShowAccelChar = False
    ShowHint = True
    Style.HotTrack = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    OnMouseEnter = dblblNameMouseEnter
    Height = 18
    Width = 176
  end
  object dblblCode: TcxDBLabel
    Left = 144
    Top = 39
    DataBinding.DataField = 'CODE'
    DataBinding.DataSource = dsClients
    ParentColor = False
    ParentFont = False
    Properties.ShowAccelChar = False
    Style.HotTrack = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Height = 18
    Width = 132
  end
  object dblblClientNumber: TcxDBLabel
    Left = 678
    Top = 89
    DataBinding.DataField = 'NCLIENT'
    DataBinding.DataSource = dsClients
    ParentColor = False
    ParentFont = False
    Properties.ShowAccelChar = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Visible = False
    Height = 17
    Width = 72
  end
  object lblIntroduced: TcxLabel
    Left = 428
    Top = 63
    AutoSize = False
    ParentColor = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Properties.ShowAccelChar = False
    Height = 18
    Width = 165
  end
  object dbtbPartner: TcxDBLabel
    Left = 428
    Top = 89
    DataBinding.DataField = 'PARTNER'
    DataBinding.DataSource = dsClients
    ParentColor = False
    ParentFont = False
    Properties.ShowAccelChar = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Height = 17
    Width = 165
  end
  object dblblMatters: TcxDBLabel
    Left = 428
    Top = 113
    DataBinding.DataField = 'MATTERS'
    DataBinding.DataSource = dsMatterCount
    ParentColor = False
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ShowAccelChar = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Height = 18
    Width = 66
    AnchorX = 494
  end
  object dblblArchived: TcxDBLabel
    Left = 428
    Top = 137
    DataBinding.DataField = 'ARCHIVES'
    DataBinding.DataSource = dsArchMatterCount
    ParentColor = False
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ShowAccelChar = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Height = 18
    Width = 66
    AnchorX = 494
  end
  object dblblClientPack: TcxDBLabel
    Left = 661
    Top = 39
    DataBinding.DataField = 'DISP_CLIENT_PACK'
    DataBinding.DataSource = dsClients
    ParentColor = False
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Properties.ShowAccelChar = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Visible = False
    Height = 18
    Width = 151
  end
  object pnlDOB: TPanel
    Left = 617
    Top = 63
    Width = 202
    Height = 24
    BevelOuter = bvNone
    TabOrder = 11
    object Label51: TLabel
      Left = 8
      Top = 2
      Width = 48
      Height = 15
      Caption = 'Birthdate'
      Transparent = True
    end
    object cxDBLabel1: TcxDBLabel
      Left = 61
      Top = 2
      DataBinding.DataField = 'DOB'
      DataBinding.DataSource = dsClients
      ParentColor = False
      ParentFont = False
      Properties.ShowAccelChar = False
      Style.Color = clBtnFace
      Style.StyleController = dmAxiom.LabelStyle
      Style.TextColor = clBlue
      StyleHot.BorderStyle = ebsFlat
      Height = 18
      Width = 134
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 825
    Top = 30
    Caption = 'Image ID'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Transparent = True
    Height = 131
    Width = 161
    object imgClientID: TcxDBImage
      Left = 2
      Top = 20
      Hint = 'Client Image ID'
      Align = alClient
      AutoSize = True
      DataBinding.DataField = 'CLIENT_IMAGE'
      DataBinding.DataSource = dsClients
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = imgClientIDClick
      Height = 109
      Width = 157
    end
  end
  object pagDetails: TcxPageControl
    Left = 0
    Top = 161
    Width = 1087
    Height = 495
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 17
    Properties.ActivePage = tabMatters
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    OnChange = pagDetailsChange
    ClientRectBottom = 491
    ClientRectLeft = 4
    ClientRectRight = 1083
    ClientRectTop = 26
    object tabMatters: TcxTabSheet
      Caption = 'Matters'
      ImageIndex = 0
      DesignSize = (
        1079
        465)
      object Label3: TLabel
        Left = 5
        Top = 429
        Width = 26
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Filter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExplicitTop = 432
      end
      object Label23: TLabel
        Left = 530
        Top = 444
        Width = 79
        Height = 15
        Anchors = [akLeft, akBottom]
        Caption = 'Matter Search  '
        Transparent = True
        Layout = tlCenter
        ExplicitTop = 447
      end
      object edSearch: TcxTextEdit
        Left = 612
        Top = 440
        Hint = 'Type in a matter number to search for a matching matter.'
        Anchors = [akLeft, akBottom]
        ParentFont = False
        ParentShowHint = False
        Properties.OnChange = edSearchChange
        ShowHint = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnKeyPress = edSearchKeyPress
        Width = 107
      end
      object dbgrMatters: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 428
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object tvMatters: TcxGridDBTableView
          OnDblClick = dbgrMattersDblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = dbgrMattersDBTableView1CellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsMatters
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          OnColumnHeaderClick = tvMattersColumnHeaderClick
          object cxGridDBFILEID: TcxGridDBColumn
            Caption = 'Matter #'
            DataBinding.FieldName = 'FILEID'
            Width = 52
          end
          object cxGridDBSHORTDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'SHORTDESCR'
            Width = 120
          end
          object cxGridDBOPENED: TcxGridDBColumn
            Caption = 'Opened'
            DataBinding.FieldName = 'OPENED'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ShowTime = False
            Width = 99
          end
          object cxGridDBPARTNER: TcxGridDBColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'PARTNER'
            Width = 68
          end
          object cxGridDBAUTHOR: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTHOR'
            Width = 65
          end
          object cxGridDBTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            Width = 59
          end
          object tvMattersARCHIVENUM: TcxGridDBColumn
            Caption = 'Archive No'
            DataBinding.FieldName = 'ARCHIVENUM'
            Width = 46
          end
          object tvMattersColumn1: TcxGridDBColumn
            Caption = 'Archive Box'
            DataBinding.FieldName = 'ARCHIVEBOX'
            Width = 57
          end
          object tvMattersMATTER_STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'MATTER_STATUS'
            Width = 46
          end
          object tvMattersUNBILL_FEES_NO_GST: TcxGridDBColumn
            Caption = 'WIP'
            DataBinding.FieldName = 'UNBILL_FEES_NO_GST'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 48
          end
          object tvMattersUNBILL_DISB_NO_GST: TcxGridDBColumn
            Caption = 'Unbilled Disb'
            DataBinding.FieldName = 'UNBILL_DISB_NO_GST'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 48
          end
          object tvMattersUNBILL_ANTD_NO_GST: TcxGridDBColumn
            Caption = 'Unbilled Anticipateds'
            DataBinding.FieldName = 'UNBILL_ANTD_NO_GST'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 47
          end
          object tvMattersUNCON_CHEQREQ: TcxGridDBColumn
            Caption = 'Unconverted CheqReq'
            DataBinding.FieldName = 'UNCON_CHEQREQ'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 60
          end
          object tvMattersUNBILL_SUND_NO_GST: TcxGridDBColumn
            Caption = 'Sundries'
            DataBinding.FieldName = 'UNBILL_SUND_NO_GST'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 47
          end
          object tvMattersDEBTORS: TcxGridDBColumn
            Caption = 'Debtors'
            DataBinding.FieldName = 'DEBTORS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 44
          end
          object tvMattersCREDITORS: TcxGridDBColumn
            Caption = 'Creditors'
            DataBinding.FieldName = 'CREDITORS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 45
          end
          object tvMattersBILL_FEES: TcxGridDBColumn
            Caption = 'Billed Fees'
            DataBinding.FieldName = 'BILL_FEES'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 47
          end
          object tvMattersCL_TRUST_BAL: TcxGridDBColumn
            Caption = 'Trust'
            DataBinding.FieldName = 'CL_TRUST_BAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 45
          end
          object tvMattersINVESTMENT_BALANCE: TcxGridDBColumn
            Caption = 'Controlled Monies'
            DataBinding.FieldName = 'INVESTMENT_BALANCE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Width = 54
          end
          object tvMattersROW_COLOUR: TcxGridDBColumn
            DataBinding.FieldName = 'ROW_COLOUR'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object lvMatters: TcxGridLevel
          GridView = tvMatters
        end
      end
      object rbAllMatters: TcxRadioButton
        Left = 145
        Top = 443
        Width = 82
        Height = 18
        Anchors = [akLeft, akBottom]
        Caption = 'All Matters'
        TabOrder = 2
        OnClick = clickMatterFilter
        LookAndFeel.NativeStyle = True
      end
      object rbOpenMatters: TcxRadioButton
        Left = 6
        Top = 443
        Width = 122
        Height = 18
        Anchors = [akLeft, akBottom]
        Caption = 'Open Matters Only'
        Checked = True
        TabOrder = 3
        TabStop = True
        OnClick = clickMatterFilter
        LookAndFeel.NativeStyle = True
      end
      object rbClosedMatters: TcxRadioButton
        Left = 245
        Top = 443
        Width = 121
        Height = 18
        Anchors = [akLeft, akBottom]
        Caption = 'Closed Matters Only'
        TabOrder = 4
        OnClick = clickMatterFilter
        LookAndFeel.NativeStyle = True
      end
      object btnExportReceiptsToExcel: TcxButton
        Left = 861
        Top = 440
        Width = 95
        Height = 24
        Anchors = [akRight, akBottom]
        Caption = 'Export to Excel'
        LookAndFeel.NativeStyle = True
        OptionsImage.Spacing = 5
        TabOrder = 5
        OnClick = btnExportReceiptsToExcelClick
      end
      object cxButton1: TcxButton
        Left = 963
        Top = 440
        Width = 111
        Height = 24
        Anchors = [akRight, akBottom]
        Caption = 'Print Matter List'
        OptionsImage.Spacing = 5
        TabOrder = 6
        OnClick = cxButton1Click
      end
      object chkCurrentEntity: TCheckBox
        Left = 389
        Top = 443
        Width = 118
        Height = 18
        Hint = 'Display Matters for Current Entity Only'
        Anchors = [akLeft, akBottom]
        Caption = 'Current Entity Only'
        Checked = True
        State = cbChecked
        TabOrder = 7
        OnClick = chkCurrentEntityClick
      end
    end
    object tabArchive: TcxTabSheet
      Caption = 'Archive'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgrArchived: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 465
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvArchived: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsArchived
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tvArchivedNARCHIVE: TcxGridDBColumn
            Caption = 'Archive #'
            DataBinding.FieldName = 'NARCHIVE'
            HeaderAlignmentHorz = taRightJustify
          end
          object tvArchivedFILEID: TcxGridDBColumn
            Caption = 'Matter #'
            DataBinding.FieldName = 'FILEID'
            Width = 60
          end
          object tvArchivedSHORTDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'SHORTDESCR'
            Width = 200
          end
          object tvArchivedARCHIVED: TcxGridDBColumn
            Caption = 'Archived'
            DataBinding.FieldName = 'ARCHIVED'
            Width = 60
          end
          object tvArchivedPARTNER: TcxGridDBColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'PARTNER'
          end
          object tvArchivedAUTHOR: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTHOR'
            Width = 38
          end
          object tvArchivedTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            Width = 30
          end
        end
        object lvArchived: TcxGridLevel
          GridView = tvArchived
        end
      end
    end
    object tabBalances: TcxTabSheet
      Caption = 'Balances'
      ImageIndex = 2
      object Label24: TLabel
        Left = 9
        Top = 20
        Width = 89
        Height = 15
        Caption = 'Work in Progress'
        Transparent = True
      end
      object Label26: TLabel
        Left = 9
        Top = 45
        Width = 125
        Height = 15
        Caption = 'Unbilled Disbursements'
        Transparent = True
      end
      object Label39: TLabel
        Left = 9
        Top = 70
        Width = 41
        Height = 15
        Caption = 'Debtors'
        Transparent = True
      end
      object Label40: TLabel
        Left = 9
        Top = 93
        Width = 55
        Height = 15
        Caption = 'Billed Fees'
        Transparent = True
      end
      object lblTotalTrustCaption: TLabel
        Left = 9
        Top = 117
        Width = 95
        Height = 15
        Caption = 'Total Trust Monies'
        Transparent = True
      end
      object Label44: TLabel
        Left = 9
        Top = 141
        Width = 110
        Height = 15
        Caption = 'Cleared Trust Monies'
        Transparent = True
      end
      object Label45: TLabel
        Left = 284
        Top = 20
        Width = 55
        Height = 15
        Caption = 'Introducer'
        Transparent = True
      end
      object Label46: TLabel
        Left = 284
        Top = 45
        Width = 44
        Height = 15
        Caption = 'Fee Rate'
        Transparent = True
      end
      object cxGrid2: TcxGrid
        Left = 10
        Top = 175
        Width = 799
        Height = 86
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'ADJ0'
              Column = cxGrid2DBTableView1ADJ0
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'ADJ1'
              Column = cxGrid2DBTableView1ADJ1
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'ADJ2'
              Column = cxGrid2DBTableView1ADJ2
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'ADJ3'
              Column = cxGrid2DBTableView1ADJ3
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'ADJ10'
              Column = cxGrid2DBTableView1ADJ10
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          object cxGrid2DBTableView1COL_TITLE: TcxGridDBColumn
            DataBinding.FieldName = 'COL_TITLE'
            HeaderAlignmentHorz = taCenter
            Width = 128
            IsCaptionAssigned = True
          end
          object cxGrid2DBTableView1ADJ0: TcxGridDBColumn
            Caption = 'Current'
            DataBinding.FieldName = 'ADJ0'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrid2DBTableView1ADJ1: TcxGridDBColumn
            Caption = '30 Days'
            DataBinding.FieldName = 'ADJ1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrid2DBTableView1ADJ2: TcxGridDBColumn
            Caption = '60 Days'
            DataBinding.FieldName = 'ADJ2'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrid2DBTableView1ADJ3: TcxGridDBColumn
            Caption = '90 Days'
            DataBinding.FieldName = 'ADJ3'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrid2DBTableView1ADJ10: TcxGridDBColumn
            Caption = '120+ Days'
            DataBinding.FieldName = 'ADJ10'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrid2DBTableView1AMOUNT: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 66
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 284
        Top = 63
        Caption = 'Exposure'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 96
        Width = 223
        object Label47: TLabel
          Left = 11
          Top = 21
          Width = 53
          Height = 15
          Caption = 'Fees Limit'
          Transparent = True
        end
        object Label48: TLabel
          Left = 10
          Top = 47
          Width = 103
          Height = 15
          Caption = 'Disbursement Limit'
          Transparent = True
        end
        object Label49: TLabel
          Left = 10
          Top = 74
          Width = 55
          Height = 15
          Caption = 'Total Limit'
          Transparent = True
        end
        object cxDBLabel12: TcxDBLabel
          Left = 110
          Top = 20
          DataBinding.DataField = 'BUDGET_FEES'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.StyleController = dmAxiom.LabelStyle
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsFlat
          Height = 18
          Width = 105
          AnchorX = 215
        end
        object cxDBLabel13: TcxDBLabel
          Left = 111
          Top = 45
          DataBinding.DataField = 'BUDGET_DISB'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.StyleController = dmAxiom.LabelStyle
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsFlat
          Height = 18
          Width = 104
          AnchorX = 215
        end
        object cxDBLabel14: TcxDBLabel
          Left = 111
          Top = 71
          DataBinding.DataField = 'BUDGET_TOTAL'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.StyleController = dmAxiom.LabelStyle
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsFlat
          Height = 18
          Width = 104
          AnchorX = 215
        end
      end
      object dblblClearTrust: TcxDBLabel
        Left = 134
        Top = 140
        DataBinding.DataField = 'CL_TRUST_BAL'
        DataBinding.DataSource = dsClientBalances
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 18
        Width = 135
        AnchorX = 269
      end
      object dblblDebtors: TcxDBLabel
        Left = 134
        Top = 68
        DataBinding.DataField = 'DEBTORS'
        DataBinding.DataSource = dsClientBalances
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 18
        Width = 135
        AnchorX = 269
      end
      object dblblFeeCode: TcxDBLabel
        Left = 350
        Top = 44
        DataBinding.DataField = 'FEECODE'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 17
        Width = 157
      end
      object dblblFees: TcxDBLabel
        Left = 134
        Top = 91
        DataBinding.DataField = 'BILL_FEES'
        DataBinding.DataSource = dsClientBalances
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 19
        Width = 135
        AnchorX = 269
      end
      object dblblIntroducer: TcxDBLabel
        Left = 350
        Top = 18
        DataBinding.DataField = 'INTRODUCER'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 18
        Width = 157
      end
      object dblblTrust: TcxDBLabel
        Left = 134
        Top = 115
        DataBinding.DataField = 'TRUST_BAL'
        DataBinding.DataSource = dsClientBalances
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 19
        Width = 135
        AnchorX = 269
      end
      object dblblUnbillDisb: TcxDBLabel
        Left = 134
        Top = 44
        DataBinding.DataField = 'UNBILL_DISB'
        DataBinding.DataSource = dsClientBalances
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 17
        Width = 135
        AnchorX = 269
      end
      object dblblWIP: TcxDBLabel
        Left = 134
        Top = 18
        DataBinding.DataField = 'UNBILL_FEES'
        DataBinding.DataSource = dsClientBalances
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 18
        Width = 135
        AnchorX = 269
      end
    end
    object tabAddress: TcxTabSheet
      Caption = 'Address'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label52: TLabel
        Left = 318
        Top = 9
        Width = 65
        Height = 15
        Caption = 'Work Phone'
        Transparent = True
      end
      object Label53: TLabel
        Left = 318
        Top = 35
        Width = 37
        Height = 15
        Caption = 'Mobile'
        Transparent = True
      end
      object Label54: TLabel
        Left = 318
        Top = 60
        Width = 49
        Height = 15
        Caption = 'Facsimile'
        Transparent = True
      end
      object Label1: TLabel
        Left = 12
        Top = 284
        Width = 43
        Height = 15
        Alignment = taRightJustify
        Caption = 'E-Mail 1'
        Transparent = True
      end
      object Label2: TLabel
        Left = 12
        Top = 309
        Width = 43
        Height = 15
        Alignment = taRightJustify
        Caption = 'E-Mail 2'
        Transparent = True
      end
      object Label50: TLabel
        Left = 14
        Top = 9
        Width = 54
        Height = 15
        Caption = 'Key Name'
        Transparent = True
      end
      object Label55: TLabel
        Left = 318
        Top = 85
        Width = 70
        Height = 15
        Caption = 'Home Phone'
        Transparent = True
      end
      object Label62: TLabel
        Left = 11
        Top = 256
        Width = 34
        Height = 15
        Alignment = taRightJustify
        Caption = 'E-Mail'
        Transparent = True
      end
      object Label66: TLabel
        Left = 14
        Top = 60
        Width = 43
        Height = 15
        Caption = 'Position'
        Transparent = True
      end
      object Label67: TLabel
        Left = 14
        Top = 35
        Width = 32
        Height = 15
        Caption = 'Name'
        Transparent = True
      end
      object Label58: TLabel
        Left = 318
        Top = 111
        Width = 43
        Height = 15
        Caption = 'Country'
        Transparent = True
      end
      object Label59: TLabel
        Left = 318
        Top = 135
        Width = 31
        Height = 15
        Caption = 'Notes'
        Transparent = True
      end
      object Label61: TLabel
        Left = 379
        Top = 260
        Width = 46
        Height = 15
        Alignment = taRightJustify
        Caption = 'Web Site'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 74
        Top = 30
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 229
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 74
        Top = 56
        DataBinding.DataField = 'OCCUPATION'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 229
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 395
        Top = 107
        AutoSize = False
        DataBinding.DataField = 'COUNTRY'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 23
        Width = 165
      end
      object cxDBButtonEdit1: TcxDBButtonEdit
        Left = 74
        Top = 280
        DataBinding.DataField = 'EMAIL1'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00808080FF808080FFFF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
              00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
              00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 288
      end
      object cxDBButtonEdit2: TcxDBButtonEdit
        Left = 74
        Top = 305
        DataBinding.DataField = 'EMAIL2'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00808080FF808080FFFF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
              00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
              00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Width = 288
      end
      object dbtbSearchkey: TcxDBTextEdit
        Left = 74
        Top = 5
        DataBinding.DataField = 'SEARCH'
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 229
      end
      object ePhoneHome: TcxDBTextEdit
        Left = 395
        Top = 81
        AutoSize = False
        DataBinding.DataField = 'HOMEPHONE'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 6
        Height = 23
        Width = 165
      end
      object ePhoneMobile: TcxDBTextEdit
        Left = 395
        Top = 30
        AutoSize = False
        DataBinding.DataField = 'MOBILE'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 7
        Height = 23
        Width = 165
      end
      object ePhoneWork: TcxDBTextEdit
        Left = 395
        Top = 5
        AutoSize = False
        DataBinding.DataField = 'WORKPHONE'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 8
        Height = 22
        Width = 165
      end
      object eInternetEMail: TcxDBButtonEdit
        Left = 74
        Top = 254
        DataBinding.DataField = 'EMAIL'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00808080FF808080FFFF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
              00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
              00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FF808080FF808080FFFF00
              FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
              FF00808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
              80FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Width = 288
      end
      object eInternetWWW: TcxDBButtonEdit
        Left = 438
        Top = 254
        DataBinding.DataField = 'WWW'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00C040
              40FFC04040FFC04040FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C04040FF8060
              00FFFF00FF00FF00FF00804000FF000000FF800000FFC04040FF806040FF8060
              00FF806000FFFF00FF00FF00FF00FF00FF00FF00FF00808080FFC04040FFFF00
              FF00FF00FF00000000FF000000FFC04040FF806040FF806040FFC06000FFC060
              40FFC06040FF806000FF806000FFFF00FF00FF00FF00406060FFC04040FFFF00
              FF00804040FF804040FFC04040FF806040FFC06040FFC06000FFC06040FFC060
              40FFC06040FFC06040FFC06040FF806000FFFF00FF00406060FFC06040FF8040
              00FF800000FFC04040FF806040FFC06040FFC06000FFFF00FF00FF00FF00C040
              40FFC06040FFC06040FFC06040FFC06040FF806000FF406060FF80A0A0FFC060
              40FF804040FF806040FFC06000FFC06040FFFF00FF00FF00FF00FF00FF00FF00
              FF00C04040FFC06040FFC06040FFC06040FF806000FF808080FF80A0C0FFC060
              40FFC04040FF806040FFC06040FFC06000FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00808080FF80C0C0FF80A0
              C0FFC06040FF806040FFC06040FFC06000FFC06000FFC06000FFC06000FFC060
              00FFC06000FFC06000FFC06000FFC06000FFC06000FFFF00FF00808080FF80C0
              C0FFC06060FFC06040FFC06040FFC06040FFC06040FFC06040FFC0A040FFC0A0
              40FFC0A000FFC0A000FFC0A000FFC0A000FFC06000FFFF00FF00C04040FF80A0
              A0FF80C0E0FFC06040FFC06040FFC06000FFFF00FF00FF00FF00FF00FF00FF00
              FF00C04040FFF0CAA6FFFFFF00FFC0A000FFC06000FFFF00FF00FF00FF008040
              40FF80A060FF80E0E0FFC06040FFC06000FFC06000FFFF00FF00FF00FF00C040
              40FFC0A040FFF0CAA6FFF0CAA6FFC06000FFFF00FF00FF00FF00FF00FF00C040
              40FF804040FF80A060FFC0C0C0FFC06000FFC06000FFC04040FFC04040FFC060
              00FFFFFF00FFF0CAA6FFC0A000FFC06000FFFF00FF00FF00FF00FF00FF00FF00
              FF00C04040FFC06000FFC0A060FFC0C0A0FFC06000FFC06000FFC0A040FFC0A0
              00FFC0A040FFC0A000FFC06000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00C06000FFC06000FFC06040FFC06040FFC06040FFC06040FFC0A0
              40FFC0A000FFC06000FFFF00FF00FF00FF00C06040FFFF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00C06000FFC06000FFC06000FFC06000FFC060
              00FFC06000FFFF00FF00FF00FF00FF00FF00C06000FFFF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00C06000FFC06000FFC06000FFC06000FFFF00FF00}
            Kind = bkGlyph
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = eInternetWWWPropertiesButtonClick
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 10
        Width = 288
      end
      object ePhoneFax: TcxDBTextEdit
        Left = 395
        Top = 56
        AutoSize = False
        DataBinding.DataField = 'FAX'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        TabOrder = 11
        Height = 22
        Width = 165
      end
      object pageClientAddresses: TcxPageControl
        Left = 1
        Top = 81
        Width = 313
        Height = 165
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        Properties.ActivePage = tsCustomAddress
        Properties.CustomButtons.Buttons = <>
        OnDrawTabEx = pageClientAddressesDrawTabEx
        ClientRectBottom = 161
        ClientRectLeft = 4
        ClientRectRight = 309
        ClientRectTop = 24
        object tsStreetAddress: TcxTabSheet
          Caption = 'Street Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImageIndex = 0
          ParentFont = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label6: TLabel
            Left = 32
            Top = 113
            Width = 41
            Height = 13
            Caption = 'Country'
            Transparent = True
          end
          object lblState: TLabel
            Left = 45
            Top = 87
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'State'
            Transparent = True
          end
          object Label64: TLabel
            Left = 2
            Top = 60
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Town/Suburb'
            Transparent = True
          end
          object Label65: TLabel
            Left = 29
            Top = 5
            Width = 41
            Height = 13
            Caption = 'Address'
            Transparent = True
          end
          object Label68: TLabel
            Left = 186
            Top = 87
            Width = 47
            Height = 13
            Caption = 'Postcode'
            Transparent = True
          end
          object eStreetCountry: TcxDBLabel
            Left = 78
            Top = 111
            DataBinding.DataField = 'COUNTRY'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            Height = 23
            Width = 224
          end
          object eStreetPostCode: TcxDBTextEdit
            Left = 239
            Top = 85
            AutoSize = False
            DataBinding.DataField = 'POSTCODE'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 22
            Width = 63
          end
          object eStreetState: TcxDBTextEdit
            Left = 78
            Top = 85
            AutoSize = False
            DataBinding.DataField = 'STATE'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 22
            Width = 101
          end
          object eStreetSuburb: TcxDBTextEdit
            Left = 78
            Top = 57
            AutoSize = False
            DataBinding.DataField = 'SUBURB'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 23
            Width = 224
          end
          object mStreetAddress: TcxDBMemo
            Left = 78
            Top = 5
            DataBinding.DataField = 'ADDRESS'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 4
            Height = 48
            Width = 224
          end
        end
        object tsPostalAddress: TcxTabSheet
          Caption = 'Postal Address'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label10: TLabel
            Left = 32
            Top = 113
            Width = 41
            Height = 13
            Caption = 'Country'
            Transparent = True
          end
          object lblPostalState: TLabel
            Left = 45
            Top = 87
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'State'
            Transparent = True
          end
          object Label7: TLabel
            Left = 29
            Top = 5
            Width = 41
            Height = 13
            Caption = 'Address'
            Transparent = True
          end
          object Label8: TLabel
            Left = 2
            Top = 60
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Town/Suburb'
            Transparent = True
          end
          object Label9: TLabel
            Left = 186
            Top = 87
            Width = 47
            Height = 13
            Caption = 'Postcode'
            Transparent = True
          end
          object ePostalCountry: TcxDBLabel
            Left = 78
            Top = 111
            DataBinding.DataField = 'POSTALCOUNTRY'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            StyleDisabled.TextColor = clBlue
            Height = 23
            Width = 224
          end
          object ePostalPostCode: TcxDBTextEdit
            Left = 239
            Top = 85
            AutoSize = False
            DataBinding.DataField = 'POSTALPOSTCODE'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            StyleDisabled.TextColor = clBlue
            TabOrder = 1
            Height = 22
            Width = 63
          end
          object ePostalState: TcxDBTextEdit
            Left = 78
            Top = 85
            AutoSize = False
            DataBinding.DataField = 'POSTALSTATE'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            StyleDisabled.TextColor = clBlue
            TabOrder = 2
            Height = 22
            Width = 101
          end
          object ePostalSuburb: TcxDBTextEdit
            Left = 78
            Top = 57
            AutoSize = False
            DataBinding.DataField = 'POSTALSUBURB'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            StyleDisabled.TextColor = clBlue
            TabOrder = 3
            Height = 23
            Width = 224
          end
          object mPostalAddress: TcxDBMemo
            Left = 78
            Top = 5
            DataBinding.DataField = 'POSTALADDRESS'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            StyleDisabled.TextColor = clBlue
            TabOrder = 4
            Height = 49
            Width = 224
          end
        end
        object tsCustomAddress: TcxTabSheet
          Caption = 'Custom Address'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label12: TLabel
            Left = 29
            Top = 5
            Width = 41
            Height = 13
            Caption = 'Address'
            Transparent = True
          end
          object Label13: TLabel
            Left = 2
            Top = 59
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Town/Suburb'
            Transparent = True
          end
          object lblCustomState: TLabel
            Left = 45
            Top = 86
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'State'
            Transparent = True
          end
          object Label15: TLabel
            Left = 182
            Top = 86
            Width = 47
            Height = 13
            Caption = 'Postcode'
            Transparent = True
          end
          object Label16: TLabel
            Left = 32
            Top = 111
            Width = 41
            Height = 13
            Caption = 'Country'
            Transparent = True
          end
          object eCustomCountry: TcxDBLabel
            Left = 78
            Top = 110
            DataBinding.DataField = 'CUST_COUNTRY'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            Height = 21
            Width = 224
          end
          object eCustomPostCode: TcxDBTextEdit
            Left = 239
            Top = 83
            AutoSize = False
            DataBinding.DataField = 'CUST_POSTCODE'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 21
            Width = 63
          end
          object eCustomState: TcxDBTextEdit
            Left = 78
            Top = 83
            AutoSize = False
            DataBinding.DataField = 'CUST_STATE'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 21
            Width = 97
          end
          object eCustomSuburb: TcxDBTextEdit
            Left = 78
            Top = 56
            AutoSize = False
            DataBinding.DataField = 'CUST_SUBURB'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 22
            Width = 224
          end
          object mCustomAddress: TcxDBMemo
            Left = 78
            Top = 5
            DataBinding.DataField = 'CUST_ADDRESS'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 4
            Height = 48
            Width = 224
          end
        end
        object tsDX: TcxTabSheet
          Caption = 'DX'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label56: TLabel
            Left = 55
            Top = 5
            Width = 14
            Height = 13
            Caption = 'DX'
            Transparent = True
          end
          object Label57: TLabel
            Left = 8
            Top = 38
            Width = 61
            Height = 13
            Caption = 'DX Location'
            Transparent = True
          end
          object eDXAddress: TcxDBTextEdit
            Left = 84
            Top = 2
            AutoSize = False
            DataBinding.DataField = 'DX'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 23
            Width = 164
          end
          object eDXLocation: TcxDBTextEdit
            Left = 84
            Top = 35
            AutoSize = False
            DataBinding.DataField = 'DXLOC'
            DataBinding.DataSource = dsPhoneBook
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.StyleController = dmAxiom.LabelStyle
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 24
            Width = 164
          end
        end
      end
      object cxDBRichEdit1: TcxDBRichEdit
        Left = 318
        Top = 151
        DataBinding.DataField = 'NOTE'
        DataBinding.DataSource = dsPhoneBook
        ParentFont = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.StyleController = dmAxiom.LabelStyle
        TabOrder = 13
        Height = 93
        Width = 242
      end
    end
    object tabClientGroups: TcxTabSheet
      Caption = 'Client Groups'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pagClientGroups: TcxPageControl
        Left = 0
        Top = 0
        Width = 1079
        Height = 465
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tabCurrentGroups
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 461
        ClientRectLeft = 4
        ClientRectRight = 1075
        ClientRectTop = 26
        object tabCurrentGroups: TcxTabSheet
          Caption = 'Client Groups'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdClientGroups: TcxGrid
            Left = 0
            Top = 0
            Width = 1071
            Height = 435
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            object grdClientGroupsDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsGroups
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object grdClientGroupsDBTableView1DBColumn1: TcxGridDBColumn
                Caption = 'Groups'
                DataBinding.FieldName = 'CATEGORY'
              end
            end
            object grdClientGroupsLevel1: TcxGridLevel
              GridView = grdClientGroupsDBTableView1
            end
          end
        end
        object tabAllGroups: TcxTabSheet
          Caption = 'Groups'
          ImageIndex = 1
          OnShow = tabAllGroupsShow
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            1071
            435)
          object btnGroupAdd: TcxButton
            Left = 182
            Top = 2
            Width = 81
            Height = 25
            Caption = 'Add Group'
            LookAndFeel.NativeStyle = True
            OptionsImage.Spacing = 5
            TabOrder = 0
            OnClick = btnGroupAddClick
          end
          object clbGroups: TcxCheckListBox
            Left = 10
            Top = 35
            Width = 854
            Height = 385
            Anchors = [akLeft, akTop, akRight, akBottom]
            EditValueFormat = cvfStatesString
            Items = <
              item
              end>
            Sorted = True
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnClickCheck = clbGroupsClickCheck
          end
          object tbGroup: TcxTextEdit
            Left = 10
            Top = 5
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyPress = tbGroupKeyPress
            Width = 167
          end
        end
      end
    end
    object tabRelationships: TcxTabSheet
      Caption = 'Relationships'
      ImageIndex = 5
      OnShow = tabRelationshipsShow
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 437
        Width = 1079
        Height = 28
        Align = dalBottom
        BarManager = dxBarManager1
      end
      object dbgrRelationship: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 437
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object tvRelationship: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRelationships
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideSelection = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tvRelationshipNCHILD: TcxGridDBColumn
            DataBinding.FieldName = 'NCHILD'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = True
            Visible = False
            Width = 20
          end
          object tvRelationshipRELATIONSHIP: TcxGridDBColumn
            Caption = 'Relationship'
            DataBinding.FieldName = 'RELATIONSHIP'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Width = 186
          end
          object tvRelationshipBACKWARD: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'BACKWARD'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Width = 479
          end
          object tvRelationshipDBColumn1: TcxGridDBColumn
            Caption = 'Address'
            DataBinding.FieldName = 'ADDRESS'
            Width = 337
          end
        end
        object dbgrRelationshipLevel1: TcxGridLevel
          GridView = tvRelationship
        end
      end
    end
    object tsCustomData: TcxTabSheet
      Caption = 'Custom Data'
      ImageIndex = 6
      OnShow = tsCustomDataShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object vtCustomData: TVirtualStringTree
        Left = 0
        Top = 0
        Width = 1079
        Height = 465
        Align = alClient
        ButtonStyle = bsTriangle
        Color = clInfoBk
        Colors.UnfocusedColor = clMedGray
        DefaultNodeHeight = 20
        Header.AutoSizeIndex = -1
        Header.Options = [hoAutoResize, hoVisible]
        Header.Style = hsPlates
        LineMode = lmBands
        TabOrder = 0
        TreeOptions.AnimationOptions = [toAnimatedToggle]
        TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoSpanColumns, toAutoTristateTracking, toAutoDeleteMovedNodes]
        TreeOptions.MiscOptions = [toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning]
        TreeOptions.PaintOptions = [toHideFocusRect, toHideSelection, toShowButtons, toShowDropmark, toUseBlendedImages]
        TreeOptions.SelectionOptions = [toDisableDrawSelection, toExtendedFocus]
        OnGetText = vtCustomDataGetText
        OnPaintText = vtCustomDataPaintText
        OnGetNodeDataSize = vtCustomDataGetNodeDataSize
        Columns = <
          item
            Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible]
            Position = 0
            Text = 'Group/Field'
            Width = 280
          end
          item
            Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible]
            Position = 1
            Text = 'Value'
            Width = 799
          end>
      end
    end
    object tabDiary: TcxTabSheet
      Caption = 'Diary'
      ImageIndex = 7
      object cbShowMatterDiary: TCheckBox
        Left = 164
        Top = 36
        Width = 154
        Height = 19
        Caption = 'Show Matter Diary Entries'
        TabOrder = 0
        OnClick = cbShowMatterDiaryClick
      end
      object dbgContactNotes: TcxGrid
        Left = 0
        Top = 23
        Width = 1079
        Height = 442
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object tvContactNotes: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Hint = 'New Entry'
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Delete.Hint = 'Delete'
          Navigator.Buttons.Edit.Hint = 'Edit'
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Cancel.Hint = 'Cancel'
          Navigator.Buttons.Refresh.Hint = 'Refresh'
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsContactNotes
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.CellTextMaxLineCount = 5
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object tvContactNotesCREATION_DATE: TcxGridDBColumn
            Caption = 'Create Date'
            DataBinding.FieldName = 'CREATION_DATE'
            Width = 90
          end
          object tvContactNotesSTART_DT: TcxGridDBColumn
            Caption = 'Start Date'
            DataBinding.FieldName = 'START_DT'
            Width = 85
          end
          object tvContactNotesENTEREDBY: TcxGridDBColumn
            Caption = 'By'
            DataBinding.FieldName = 'ENTEREDBY'
            Width = 100
          end
          object tvContactNotesDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            Width = 675
          end
        end
        object dbgContactNotesLevel1: TcxGridLevel
          GridView = tvContactNotes
        end
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1079
        Height = 23
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object tabNotes: TcxTabSheet
      Caption = 'Notes'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        1079
        465)
      object btnNotesDelete: TcxButton
        Left = 8
        Top = 440
        Width = 81
        Height = 26
        Anchors = [akLeft, akBottom]
        Caption = 'Delete'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360800000000000036000000280000002000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000FFFFFFFF0080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000000000FFFFFFFFFF0080800000808000008080000080
          800000808000FFFFFFFF00808000008080000080800000808000008080000080
          80000080800000808000808080FF008080000080800000808000008080000080
          8000000000FFFFFFFFFF00808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000808080FFFFFFFFFFFFFFFFFF008080000080800000808000008080000080
          80000080800000808000FFFFFFFF008080000080800000808000008080000000
          00FF000000FF000000FFFFFFFFFF008080000080800000808000008080000080
          800000808000000000FFFFFFFFFF008080000080800000808000008080008080
          80FF808080FF808080FFFFFFFFFF008080000080800000808000008080000080
          800000808000808080FF00808000008080000080800000808000008080000000
          00FF000000FF000000FFFFFFFFFF008080000080800000808000008080000080
          8000000000FFFFFFFFFF00808000008080000080800000808000008080008080
          80FF808080FF808080FFFFFFFFFFFFFFFFFF0080800000808000008080000080
          8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
          8000000000FF000000FF000000FFFFFFFFFF0080800000808000008080000000
          00FF000000FFFFFFFFFF00808000008080000080800000808000008080000080
          8000808080FF808080FF808080FFFFFFFFFFFFFFFFFF00808000008080008080
          80FF808080FF0080800000808000008080000080800000808000008080000080
          800000808000000000FF000000FF000000FFFFFFFFFF00808000000000FF0000
          00FFFFFFFFFF0080800000808000008080000080800000808000008080000080
          800000808000808080FF808080FF808080FFFFFFFFFFFFFFFFFF808080FF8080
          80FF008080000080800000808000008080000080800000808000008080000080
          80000080800000808000000000FF000000FF000000FF000000FF000000FFFFFF
          FFFF008080000080800000808000008080000080800000808000008080000080
          80000080800000808000808080FF808080FF808080FF808080FF808080FF0080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000FF000000FF000000FFFFFFFFFF0080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000808080FF808080FF808080FFFFFFFFFFFFFF
          FFFF008080000080800000808000008080000080800000808000008080000080
          80000080800000808000000000FF000000FF000000FF000000FF000000FFFFFF
          FFFF008080000080800000808000008080000080800000808000008080000080
          80000080800000808000808080FF808080FF808080FF808080FF808080FFFFFF
          FFFF008080000080800000808000008080000080800000808000008080000080
          800000808000000000FF000000FF000000FFFFFFFFFF00808000000000FFFFFF
          FFFF008080000080800000808000008080000080800000808000008080000080
          8000FFFFFFFF808080FF808080FF808080FF0080800000808000808080FF0080
          8000FFFFFFFFFFFFFFFF00808000008080000080800000808000008080000000
          00FF000000FF000000FF000000FFFFFFFFFF0080800000808000008080000000
          00FF000000FFFFFFFFFF00808000008080000080800000808000008080008080
          80FF808080FF808080FF808080FF008080000080800000808000008080008080
          80FF808080FFFFFFFFFFFFFFFFFF008080000080800000808000000000FF0000
          00FF000000FF000000FFFFFFFFFF008080000080800000808000008080000080
          8000000000FF000000FFFFFFFFFF008080000080800000808000808080FF8080
          80FF808080FF808080FF00808000008080000080800000808000008080000080
          8000808080FF808080FFFFFFFFFFFFFFFFFF0080800000808000000000FF0000
          00FFFFFFFFFF0080800000808000008080000080800000808000008080000080
          800000808000000000FF000000FFFFFFFFFF0080800000808000808080FF8080
          80FF008080000080800000808000008080000080800000808000008080000080
          800000808000808080FF808080FF008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000008080000080800000808000}
        OptionsImage.NumGlyphs = 2
        OptionsImage.Spacing = 5
        TabOrder = 0
        OnClick = btnNotesDeleteClick
      end
      object btnNotesNew: TcxButton
        Left = 993
        Top = 440
        Width = 82
        Height = 26
        Anchors = [akRight, akBottom]
        Caption = 'New'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
          00FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        OptionsImage.Spacing = 5
        TabOrder = 1
        OnClick = btnNotesNewClick
      end
      object dbgrNotes: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 434
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object tvNotes: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsNotes
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.CellTextMaxLineCount = 4
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Created'
            DataBinding.FieldName = 'CREATED'
            Width = 90
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'NOTES'
            PropertiesClassName = 'TcxRichEditProperties'
            Properties.MemoMode = True
            Properties.ScrollBars = ssVertical
            Properties.VisibleLineCount = 4
            Width = 421
          end
        end
        object lvNotes: TcxGridLevel
          GridView = tvNotes
        end
      end
    end
    object tabSafeCustody: TcxTabSheet
      Caption = 'Safe Custody'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 235
        Width = 1079
        Height = 230
        Align = alBottom
        TabOrder = 0
        Properties.ActivePage = tsItems
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 226
        ClientRectLeft = 4
        ClientRectRight = 1075
        ClientRectTop = 26
        object tsItems: TcxTabSheet
          Caption = 'Items'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdDocuments: TcxGrid
            Left = 0
            Top = 0
            Width = 1071
            Height = 167
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object tvDocuments1: TcxGridDBTableView
              OnDblClick = actEditExecute
              Navigator.Buttons.CustomButtons = <>
              DataController.Filter.MaxValueListCount = 1000
              DataController.KeyFieldNames = 'NDOCUMENT'
              DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.PullFocusing = True
              OptionsCustomize.ColumnSorting = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfVisibleWhenExpanded
              OptionsView.HeaderAutoHeight = True
              Preview.AutoHeight = False
              Preview.MaxLineCount = 2
              object tvDocuments1DESCRIPTION: TcxGridDBColumn
                Caption = 'Type'
                DataBinding.FieldName = 'DESCRIPTION'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.MaxLength = 50
                Properties.ReadOnly = False
                Options.Filtering = False
                Width = 40
              end
              object tvDocuments1ENVELOPE: TcxGridDBColumn
                Caption = 'Seq'
                DataBinding.FieldName = 'ENVELOPE'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.MaxLength = 20
                Properties.ReadOnly = False
                Options.Filtering = False
                Width = 32
              end
              object tvDocuments1DESCR: TcxGridDBColumn
                Caption = 'Description'
                DataBinding.FieldName = 'DESCR'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.MaxLength = 400
                Properties.ReadOnly = False
                Options.Filtering = False
                Width = 209
              end
              object tvDocuments1LODGED: TcxGridDBColumn
                Caption = 'Document Date'
                DataBinding.FieldName = 'LODGED'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.DateButtons = [btnClear, btnToday]
                Properties.DateOnError = deToday
                Options.Filtering = False
                Width = 89
              end
              object tvDocuments1DATE_RELEASED: TcxGridDBColumn
                Caption = 'Released'
                DataBinding.FieldName = 'DATE_RELEASED'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.DateButtons = [btnClear, btnToday]
                Properties.DateOnError = deToday
                Options.Filtering = False
                Width = 60
              end
              object tvDocuments1RELEASED_TO: TcxGridDBColumn
                Caption = 'Released To'
                DataBinding.FieldName = 'RELEASED_TO'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.MaxLength = 50
                Properties.ReadOnly = False
                Options.Filtering = False
                Width = 99
              end
              object tvDocuments1DBColumn1: TcxGridDBColumn
                Caption = 'Requested'
                DataBinding.FieldName = 'REQUESTED_DATE'
                Options.Filtering = False
                Width = 74
              end
              object tvDocuments1DATE_RETURNED: TcxGridDBColumn
                Caption = 'Returned'
                DataBinding.FieldName = 'DATE_RETURNED'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.DateButtons = [btnClear, btnToday]
                Properties.DateOnError = deToday
                Options.Filtering = False
                Width = 69
              end
              object tvDocuments1LOCATION: TcxGridDBColumn
                DataBinding.FieldName = 'LOCATION'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.MaxLength = 120
                Properties.ReadOnly = False
                Visible = False
                Options.Filtering = False
                Width = 3482
              end
              object tvDocuments1REVIEWDATE: TcxGridDBColumn
                DataBinding.FieldName = 'REVIEWDATE'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.DateButtons = [btnClear, btnToday]
                Properties.DateOnError = deToday
                Visible = False
                Options.Filtering = False
                Width = 540
              end
              object tvDocuments1PACKETID: TcxGridDBColumn
                DataBinding.FieldName = 'PACKETID'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.MaxLength = 20
                Properties.ReadOnly = False
                Visible = False
                Options.Filtering = False
                Width = 599
              end
              object tvDocuments1NDOCUMENT: TcxGridDBColumn
                DataBinding.FieldName = 'NDOCUMENT'
                Visible = False
              end
            end
            object tvPacketDocuments: TcxGridDBBandedTableView
              PopupMenu = pmViewAttachment
              OnDblClick = actEditExecute
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsDocReg2
              DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsSelection.MultiSelect = True
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.BandHeaders = False
              Bands = <
                item
                end
                item
                  VisibleForCustomization = False
                end>
              object tvPacketDocumentsPACKETINOUT: TcxGridDBBandedColumn
                Caption = 'Status'
                DataBinding.FieldName = 'PACKETINOUT'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Images = ilstToolbar
                Properties.Items = <
                  item
                    ImageIndex = 21
                    Value = 0
                  end
                  item
                    ImageIndex = 23
                    Value = 1
                  end
                  item
                    ImageIndex = 12
                    Value = 255
                  end
                  item
                    ImageIndex = 31
                    Value = 3
                  end>
                Properties.ShowDescriptions = False
                Options.Editing = False
                Options.Focusing = False
                Width = 51
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object tvPacketDocumentsDESCRIPTION: TcxGridDBBandedColumn
                Caption = 'Type'
                DataBinding.FieldName = 'DESCRIPTION'
                Options.Editing = False
                Options.Focusing = False
                Width = 51
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object tvPacketDocumentsENVELOPE: TcxGridDBBandedColumn
                Caption = 'Seq'
                DataBinding.FieldName = 'ENVELOPE'
                Options.Editing = False
                Options.Focusing = False
                Width = 37
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object tvPacketDocumentsDESCR: TcxGridDBBandedColumn
                Caption = 'Description'
                DataBinding.FieldName = 'DESCR'
                Options.Editing = False
                Options.Focusing = False
                Width = 423
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object tvPacketDocumentsLODGED: TcxGridDBBandedColumn
                Caption = 'Document Date'
                DataBinding.FieldName = 'LODGED'
                Options.Editing = False
                Options.Focusing = False
                Width = 90
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object tvPacketDocumentsDATE_RELEASED: TcxGridDBBandedColumn
                Caption = 'Released'
                DataBinding.FieldName = 'DATE_RELEASED'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object tvPacketDocumentsRELEASED_TO: TcxGridDBBandedColumn
                Caption = 'Released To'
                DataBinding.FieldName = 'RELEASED_TO'
                Options.Editing = False
                Options.Focusing = False
                Width = 89
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object tvPacketDocumentsREQUESTED_DATE: TcxGridDBBandedColumn
                Caption = 'Requested'
                DataBinding.FieldName = 'REQUESTED_DATE'
                Options.Editing = False
                Options.Focusing = False
                Width = 102
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object tvPacketDocumentsDATE_RETURNED: TcxGridDBBandedColumn
                Caption = 'Returned'
                DataBinding.FieldName = 'DATE_RETURNED'
                Options.Editing = False
                Options.Focusing = False
                Width = 121
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object tvPacketDocumentsIMAGE: TcxGridDBBandedColumn
                Caption = 'Doc'
                DataBinding.FieldName = 'IMAGE'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekBlob
                MinWidth = 35
                Options.Editing = False
                Options.Focusing = False
                Width = 35
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object tvPacketDocumentsPROCESS: TcxGridDBBandedColumn
                DataBinding.ValueType = 'Boolean'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.OnChange = tvDocumentsPROCESSPropertiesChange
                HeaderGlyph.SourceDPI = 96
                HeaderGlyph.Data = {
                  424D360400000000000036000000280000001000000010000000010020000000
                  000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9C2
                  77FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9C1
                  76FFD8BF6CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E0D1FFE3E0
                  D1FFE2DDC7FFE1D8BBFFE0D5B0FFDED1A4FFDDCD99FFDBC88CFFDAC380FFD9C1
                  76FFD8BF6CFFD7BD64FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00E3DFD1FFE3DF
                  D1FFE2DBC5FFE1D8BCFFE0D5B0FFDED2A4FFDDCD98FFDBC88CFFDAC581FFD9C2
                  77FFD8BD6CFFD7BC64FFD6BB5DFFFFFFFF00FFFFFF00FFFFFF00E3DFD1FFE3DF
                  D1FFE2DBC5FFE1D8BCFFE0D5B0FFDED2A4FFDDCD98FFDBC88CFFDAC581FFD9C2
                  77FFD8BD6CFFD7BC64FFD6BB5DFFD6BB5DFFFFFFFF00FFFFFF00E3DFD1FFE3DF
                  D1FFE2DBC5FFE1D8BCFFE0D5B0FFDED2A4FFDDCD98FFDBC88CFFDAC581FFD9C2
                  77FFD8BD6CFFD7BC64FFD6BB5DFFFFFFFF00FFFFFF00FFFFFF00E3DFD1FFE3DF
                  D1FFE2DBC5FFE1D8BBFFE0D5B0FFDED0A3FFDDCD98FFDBC98CFFDAC581FFD9C2
                  77FFD8C06EFFD7BD64FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF007C78E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D9C1
                  76FFD8C16EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00726EE7FF7B78E8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D9C2
                  77FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF006B67E6FF726EE8FF7C78E9FF8582EAFF9390EDFFA09DEEFFADABF1FFBCBA
                  F4FFCAC8F5FFD7D6F8FFE4E2F9FFE4E2F9FFFFFFFF00FFFFFF00FFFFFF006B67
                  E6FF6B67E6FF726EE8FF7C78E8FF8682EAFF938FEDFF9F9DEFFFAEABF1FFBDBA
                  F3FFCAC9F6FFD7D6F8FFE4E3FAFFE4E3FAFFFFFFFF00FFFFFF006B67E6FF6B67
                  E6FF6B67E6FF726EE8FF7C78E8FF8682EAFF938FEDFF9F9DEFFFAEABF1FFBDBA
                  F3FFCAC9F6FFD7D6F8FFE4E3FAFFE4E3FAFFFFFFFF00FFFFFF00FFFFFF006B67
                  E6FF6B67E6FF726EE8FF7C78E8FF8682EAFF938FEDFF9F9DEFFFAEABF1FFBDBA
                  F3FFCAC9F6FFD7D6F8FFE4E3FAFFE4E3FAFFFFFFFF00FFFFFF00FFFFFF00FFFF
                  FF006B67E6FF726EE8FF7C78E8FF8582EAFF928FEDFFA09DEEFFADABF1FFBDBA
                  F3FFC9C8F6FFD7D6F8FFE4E3FAFFE4E3FAFFFFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00726EE7FF7B77E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF007C78E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
                Options.Filtering = False
                Options.Sorting = False
                VisibleForCustomization = False
                Width = 20
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object tvPacketDocumentsLOCATION: TcxGridDBBandedColumn
                DataBinding.FieldName = 'LOCATION'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object tvPacketDocumentsREVIEWDATE: TcxGridDBBandedColumn
                DataBinding.FieldName = 'REVIEWDATE'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object tvPacketDocumentsPACKETID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'PACKETID'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object tvPacketDocumentsNDOCUMENT: TcxGridDBBandedColumn
                DataBinding.FieldName = 'NDOCUMENT'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
            end
            object grdDocumentsLevel1: TcxGridLevel
              GridView = tvPacketDocuments
            end
          end
          object pnlButtons: TPanel
            Left = 0
            Top = 167
            Width = 1071
            Height = 33
            Align = alBottom
            TabOrder = 1
            DesignSize = (
              1071
              33)
            object dblblPath: TDBText
              Left = 87
              Top = 7
              Width = 162
              Height = 14
              Anchors = [akLeft, akBottom]
              DataField = 'ADDRESS_PATH'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object btnPrintSafeCustody: TcxButton
              Left = 907
              Top = 2
              Width = 84
              Height = 27
              Action = actPrint
              Anchors = [akRight, akBottom]
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000080008000800080008000
                8000800080008000800080008000800080008000800080008000800080008000
                8000800080008000800080008000800080008000800080008000800080000000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF80008000800080008000800080008000000000FFC0C0
                C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FF000000FFC0C0C0FF000000FF8000800080008000000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FFC0C0C0FF000000FF80008000000000FFC0C0C0FFC0C0
                C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF00FF00FF00FF00FF00FF00FFC0C0
                C0FFC0C0C0FF000000FF000000FF000000FF80008000000000FFC0C0C0FFC0C0
                C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF808080FF808080FFC0C0
                C0FFC0C0C0FF000000FFC0C0C0FF000000FF80008000000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FFC0C0C0FFC0C0C0FF000000FF000000FFC0C0C0FFC0C0
                C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FF000000FFC0C0C0FF000000FFC0C0C0FF000000FF80008000000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FFC0C0C0FF000000FFC0C0C0FF000000FF000000FF80008000800080000000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF000000FFC0C0C0FF000000FFC0C0C0FF000000FF80008000800080008000
                8000000000FFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFFFF
                FFFF000000FF000000FF000000FF000000FF8000800080008000800080008000
                8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FF80008000800080008000800080008000800080008000
                800080008000000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
                00FFFFFFFFFF000000FF80008000800080008000800080008000800080008000
                800080008000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FF800080008000800080008000800080008000
                80008000800080008000000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF800080008000800080008000800080008000
                8000800080008000800080008000800080008000800080008000800080008000
                80008000800080008000800080008000800080008000}
              OptionsImage.Spacing = 5
              TabOrder = 0
            end
            object btnSafeCustodyDelete: TcxButton
              Left = 651
              Top = 2
              Width = 85
              Height = 27
              Action = actDelete
              Anchors = [akRight, akBottom]
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00F3F3
                F30CE7E7E718F2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00F5F5F50AE9E9E916FFFFFF00FFFFFF00F3F3F30CB0B0
                B04F6E6E6E919B9B9B64EFEFEF10FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FEFEFE01E4E4E41BA7A7A7589090906FE9E9E916FFFFFF00907CEB832900
                DFFF3E28A5D76565659AC9C9C936FCFCFC03FFFFFF00FFFFFF00FFFFFF00FCFC
                FC03D5D5D52A6150B2AF2D07D8F8A7A7A758F5F5F50AFFFFFF00BBAFF4502900
                DFFF300ADBF5524E69B17F7F7F80DDDDDD22FFFFFF00FFFFFF00FCFCFC03C7C5
                D23A4529C2D62900DFFF7C6BCD94F0F0F00FFFFFFF00FFFFFF00FFFFFF008670
                ED8F2900DFFF3C1CD1E35F5F5FA09494946BE1E1E11EFCFCFC03C7C5D23A3918
                CDE72D07D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF007960EB9F2900DFFF5138C2C76464649B9292926DB6B4C14B3918CDE72D07
                D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF007960EB9F2900DFFF5037C2C852505DAF3312C7ED2C06D6F9A39C
                C563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00785FE9A02900DFFF2C06D6F92B05D5FA6A628B9DDADA
                DA25FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FCFCFC03C7C5D23A2E08D9F72900DFFF472BC3D47474748B9191
                916ED5D5D52AF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FCFCFC03C7C5D23A3918CDE72D07D8F8705CCBA3350FDFF0593DD5C27C7A
                88858585857AC3C3C33CF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9
                F906C7C5D23A3918CDE72900DFFF8A80B87FF0F0F00FD6CFF830431FE2E04928
                DDD779729C8D7C7C7C83B3B3B34CF5F5F50AFFFFFF00FFFFFF00FBFBFB04BBB9
                C7463817CCE82900DFFF7263B69CEAEAEA15FFFFFF00FFFFFF00F1EFFC105E40
                E7BF340EDEF17B6EB39189898976DBDBDB24FCFCFC03FFFFFF00C5BEE7413817
                CCE82900DFFF5A46B5B9E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00937FEE802900DFFFCFCAE635FCFCFC03FFFFFF00FFFFFF00411DDFE22900
                DFFF4529C2D6D5D5D52AFEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003610E1EF4D2C
                E1D3DFDDEB22FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              OptionsImage.Spacing = 5
              TabOrder = 1
            end
            object btnSafeCustodyEdit: TcxButton
              Left = 991
              Top = 2
              Width = 88
              Height = 27
              Action = actEdit
              Anchors = [akRight, akBottom]
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360800000000000036000000280000002000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000808000008080000080
                8000008080000080800000808000000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF00808000008080000080
                8000008080000080800000808000808080FF808080FF808080FF808080FF8080
                80FF808080FF808080FF808080FF808080FF808080FF00808000008080000080
                8000008080000080800000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
                FFFF00808000FFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFF008080000080
                8000FFFFFFFF00808000FFFFFFFFFFFFFFFF808080FF000000FF000000FF0080
                8000000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFF0000
                00FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF808080FF808080FFFFFF
                FFFF808080FF808080FF808080FF808080FF808080FF00808000FFFFFFFF8080
                80FF00808000808080FF808080FF00808000808080FFFFFF00FF000000FF0000
                00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808080FF8080
                80FF00808000008080000080800000808000FFFFFFFF808080FFFFFFFFFF0080
                8000008080000080800000808000FFFFFFFF808080FFFFFF00FF000000FF00FF
                FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FF808080FF808080FFFFFF
                FFFF008080000080800000808000808080FF808080FF808080FF00808000FFFF
                FFFF00808000FFFFFFFF808080FF00808000808080FFFFFF00FF000000FFFFFF
                FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FFFFFF
                FFFF000000FF000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FFFFFF
                FFFF00808000008080000080800000808000FFFFFFFFFFFFFFFF808080FFFFFF
                FFFF808080FF808080FFFFFFFFFF00808000808080FFFFFF00FF000000FF00FF
                FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
                00FF00FFFFFF000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FFFFFF
                FFFF008080000080800000808000808080FF808080FF808080FF808080FF8080
                80FF00808000808080FF0080800000808000808080FFFFFF00FF000000FFFFFF
                FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
                FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808080FFFFFF
                FFFF0080800000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF808080FF008080000080800000808000808080FFFFFF00FF000000FF00FF
                FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808080FFFFFF
                FFFFFFFFFFFF808080FF808080FF808080FF808080FF808080FF808080FF8080
                80FF0080800000808000FFFFFFFFFFFFFFFF808080FF000000FF000000FF0000
                00FF00FFFFFFFFFFFFFF00FFFFFF000000FF000000FF00FFFFFF000000FFFFFF
                FFFFFFFFFFFF000000FF000000FFFFFFFFFF000000FF808080FF808080FF8080
                80FF00808000FFFFFFFFFFFFFFFF808080FF808080FF00808000808080FF0080
                800000808000808080FF808080FF00808000808080FF00808000008080000080
                8000000000FF000000FF000000FF000000FF00FFFFFF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000008080000080
                8000808080FF808080FF808080FF808080FF00808000808080FF008080000080
                80000080800000808000FFFFFFFFFFFFFFFF808080FF00808000008080000080
                80000080800000808000000000FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FF000000FF000000FF000000FF00808000008080000080
                80000080800000808000808080FF00808000808080FF0080800000808000FFFF
                FFFFFFFFFFFF808080FF808080FF808080FF808080FF00808000008080000080
                800000808000000000FF00FFFFFF000000FFFFFFFFFFFFFFFFFF000000FF0000
                00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FF00808000008080000080
                800000808000808080FF00808000808080FFFFFFFFFF00808000808080FF8080
                80FF00808000808080FFFFFFFFFF00808000808080FF00808000008080000080
                8000000000FF00FFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FFFFFFFFFF000000FF0080800000808000008080000080
                8000808080FFFFFFFFFF808080FF808080FFFFFFFFFF00808000008080000080
                800000808000808080FFFFFFFFFF808080FF0080800000808000008080000000
                00FF0000FFFF000000FF00808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FF000000FF008080000080800000808000008080008080
                80FF808080FF808080FF00808000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF808080FF808080FF008080000080800000808000008080000080
                8000000000FF0080800000808000000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF00808000008080000080800000808000008080000080
                8000808080FF0080800000808000808080FF808080FF808080FF808080FF8080
                80FF808080FF808080FF008080000080800000808000}
              OptionsImage.NumGlyphs = 2
              OptionsImage.Spacing = 5
              TabOrder = 2
            end
            object btnSafeCustodyNew: TcxButton
              Left = 991
              Top = 2
              Width = 88
              Height = 27
              Anchors = [akRight, akBottom]
              Caption = '&New'
              Enabled = False
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000080800000000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF8080000080800000808000008080000080800000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000
                00FF8080000080800000808000008080000080800000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF8080000080800000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FF00FFFFFFFFFFFFFF00FF
                FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FF00FFFFFF000000FF000000FF000000FF0000
                00FF000000FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF00FFFFFF000000FFFFFFFFFF00FF
                FFFFFFFFFFFF000000FFFFFFFFFF00FFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FF00FFFFFFFFFFFFFF000000FF000000FFFFFF
                FFFF00FFFFFF000000FF00FFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFFFFFFFFFFFF000000FF0000
                00FF000000FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF808080FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFFFF000000FFFFFF
                FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF800000FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFFFF0000
                00FFFFFFFFFF00FFFFFF000000FF000000FF80800000000000FF00FFFFFF8000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
                00FF000000FF000000FF808000008080000080800000000000FFFFFFFFFF00FF
                FFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                00FF000000FF8080000080800000808000008080000000FFFFFF00FFFFFF00FF
                FFFF00FFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                00FF000000FF80800000808000008080000080800000000000FF00FFFFFF00FF
                FFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                00FF80800000000000FF808000008080000080800000000000FF000000FF00FF
                FFFF00FFFFFF800000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF80800000000000FF80800000808000008080000080800000808000008080
                000000FFFFFF00FFFFFF800000FF808000008080000080800000808000008080
                00008080000080800000808000008080000080800000}
              OptionsImage.Spacing = 5
              TabOrder = 3
              OnClick = actNewExecute
            end
            object btnSafeCustodyRequest: TcxButton
              Left = 736
              Top = 2
              Width = 86
              Height = 27
              Anchors = [akRight, akBottom]
              Caption = 'Request'
              Enabled = False
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00003300FF003300FF006600FF006600FF003300FF0033
                00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00003300FF003300FF008000FF009900FF009900FF009900FF009900FF0080
                00FF003300FF003300FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000066
                00FF006600FF009900FF009900FF009900FF009900FF009900FF009900FF0099
                00FF009900FF006600FF003300FFFF00FF00FF00FF00FF00FF00006600FF0066
                00FF009933FF009900FF009900FF009900FF009900FF009900FF009900FF0099
                00FF009900FF009900FF006600FF003300FFFF00FF00FF00FF00006600FF0099
                33FF009933FF009933FF009900FF009933FFD6E7E7FFF1F1F1FF33CC66FF0099
                00FF009900FF009900FF009900FF003300FFFF00FF00006600FF009933FF3399
                33FF009933FF009900FF009900FF009900FF99CC99FFFFFFFFFFF8F8F8FF33CC
                66FF009900FF009900FF009900FF008000FF003300FF006600FF009933FF3399
                33FF009933FF009900FF009900FF009900FF009900FF66CC99FFFFFFFFFFF8F8
                F8FF33CC66FF009900FF009900FF009900FF003300FF006600FF33CC33FF33CC
                66FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFF8F8F8FFFFFF
                FFFFF0FBFFFF33CC66FF009900FF009900FF003300FF008000FF33CC66FF33CC
                66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFC0DCC0FF009900FF009900FF006600FF008000FF66CC66FF33CC
                66FF66CC66FF66CC66FF66CC66FF66CC66FF33CC66FF66CC99FFFFFFFFFFFFFF
                FFFF99CC99FF009933FF009933FF009900FF003300FF008000FF33CC66FF99CC
                99FF33CC66FF33CC33FF33CC66FF33CC66FF66CC66FFEAEAEAFFFFFFFFFF99CC
                99FF009933FF009933FF009900FF008000FF003300FFFF00FF00009933FFC0DC
                C0FF66CC99FF339933FF339933FF33CC66FFF8F8F8FFFFFFFFFF99CC99FF0099
                33FF009933FF009933FF009933FF006600FFFF00FF00FF00FF00009933FF33CC
                66FFCCFFCCFF66CC99FF33CC66FF33CC66FFC0DCC0FF99CC99FF339933FF0099
                33FF009933FF009933FF009933FF006600FFFF00FF00FF00FF00FF00FF000099
                33FF66CC99FFD6E7E7FF99CCCCFF33CC66FF33CC66FF33CC66FF33CC66FF33CC
                66FF33CC66FF009933FF006600FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00009933FF009933FF99CCCCFFCCFFCCFFC0DCC0FF99CC99FF99CC99FF33CC
                66FF009933FF009933FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00009933FF009933FF009933FF009933FF009933FF0099
                33FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              OptionsImage.Spacing = 5
              TabOrder = 4
              OnClick = btnSafeCustodyRequestClick
            end
            object btnSafeCustodyReturn: TcxButton
              Left = 822
              Top = 2
              Width = 85
              Height = 27
              Anchors = [akRight, akBottom]
              Caption = 'Returned'
              Enabled = False
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00003300FF003300FF003300FF003300FF003300FF0033
                00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00003300FF003300FF008000FF009900FF009900FF009900FF009900FF0080
                00FF003300FF003300FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000033
                00FF006600FF009900FF009900FF009900FF009900FF009900FF009900FF0099
                00FF009900FF006600FF003300FFFF00FF00FF00FF00FF00FF00003300FF0066
                00FF009933FF009900FF009900FF009900FF009900FF009900FF009900FF0099
                00FF009900FF009900FF006600FF003300FFFF00FF00FF00FF00003300FF0099
                33FF009933FF009933FF009900FF33CC66FFF1F1F1FFD6E7E7FF009933FF0099
                00FF009900FF009900FF009900FF003300FFFF00FF00006600FF009933FF3399
                33FF009933FF009900FF33CC66FFF8F8F8FFFFFFFFFF66CC99FF009900FF0099
                00FF009900FF009900FF009900FF008000FF003300FF006600FF339933FF33CC
                33FF009933FF33CC66FFF8F8F8FFFFFFFFFF66CC99FF009900FF009900FF0099
                00FF009900FF009900FF009900FF009900FF003300FF006600FF33CC33FF33CC
                33FF66CC99FFF8F8F8FFFFFFFFFFF0FBFFFFC0DCC0FFC0DCC0FFC0DCC0FFC0DC
                C0FFC0DCC0FFC0DCC0FF009900FF009900FF003300FF008000FF33CC66FF33CC
                66FFC0DCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF009900FF009900FF006600FF008000FF66CC66FF33CC
                66FF33CC66FFC0DCC0FFFFFFFFFFFFFFFFFF99CC99FF33CC66FF33CC66FF33CC
                66FF33CC66FF33CC66FF009900FF009900FF003300FF008000FF33CC66FF99CC
                99FF33CC66FF33CC33FF99CCCCFFFFFFFFFFEAEAEAFF33CC66FF009933FF0099
                33FF009933FF009933FF009900FF009900FF003300FFFF00FF00009933FFC0DC
                C0FF66CC99FF339933FF33CC33FF99CC99FFFFFFFFFFF0FBFFFF33CC66FF0099
                33FF009933FF009933FF009933FF006600FFFF00FF00FF00FF00009933FF33CC
                66FFCCFFCCFF66CC99FF33CC33FF33CC33FF99CCCCFFC0DCC0FF33CC33FF3399
                33FF009933FF009933FF009933FF006600FFFF00FF00FF00FF00FF00FF000099
                33FF66CC99FFD6E7E7FF99CCCCFF66CC66FF33CC66FF33CC66FF33CC66FF33CC
                66FF33CC33FF009933FF006600FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00009933FF009933FF99CCCCFFC0DCC0FFC0DCC0FF99CCCCFF66CC99FF33CC
                66FF339933FF339933FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00009933FF009933FF009933FF009933FF009933FF0099
                33FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              OptionsImage.Spacing = 5
              TabOrder = 5
              OnClick = btnSafeCustodyReturnClick
            end
            object btnSCWord: TcxButton
              Left = 3
              Top = 2
              Width = 81
              Height = 27
              Anchors = [akLeft, akBottom]
              Caption = 'Fi&le'
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360800000000000036000000280000002000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000080008000800080008000
                8000800080008000800080008000000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF80008000800080008000
                80008000800080008000FFFFFFFF808080FF808080FF808080FF808080FF8080
                80FF808080FF808080FF808080FF808080FF808080FF80008000800080008000
                800080008000000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF80008000800080008000
                8000FFFFFFFF808080FF808080FF808080FFFFFFFFFF80008000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF8000800080008000808080FF80008000800080000000
                00FF000000FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF0000
                00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF80008000FFFFFFFF8080
                80FF808080FF808080FFFFFFFFFF808080FFFFFFFFFF808080FF808080FF8080
                80FF808080FF800080008000800080008000808080FF000000FF000000FF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808080FF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFF80008000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF0000
                00FF000000FF000000FF000000FFFFFFFFFF000000FF808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFF808080FF808080FF8080
                80FF808080FF808080FF808080FF80008000808080FF000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFF80008000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF0000
                00FF000000FF000000FF000000FFFFFFFFFF000000FF808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFF808080FF808080FF8080
                80FF808080FF808080FF808080FF80008000808080FF000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFF80008000FFFFFFFFFFFF
                FFFFFFFFFFFF800080008000800080008000808080FF000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF0000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFF808080FF808080FF8080
                80FF8000800080008000FFFFFFFFFFFFFFFF808080FF000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FF000000FF000000FF000000FF808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFF80008000FFFFFFFFFFFF
                FFFF80008000808080FF808080FF808080FF808080FF000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFF
                FFFFFFFFFFFF000000FFFFFFFFFF000000FF80008000808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFF808080FF808080FF8000
                800080008000808080FFFFFFFFFF808080FF80008000000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FF000000FF8000800080008000808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF808080FF808080FF8000800080008000000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF800080008000800080008000808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FFFFFFFFFF808080FF808080FF808080FF808080FF8080
                80FF808080FF808080FF800080008000800080008000000000FFFFFFFFFF0000
                00FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF8000800080008000800080008000800080008000808080FFFFFFFFFF8080
                80FFFFFFFFFF808080FF808080FF808080FF808080FF808080FF808080FF8080
                80FF8000800080008000800080008000800080008000000000FFFFFFFFFF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF800080008000
                80008000800080008000800080008000800080008000808080FFFFFFFFFF8080
                80FF808080FF808080FF808080FF808080FF808080FF808080FF800080008000
                80008000800080008000800080008000800080008000000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF8000800080008000800080008000
                80008000800080008000800080008000800080008000808080FF808080FF8080
                80FF808080FF808080FF808080FF808080FF8000800080008000800080008000
                80008000800080008000800080008000800080008000}
              OptionsImage.NumGlyphs = 2
              OptionsImage.Spacing = 5
              TabOrder = 6
              Visible = False
              OnClick = btnSCWordClick
            end
            object cbShowAllDates: TCheckBox
              Left = 257
              Top = 6
              Width = 266
              Height = 19
              Caption = 'Exclude Items with Released Date from report.'
              TabOrder = 7
              Visible = False
            end
            object pbHistory: TcxButton
              Left = 569
              Top = 2
              Width = 77
              Height = 27
              Anchors = [akRight, akBottom]
              Caption = 'History'
              Enabled = False
              LookAndFeel.NativeStyle = True
              OptionsImage.Spacing = 5
              TabOrder = 8
              OnClick = pbHistoryClick
            end
          end
        end
        object tsOtherParties: TcxTabSheet
          Caption = 'Other Parties'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel1: TPanel
            Left = 0
            Top = 170
            Width = 1071
            Height = 30
            Align = alBottom
            TabOrder = 0
            DesignSize = (
              1071
              30)
            object btnDeleteSafeOtherParty: TcxButton
              Left = 999
              Top = 1
              Width = 80
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'Delete'
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00F3F3
                F30CE7E7E718F2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00F5F5F50AE9E9E916FFFFFF00FFFFFF00F3F3F30CB0B0
                B04F6E6E6E919B9B9B64EFEFEF10FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FEFEFE01E4E4E41BA7A7A7589090906FE9E9E916FFFFFF00907CEB832900
                DFFF3E28A5D76565659AC9C9C936FCFCFC03FFFFFF00FFFFFF00FFFFFF00FCFC
                FC03D5D5D52A6150B2AF2D07D8F8A7A7A758F5F5F50AFFFFFF00BBAFF4502900
                DFFF300ADBF5524E69B17F7F7F80DDDDDD22FFFFFF00FFFFFF00FCFCFC03C7C5
                D23A4529C2D62900DFFF7C6BCD94F0F0F00FFFFFFF00FFFFFF00FFFFFF008670
                ED8F2900DFFF3C1CD1E35F5F5FA09494946BE1E1E11EFCFCFC03C7C5D23A3918
                CDE72D07D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF007960EB9F2900DFFF5138C2C76464649B9292926DB6B4C14B3918CDE72D07
                D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF007960EB9F2900DFFF5037C2C852505DAF3312C7ED2C06D6F9A39C
                C563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00785FE9A02900DFFF2C06D6F92B05D5FA6A628B9DDADA
                DA25FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FCFCFC03C7C5D23A2E08D9F72900DFFF472BC3D47474748B9191
                916ED5D5D52AF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FCFCFC03C7C5D23A3918CDE72D07D8F8705CCBA3350FDFF0593DD5C27C7A
                88858585857AC3C3C33CF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9
                F906C7C5D23A3918CDE72900DFFF8A80B87FF0F0F00FD6CFF830431FE2E04928
                DDD779729C8D7C7C7C83B3B3B34CF5F5F50AFFFFFF00FFFFFF00FBFBFB04BBB9
                C7463817CCE82900DFFF7263B69CEAEAEA15FFFFFF00FFFFFF00F1EFFC105E40
                E7BF340EDEF17B6EB39189898976DBDBDB24FCFCFC03FFFFFF00C5BEE7413817
                CCE82900DFFF5A46B5B9E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00937FEE802900DFFFCFCAE635FCFCFC03FFFFFF00FFFFFF00411DDFE22900
                DFFF4529C2D6D5D5D52AFEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003610E1EF4D2C
                E1D3DFDDEB22FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              OptionsImage.Spacing = 5
              TabOrder = 0
              OnClick = btnDeleteSafeOtherPartyClick
            end
            object pdAddOtherParty: TcxButton
              Left = 901
              Top = 1
              Width = 81
              Height = 24
              Hint = 'Add Related Parties'
              Anchors = [akRight, akBottom]
              Caption = 'Add'
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D460500000000000036000000280000001200000012000000010020000000
                000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
                00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF0000
                00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
                FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF0000FFFF0000FFFF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FFFFFFFF00FFFFFF00000000FF0000
                FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FFFFFFFF00FFFF
                FF00000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
                00FFFFFFFF00FFFFFF00000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF0000FFFF0000FFFF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF0000
                00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
                FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF0000
                00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00}
              OptionsImage.Spacing = 5
              TabOrder = 1
              OnClick = pdAddOtherPartyClick
            end
          end
          object grdSafeCustOtherParties: TcxGrid
            Left = 0
            Top = 0
            Width = 1071
            Height = 170
            Align = alClient
            TabOrder = 1
            LookAndFeel.NativeStyle = True
            object tvSafeCustOtherParties: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Delete.Visible = False
              Navigator.Buttons.Edit.Visible = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Refresh.Visible = True
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Visible = False
              OnEditing = tvSafeCustOtherPartiesEditing
              DataController.DataSource = dsDocRegOtherParties
              DataController.DetailKeyFieldNames = 'NDOCREG;NNAME'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Appending = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NavigatorOffset = 25
              OptionsView.ShowEditButtons = gsebForFocusedRecord
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderEndEllipsis = True
              OptionsView.Indicator = True
              object tvSafeCustOtherPartiesNAME: TcxGridDBColumn
                Caption = 'Name'
                DataBinding.FieldName = 'NAME'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                    Visible = False
                  end>
                Properties.OnButtonClick = tvSafeCustOtherPartiesNAMEPropertiesButtonClick
                Options.Editing = False
                Width = 725
              end
              object tvSafeCustOtherPartiesCCODE: TcxGridDBColumn
                Caption = 'Code'
                DataBinding.FieldName = 'CCODE'
                Width = 123
              end
              object tvSafeCustOtherPartiesNNAME: TcxGridDBColumn
                DataBinding.FieldName = 'NNAME'
                Visible = False
              end
              object tvSafeCustOtherPartiesNDOCREG: TcxGridDBColumn
                DataBinding.FieldName = 'NDOCREG'
                Visible = False
              end
            end
            object grdSafeCustOtherPartiesLevel1: TcxGridLevel
              GridView = tvSafeCustOtherParties
            end
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1079
        Height = 230
        Align = alClient
        TabOrder = 1
        object Panel6: TPanel
          Left = 1
          Top = 199
          Width = 1077
          Height = 30
          Align = alBottom
          TabOrder = 0
          DesignSize = (
            1077
            30)
          object pbAddPacket: TcxButton
            Left = 816
            Top = 5
            Width = 81
            Height = 22
            Anchors = [akRight, akBottom]
            Caption = 'Add'
            LookAndFeel.NativeStyle = True
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D460500000000000036000000280000001200000012000000010020000000
              000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
              00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF0000
              00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
              FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF0000FFFF0000FFFF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FFFFFFFF00FFFFFF00000000FF0000
              FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
              FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FFFFFFFF00FFFF
              FF00000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
              FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
              00FFFFFFFF00FFFFFF00000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF0000FFFF0000FFFF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF0000
              00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
              FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000FF0000FFFF0000FFFF000000FFFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF0000
              00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00}
            OptionsImage.Spacing = 5
            TabOrder = 0
            OnClick = pbAddPacketClick
          end
          object pbDeletePacket: TcxButton
            Left = 988
            Top = 5
            Width = 84
            Height = 22
            Anchors = [akRight, akBottom]
            Caption = 'Delete'
            Enabled = False
            LookAndFeel.NativeStyle = True
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00F3F3
              F30CE7E7E718F2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00F5F5F50AE9E9E916FFFFFF00FFFFFF00F3F3F30CB0B0
              B04F6E6E6E919B9B9B64EFEFEF10FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FEFEFE01E4E4E41BA7A7A7589090906FE9E9E916FFFFFF00907CEB832900
              DFFF3E28A5D76565659AC9C9C936FCFCFC03FFFFFF00FFFFFF00FFFFFF00FCFC
              FC03D5D5D52A6150B2AF2D07D8F8A7A7A758F5F5F50AFFFFFF00BBAFF4502900
              DFFF300ADBF5524E69B17F7F7F80DDDDDD22FFFFFF00FFFFFF00FCFCFC03C7C5
              D23A4529C2D62900DFFF7C6BCD94F0F0F00FFFFFFF00FFFFFF00FFFFFF008670
              ED8F2900DFFF3C1CD1E35F5F5FA09494946BE1E1E11EFCFCFC03C7C5D23A3918
              CDE72D07D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF007960EB9F2900DFFF5138C2C76464649B9292926DB6B4C14B3918CDE72D07
              D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF007960EB9F2900DFFF5037C2C852505DAF3312C7ED2C06D6F9A39C
              C563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00785FE9A02900DFFF2C06D6F92B05D5FA6A628B9DDADA
              DA25FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FCFCFC03C7C5D23A2E08D9F72900DFFF472BC3D47474748B9191
              916ED5D5D52AF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FCFCFC03C7C5D23A3918CDE72D07D8F8705CCBA3350FDFF0593DD5C27C7A
              88858585857AC3C3C33CF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9
              F906C7C5D23A3918CDE72900DFFF8A80B87FF0F0F00FD6CFF830431FE2E04928
              DDD779729C8D7C7C7C83B3B3B34CF5F5F50AFFFFFF00FFFFFF00FBFBFB04BBB9
              C7463817CCE82900DFFF7263B69CEAEAEA15FFFFFF00FFFFFF00F1EFFC105E40
              E7BF340EDEF17B6EB39189898976DBDBDB24FCFCFC03FFFFFF00C5BEE7413817
              CCE82900DFFF5A46B5B9E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00937FEE802900DFFFCFCAE635FCFCFC03FFFFFF00FFFFFF00411DDFE22900
              DFFF4529C2D6D5D5D52AFEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003610E1EF4D2C
              E1D3DFDDEB22FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            OptionsImage.Spacing = 5
            TabOrder = 1
            OnClick = pbDeletePacketClick
          end
          object pbEditPacket: TcxButton
            Left = 901
            Top = 5
            Width = 84
            Height = 22
            Anchors = [akRight, akBottom]
            Caption = 'Edit'
            Enabled = False
            LookAndFeel.NativeStyle = True
            OptionsImage.Spacing = 5
            TabOrder = 2
            OnClick = pbEditPacketClick
          end
        end
        object grdPackets: TcxGrid
          Left = 1
          Top = 1
          Width = 1077
          Height = 198
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object tvPackets: TcxGridDBTableView
            OnDblClick = pbEditPacketClick
            OnMouseDown = tvPacketsMouseDown
            Navigator.Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = True
            Navigator.Visible = True
            OnCellClick = tvPacketsCellClick
            OnEditing = tvPacketsEditing
            DataController.DataSource = dsDocReg
            DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftNull, fcoSoftCompare]
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #39'Total:'#39' ###,###'
                Kind = skCount
                FieldName = 'PACKETID'
                Column = tvPacketsDESCR
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 10
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            object tvPacketsColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'REALPACK'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = ilstToolbar
              Properties.Items = <
                item
                  ImageIndex = 26
                  Value = 0
                end
                item
                  ImageIndex = 27
                  Value = 1
                end>
              Properties.ShowDescriptions = False
              Width = 27
              IsCaptionAssigned = True
            end
            object tvPacketsPACKETID: TcxGridDBColumn
              Caption = 'Packet'
              DataBinding.FieldName = 'PACKETID'
              Width = 89
            end
            object tvPacketsDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              Width = 353
            end
            object tvPacketsLOCATION: TcxGridDBColumn
              Caption = 'Location'
              DataBinding.FieldName = 'LOCATION'
              Width = 290
            end
            object tvPacketsREALPACK: TcxGridDBColumn
              Caption = 'Real Packet'
              DataBinding.FieldName = 'REALPACK'
              Visible = False
              VisibleForCustomization = False
              Width = 66
            end
            object tvPacketsCLCODE: TcxGridDBColumn
              Caption = 'Primary Client'
              DataBinding.FieldName = 'CLCODE'
              Width = 74
            end
            object tvPacketsNAME: TcxGridDBColumn
              Caption = 'Primary Name'
              DataBinding.FieldName = 'NAME'
              Width = 189
            end
            object tvPacketsDESTROY_DATE: TcxGridDBColumn
              Caption = 'Destroy Date'
              DataBinding.FieldName = 'DESTROY_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              Width = 77
            end
            object tvPacketsNDOCREG: TcxGridDBColumn
              DataBinding.FieldName = 'NDOCREG'
              Visible = False
            end
          end
          object grdPacketsLevel1: TcxGridLevel
            GridView = tvPackets
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 230
        Width = 1079
        Height = 5
        AlignSplitter = salBottom
        PositionAfterOpen = 29
        MinSize = 29
      end
    end
    object tsOtherClients: TcxTabSheet
      Caption = 'Other Names'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgOtherClients: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 465
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvOtherClients: TcxGridDBTableView
          OnDblClick = dbgOtherClientsDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsOtherClients
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColumn19: TcxGridDBColumn
            DataBinding.FieldName = 'NAME'
          end
        end
        object lvOtherClients: TcxGridLevel
          GridView = tvOtherClients
        end
      end
    end
    object tabMarketing: TcxTabSheet
      Caption = 'Marketing'
      ImageIndex = 11
      object Label72: TLabel
        Left = 9
        Top = 10
        Width = 70
        Height = 15
        Caption = 'Referral Type:'
        Transparent = True
      end
      object Label73: TLabel
        Left = 9
        Top = 61
        Width = 60
        Height = 15
        Caption = 'Maintainer:'
        Transparent = True
      end
      object Label74: TLabel
        Left = 9
        Top = 35
        Width = 63
        Height = 15
        Caption = 'Referred By:'
        Transparent = True
      end
      object cxGroupBox2: TcxGroupBox
        Left = 12
        Top = 95
        Caption = 'Firm contacts'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 157
        Width = 345
        object lstFirmContacts: TcxListView
          Left = 51
          Top = 17
          Width = 285
          Height = 133
          Columns = <>
          Style.BorderStyle = cbs3D
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          ViewStyle = vsList
        end
      end
      object edMaintainer: TcxLabel
        Left = 104
        Top = 59
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 18
        Width = 255
      end
      object edReferralType: TcxLabel
        Left = 104
        Top = 8
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 18
        Width = 255
      end
      object edReferredBy: TcxLabel
        Left = 104
        Top = 33
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.StyleController = dmAxiom.LabelStyle
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsFlat
        Height = 18
        Width = 255
      end
    end
    object tabEvent: TcxTabSheet
      Caption = 'Event'
      ImageIndex = 12
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdParticipantEvents: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 465
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object tvParticipantEvents: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsParticipantEvents
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tvParticipantEventsEVENT_PART_ID: TcxGridDBColumn
            DataBinding.FieldName = 'EVENT_PART_ID'
            Visible = False
            Width = 128
          end
          object tvParticipantEventsEVENT: TcxGridDBColumn
            Caption = 'Event'
            DataBinding.FieldName = 'EVENT'
            Options.Filtering = False
            Width = 219
          end
          object tvParticipantEventsEVENT_DATE: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'EVENT_DATE'
            Options.Filtering = False
            Width = 106
          end
          object tvParticipantEventsEVENT_TIME: TcxGridDBColumn
            Caption = 'Time'
            DataBinding.FieldName = 'EVENT_TIME'
            Options.Filtering = False
            Width = 65
          end
          object tvParticipantEventsATTENDED: TcxGridDBColumn
            Caption = 'Attended'
            DataBinding.FieldName = 'ATTENDED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Filtering = False
            Width = 71
          end
          object tvParticipantEventsACCEPTED: TcxGridDBColumn
            Caption = 'Accepted'
            DataBinding.FieldName = 'ACCEPTED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Filtering = False
            Width = 67
          end
          object tvParticipantEventsDECLINED: TcxGridDBColumn
            Caption = 'Declined'
            DataBinding.FieldName = 'DECLINED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Filtering = False
            Width = 59
          end
          object tvParticipantEventsPRINTED: TcxGridDBColumn
            Caption = 'Printed'
            DataBinding.FieldName = 'PRINTED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Filtering = False
            Width = 63
          end
          object tvParticipantEventsSEARCH: TcxGridDBColumn
            Caption = 'Search'
            DataBinding.FieldName = 'SEARCH'
            Options.Filtering = False
            Width = 115
          end
          object tvParticipantEventsNOTES: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'NOTES'
            Options.Filtering = False
            Width = 113
          end
        end
        object grdParticipantEventsLevel1: TcxGridLevel
          GridView = tvParticipantEvents
        end
      end
    end
    object tabBills: TcxTabSheet
      Caption = 'Bills'
      ImageIndex = 13
      OnShow = tabBillsShow
      object Panel3: TPanel
        Left = 0
        Top = 433
        Width = 1079
        Height = 32
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          1079
          32)
        object BitBtn4: TBitBtn
          Left = 914
          Top = 3
          Width = 163
          Height = 26
          Anchors = [akRight, akBottom]
          Caption = 'Generate Debtor Statement'
          TabOrder = 0
          OnClick = BitBtn4Click
        end
        object chkExcludeReversals: TcxCheckBox
          Left = 5
          Top = 5
          Caption = 'Exclude Reversals'
          Properties.Alignment = taRightJustify
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnClick = chkExcludeReversalsClick
        end
      end
      object dbgrInvoices: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 433
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object tvInvoices: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsInvoices
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'ANTD'
              Column = tvInvoicesANTD
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'DISB'
              Column = tvInvoicesDISB
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'FEES'
              Column = tvInvoicesFEES
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'OWING'
              Column = tvInvoicesOwing
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'SUND'
              Column = tvInvoicesSUND
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'UPCRED'
              Column = tvInvoicesUPCRED
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'TAX'
              Column = tvInvoicesTAX
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'TOTAL'
              Column = tvInvoicesTotal
            end
            item
              Column = tvInvoicesREFNO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          Styles.Footer = styBillTotals
          object tvInvoicesFILEID: TcxGridDBColumn
            Caption = 'Matter #'
            DataBinding.FieldName = 'FILEID'
          end
          object tvInvoicesDISPATCHED: TcxGridDBColumn
            Caption = 'Dispatched'
            DataBinding.FieldName = 'DISPATCHED'
            Options.Editing = False
            Options.Focusing = False
            Width = 80
          end
          object tvInvoicesREFNO: TcxGridDBColumn
            Caption = 'Bill Number'
            DataBinding.FieldName = 'REFNO'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesOwing: TcxGridDBColumn
            DataBinding.FieldName = 'Owing'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Styles.Content = cxStyle2
            Styles.Header = cxStyle1
          end
          object tvInvoicesFEES: TcxGridDBColumn
            Caption = 'Fees'
            DataBinding.FieldName = 'FEES'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Width = 74
          end
          object tvInvoicesDISB: TcxGridDBColumn
            Caption = 'Disburse'
            DataBinding.FieldName = 'DISB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Width = 74
          end
          object tvInvoicesUPCRED: TcxGridDBColumn
            Caption = 'Creditors'
            DataBinding.FieldName = 'UPCRED'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesANTD: TcxGridDBColumn
            Caption = 'Chq Req'
            DataBinding.FieldName = 'ANTD'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Width = 74
          end
          object tvInvoicesSUND: TcxGridDBColumn
            Caption = 'Sundry'
            DataBinding.FieldName = 'SUND'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Width = 74
          end
          object tvInvoicesTAX: TcxGridDBColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Width = 55
          end
          object tvInvoicesTotal: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Styles.Content = cxStyle2
            Styles.Header = cxStyle1
          end
          object tvInvoicesTRUST: TcxGridDBColumn
            Caption = 'Trust'
            DataBinding.FieldName = 'TRUST'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesFEES_PAID: TcxGridDBColumn
            Caption = 'Fees Paid'
            DataBinding.FieldName = 'FEES_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesDISB_PAID: TcxGridDBColumn
            Caption = 'Disb. Paid'
            DataBinding.FieldName = 'DISB_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesUPCRED_PAID: TcxGridDBColumn
            Caption = 'Creditors Paid'
            DataBinding.FieldName = 'UPCRED_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesANTD_PAID: TcxGridDBColumn
            Caption = 'Cheq Req Paid'
            DataBinding.FieldName = 'ANTD_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesSUND_PAID: TcxGridDBColumn
            Caption = 'Sundry Paid'
            DataBinding.FieldName = 'SUND_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesGENERATED: TcxGridDBColumn
            Caption = 'Generated'
            DataBinding.FieldName = 'GENERATED'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesBILL_TO: TcxGridDBColumn
            Caption = 'Billed To'
            DataBinding.FieldName = 'BILL_TO'
            Options.Editing = False
            Options.Focusing = False
            Width = 147
          end
          object tvInvoicesRV_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'RV_TYPE'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesSPLIT_BILL: TcxGridDBColumn
            Caption = 'Split Bill'
            DataBinding.FieldName = 'SPLIT_BILL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            MinWidth = 65
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesEXPPAYMENT: TcxGridDBColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'EXPPAYMENT'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesINV_NOTE: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'INV_NOTE'
            PropertiesClassName = 'TcxRichEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Width = 80
          end
          object tvInvoicesNMEMO: TcxGridDBColumn
            DataBinding.FieldName = 'NMEMO'
            Visible = False
            VisibleForCustomization = False
          end
          object tvInvoicesPATH: TcxGridDBColumn
            Caption = 'Bill'
            DataBinding.FieldName = 'PATH'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
        end
        object tvSubBills: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSubBill
          DataController.DetailKeyFieldNames = 'NMEMO'
          DataController.KeyFieldNames = 'NMEMO;NSUBBILL_ID'
          DataController.MasterKeyFieldNames = 'NMEMO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          object tvSubBillsDEBTOR_NAME: TcxGridDBColumn
            Caption = 'Debtor'
            DataBinding.FieldName = 'DEBTOR_NAME'
            Options.Sorting = False
            Width = 137
          end
          object tvSubBillsPERCENTAGE: TcxGridDBColumn
            Caption = 'Split'
            DataBinding.FieldName = 'PERCENTAGE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            BestFitMaxWidth = 50
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 50
            Options.Sorting = False
            SortIndex = 0
            SortOrder = soDescending
            Width = 50
          end
          object tvSubBillsOWING: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Sorting = False
            Width = 59
          end
          object tvSubBillsFEES: TcxGridDBColumn
            Caption = 'Fees'
            DataBinding.FieldName = 'FEES'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Sorting = False
            Width = 60
          end
          object tvSubBillsDISB: TcxGridDBColumn
            Caption = 'Disburse'
            DataBinding.FieldName = 'DISB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Sorting = False
            Width = 59
          end
          object tvSubBillsUPCRED: TcxGridDBColumn
            Caption = 'Creditors'
            DataBinding.FieldName = 'UPCRED'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Sorting = False
            Width = 59
          end
          object tvSubBillsANTD: TcxGridDBColumn
            Caption = 'Cheq Req'
            DataBinding.FieldName = 'ANTD'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Sorting = False
            Width = 59
          end
          object tvSubBillsSUND: TcxGridDBColumn
            Caption = 'Sundry'
            DataBinding.FieldName = 'SUND'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Sorting = False
            Width = 60
          end
          object tvSubBillsTAX: TcxGridDBColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Sorting = False
            Width = 59
          end
          object tvSubBillsTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Sorting = False
            Width = 59
          end
        end
        object dbgrInvoicesLevel1: TcxGridLevel
          GridView = tvInvoices
          object dbgrInvoicesLevel2: TcxGridLevel
            GridView = tvSubBills
          end
        end
      end
    end
    object tabDocuments: TcxTabSheet
      Caption = 'Documents'
      ImageIndex = 14
      object grdClientDocs: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 430
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvClientDocs: TcxGridDBBandedTableView
          PopupMenu = popEmailDoc
          OnDblClick = tvClientDocsDblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = tvClientDocsCellClick
          DataController.DataSource = dsDocs
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          Bands = <
            item
              Width = 167
            end
            item
              Caption = 'Document Created'
              Width = 215
            end
            item
              Width = 121
            end
            item
              Caption = 'Document Modified'
              Width = 179
            end
            item
              Caption = 'EMail'
              Width = 329
            end
            item
              Width = 327
            end>
          object cxGridDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'Type'
            DataBinding.FieldName = 'IMAGEINDEX'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = ilstDocuments
            Properties.Items = <
              item
                Description = 'Workflow'
                ImageIndex = 3
                Value = 1
              end
              item
                Description = 'Word (doc)'
                ImageIndex = 2
                Value = 2
              end
              item
                Description = 'Excel (xsl)'
                ImageIndex = 0
                Value = 3
              end
              item
                Description = 'Email (msg)'
                ImageIndex = 4
                Value = 4
              end
              item
                Description = 'Unknown'
                ImageIndex = 5
              end
              item
                Description = 'PDF'
                ImageIndex = 1
                Value = 5
              end
              item
                Description = 'Internet URL'
                ImageIndex = 6
                Value = 6
              end>
            Properties.ShowDescriptions = False
            MinWidth = 33
            Options.HorzSizing = False
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvClientDocsDOC_NAME: TcxGridDBBandedColumn
            Caption = 'Document Name'
            DataBinding.FieldName = 'DOC_NAME'
            Width = 102
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn3: TcxGridDBBandedColumn
            Caption = 'On'
            DataBinding.FieldName = 'D_CREATE'
            Width = 110
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn4: TcxGridDBBandedColumn
            Caption = 'By'
            DataBinding.FieldName = 'AUTH1'
            Width = 61
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn5: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            Width = 97
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn6: TcxGridDBBandedColumn
            Caption = 'On'
            DataBinding.FieldName = 'D_MODIF'
            Width = 110
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn7: TcxGridDBBandedColumn
            Caption = 'By'
            DataBinding.FieldName = 'AUTH2'
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn8: TcxGridDBBandedColumn
            Caption = 'Sent To'
            DataBinding.FieldName = 'EMAIL_SENT_TO'
            Width = 194
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn9: TcxGridDBBandedColumn
            Caption = 'From'
            DataBinding.FieldName = 'EMAIL_FROM'
            Width = 196
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn10: TcxGridDBBandedColumn
            Caption = 'Keywords'
            DataBinding.FieldName = 'KEYWORDS'
            Width = 98
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn11: TcxGridDBBandedColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'DOC_NOTES'
            Width = 156
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn12: TcxGridDBBandedColumn
            Caption = 'Portal Access'
            DataBinding.FieldName = 'EXTERNAL_ACCESS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            MinWidth = 75
            Width = 75
            Position.BandIndex = 5
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumnDOCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DOCID'
            Visible = False
            VisibleForCustomization = False
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn14: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SEARCH'
            Visible = False
            VisibleForCustomization = False
            Width = 135
            Position.BandIndex = 5
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvClientDocsDISPLAY_PATH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DISPLAY_PATH'
            Visible = False
            VisibleForCustomization = False
            Width = 57
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvClientDocsDOCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DOCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 5
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tvClientDocs
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 430
        Width = 1079
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          1079
          35)
        object btnDocDelete: TBitBtn
          Left = 997
          Top = 5
          Width = 81
          Height = 26
          Anchors = [akRight, akBottom]
          Caption = '&Delete'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333333333333333333333333333333333F3333333333333
            30F33333F333333337333330F333333333333337FF3333333F3333000F333333
            0F3333777F333333733333000F333330F33333777FF33337F333333000F33300
            F333333777FF337733333333000F300F33333333777FF77333333333300000F3
            33333333377777333333333333000F333333333333777FF333333333300000F3
            33333333377777F333333333000F30F33333333F7773373FF333330000F33300
            F333337777333377FF3330000F3333300F333777733333377FF3300F33333333
            00F3377333333333773333333333333333333333333333333333}
          NumGlyphs = 2
          TabOrder = 0
          OnClick = btnDocDeleteClick
        end
        object btnPrecSearch: TBitBtn
          Left = 1086
          Top = 5
          Width = 78
          Height = 26
          Anchors = [akRight, akBottom]
          Caption = '&Search'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888800000888880000080F000888880F00080F000888880F
            0008000000080000000800F000000F00000800F000800F00000800F000800F00
            00088000000000000088880F00080F0008888800000800000888888000888000
            88888880F08880F0888888800088800088888888888888888888}
          TabOrder = 1
        end
        object btnDocAdd: TBitBtn
          Left = 914
          Top = 5
          Width = 79
          Height = 26
          Anchors = [akRight, akBottom]
          Caption = '&Add'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888888888888888888888800000000000888880FFFFFFFFF0888880FFFFFFFFF
            0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF
            0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F0
            8888880FFFFFF008888888000000008888888888888888888888}
          TabOrder = 2
          OnClick = btnDocAddClick
        end
        object btnDocEdit: TcxButton
          Left = 831
          Top = 5
          Width = 78
          Height = 26
          Anchors = [akRight, akBottom]
          Caption = '&Edit'
          Enabled = False
          LookAndFeel.Kind = lfStandard
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF003333
            CCFF3333CCFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF3399
            FFFF3399FFFF3399FFFF3333CCFF3333CCFF3333CCFFFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF3399FFFF66CC
            FFFF3399FFFF3399FFFF3399FFFF3399FFFF3399FFFF3333CCFF3333CCFF3333
            CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF6699FFFF66CC
            FFFF6699FFFF6699FFFF6699CCFF6699CCFF6699FFFF3399FFFF3399FFFF3399
            FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF3399
            FFFF3399FFFF6699CCFF996633FF996633FF996633FF6699CCFF66CCFFFF66CC
            FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF6699FFFF3399
            FFFF3399FFFF3399FFFF969696FFFFCC99FFFF9966FF996633FF996633FF9966
            33FF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF3399
            FFFF3399FFFF3399FFFF3399FFFF3399CCFF999999FFFFCC99FFFFCC66FFFF99
            33FFCC6633FFCC6633FFFFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF3399
            FFFF3366FFFF3399FFFF3399FFFF3399FFFF3399FFFF3399CCFF999999FFFFCC
            99FFFFCC99FFFF9966FFCC6633FFCC6633FFFFFFFF003333CCFF66CCFFFF3399
            FFFF3399FFFF3366FFFF6699FFFF6699FFFF3399FFFF3399FFFF3399CCFFCC66
            33FFCC6633FFFFCC99FFFFCC99FFFFCC99FFCC6633FF3333CCFF66CCFFFF66CC
            FFFF3399FFFF3366FFFF99CCFFFFF8F8F8FFD6E7E7FFC6D6EFFF66CCFFFF3399
            CCFF666699FFCC6633FFCC6633FFCC6633FFCC6633FF3333CCFF66CCFFFF3399
            FFFF3366FFFF3366FFFF66CCFFFF99CCFFFFCCFFFFFFFFFFCCFFC6D6EFFF3399
            FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF3399
            FFFF3399FFFF3366FFFF3366FFFF0066FFFF3366FFFF3399FFFF6699FFFF3399
            FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF99CC
            FFFFCCFFFFFFC6D6EFFF99CCFFFF66CCFFFF6699FFFF3399FFFF3399FFFF3399
            FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF3333
            CCFF3333CCFF6699CCFF6699FFFF99CCFFFF66CCFFFF99CCFFFF66CCFFFF3333
            CCFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF003333CCFF3333CCFF3333CCFFC6D6EFFF99CCFFFF3333CCFFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF3333CCFF3333CCFFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OptionsImage.Spacing = 5
          TabOrder = 3
          OnClick = btnDocEditClick
        end
        object btnDocPrint: TcxButton
          Left = 729
          Top = 5
          Width = 99
          Height = 26
          Anchors = [akRight, akBottom]
          Caption = 'Print Doc List'
          LookAndFeel.Kind = lfStandard
          OptionsImage.Spacing = 5
          TabOrder = 4
          OnClick = btnDocPrintClick
        end
        object edDocSearch: TcxTextEdit
          Left = 159
          Top = 6
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 238
        end
        object cbGroupExpanded: TcxCheckBox
          Left = 404
          Top = 6
          Caption = 'When grouped, maintain grouping expanded.'
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
        end
        object cxLabel3: TcxLabel
          Left = 1
          Top = 9
          Caption = 'Search Name or description:'
          Transparent = True
        end
      end
    end
  end
  object cxDBLabel2: TcxDBLabel
    Left = 365
    Top = 39
    DataBinding.DataField = 'SUPERCLIENT'
    DataBinding.DataSource = dsClients
    ParentColor = False
    ParentFont = False
    Properties.ShowAccelChar = False
    Style.HotTrack = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    StyleHot.BorderStyle = ebsFlat
    Height = 18
    Width = 166
  end
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FILEID, SHORTDESCR, matter.NMATTER, OPENED, PARTNER, AUTH' +
        'OR, TYPE, ARCHIVENUM, ROW_COLOUR, al.archivebox,'
      ' getWIPAmount(matter.NMATTER) AS unbill_fees_no_gst,'
      ' getUnbillDisbAmount( matter.NMATTER ) AS unbill_disb_no_gst,'
      ' getAntDisbAmount( matter.NMATTER ) AS unbill_antd_no_gst,'
      ' getSundriesAmount( matter.NMATTER ) AS unbill_sund_no_gst,'
      ' getClearedTrustAmount(matter.NMATTER ) AS cl_trust_bal,'
      ' getTrustBalAmount(matter.NMATTER ) AS trust_bal,'
      ' getDebtorsAmount(matter.NMATTER ) * -1 AS debtors,'
      ' getUbilledCheqReqAmount(matter.NMATTER ) AS unbilled_cheqreq,'
      ' getUnconCheqReq(matter.NMATTER) AS uncon_cheqreq,'
      ' getUnbillCredAmount(matter.NMATTER) AS UNBILL_CRED,'
      
        ' (SELECT NVL(SUM(amount),0) amount FROM investment_trans WHERE n' +
        'matter = matter.NMATTER) AS investment_balance,'
      ' getBillFees(matter.NMATTER) AS BILL_FEES,'
      
        ' (SELECT nvl(SUM(a.amount * -1),0) AS CredAmountNoGST FROM alloc' +
        ' a WHERE a.ninvoice is not null'
      '   AND a.nmatter = matter.nmatter AND a.billed = '#39'N'#39') Creditors,'
      
        ' TableValue('#39'MATTERSTATUS'#39','#39'CODE'#39','#39#39#39#39'||STATUS||'#39#39#39#39','#39'DESCR'#39') as' +
        ' matter_status'
      
        'FROM MATTER, DEBTORSTATUS, (SELECT archivebox, archvlocn, max(nm' +
        'atter) as nmatter, max(created) FROM archive_location group by a' +
        'rchivebox,archvlocn) al '
      'WHERE NCLIENT = :NCLIENT'
      'AND MATTER.NMATTER = al.nmatter(+)'
      'AND MATTER.DEBTORSTATUS = DEBTORSTATUS.DEBTORSTATUS(+)'
      'AND '
      '('
      'nvl(:FILTER,'#39'rbAllMatters'#39') = '#39'rbAllMatters'#39
      'OR (:FILTER = '#39'rbClosedMatters'#39' AND CLOSED = 1)'
      'OR (:FILTER = '#39'rbOpenMatters'#39' AND CLOSED = 0)'
      ')'
      'AND MATTER.ENTITY = NVL(:ENTITY, MATTER.ENTITY)'
      ''
      ''
      ''
      ''
      ''
      ''
      '/*'
      
        'SELECT FILEID, SHORTDESCR, NMATTER, OPENED, PARTNER, AUTHOR, TYP' +
        'E, ARCHIVENUM, ROW_COLOUR'
      'FROM MATTER, DEBTORSTATUS '
      'WHERE NCLIENT = :NCLIENT'
      'AND MATTER.DEBTORSTATUS = DEBTORSTATUS.DEBTORSTATUS(+)'
      'AND '
      '('
      'nvl(:FILTER,'#39'rbAllMatters'#39') = '#39'rbAllMatters'#39
      'OR (:FILTER = '#39'rbClosedMatters'#39' AND CLOSED = 1)'
      'OR (:FILTER = '#39'rbOpenMatters'#39' AND CLOSED = 0)'
      ')'
      'ORDER BY OPENED DESC, FILEID DESC'
      '*/')
    Left = 621
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object dsMatters: TUniDataSource
    DataSet = qryMatters
    Left = 678
    Top = 405
  end
  object qryTmpLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT L.*, L.ROWID FROM LEDGER L ORDER BY L.CREATED')
    Left = 862
    Top = 578
    object qryTmpLedgerREPORTER: TStringField
      FieldName = 'REPORTER'
      Size = 3
    end
    object qryTmpLedgerCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryTmpLedgerBANK: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object qryTmpLedgerREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object qryTmpLedgerDESCR: TStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object qryTmpLedgerAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qryTmpLedgerPARTNER: TStringField
      FieldName = 'PARTNER'
      Size = 3
    end
    object qryTmpLedgerBILLED: TStringField
      FieldName = 'BILLED'
      Size = 1
    end
    object qryTmpLedgerINVOICE: TIntegerField
      FieldName = 'INVOICE'
    end
    object qryTmpLedgerDEBIT: TFloatField
      FieldName = 'DEBIT'
      currency = True
    end
    object qryTmpLedgerCREDIT: TFloatField
      FieldName = 'CREDIT'
      currency = True
    end
    object qryTmpLedgerTRUSTDR: TFloatField
      FieldName = 'TRUSTDR'
      currency = True
    end
    object qryTmpLedgerTRUSTCR: TFloatField
      FieldName = 'TRUSTCR'
      currency = True
    end
    object qryTmpLedgerDEBTDR: TFloatField
      FieldName = 'DEBTDR'
      currency = True
    end
    object qryTmpLedgerDEBTCR: TFloatField
      FieldName = 'DEBTCR'
      currency = True
    end
    object qryTmpLedgerDISBDR: TFloatField
      FieldName = 'DISBDR'
      currency = True
    end
    object qryTmpLedgerDISBCR: TFloatField
      FieldName = 'DISBCR'
      currency = True
    end
    object qryTmpLedgerSUNDDR: TFloatField
      FieldName = 'SUNDDR'
      currency = True
    end
    object qryTmpLedgerSUNDCR: TFloatField
      FieldName = 'SUNDCR'
      currency = True
    end
    object qryTmpLedgerFEESDR: TFloatField
      FieldName = 'FEESDR'
      currency = True
    end
    object qryTmpLedgerFEESCR: TFloatField
      FieldName = 'FEESCR'
      currency = True
    end
    object qryTmpLedgerFILEID: TStringField
      FieldName = 'FILEID'
      Size = 12
    end
    object qryTmpLedgerTYPE: TStringField
      FieldName = 'TYPE'
      Size = 10
    end
    object qryTmpLedgerREASON: TStringField
      FieldName = 'REASON'
      Size = 100
    end
    object qryTmpLedgerROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object qryTmpSQL: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, AMOUNT, DESCR, BILLED, NMEMO, REFNO  FROM ALLOC ' +
        'WHERE NMATTER = :P_Matter AND TRUST <> '#39'T'#39' AND (NRECEIPT <> 0 OR' +
        ' TYPE = '#39'J2'#39')')
    Left = 1069
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qrySundLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUNDRY.NSUNDRY, SUNDRY.ACCT, SUNDRY.CREATED, SUNDRY.AMOUN' +
        'T, SUNDRY.DESCR, SUNDRY.UNITS, SUNDRY.BILLED, SUNDRY.NMEMO, SUND' +
        'RYTYPE.DESCR AS TYPEDESC  FROM SUNDRY, SUNDRYTYPE WHERE SUNDRY.N' +
        'MATTER = :P_Matter AND SUNDRYTYPE.CODE = SUNDRY.TYPE')
    Left = 931
    Top = 495
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qryFeesLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, BANK_ACCT, AMOUNT, DESCR, UNITS, MINS, BILLED, A' +
        'UTHOR, PARTNER, NMEMO  FROM FEE WHERE NMATTER = :P_Matter')
    Left = 937
    Top = 557
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qryPhoneBook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  p.rowid,'
      '  '
      '  NVL(P.SHORTNAME, M.SHORTNAME) as SHORTNAME, '
      '  NVL(P.NAME, M.NAME) as NAME,'
      '  NVL(P.LONGNAME, M.LONGNAME) as LONGNAME,'
      '  NVL(P.HOMEPHONE, M.HOMEPHONE) as HOMEPHONE,'
      '  NVL(P.WORKPHONE, M.WORKPHONE) as WORKPHONE,'
      '  NVL(P.MOBILE, M.MOBILE) as MOBILE,'
      '  NVL(P.FAX, M.FAX) as FAX,       '
      '  NVL(P.ADDRESS, M.ADDRESS) as ADDRESS,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, M.SUBURB), P.SUBURB) as ' +
        'SUBURB,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.STATE, M.STATE), P.STATE) as STA' +
        'TE,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, M.POSTCODE), P.POSTCOD' +
        'E) as POSTCODE,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, M.COUNTRY), P.COUNTRY) ' +
        'as COUNTRY,'
      '  NVL(P.DX, M.DX) as DX,'
      '  NVL(P.DXLOC, M.DXLOC) as DXLOC,'
      '  NVL(P.POSTALADDRESS, M.POSTALADDRESS) as POSTALADDRESS,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, M.POSTALSUBU' +
        'RB), P.POSTALSUBURB) as POSTALSUBURB,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, M.POSTALSTATE' +
        '), P.POSTALSTATE) as POSTALSTATE,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, M.POSTALPO' +
        'STCODE), P.POSTALPOSTCODE) as POSTALPOSTCODE,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, M.POSTALCOU' +
        'NTRY), P.POSTALCOUNTRY) as POSTALCOUNTRY,'
      '  NVL(P.EMAIL, M.EMAIL) as EMAIL,'
      '  NVL(P.WWW, M.WWW) as WWW,'
      '  NVL(P.SALUTATION, M.SALUTATION) as SALUTATION,'
      '  NVL(P.GIVENNAMES, M.GIVENNAMES) as GIVENNAMES,'
      '  NVL(P.LASTNAME, M.LASTNAME) as LASTNAME,'
      ''
      '  P.ACN,'
      '  P.ABN,'
      '  P.NNAME,'
      '  P.NCLIENT,'
      '  P.SEARCH,'
      '  P.TITLE,'
      '  P.GENDER,'
      '  P.CODE,'
      '  P.SPARTY,'
      '  P.SOLICITOR,'
      '  P.REAL_ESTATE,'
      '  P.REFERRALS,'
      '  P.NOTE,'
      '  P.MOD_DATE,'
      '  P.MOD_BY,'
      '  P.TYPE,'
      '  P.OCCUPATION,'
      '  P.DOB,'
      '  P.NNAMEMASTER,'
      '  P.WHICHADDRESS,'
      '  P.DEFAULT_REF,'
      '  P.ANTDISBS,'
      '  P.ANTDRS,'
      '  P.REFERRALCODE,'
      '  P.REFERREDBY,'
      '  P.INDUSTRYCODE,'
      '  P.REFERRALMAINTAINER,'
      '  NVL(P.CUST_ADDRESS, M.CUST_ADDRESS) as CUST_ADDRESS,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_SUBURB, M.CUST_SUBURB)' +
        ', P.CUST_SUBURB) as CUST_SUBURB,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_STATE, M.CUST_STATE), ' +
        'P.CUST_STATE) as CUST_STATE,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_POSTCODE, M.CUST_POSTC' +
        'ODE), P.CUST_POSTCODE) as CUST_POSTCODE,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, M.CUST_COUNTR' +
        'Y), P.CUST_COUNTRY) as CUST_COUNTRY,'
      '  g.descr                AS gender_descr,'
      '  g.searchcaption        AS gender_searchcaption,'
      '  g.namecaption          AS gender_namecaption,'
      '  g.longnamecaption      AS gender_longnamecaption,'
      '  g.shortnamecaption     AS gender_shortnamecaption,'
      '  g.titlecaption         AS gender_titlecaption,'
      '  g.acncaption           AS gender_acncaption,'
      '  g.occupationcaption    AS gender_occupationcaption,'
      '  g.clientnamecaption    AS gender_clientnamecaption,'
      '  g.clientcontactcaption AS gender_clientcontactcaption,'
      '  NVL(P.EMAIL1, M.EMAIL1) as EMAIL1,'
      '  NVL(P.EMAIL2, M.EMAIL2) as EMAIL2, '
      '  P.CLIENT_IMAGE'
      'FROM'
      '  phonebook p, gender g,'
      '  phonebook m'
      'WHERE'
      '  g.code(+) = p.gender'
      'AND'
      '  P.NCLIENT = :NCLIENT'
      'AND'
      '  p.nnamemaster = m.nname (+)'
      ''
      '/*'
      
        'SELECT P.*, P.ROWID FROM PHONEBOOK P WHERE P.NCLIENT = :NCLIENT ' +
        '*/')
    CachedUpdates = True
    Left = 996
    Top = 23
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
  end
  object dsPhoneBook: TUniDataSource
    DataSet = qryPhoneBook
    Left = 844
    Top = 65530
  end
  object qryArchived: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FILEID, SHORTDESCR, NARCHIVE, ARCHIVED, PARTNER, AUTHOR, ' +
        'TYPE FROM ARCHIVE WHERE NCLIENT = :NCLIENT')
    Left = 622
    Top = 453
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
  end
  object dsArchived: TUniDataSource
    DataSet = qryArchived
    Left = 678
    Top = 453
  end
  object dsNotes: TUniDataSource
    DataSet = qryNotes
    Left = 1106
    Top = 545
  end
  object qryNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CN.NCLIENT, CN.CREATED, CN.NOTES, CN.ROWID '
      'FROM CLIENTNOTE CN WHERE CN.NCLIENT = :NCLIENT')
    CachedUpdates = True
    Left = 890
    Top = 474
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
  end
  object qryUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT * FROM PBGROUPINGS WHERE NNAME = :NNAME AND CATEGORY = :C' +
        'ATEGORY')
    Left = 1045
    Top = 436
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CATEGORY'
        Value = nil
      end>
  end
  object qryGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM CLIENTGROUP ORDER BY CATEGORY')
    Left = 1003
    Top = 461
  end
  object qryGroupings: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT * FROM CLIENTGROUPINGS WHERE NCLIENT = :NCLIENT AND CATEG' +
        'ORY = :CATEGORY')
    Left = 978
    Top = 610
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CATEGORY'
        Value = nil
      end>
  end
  object qOtherClients: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  p.nname, '
      '  p.search, '
      '  p.name'
      'FROM '
      '  phonebook p,'
      '  phonebook x'
      'WHERE x.nclient = :nclient'
      '  AND p.nnamemaster = x.nname'
      'ORDER BY '
      '  name desc')
    ReadOnly = True
    Left = 562
    Top = 230
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
      end>
    Images = ilstToolbar
    Left = 805
    Top = 128
    StyleName = 'XP Style'
    object actNew: TAction
      Caption = '&New'
      OnExecute = actNewExecute
    end
    object actEdit: TAction
      Caption = '&Edit'
      OnExecute = actEditExecute
    end
    object actPrint: TAction
      Caption = 'Print'
      OnExecute = actPrintExecute
    end
    object actDelete: TAction
      Caption = 'Delete'
      OnExecute = actDeleteExecute
    end
    object actNewClient: TAction
      Caption = 'actNewClient'
      ImageIndex = 0
      OnExecute = actNewClientExecute
    end
    object actEditClient: TAction
      Caption = 'actEditClient'
      ImageIndex = 1
      OnExecute = actEditClientExecute
    end
    object actDeleteClient: TAction
      Caption = 'actDeleteClient'
      ImageIndex = 2
      OnExecute = actDeleteClientExecute
    end
    object actNewMatter: TAction
      Caption = 'New Matter'
      ImageIndex = 3
      OnExecute = actNewMatterExecute
    end
    object actEditMatter: TAction
      Caption = 'Edit Matter'
      Enabled = False
      ImageIndex = 4
      OnExecute = actEditMatterExecute
    end
    object actFindMatter: TAction
      Caption = 'Find Client'
      Hint = 'Find Client'
      ImageIndex = 9
      OnExecute = actFindMatterExecute
    end
    object actSnapshot: TAction
      Caption = 'Snapshot'
      ImageIndex = 10
      OnExecute = actSnapshotExecute
    end
    object actNavFirst: TAction
      Caption = 'NavFirst'
      ImageIndex = 5
      OnExecute = actNavFirstExecute
    end
    object actNavPrevious: TAction
      Caption = 'Previous'
      ImageIndex = 6
      OnExecute = actNavPreviousExecute
    end
    object actNavNext: TAction
      Caption = 'Next'
      ImageIndex = 7
      OnExecute = actNavNextExecute
    end
    object actNavLast: TAction
      Caption = 'Last'
      ImageIndex = 8
      OnExecute = actNavLastExecute
    end
    object actPositionReport: TAction
      Caption = 'Position Report'
      ImageIndex = 11
      OnExecute = actPositionReportExecute
    end
    object actComboByDate: TAction
      Caption = 'actComboByDate'
      OnExecute = actComboByDateExecute
    end
    object actMatterArchive: TAction
      Caption = 'Archive'
      Enabled = False
      ImageIndex = 14
      OnExecute = actMatterArchiveExecute
    end
    object actOpenMatter: TAction
      Caption = 'Open Matter'
      Enabled = False
      ImageIndex = 15
      OnExecute = actOpenMatterExecute
    end
    object actDeleteMatter: TAction
      Caption = 'Delete Matter'
      Enabled = False
      Hint = 'Delete Matter'
    end
    object aRelationshipNew: TAction
      Category = 'Relationship'
      Caption = 'New'
      ImageIndex = 19
      OnExecute = aRelationshipNewExecute
    end
    object aRelationshipOpen: TAction
      Category = 'Relationship'
      Caption = 'Open'
      ImageIndex = 18
      OnExecute = aRelationshipOpenExecute
      OnUpdate = aRelationshipOpenUpdate
    end
    object aRelationshipEdit: TAction
      Category = 'Relationship'
      Caption = 'Edit'
      ImageIndex = 20
      OnExecute = aRelationshipEditExecute
      OnUpdate = aRelationshipEditUpdate
    end
    object aRelationshipDelete: TAction
      Category = 'Relationship'
      Caption = 'Delete'
      ImageIndex = 2
      OnExecute = aRelationshipDeleteExecute
      OnUpdate = aRelationshipDeleteUpdate
    end
    object aRelationshipMerge: TAction
      Category = 'Relationship'
      Caption = 'Merge File'
      ImageIndex = 16
      OnExecute = aRelationshipMergeExecute
      OnUpdate = aRelationshipMergeUpdate
    end
    object aRelationshipPrint: TAction
      Category = 'Relationship'
      Caption = 'Print Selected'
      ImageIndex = 11
      OnExecute = aRelationshipPrintExecute
      OnUpdate = aRelationshipPrintUpdate
    end
  end
  object ppDocReg: TppDBPipeline
    DataSource = dsDocReg
    CloseDataSource = True
    UserName = 'DocReg'
    Left = 625
    Top = 577
    object ppDocRegppField1: TppField
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object ppDocRegppField2: TppField
      FieldAlias = 'PACKETID'
      FieldName = 'PACKETID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDocRegppField3: TppField
      FieldAlias = 'LODGED'
      FieldName = 'LODGED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object ppDocRegppField4: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 3
    end
    object ppDocRegppField5: TppField
      FieldAlias = 'ADDRESS_PATH'
      FieldName = 'ADDRESS_PATH'
      FieldLength = 255
      DisplayWidth = 255
      Position = 4
    end
    object ppDocRegppField6: TppField
      FieldAlias = 'SENT'
      FieldName = 'SENT'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppDocRegppField7: TppField
      FieldAlias = 'LOCATION'
      FieldName = 'LOCATION'
      FieldLength = 400
      DisplayWidth = 400
      Position = 6
    end
    object ppDocRegppField8: TppField
      FieldAlias = 'REVIEWDATE'
      FieldName = 'REVIEWDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object ppDocRegppField9: TppField
      FieldAlias = 'NDOCREG'
      FieldName = 'NDOCREG'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object ppDocRegppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'REALPACK'
      FieldName = 'REALPACK'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppDocRegppField11: TppField
      FieldAlias = 'CLCODE'
      FieldName = 'CLCODE'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 10
    end
    object ppDocRegppField12: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 11
    end
    object ppDocRegppField13: TppField
      FieldAlias = 'DESTROY_DATE'
      FieldName = 'DESTROY_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppDocRegppField14: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 13
    end
  end
  object ppClient: TppDBPipeline
    DataSource = dsClients
    CloseDataSource = True
    UserName = 'Client'
    Left = 630
    Top = 626
    object ppClientppField1: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppClientppField2: TppField
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object ppClientppField3: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 85
      DisplayWidth = 85
      Position = 2
    end
    object ppClientppField4: TppField
      FieldAlias = 'CONTACT'
      FieldName = 'CONTACT'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object ppClientppField5: TppField
      FieldAlias = 'GENDER'
      FieldName = 'GENDER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object ppClientppField6: TppField
      FieldAlias = 'CLIENTGROUP'
      FieldName = 'CLIENTGROUP'
      FieldLength = 25
      DisplayWidth = 25
      Position = 5
    end
    object ppClientppField7: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 85
      DisplayWidth = 85
      Position = 6
    end
    object ppClientppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MATTERS'
      FieldName = 'MATTERS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppClientppField9: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppClientppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ARCHIVES'
      FieldName = 'ARCHIVES'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppClientppField11: TppField
      FieldAlias = 'BANKERS'
      FieldName = 'BANKERS'
      FieldLength = 85
      DisplayWidth = 85
      Position = 10
    end
    object ppClientppField12: TppField
      FieldAlias = 'CREDIT_RATING'
      FieldName = 'CREDIT_RATING'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppClientppField13: TppField
      FieldAlias = 'PREV_NCMAUDIT'
      FieldName = 'PREV_NCMAUDIT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 12
    end
    object ppClientppField14: TppField
      FieldAlias = 'TAXNO'
      FieldName = 'TAXNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppClientppField15: TppField
      FieldAlias = 'INTRODUCED'
      FieldName = 'INTRODUCED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object ppClientppField16: TppField
      FieldAlias = 'INTRODUCER'
      FieldName = 'INTRODUCER'
      FieldLength = 3
      DisplayWidth = 3
      Position = 15
    end
    object ppClientppField17: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 16
    end
    object ppClientppField18: TppField
      FieldAlias = 'FEECODE'
      FieldName = 'FEECODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 17
    end
    object ppClientppField19: TppField
      FieldAlias = 'FORMAT_FILE'
      FieldName = 'FORMAT_FILE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 18
    end
    object ppClientppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'MATTERSEQ'
      FieldName = 'MATTERSEQ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppClientppField21: TppField
      FieldAlias = 'BILLTEMPLATE'
      FieldName = 'BILLTEMPLATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object ppClientppField22: TppField
      FieldAlias = 'ARCHVLOCN'
      FieldName = 'ARCHVLOCN'
      FieldLength = 400
      DisplayWidth = 400
      Position = 21
    end
    object ppClientppField23: TppField
      FieldAlias = 'DATEARCHV'
      FieldName = 'DATEARCHV'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 22
    end
    object ppClientppField24: TppField
      FieldAlias = 'DATEREVIEW'
      FieldName = 'DATEREVIEW'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 23
    end
    object ppClientppField25: TppField
      FieldAlias = 'DATEDSTRN'
      FieldName = 'DATEDSTRN'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
    object ppClientppField26: TppField
      FieldAlias = 'SOURCE'
      FieldName = 'SOURCE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 25
    end
    object ppClientppField27: TppField
      FieldAlias = 'BGROUP'
      FieldName = 'BGROUP'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 26
    end
    object ppClientppField28: TppField
      FieldAlias = 'INDUSTRY'
      FieldName = 'INDUSTRY'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 27
    end
    object ppClientppField29: TppField
      FieldAlias = 'NPKTS'
      FieldName = 'NPKTS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 28
    end
    object ppClientppField30: TppField
      FieldAlias = 'DFLTLCODE'
      FieldName = 'DFLTLCODE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 29
    end
    object ppClientppField31: TppField
      FieldAlias = 'NMACLOSED'
      FieldName = 'NMACLOSED'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 30
    end
    object ppClientppField32: TppField
      FieldAlias = 'NDRCLOSED'
      FieldName = 'NDRCLOSED'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 31
    end
    object ppClientppField33: TppField
      FieldAlias = 'NDRARCHV'
      FieldName = 'NDRARCHV'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 32
    end
    object ppClientppField34: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 33
    end
    object ppClientppField35: TppField
      FieldAlias = 'TRSTMNT'
      FieldName = 'TRSTMNT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 34
    end
    object ppClientppField36: TppField
      FieldAlias = 'ADISINVRECV'
      FieldName = 'ADISINVRECV'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 35
    end
    object ppClientppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUST_BAL'
      FieldName = 'TRUST_BAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object ppClientppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'CL_TRUST_BAL'
      FieldName = 'CL_TRUST_BAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object ppClientppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_FEES'
      FieldName = 'UNBILL_FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object ppClientppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTORS'
      FieldName = 'DEBTORS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object ppClientppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNBILL_DISB'
      FieldName = 'UNBILL_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object ppClientppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'BILL_FEES'
      FieldName = 'BILL_FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object ppClientppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'BILL_DISB'
      FieldName = 'BILL_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object ppClientppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_LIMIT'
      FieldName = 'CREDIT_LIMIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object ppClientppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD0'
      FieldName = 'PERIOD0'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppClientppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD1'
      FieldName = 'PERIOD1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object ppClientppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD2'
      FieldName = 'PERIOD2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 46
    end
    object ppClientppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD3'
      FieldName = 'PERIOD3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object ppClientppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUDGET_FEES'
      FieldName = 'BUDGET_FEES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
    object ppClientppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUDGET_DISB'
      FieldName = 'BUDGET_DISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 49
    end
    object ppClientppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUDGET_TOTAL'
      FieldName = 'BUDGET_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 50
    end
    object ppClientppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBTHRESHOLD'
      FieldName = 'DISBTHRESHOLD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 51
    end
    object ppClientppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDISBS'
      FieldName = 'ANTDISBS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 52
    end
    object ppClientppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDRS'
      FieldName = 'ANTDRS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 53
    end
    object ppClientppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBSWOFF'
      FieldName = 'DISBSWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 54
    end
    object ppClientppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'DRSWOFF'
      FieldName = 'DRSWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object ppClientppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'WIPWOFF'
      FieldName = 'WIPWOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 56
    end
    object ppClientppField58: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 57
    end
    object ppClientppField59: TppField
      FieldAlias = 'MODIFIED'
      FieldName = 'MODIFIED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 58
    end
    object ppClientppField60: TppField
      FieldAlias = 'NDEBTORTASKTEMPLATE'
      FieldName = 'NDEBTORTASKTEMPLATE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 59
    end
    object ppClientppField61: TppField
      FieldAlias = 'FEE_TAX_BASIS'
      FieldName = 'FEE_TAX_BASIS'
      FieldLength = 10
      DisplayWidth = 10
      Position = 60
    end
    object ppClientppField62: TppField
      FieldAlias = 'ALLOW_MATTERS'
      FieldName = 'ALLOW_MATTERS'
      FieldLength = 10
      DisplayWidth = 10
      Position = 61
    end
    object ppClientppField63: TppField
      FieldAlias = 'CLIENT_PACK'
      FieldName = 'CLIENT_PACK'
      FieldLength = 5
      DisplayWidth = 5
      Position = 62
    end
    object ppClientppField64: TppField
      FieldAlias = 'DISP_CLIENT_PACK'
      FieldName = 'DISP_CLIENT_PACK'
      FieldLength = 29
      DisplayWidth = 29
      Position = 63
    end
    object ppClientppField65: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 64
    end
    object ppClientppField66: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 65
    end
    object ppClientppField67: TppField
      FieldAlias = 'DOB'
      FieldName = 'DOB'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 66
    end
    object ppClientppField68: TppField
      FieldAlias = 'CLIENT_IMAGE'
      FieldName = 'CLIENT_IMAGE'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppClientppField69: TppField
      FieldAlias = 'DATE_OF_DEATH'
      FieldName = 'DATE_OF_DEATH'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 68
    end
  end
  object qryPacket: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   /*D.*,*/'
      
        '         d.address_path, dr.packetid, TO_NUMBER (dr.envelope) AS' +
        ' envelope,'
      
        '         dr.nclient, dr.lodged, dr.descr AS item_description, dr' +
        '.sent,'
      
        '         dr.LOCATION, dr.reviewdate, dr.date_released, dr.releas' +
        'ed_to,'
      
        '         dr.date_returned, dr.ndocument, d.descr AS packet_descr' +
        'iption,'
      '         dt.description AS document_type'
      '    FROM docregitem dr, document_type dt, docreg d'
      '   WHERE d.nclient = :nclient'
      '     AND d.ndocreg = :ndocreg'
      '     AND CASE'
      
        '           WHEN (:showalldate = '#39'Y'#39' AND nvl(trunc(dr.date_releas' +
        'ed),trunc(sysdate)) = nvl(trunc(dr.date_released),trunc(sysdate)' +
        ') )'
      '               THEN 1'
      
        '            WHEN (:showalldate = '#39'N'#39' AND dr.date_released IS NUL' +
        'L)'
      '               THEN 1'
      '            ELSE 0'
      '         END = 1'
      '     AND dr.document_type = dt.document_type(+)'
      '     AND d.ndocreg = dr.ndocreg'
      'ORDER BY envelope')
    Left = 1066
    Top = 87
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ndocreg'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'showalldate'
        Value = nil
      end>
  end
  object dsPacket: TUniDataSource
    DataSet = qryPacket
    Left = 1138
    Top = 34
  end
  object qryDocReg: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO DOCREG'
      
        '  (NCLIENT, PACKETID, LODGED, DESCR, ADDRESS_PATH, SENT, LOCATIO' +
        'N, REVIEWDATE, NDOCREG)'
      'VALUES'
      
        '  (:NCLIENT, :PACKETID, :LODGED, :DESCR, :ADDRESS_PATH, :SENT, :' +
        'LOCATION, :REVIEWDATE, :NDOCREG)')
    SQLRefresh.Strings = (
      'WHERE'
      '  D.NCLIENT = :NCLIENT')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.NCLIENT,D.PACKETID,D.LODGED,D.DESCR,D.ADDRESS_PATH,'
      
        '  D.SENT,D.LOCATION,D.REVIEWDATE,D.NDOCREG, 1 AS REALPACK, getcl' +
        'ientcode(d.nclient) as clcode,'
      '  getclientname(d.nclient) as name, D.DESTROY_DATE, D.ROWID'
      'FROM DOCREG D'
      'WHERE'
      'NCLIENT = :NCLIENT'
      'union'
      'SELECT D.NCLIENT,D.PACKETID,D.LODGED,D.DESCR,D.ADDRESS_PATH,'
      
        '  D.SENT,D.LOCATION,D.REVIEWDATE,D.NDOCREG,0 AS REALPACK,getclie' +
        'ntcode(d.nclient) as clcode,'
      '  getclientname(d.nclient) as name, D.DESTROY_DATE, D.ROWID'
      'FROM DOCREG D'
      'WHERE '
      'ndocreg in (select ndocreg from phonebook p, docreg_parties dp  '
      
        '   where dp.nname = p.nname and p.NCLIENT = :NCLIENT AND d.nclie' +
        'nt <> p.nclient)'
      'ORDER BY 2')
    CachedUpdates = True
    Options.FullRefresh = True
    FilterOptions = [foCaseInsensitive]
    AfterInsert = qryDocRegAfterInsert
    AfterEdit = qryDocRegAfterEdit
    BeforePost = qryDocRegBeforePost
    AfterPost = qryDocRegAfterPost
    AfterDelete = qryDocRegAfterDelete
    AfterScroll = qryDocRegAfterScroll
    Left = 758
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
  end
  object qryDocReg2: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT D.PACKETID,to_number(D.ENVELOPE) as ENVELOPE,D.NCLIENT,D.' +
        'LODGED,'
      '  D.DESCR,D.SENT,D.LOCATION,D.REVIEWDATE,D.DATE_RELEASED,'
      '  D.RELEASED_TO,D.DATE_RETURNED,D.NDOCUMENT, D.REQUESTED_DATE,'
      
        '  DT.DESCRIPTION ,IsPacketOut(D.NDOCUMENT) packetinout, image, I' +
        'MAGE_EXT'
      'FROM DOCREGITEM D,'
      ' DOCUMENT_TYPE DT'
      'WHERE NDOCREG = :NDOCREG '
      '  AND D.DOCUMENT_TYPE = DT.DOCUMENT_TYPE(+)'
      'order by 2')
    CachedUpdates = True
    FilterOptions = [foCaseInsensitive]
    Left = 957
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NDOCREG'
        Value = nil
      end>
  end
  object dsDocReg: TUniDataSource
    DataSet = qryDocReg
    Left = 839
    Top = 264
  end
  object qryMarketing: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 886
    Top = 144
  end
  object qryClientBalances: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' getClientWIPNoTax(:P_File ) AS unbill_fees,'
      ' getClientUnbillDisbAmount(:P_File ) AS unbill_disb,'
      ' getClientClearedTrustAmount (:P_File ) AS cl_trust_bal,'
      ' getClientTrustBalAmount(:P_File ) AS trust_bal,'
      ' ABS(getClientDebtorsAmount(:P_File))  AS debtors,'
      ' getClientBillFees(:P_File ) AS bill_fees'
      'FROM'
      '  dual ')
    Left = 567
    Top = 271
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
    object qryClientBalancesUNBILL_FEES: TFloatField
      FieldName = 'UNBILL_FEES'
      currency = True
    end
    object qryClientBalancesUNBILL_DISB: TFloatField
      FieldName = 'UNBILL_DISB'
      currency = True
    end
    object qryClientBalancesCL_TRUST_BAL: TFloatField
      FieldName = 'CL_TRUST_BAL'
      currency = True
    end
    object qryClientBalancesTRUST_BAL: TFloatField
      FieldName = 'TRUST_BAL'
      currency = True
    end
    object qryClientBalancesDEBTORS: TFloatField
      FieldName = 'DEBTORS'
      currency = True
    end
    object qryClientBalancesBILL_FEES: TFloatField
      FieldName = 'BILL_FEES'
      currency = True
    end
  end
  object dsClientBalances: TUniDataSource
    DataSet = qryClientBalances
    Left = 566
    Top = 317
  end
  object qryMatterCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT COUNT(NMATTER) "MATTERS" FROM MATTER WHERE NCLIENT = :NCL' +
        'IENT')
    Left = 776
    Top = 479
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
  end
  object dsMatterCount: TUniDataSource
    DataSet = qryMatterCount
    Left = 838
    Top = 463
  end
  object qryArchMatterCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT COUNT(NMATTER) "ARCHIVES" FROM MATTER '
      'WHERE NCLIENT = :NCLIENT AND CLOSED = 1'
      'AND ARCHIVED IS NOT NULL')
    Left = 744
    Top = 519
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
  end
  object dsArchMatterCount: TUniDataSource
    DataSet = qryArchMatterCount
    Left = 804
    Top = 508
  end
  object qryArchiveTblCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT COUNT(NARCHIVE) AS ARCH_COUNT FROM ARCHIVE WHERE NCLIENT ' +
        '= :NCLIENT')
    Left = 39
    Top = 460
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
  end
  object qryParticipantEvents: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select ep.event_part_id,e.event,e.event_date,e.event_time,'
      'ep.attended,ep.accepted,ep.declined,ep.printed,p.search,'
      'ep.notes'
      'from'
      'event e, event_participant ep, phonebook p'
      'where e.event_id = ep.event_id'
      'and ep.nname = :nname'
      'and ep.alt_name = p.nname (+)')
    Left = 744
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qryParticipantEventsEVENT_PART_ID: TLargeintField
      FieldName = 'EVENT_PART_ID'
      ReadOnly = True
      Required = True
    end
    object qryParticipantEventsEVENT: TStringField
      FieldName = 'EVENT'
      Required = True
      Size = 60
    end
    object qryParticipantEventsEVENT_DATE: TDateTimeField
      FieldName = 'EVENT_DATE'
    end
    object qryParticipantEventsEVENT_TIME: TStringField
      FieldName = 'EVENT_TIME'
      FixedChar = True
      Size = 5
    end
    object qryParticipantEventsATTENDED: TStringField
      FieldName = 'ATTENDED'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryParticipantEventsACCEPTED: TStringField
      FieldName = 'ACCEPTED'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryParticipantEventsDECLINED: TStringField
      FieldName = 'DECLINED'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryParticipantEventsPRINTED: TStringField
      FieldName = 'PRINTED'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryParticipantEventsSEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Size = 85
    end
    object qryParticipantEventsNOTES: TStringField
      FieldName = 'NOTES'
      ReadOnly = True
      Size = 250
    end
  end
  object dsParticipantEvents: TUniDataSource
    DataSet = qryParticipantEvents
    Left = 785
    Top = 416
  end
  object qPartyDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.nname  AS nname,'
      '  NVL(P.GIVENNAMES, M.GIVENNAMES) AS partygivennames,'
      '  NVL(P.LASTNAME, M.LASTNAME)  AS partylastname,'
      '  p.search AS partysearch,'
      '  p.title  AS partytitle,'
      '  p.gender AS partygender,'
      '  TRIM(DECODE(p.WHICHADDRESS,'
      #39'S'#39', NVL(P.ADDRESS, M.ADDRESS) ||'
      '     chr(13) || chr(10) || '
      
        #9' DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, M.SUBURB), P.SUBURB) || ' +
        #39' '#39' || '
      
        #9' DECODE(P.ADDRESS, NULL, NVL(P.STATE, M.STATE), P.STATE) || '#39' '#39 +
        ' || '
      
        #9' DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, M.POSTCODE), P.POSTCOD' +
        'E) ||'
      
        '     DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, M.COUNTRY), P' +
        '.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL,' +
        ' NVL(P.COUNTRY, M.COUNTRY), P.COUNTRY)),'
      'NULL, NVL(P.ADDRESS, M.ADDRESS) ||'
      '      chr(13) || chr(10) || '
      
        #9'  DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, M.SUBURB), P.SUBURB) ||' +
        ' '#39' '#39' || '
      
        #9'  DECODE(P.ADDRESS, NULL, NVL(P.STATE, M.STATE), P.STATE) || '#39' ' +
        #39' || '
      
        #9'  DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, M.POSTCODE), P.POSTCO' +
        'DE) ||'
      
        '      DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, M.COUNTRY), ' +
        'P.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || NVL(P.COUNTRY, M.COUNT' +
        'RY)),'
      #39'P'#39', NVL(P.POSTALADDRESS, M.POSTALADDRESS) ||'
      '     chr(13) || chr(10) || '
      
        #9' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, M.POSTALSUBU' +
        'RB), P.POSTALSUBURB) || '#39' '#39' || '
      
        #9' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, M.POSTALSTATE' +
        '), P.POSTALSTATE) || '#39' '#39' || '
      
        #9' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, M.POSTALPO' +
        'STCODE), P.POSTALPOSTCODE) ||'
      
        '     DECODE(DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, M' +
        '.POSTALCOUNTRY), P.POSTALCOUNTRY),NULL,'#39#39', chr(13) || chr(10) ||' +
        ' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, M.POSTALCOUN' +
        'TRY), P.POSTALCOUNTRY)),'
      
        #39'D'#39', '#39'DX '#39' || NVL(P.DX, M.DX) || chr(13) || chr(10) || NVL(P.DXL' +
        'OC, M.DXLOC)'
      ')) AS partyaddress,'
      '  NVL(P.SALUTATION, M.SALUTATION)         AS partysalutation,'
      '  NVL(P.WORKPHONE, M.WORKPHONE)           AS partyworkphone,'
      '  NVL(P.HOMEPHONE, M.HOMEPHONE)           AS partyhomephone,'
      '  NVL(P.DX, M.DX)                         AS partydx,'
      '  NVL(P.DXLOC, M.DXLOC)                   AS partydxloc,'
      '  NVL(P.FAX, M.FAX)                       AS partyfax,'
      '  p.code                                  AS partycode,'
      '  p.sparty                                AS partysparty,'
      '  p.solicitor                             AS partysolicitor,'
      '  p.real_estate                           AS partyreal_estate,'
      '  p.referrals                             AS partyreferrals,'
      '  p.note                                  AS partynote,'
      '  NVL(P.NAME, M.NAME)                     AS partyname,'
      '  NVL(P.SHORTNAME, M.SHORTNAME)           AS partyshortname,'
      '  NVL(P.LONGNAME, M.LONGNAME)             AS partylongname,'
      '  p.mod_date                              AS partymod_date,'
      '  p.mod_by                                AS partymod_by,'
      '  p.type                                  AS partytype,'
      '  NVL(P.COUNTRY, M.COUNTRY)               AS partycountry,'
      '  p.acn                                   AS partyacn,'
      '  p.occupation                            AS partyoccupation,'
      '  p.dob                                   AS partydob,'
      '  NVL(P.EMAIL, M.EMAIL)                   AS partyemail,'
      '  NVL(P.WWW, M.WWW)                       AS partywww,'
      '  NVL(P.MOBILE, M.MOBILE)                 AS partymobile,'
      '  NVL(P.ADDRESS, M.ADDRESS)               AS address,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, M.SUBURB), P.SUBURB)    ' +
        '                           AS suburb,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.STATE, M.STATE), P.STATE)       ' +
        '                           AS state,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, M.POSTCODE), P.POSTCOD' +
        'E)                         AS postcode,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, M.COUNTRY), P.COUNTRY) ' +
        '                           AS country,'
      
        '  NVL(P.POSTALADDRESS, M.POSTALADDRESS)                         ' +
        '                           AS postaladdress,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, M.POSTALSUBU' +
        'RB), P.POSTALSUBURB)       AS postalsuburb,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, M.POSTALSTATE' +
        '), P.POSTALSTATE)          AS postalstate,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, M.POSTALPO' +
        'STCODE), P.POSTALPOSTCODE) AS postalpostcode,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, M.POSTALCOU' +
        'NTRY), P.POSTALCOUNTRY)    AS postalcountry,'
      ''
      '  P.CUST_ADDRESS,'
      '  P.CUST_SUBURB,'
      '  P.CUST_STATE,'
      '  P.CUST_POSTCODE,'
      '  P.CUST_COUNTRY,  '
      '  p.whichaddress   AS whichaddress,'
      '  DECODE(p.gender,'#39'M'#39','#39'he'#39','#39'F'#39','#39'she'#39',NULL) AS HESHE,'
      '  DECODE(p.gender,'#39'M'#39','#39'him'#39','#39'F'#39','#39'her'#39',NULL) AS HIMHER,'
      '  DECODE(p.gender,'#39'M'#39','#39'his'#39','#39'F'#39','#39'her'#39',NULL) AS HISHER,'
      '  DECODE(p.gender,'#39'M'#39','#39'Sir'#39','#39'F'#39','#39'Madam'#39',NULL) AS SIRMADAM,'
      '  C.NCLIENT AS CLIENT_NUMBER,'
      '  C.CODE AS CLIENT_CODE,'
      '  C.PARTNER AS PARTNER_CODE'
      'FROM'
      '  CLIENT C,'
      '  PHONEBOOK P,'
      '  PHONEBOOK M'
      'WHERE p.nnamemaster = m.nname (+) AND'
      '  P.NCLIENT = C.NCLIENT AND'
      '  C.NCLIENT = :NCLIENT'
      '')
    Left = 795
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
    object qPartyDetailsNNAME: TFloatField
      FieldName = 'NNAME'
      Required = True
    end
    object qPartyDetailsPARTYGIVENNAMES: TStringField
      FieldName = 'PARTYGIVENNAMES'
      Size = 60
    end
    object qPartyDetailsPARTYLASTNAME: TStringField
      FieldName = 'PARTYLASTNAME'
      Size = 60
    end
    object qPartyDetailsPARTYSEARCH: TStringField
      FieldName = 'PARTYSEARCH'
      Size = 85
    end
    object qPartyDetailsPARTYTITLE: TStringField
      FieldName = 'PARTYTITLE'
      Size = 40
    end
    object qPartyDetailsPARTYGENDER: TStringField
      FieldName = 'PARTYGENDER'
      Size = 1
    end
    object qPartyDetailsPARTYADDRESS: TStringField
      FieldName = 'PARTYADDRESS'
      Size = 246
    end
    object qPartyDetailsPARTYSALUTATION: TStringField
      FieldName = 'PARTYSALUTATION'
      Size = 40
    end
    object qPartyDetailsPARTYWORKPHONE: TStringField
      FieldName = 'PARTYWORKPHONE'
      Size = 30
    end
    object qPartyDetailsPARTYHOMEPHONE: TStringField
      FieldName = 'PARTYHOMEPHONE'
      Size = 30
    end
    object qPartyDetailsPARTYDX: TStringField
      FieldName = 'PARTYDX'
      Size = 6
    end
    object qPartyDetailsPARTYDXLOC: TStringField
      FieldName = 'PARTYDXLOC'
      Size = 50
    end
    object qPartyDetailsPARTYFAX: TStringField
      FieldName = 'PARTYFAX'
      Size = 30
    end
    object qPartyDetailsPARTYCODE: TStringField
      FieldName = 'PARTYCODE'
    end
    object qPartyDetailsPARTYSPARTY: TStringField
      FieldName = 'PARTYSPARTY'
      Size = 1
    end
    object qPartyDetailsPARTYSOLICITOR: TStringField
      FieldName = 'PARTYSOLICITOR'
      Size = 1
    end
    object qPartyDetailsPARTYREAL_ESTATE: TStringField
      FieldName = 'PARTYREAL_ESTATE'
      Size = 1
    end
    object qPartyDetailsPARTYREFERRALS: TIntegerField
      FieldName = 'PARTYREFERRALS'
    end
    object qPartyDetailsPARTYNOTE: TStringField
      FieldName = 'PARTYNOTE'
      Size = 400
    end
    object qPartyDetailsPARTYNAME: TStringField
      FieldName = 'PARTYNAME'
      Size = 85
    end
    object qPartyDetailsPARTYSHORTNAME: TStringField
      FieldName = 'PARTYSHORTNAME'
      Size = 40
    end
    object qPartyDetailsPARTYLONGNAME: TStringField
      FieldName = 'PARTYLONGNAME'
      Size = 150
    end
    object qPartyDetailsPARTYMOD_DATE: TDateTimeField
      FieldName = 'PARTYMOD_DATE'
    end
    object qPartyDetailsPARTYMOD_BY: TStringField
      FieldName = 'PARTYMOD_BY'
      Size = 3
    end
    object qPartyDetailsPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      Size = 1
    end
    object qPartyDetailsPARTYCOUNTRY: TStringField
      FieldName = 'PARTYCOUNTRY'
      Size = 30
    end
    object qPartyDetailsPARTYACN: TStringField
      FieldName = 'PARTYACN'
      Size = 30
    end
    object qPartyDetailsPARTYOCCUPATION: TStringField
      FieldName = 'PARTYOCCUPATION'
      Size = 35
    end
    object qPartyDetailsPARTYDOB: TDateTimeField
      FieldName = 'PARTYDOB'
    end
    object qPartyDetailsPARTYEMAIL: TStringField
      FieldName = 'PARTYEMAIL'
      Size = 60
    end
    object qPartyDetailsPARTYWWW: TStringField
      FieldName = 'PARTYWWW'
      Size = 60
    end
    object qPartyDetailsPARTYMOBILE: TStringField
      FieldName = 'PARTYMOBILE'
      Size = 30
    end
    object qPartyDetailsADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 120
    end
    object qPartyDetailsSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 50
    end
    object qPartyDetailsSTATE: TStringField
      FieldName = 'STATE'
    end
    object qPartyDetailsPOSTCODE: TStringField
      FieldName = 'POSTCODE'
    end
    object qPartyDetailsCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 30
    end
    object qPartyDetailsPOSTALADDRESS: TStringField
      FieldName = 'POSTALADDRESS'
      Size = 120
    end
    object qPartyDetailsPOSTALSUBURB: TStringField
      FieldName = 'POSTALSUBURB'
      Size = 50
    end
    object qPartyDetailsPOSTALSTATE: TStringField
      FieldName = 'POSTALSTATE'
    end
    object qPartyDetailsPOSTALPOSTCODE: TStringField
      FieldName = 'POSTALPOSTCODE'
    end
    object qPartyDetailsPOSTALCOUNTRY: TStringField
      FieldName = 'POSTALCOUNTRY'
      Size = 30
    end
    object qPartyDetailsCUST_ADDRESS: TStringField
      FieldName = 'CUST_ADDRESS'
      Size = 120
    end
    object qPartyDetailsCUST_SUBURB: TStringField
      FieldName = 'CUST_SUBURB'
      Size = 50
    end
    object qPartyDetailsCUST_STATE: TStringField
      FieldName = 'CUST_STATE'
    end
    object qPartyDetailsCUST_POSTCODE: TStringField
      FieldName = 'CUST_POSTCODE'
    end
    object qPartyDetailsCUST_COUNTRY: TStringField
      FieldName = 'CUST_COUNTRY'
      Size = 30
    end
    object qPartyDetailsWHICHADDRESS: TStringField
      FieldName = 'WHICHADDRESS'
      Size = 1
    end
    object qPartyDetailsHESHE: TStringField
      FieldName = 'HESHE'
      Size = 3
    end
    object qPartyDetailsHIMHER: TStringField
      FieldName = 'HIMHER'
      Size = 3
    end
    object qPartyDetailsHISHER: TStringField
      FieldName = 'HISHER'
      Size = 3
    end
    object qPartyDetailsSIRMADAM: TStringField
      FieldName = 'SIRMADAM'
      Size = 5
    end
    object qPartyDetailsCLIENT_NUMBER: TFloatField
      FieldName = 'CLIENT_NUMBER'
      Required = True
    end
    object qPartyDetailsCLIENT_CODE: TStringField
      FieldName = 'CLIENT_CODE'
      Required = True
    end
    object qPartyDetailsPARTNER_CODE: TStringField
      FieldName = 'PARTNER_CODE'
      Size = 3
    end
  end
  object qryMatterAgedDebtors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  '#39'Aged Debtors'#39' AS Col_TiTle,'
      '  ABS(SUM(c.amount)) AS Amount,    '
      '  ABS(SUM(c.apaid0)) AS adj0,'
      '  ABS(SUM(c.apaid1)) AS adj1,'
      '  ABS(SUM(c.apaid2)) AS adj2,'
      '  ABS(SUM(c.apaid3)) AS adj3,'
      '  ABS(SUM(c.apaid10)) AS adj10'
      '   FROM'
      '   (     '
      '      SELECT '
      
        #9'    NVL(SUM(NVL((n.fees - n.fees_paid-n.fees_woff),0) + NVL((n.' +
        'disb - n.disb_paid-n.disb_woff),0) + NVL((n.sund - n.sund_paid-n' +
        '.sund_woff),0) + NVL((n.antd - n.antd_paid-n.antd_woff),0) + NVL' +
        '((n.upcred - n.upcred_paid-n.upcred_woff), 0) + NVL((n.tax - n.t' +
        'ax_paid-n.tax_woff),0)),0) *-1 AS amount, '
      
        '            NVL(SUM(Date_Between(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p1, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39'),             (NVL((n.fees -' +
        ' n.fees_paid - n.fees_woff),0) + NVL((n.disb - n.disb_paid - n.d' +
        'isb_woff),0) + NVL((n.sund - n.sund_paid - n.sund_woff),0) + NVL' +
        '((n.antd - n.antd_paid - n.antd_woff),0) + NVL((n.upcred - n.upc' +
        'red_paid - n.upcred_woff), 0) + NVL((n.tax - n.tax_paid - n.tax_' +
        'woff),0)) *-1)),0) AS apaid0,'
      
        '            NVL(SUM(Date_Between(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p2, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p1 + 1), (NVL((n.fees -' +
        ' n.fees_paid - n.fees_woff),0) + NVL((n.disb - n.disb_paid - n.d' +
        'isb_woff),0) + NVL((n.sund - n.sund_paid - n.sund_woff),0) + NVL' +
        '((n.antd - n.antd_paid - n.antd_woff),0) + NVL((n.upcred - n.upc' +
        'red_paid - n.upcred_woff), 0) + NVL((n.tax - n.tax_paid - n.tax_' +
        'woff),0)) *-1)),0) AS apaid1,'
      
        '            NVL(SUM(Date_Between(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p3, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p2 + 1), (NVL((n.fees -' +
        ' n.fees_paid - n.fees_woff),0) + NVL((n.disb - n.disb_paid - n.d' +
        'isb_woff),0) + NVL((n.sund - n.sund_paid - n.sund_woff),0) + NVL' +
        '((n.antd - n.antd_paid - n.antd_woff),0) + NVL((n.upcred - n.upc' +
        'red_paid - n.upcred_woff), 0) + NVL((n.tax - n.tax_paid - n.tax_' +
        'woff),0)) *-1)),0) AS apaid2,'
      
        '            NVL(SUM(Date_Between(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p4, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p3 + 1), (NVL((n.fees -' +
        ' n.fees_paid - n.fees_woff),0) + NVL((n.disb - n.disb_paid - n.d' +
        'isb_woff),0) + NVL((n.sund - n.sund_paid - n.sund_woff),0) + NVL' +
        '((n.antd - n.antd_paid - n.antd_woff),0) + NVL((n.upcred - n.upc' +
        'red_paid - n.upcred_woff), 0) + NVL((n.tax - n.tax_paid - n.tax_' +
        'woff),0)) *-1)),0) AS apaid3,'
      
        '            NVL(SUM(Date_Between(TRUNC(n.dispatched), TO_DATE(SY' +
        'SDATE,'#39'DD/MM/YYYY'#39'),                           TO_DATE(TO_CHAR(S' +
        'YSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p4 + 1),   (NVL((n.fees -' +
        ' n.fees_paid - n.fees_woff),0) + NVL((n.disb - n.disb_paid - n.d' +
        'isb_woff),0) + NVL((n.sund - n.sund_paid - n.sund_woff),0) + NVL' +
        '((n.antd - n.antd_paid - n.antd_woff),0) + NVL((n.upcred - n.upc' +
        'red_paid - n.upcred_woff), 0) + NVL((n.tax - n.tax_paid - n.tax_' +
        'woff),0)) *-1)),0) AS apaid10   '
      '      FROM NMEMO n,matter m'
      '      WHERE n.nmatter = m.nmatter'
      #9'  AND m.nclient = :nclient'
      '      AND dispatched IS NOT NULL'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      '      GROUP BY n.fees,n.disb,n.sund,n.antd,n.upcred,n.tax'
      '   ) c'
      'UNION'
      'SELECT'
      #39'Aged W.I.P.'#39' AS Col_TiTle,'
      'NVL(SUM(NVL(amount,0)),0) AS total,'
      
        'NVL(SUM(Date_Between(TRUNC(f.created), TO_DATE(TO_CHAR(SYSDATE,'#39 +
        'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p1, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM' +
        '/YYYY'#39'),'#39'DD/MM/YYYY'#39'),             (NVL(amount,0) ))),0) AS apai' +
        'd0,'
      
        'NVL(SUM(Date_Between(TRUNC(f.created), TO_DATE(TO_CHAR(SYSDATE,'#39 +
        'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p2, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM' +
        '/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p1 + 1), (NVL(amount,0) ))),0) AS apai' +
        'd1, '
      
        'NVL(SUM(Date_Between(TRUNC(f.created), TO_DATE(TO_CHAR(SYSDATE,'#39 +
        'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p3, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM' +
        '/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p2 + 1), (NVL(amount,0) ))),0) AS apai' +
        'd2,'
      
        'NVL(SUM(Date_Between(TRUNC(f.created), TO_DATE(TO_CHAR(SYSDATE,'#39 +
        'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p4, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM' +
        '/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p3 + 1), (NVL(amount,0) ))),0) AS apai' +
        'd3,'
      
        'NVL(SUM(Date_Between(TRUNC(f.created), TO_DATE(SYSDATE,'#39'DD/MM/YY' +
        'YY'#39'),                           TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/Y' +
        'YYY'#39'),'#39'DD/MM/YYYY'#39') - (:p4 + 1), (NVL(amount,0) ))),0) AS apaid1' +
        '0'
      'FROM FEE f ,matter m'
      'WHERE f.nmatter = m.nmatter'
      'AND m.nclient = :nclient'
      'AND (f.billed = '#39'N'#39')'
      'AND (NVL(f.TYPE,'#39'NA'#39') <> '#39'wo'#39')'
      'AND billtype <> '#39'NonBillable'#39
      'UNION'
      'SELECT '
      #39'Aged Disbursements'#39' AS Col_TiTle,'
      'NVL(SUM(NVL(amount * -1,0)),0) AS total,'
      
        'DECODE(NVL(SUM(NVL(amount * -1,0)),0),0,0,NVL(SUM(Date_Between(T' +
        'RUNC(a.created), TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YY' +
        'YY'#39') - :p1, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39'),' +
        '             (NVL(amount,0) ))),0)*-1) AS apaid0,'
      
        'DECODE(NVL(SUM(NVL(amount * -1,0)),0),0,0,NVL(SUM(Date_Between(T' +
        'RUNC(a.created), TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YY' +
        'YY'#39') - :p2, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') ' +
        '- (:p1 + 1), (NVL(amount,0) ))),0)*-1) AS apaid1,'
      
        'DECODE(NVL(SUM(NVL(amount * -1,0)),0),0,0,NVL(SUM(Date_Between(T' +
        'RUNC(a.created), TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YY' +
        'YY'#39') - :p3, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') ' +
        '- (:p2 + 1), (NVL(amount,0) ))),0)*-1) AS apaid2,'
      
        'DECODE(NVL(SUM(NVL(amount * -1,0)),0),0,0,NVL(SUM(Date_Between(T' +
        'RUNC(a.created), TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YY' +
        'YY'#39') - :p4, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') ' +
        '- (:p3 + 1), (NVL(amount,0) ))),0)*-1) AS apaid3,'
      
        'NVL(SUM(Date_Between(TRUNC(a.created), TO_DATE(SYSDATE,'#39'DD/MM/YY' +
        'YY'#39'),                           TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM/Y' +
        'YYY'#39'),'#39'DD/MM/YYYY'#39') - (:p4 + 1), (NVL(amount,0) ))),0)*-1 AS apa' +
        'id10'
      'FROM ALLOC a,matter m'
      'WHERE a.nmatter = m.nmatter'
      'AND m.nclient= :nclient'
      'AND NVL(billed, '#39'N'#39') = '#39'N'#39
      'AND NVL(TRUST, '#39'G'#39') <> '#39'T'#39
      'AND (NVL(ncheque,0) > 0'
      '     OR'
      '     (NVL(njournal,0) > 0 AND a.TYPE = '#39'J2'#39')'
      '    )')
    Left = 636
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object qryFirmContacts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT e.name'
      'FROM employee e, firm_contacts fc'
      'WHERE fc.nname = :p_nname'
      'AND   fc.emp_code = e.code')
    Left = 543
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nname'
        Value = nil
      end>
  end
  object qClientDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.nname  AS nname,'
      '  NVL(P.GIVENNAMES, B.GIVENNAMES) AS givennames,'
      '  NVL(P.LASTNAME, B.LASTNAME)  AS lastname,'
      '  p.search AS search,'
      '  TRIM(DECODE(p.WHICHADDRESS,'
      #39'S'#39', NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB) ' +
        '|| '#39' '#39' ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) || ' +
        #39' '#39' ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POST' +
        'CODE) ||'
      
        '     DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), P' +
        '.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL,' +
        ' NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
      'NULL, NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB)' +
        ' || '#39' '#39' ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) ||' +
        ' '#39' '#39' ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POS' +
        'TCODE) ||'
      
        '      DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), ' +
        'P.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL' +
        ', NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
      
        #39'P'#39', NVL(P.POSTALADDRESS, B.POSTALADDRESS) || chr(13) || chr(10)' +
        ' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B.POSTALS' +
        'UBURB), P.POSTALSUBURB) || '#39' '#39' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.POSTALST' +
        'ATE), P.POSTALSTATE) || '#39' '#39' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, B.POSTA' +
        'LPOSTCODE), P.POSTALPOSTCODE) ||'
      
        '     DECODE(DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B' +
        '.POSTALCOUNTRY), P.POSTALCOUNTRY),NULL,'#39#39', chr(13) || chr(10) ||' +
        ' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B.POSTALCOUN' +
        'TRY), P.POSTALCOUNTRY)),'
      
        #39'D'#39', '#39'DX '#39' || NVL(P.DX, B.DX) || chr(13) || chr(10) || NVL(P.DXL' +
        'OC, B.DXLOC)'
      ')) AS address,'
      '  NVL(P.WORKPHONE, B.WORKPHONE)   AS workphone,'
      '  NVL(P.HOMEPHONE, B.HOMEPHONE)   AS homephone,'
      '  NVL(P.FAX, B.FAX)               AS fax,'
      '  c.code                          AS code,'
      '  NVL(P.NAME, B.NAME)             AS name,'
      '  NVL(P.SHORTNAME, B.SHORTNAME)   AS shortname,'
      '  NVL(P.LONGNAME, B.LONGNAME)     AS longname,'
      '  NVL(P.EMAIL, B.EMAIL)           AS email,'
      '  NVL(P.MOBILE, B.MOBILE)         AS mobile,'
      '  c.introduced,'
      '  c.partner AS partnercode,'
      '  e.name    AS partner,'
      '  monies.totalbilled,'
      '  monies.totalpaid,'
      '  monies.totalwriteoff,'
      '  monies.totalowing,'
      '  investment_balance.amount,'
      '  NVL(P.CONTACT, B.CONTACT) AS CONTACT'
      'FROM'
      '  client c,'
      '  phonebook p,'
      '  phonebook b,'
      '  employee e,'
      '  ('
      '    SELECT'
      '      m.nclient,'
      
        '--      SUM(NVL(ubd.amount,0) + NVL(uat.tax,0) + NVL(ubad.amount' +
        ',0) + NVL(uct.tax,0) + NVL(usund.amount,0) + NVL(ust.tax,0) + NV' +
        'L(ucred.amount,0) + NVL(ucredtax.tax,0)) AS totalunbdisb,'
      '      sum(total) AS totalbilled,'
      '      sum(NVL(bills.paid,0)) AS totalpaid,'
      '      sum(NVL(bills.totalwoff,0)) AS totalwriteoff,'
      '      sum(NVL(bills.owing,0)) AS totalowing      '
      '    FROM matter m,                                          '
      '      (SELECT'
      '        m.nmatter,'
      
        '        sum((NVL(fees_woff,0) + NVL(disb_woff,0) + NVL(antd_woff' +
        ',0) + NVL(sund_woff,0) + NVL(tax_woff,0) + NVL(upcred_woff,0) ))' +
        ' AS totalwoff,'
      '        sum(total) total,'
      '        sum(owing) owing,'
      
        '        sum(NVL(fees_paid,0) + NVL(disb_paid,0) + NVL(antd_paid,' +
        '0) + NVL(sund_paid,0) + NVL(tax_paid,0) + NVL(upcred_paid,0)) AS' +
        ' paid        '
      '      FROM '
      '        nmemo n, matter m   '
      '      WHERE '
      '        n.nmatter  = m.nmatter'
      '      AND m.nclient = :nclient  '
      '      AND rv_type NOT IN ('#39'C'#39','#39'R'#39')'
      '      AND refno <> '#39'DRAFT'#39
      '      GROUP BY m.nmatter'
      '      ORDER BY nmatter DESC) bills'
      '    WHERE m.nclient = :nclient'
      '      AND bills.nmatter(+) = m.nmatter'
      '    GROUP BY m.nclient'
      '  ) monies,'
      
        '  (SELECT NVL(SUM(amount),0) amount FROM investment_trans WHERE ' +
        'nmatter in (select nmatter from matter where nclient = :nclient)' +
        ') investment_balance'
      'WHERE'
      '  c.nclient = :nclient '
      '  AND p.nclient = c.nclient '
      '  AND p.nnamemaster = b.nname (+) '
      '  AND monies.nclient(+) = c.nclient'
      '  AND e.code(+) = c.partner')
    Left = 115
    Top = 530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object dsClientDetails: TDataSource
    DataSet = qClientDetails
    Left = 234
    Top = 483
  end
  object plPositionTotals: TppDBPipeline
    DataSource = dsPositionTotals
    UserName = 'plPositionTotals'
    Left = 361
    Top = 506
    object plPositionTotalsppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALWIP'
      FieldName = 'TOTALWIP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object plPositionTotalsppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALUNBDISB'
      FieldName = 'TOTALUNBDISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object plPositionTotalsppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALUNBILLEDDISB'
      FieldName = 'TOTALUNBILLEDDISB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plPositionTotalsppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALCHEQREQ'
      FieldName = 'TOTALCHEQREQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plPositionTotalsppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALSUNDRIES'
      FieldName = 'TOTALSUNDRIES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plPositionTotalsppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALCREDITORS'
      FieldName = 'TOTALCREDITORS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
  end
  object dsPositionTotals: TUniDataSource
    DataSet = qryPositionTotals
    Left = 489
    Top = 600
  end
  object qryPositionTotals: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  monies.totalwip,'
      '  monies.totalunbdisb,'
      '  monies.totalunbilleddisb,'
      '  monies.totalcheqreq,'
      '  monies.totalsundries,'
      '  monies.totalCreditors'
      'FROM'
      '  ('
      '    SELECT'
      '      m.nclient,'
      '      SUM(NVL(wip.amount,0)) AS totalwip,'
      
        '      SUM(NVL(ubd.amount,0) + NVL(uat.tax,0) + NVL(ubad.amount,0' +
        ') + NVL(uct.tax,0) + NVL(usund.amount,0) + NVL(ust.tax,0) + NVL(' +
        'ucred.amount,0) + NVL(ucredtax.tax,0)) AS totalunbdisb,'
      
        '      SUM(NVL(ubd.amount,0) + NVL(uat.tax,0)) AS totalunbilleddi' +
        'sb,'
      '      SUM(NVL(ubad.amount,0) + NVL(uct.tax,0)) AS totalcheqreq,'
      
        '      SUM(NVL(usund.amount,0) + NVL(ust.tax,0)) AS totalsundries' +
        ','
      
        '      SUM(NVL(ucred.amount,0) + NVL(ucredtax.tax,0)) AS totalCre' +
        'ditors'
      '    FROM matter m,'
      '      (SELECT m.nmatter, NVL(SUM(NVL(f.amount,0)),0) AS amount '
      '        FROM fee f, matter m     '
      '        WHERE f.nmatter = m.nmatter '
      '          AND m.nclient = :nclient'
      '          AND f.billed = '#39'N'#39'  '
      '          AND f.billtype = '#39'Billable'#39'         '
      '        GROUP BY m.nmatter) wip,'
      '      (SELECT m.nmatter, NVL(SUM(f.tax),0) AS tax    '
      '        FROM fee f,matter m      '
      '        WHERE f.nmatter = m.nmatter '
      '          AND m.nclient = :nclient'
      '          AND f.billed = '#39'N'#39'  '
      '          AND f.billtype = '#39'Billable'#39'         '
      '          AND NVL(f.type,'#39'NA'#39') <> '#39'wo'#39' '
      '        GROUP BY m.nmatter) uft,    '
      
        '      (SELECT m.nmatter, NVL(SUM(NVL(a.amount * -1,0)),0) AS amo' +
        'unt '
      '        FROM alloc a, matter m   '
      '        WHERE a.nmatter = m.nmatter '
      '          AND m.nclient = :nclient'
      '          AND a.ninvoice is null'
      '          AND NVL(a.billed,'#39'N'#39') = '#39'N'#39
      '          AND NVL(a.trust,'#39'G'#39') <> '#39'T'#39
      
        '          AND (NVL(a.ncheque,0) > 0 OR (NVL(a.njournal,0) > 0 AN' +
        'D a.type = '#39'J2'#39'))'
      '        GROUP BY m.nmatter) ubd,'
      '      (SELECT m.nmatter, NVL(SUM(NVL(a.tax * -1,0)),0) AS tax'
      '        FROM alloc a,matter m'
      '        WHERE a.nmatter = m.nmatter'
      '          AND m.nclient = :nclient'
      '          AND a.ninvoice is null '
      '          AND NVL(a.billed,'#39'N'#39') = '#39'N'#39
      '          AND NVL(a.trust,'#39'G'#39') <> '#39'T'#39
      
        '          AND (NVL(a.ncheque,0) > 0 OR (NVL(a.njournal,0) > 0 AN' +
        'D a.type = '#39'J2'#39'))'
      '        GROUP BY m.nmatter) uat,'
      '      (SELECT m.nmatter, NVL(SUM(NVL(c.amount  ,0)),0) AS amount'
      '        FROM cheqreq c, matter m '
      '        WHERE c.nmatter = m.nmatter '
      '          AND m.nclient = :nclient'
      '          AND c.billed = '#39'N'#39
      '        GROUP BY m.nmatter) ubad,'
      '      (SELECT m.nmatter, NVL(SUM(c.tax),0) AS tax'
      '        FROM cheqreq c, matter m'
      '        WHERE c.nmatter = m.nmatter'
      '          AND m.nclient = :nclient'
      '          AND c.billed = '#39'N'#39
      '        GROUP BY m.nmatter) uct,'
      '      (SELECT m.nmatter, SUM(NVL(s.amount, 0))  AS amount'
      '        FROM sundry s, matter m'
      '        WHERE s.nmatter = m.nmatter'
      '          AND m.nclient = :nclient'
      '          AND s.billed = '#39'N'#39
      '        GROUP BY m.nmatter) usund,'
      '      (SELECT m.nmatter, NVL(SUM(s.tax),0) AS tax'
      '        FROM sundry s, matter m  '
      '        WHERE s.nmatter = m.nmatter'
      '          AND m.nClient = :nClient'
      '          AND s.billed = '#39'N'#39'          '
      '          AND NVL(s.type,'#39'NA'#39') <> '#39'wo'#39' '
      '        GROUP BY m.nmatter) ust,'
      '      (SELECT m.nmatter, nvl(SUM(a.tax * -1),0) AS tax'
      '        FROM matter m, alloc a, invoice c'
      '        WHERE m.nmatter = a.nmatter'
      '          AND a.ninvoice = c.ninvoice'
      '          AND a.nmemo is null'
      '          AND m.nmatter = m.nmatter '
      '          AND m.nclient = :nclient'
      '          AND a.billed = '#39'N'#39' '
      '        GROUP BY m.nmatter)'#9'ucredtax,'
      '      (SELECT m.nmatter, nvl(SUM(a.amount * -1),0) AS amount'
      '        FROM matter m, alloc a, invoice c'
      '        WHERE m.nmatter = a.nmatter'
      '          AND a.ninvoice = c.ninvoice'
      '          AND a.nmemo is null'
      '          AND m.nmatter = m.nmatter '
      '          AND m.nclient = :nclient '
      '          AND a.billed = '#39'N'#39
      '        GROUP BY m.nmatter) ucred'#9#9'  '
      ' WHERE m.nclient = :nclient'
      '      AND ubad.nmatter(+) = m.nmatter'
      '      AND ubd.nmatter(+) = m.nmatter'
      '      AND wip.nmatter(+) = m.nmatter'
      '      AND usund.nmatter(+) = m.nmatter'
      '      AND ust.nmatter(+) = m.nmatter'
      '      AND uct.nmatter(+) = m.nmatter'
      '      AND uat.nmatter(+) = m.nmatter'
      '      AND uft.nmatter(+) = m.nmatter'
      '      AND ucred.nmatter(+) = m.nmatter'
      '      AND ucredTax.nmatter(+) = m.nmatter'
      '    GROUP BY m.nclient'
      '  ) monies'
      '')
    Left = 417
    Top = 522
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object qryPacketCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT COUNT(PACKETID) AS TOTAL_PACKETS '
      'FROM DOCREG D'
      'WHERE NCLIENT = :NCLIENT')
    Left = 695
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end>
  end
  object qGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT  g.category'
      'FROM'
      '  clientgroup g, clientgroupings p'
      'WHERE'
      '  g.category = p.category(+)'
      'AND p.nclient = :nclient'
      'ORDER BY g.category')
    Left = 112
    Top = 317
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
    object qGroupsCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 25
    end
  end
  object dsGroups: TUniDataSource
    AutoEdit = False
    DataSet = qGroups
    Left = 172
    Top = 215
  end
  object rptSafeCustody: TppReport
    AutoStop = False
    DataPipeline = plPacket
    NoDataBehaviors = [ndBlankReport]
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
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 1227
    Top = 73
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'plPacket'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 68527
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = clSilver
        Shape = stRoundRect
        mmHeight = 36248
        mmLeft = 1588
        mmTop = 31221
        mmWidth = 192352
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Printed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 2910
        mmWidth = 12065
        BandType = 1
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 14023
        mmTop = 2910
        mmWidth = 37888
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label2'
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
        mmLeft = 0
        mmTop = 11113
        mmWidth = 197115
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Safe Custody Packet '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 0
        mmTop = 17992
        mmWidth = 197115
        BandType = 1
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 24871
        mmWidth = 197300
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 13113
        mmTop = 33602
        mmWidth = 10964
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = ppClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppClient'
        mmHeight = 4022
        mmLeft = 27000
        mmTop = 33602
        mmWidth = 89165
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CONTACT'
        DataPipeline = ppClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppClient'
        mmHeight = 4233
        mmLeft = 26967
        mmTop = 38633
        mmWidth = 85461
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Introduced:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 117666
        mmTop = 33602
        mmWidth = 19389
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INTRODUCED'
        DataPipeline = ppClient
        DisplayFormat = 'dd-mmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppClient'
        mmHeight = 4232
        mmLeft = 138642
        mmTop = 33602
        mmWidth = 49742
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PACKETID'
        DataPipeline = ppDocReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDocReg'
        mmHeight = 3979
        mmLeft = 27000
        mmTop = 46567
        mmWidth = 24606
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Packet No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 5916
        mmTop = 46302
        mmWidth = 18161
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 3546
        mmTop = 53446
        mmWidth = 20532
        BandType = 1
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = ppDocReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDocReg'
        mmHeight = 12435
        mmLeft = 27000
        mmTop = 53446
        mmWidth = 128588
        BandType = 1
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label88'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Date of Death'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 114300
        mmTop = 38365
        mmWidth = 22754
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText80'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'DATE_OF_DEATH'
        DataPipeline = ppClient
        DisplayFormat = 'dd-mmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppClient'
        mmHeight = 4233
        mmLeft = 138642
        mmTop = 38630
        mmWidth = 49742
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 1323
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Type:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 78433
        mmTop = 3969
        mmWidth = 9144
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Date Released:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 6297
        mmTop = 9525
        mmWidth = 25188
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'DOCUMENT_TYPE'
        DataPipeline = plPacket
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPacket'
        mmHeight = 4022
        mmLeft = 89694
        mmTop = 4233
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Document Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 134144
        mmTop = 3969
        mmWidth = 27009
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'LODGED'
        DataPipeline = plPacket
        DisplayFormat = 'dd-mmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPacket'
        mmHeight = 4022
        mmLeft = 163248
        mmTop = 4233
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'DATE_RELEASED'
        DataPipeline = plPacket
        DisplayFormat = 'dd-mmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPacket'
        mmHeight = 4022
        mmLeft = 34660
        mmTop = 9790
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Released To:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 65902
        mmTop = 9525
        mmWidth = 21675
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'RELEASED_TO'
        DataPipeline = plPacket
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPacket'
        mmHeight = 4022
        mmLeft = 89694
        mmTop = 9790
        mmWidth = 43127
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Date Returned:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 135996
        mmTop = 9525
        mmWidth = 25231
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'DATE_RETURNED'
        DataPipeline = plPacket
        DisplayFormat = 'dd-mmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPacket'
        mmHeight = 4022
        mmLeft = 163248
        mmTop = 9790
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Item Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 2742
        mmTop = 15346
        mmWidth = 28744
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'ITEM_DESCRIPTION'
        DataPipeline = plPacket
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plPacket'
        mmHeight = 4498
        mmLeft = 34660
        mmTop = 15346
        mmWidth = 151077
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Anchors = [atLeft, atBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 22225
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Sequence:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 13705
        mmTop = 3969
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ENVELOPE'
        DataPipeline = plPacket
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPacket'
        mmHeight = 4022
        mmLeft = 34660
        mmTop = 3969
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 175419
        mmTop = 1852
        mmWidth = 17949
        BandType = 8
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
  object rptClientPosition: TppReport
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
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 187
    Top = 485
    Version = '20.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 27781
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape3'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Style = psClear
        Shape = stRoundRect
        mmHeight = 9525
        mmLeft = 0
        mmTop = 15610
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        OnGetText = ppLabel15GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 20
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8128
        mmLeft = 0
        mmTop = 5556
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client Position Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 73290
        mmTop = 17463
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 155840
        mmTop = 529
        mmWidth = 37888
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Printed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 141023
        mmTop = 529
        mmWidth = 12065
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 153723
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape2'
        Pen.Color = clSilver
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 70379
        mmLeft = 1323
        mmTop = 0
        mmWidth = 193940
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4995
        mmLeft = 6615
        mmTop = 4233
        mmWidth = 26882
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Code:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 25463
        mmTop = 18521
        mmWidth = 9991
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PB Search:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 16743
        mmTop = 23813
        mmWidth = 18711
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 24701
        mmTop = 13494
        mmWidth = 10753
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Home Phone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 12763
        mmTop = 29104
        mmWidth = 22691
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Work Phone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 13779
        mmTop = 34396
        mmWidth = 21675
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 28215
        mmTop = 39688
        mmWidth = 7239
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'E-Mail Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 9080
        mmTop = 44979
        mmWidth = 26374
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Partner:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 21992
        mmTop = 50271
        mmWidth = 13462
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Introduced Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 7472
        mmTop = 61648
        mmWidth = 27982
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4022
        mmLeft = 38100
        mmTop = 13494
        mmWidth = 62177
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText2'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4498
        mmLeft = 38100
        mmTop = 18785
        mmWidth = 794
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SEARCH'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4022
        mmLeft = 38100
        mmTop = 24077
        mmWidth = 78581
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText4'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'HOMEPHONE'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4498
        mmLeft = 38100
        mmTop = 29369
        mmWidth = 794
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText5'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WORKPHONE'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4498
        mmLeft = 38100
        mmTop = 34660
        mmWidth = 794
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText6'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAX'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4498
        mmLeft = 38100
        mmTop = 39952
        mmWidth = 794
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText7'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'EMAIL'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4498
        mmLeft = 38100
        mmTop = 45244
        mmWidth = 794
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText8'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PARTNER'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4497
        mmLeft = 38100
        mmTop = 50536
        mmWidth = 794
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText9'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INTRODUCED'
        DataPipeline = plClientDetails
        DisplayFormat = 'dd-mmmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4498
        mmLeft = 38100
        mmTop = 61913
        mmWidth = 794
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 102923
        mmTop = 13494
        mmWidth = 15113
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Current Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4995
        mmLeft = 2910
        mmTop = 72761
        mmWidth = 32766
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Unbilled Fees:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 32385
        mmTop = 85990
        mmWidth = 33232
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Unbilled Disbursements:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 15779
        mmTop = 117475
        mmWidth = 50631
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount Billed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 32544
        mmTop = 123561
        mmWidth = 33994
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount Written Off:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 23813
        mmTop = 135467
        mmWidth = 42630
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label21'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount Outstanding:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 141552
        mmWidth = 50536
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALWIP'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 86784
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALUNBDISB'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 117475
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALBILLED'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 123561
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALPAID'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 129646
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALWRITEOFF'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 135467
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALOWING'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 3979
        mmLeft = 110067
        mmTop = 141552
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '(at time of report)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 3440
        mmTop = 78846
        mmWidth = 21802
        BandType = 4
        LayerName = Foreground4
      end
      object lblController: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'lblController'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Service Partner'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 9715
        mmTop = 55827
        mmWidth = 25739
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cheques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 73819
        mmTop = 91546
        mmWidth = 14859
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Sundries'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 73819
        mmTop = 97631
        mmWidth = 15028
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Anticipated'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 73819
        mmTop = 103717
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Unbilled:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 41010
        mmTop = 91546
        mmWidth = 24257
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALUNBILLEDDISB'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 100013
        mmTop = 91811
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALSUNDRIES'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 100013
        mmTop = 97896
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALCHEQREQ'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 100013
        mmTop = 103981
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label31'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Creditors'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 74083
        mmTop = 109538
        mmWidth = 15621
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALCREDITORS'
        DataPipeline = plPositionTotals
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPositionTotals'
        mmHeight = 4022
        mmLeft = 100013
        mmTop = 109802
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText16'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PARTNER'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4498
        mmLeft = 38100
        mmTop = 56092
        mmWidth = 794
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'ADDRESS'
        DataPipeline = plClientDetails
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 22490
        mmLeft = 120121
        mmTop = 13494
        mmWidth = 70908
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Amount Paid:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 34660
        mmTop = 129382
        mmWidth = 31835
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plClientDetails
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientDetails'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 147638
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label37'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Controlled Monies:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 147638
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object plPacket: TppDBPipeline
    DataSource = dsPacket
    UserName = 'plPacket'
    Left = 1146
    Top = 89
  end
  object qryDocRegOtherParties: TUniQuery
    UpdatingTable = 'DOCREG_PARTIES'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  PHONEBOOK.NAME,'
      '  GETCLIENTCODE(PHONEBOOK.NCLIENT) AS CCODE,'
      '  DOCREG_PARTIES.NNAME,'
      '  DOCREG_PARTIES.NDOCREG,'
      '  DOCREG_PARTIES.ROWID'
      'FROM'
      '  PHONEBOOK,'
      '  DOCREG_PARTIES'
      'WHERE'
      '  DOCREG_PARTIES.NNAME = PHONEBOOK.NNAME')
    MasterSource = dsDocReg
    MasterFields = 'NDOCREG'
    DetailFields = 'NDOCREG'
    Left = 198
    Top = 314
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NDOCREG'
        Value = nil
      end>
  end
  object dsDocRegOtherParties: TUniDataSource
    DataSet = qryDocRegOtherParties
    Left = 291
    Top = 350
  end
  object qryUpdateDocRegOtherParties: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 382
    Top = 309
  end
  object qRelationships: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  r.forward, r.relationship, pb.search as backward, r.rowid, '#39'Y'#39 +
        ' as deleteable, r.backwardCategory, r.backwardSeq,'
      
        '  r.forwardCategory, r.forwardSeq, r.linkTable, r.nunique, r.bac' +
        'kward as search, r.nchild, address'
      'FROM'
      '  relationship r, phonebook pb'
      'WHERE'
      '  r.nparent = :search'
      'AND'
      '  pb.nname = r.nchild'
      'UNION'
      
        '  SELECT null, '#39'Parent'#39' as relationship, search as backward, row' +
        'id, '#39'N'#39' as deleteable, null, 0, null, 0,'
      '  null, nname as nunique, search, nname as nchild, address'
      'FROM '
      '  PHONEBOOK'
      'where'
      ' nname = :nnamemaster'
      'UNION'
      
        '  SELECT null, '#39'Child'#39' as relationship, search as backward, rowi' +
        'd, '#39'N'#39' as deleteable, null, 0, null, 0,'
      '  null, nname as nunique, search, nname as nchild, address'
      'from'
      '  phonebook'
      'where'
      '  nnamemaster = :nname '
      'ORDER BY relationship, backward')
    Left = 914
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'search'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nnamemaster'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qRelationshipsFORWARD: TStringField
      FieldName = 'FORWARD'
      Size = 85
    end
    object qRelationshipsRELATIONSHIP: TStringField
      FieldName = 'RELATIONSHIP'
      Size = 35
    end
    object qRelationshipsBACKWARD: TStringField
      FieldName = 'BACKWARD'
      Size = 85
    end
    object qRelationshipsROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qRelationshipsDELETEABLE: TStringField
      FieldName = 'DELETEABLE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qRelationshipsBACKWARDCATEGORY: TStringField
      FieldName = 'BACKWARDCATEGORY'
      Size = 35
    end
    object qRelationshipsFORWARDCATEGORY: TStringField
      FieldName = 'FORWARDCATEGORY'
      Size = 35
    end
    object qRelationshipsLINKTABLE: TStringField
      FieldName = 'LINKTABLE'
    end
    object qRelationshipsSEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Size = 85
    end
    object qRelationshipsADDRESS: TStringField
      FieldName = 'ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qRelationshipsNUNIQUE: TLargeintField
      FieldName = 'NUNIQUE'
    end
    object qRelationshipsBACKWARDSEQ: TFloatField
      FieldName = 'BACKWARDSEQ'
    end
    object qRelationshipsFORWARDSEQ: TFloatField
      FieldName = 'FORWARDSEQ'
    end
    object qRelationshipsNCHILD: TLargeintField
      FieldName = 'NCHILD'
    end
  end
  object dsRelationships: TUniDataSource
    AutoEdit = False
    DataSet = qRelationships
    Left = 1198
    Top = 544
  end
  object qRelationshipDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  P.GIVENNAMES AS PRIME_GIVENNAMES,'
      '  P.LASTNAME AS PRIME_LASTNAME,'
      '  p.search  AS PRIME_SEARCH,'
      '  p.title AS PRIME_TITLE,'
      '  p.gender AS PRIME_GENDER,'
      '  p.WHICHADDRESS AS PRIME_WHICHADDRESS,'
      '  P.ADDRESS AS PRIME_ADDRESS,'
      '  P.SUBURB AS PRIME_SUBURB,'
      '  P.STATE AS PRIME_STATE, '
      '  P.POSTCODE AS PRIME_POSTCODE, '
      '  P.COUNTRY AS PRIME_COUNTRY,'
      '  P.POSTALADDRESS AS PRIME_POSTALADDRESS,'
      '  P.POSTALSUBURB AS PRIME_POSTALSUBURB,'
      '  P.POSTALSTATE AS PRIME_POSTALSTATE,'
      '  P.POSTALPOSTCODE AS PRIME_POSTALPOSTCODE,'
      '  P.POSTALCOUNTRY AS PRIME_POSTALCOUTRY,'
      '  P.DX AS PRIME_DX,'
      '  P.DXLOC AS PRIME_DXLOC,'
      '  P.SALUTATION AS PRIME_SALUTATION,'
      '  P.WORKPHONE AS PRIME_WORKPHONE,'
      '  P.HOMEPHONE AS PRIME_HOMEPHONE,'
      '  P.FAX AS PRIME_FAX,'
      '  p.code AS PRIME_CODE,'
      '  p.sparty AS PRIME_SPARTY,'
      '  p.solicitor AS PRIME_SOLICITOR,'
      '  p.real_estate AS PRIME_REALESTATE,'
      '  p.referrals AS PRIME_REFERRALS,'
      '  p.note AS PRIME_NOTE,'
      '  P.NAME AS PRIME_NAME,'
      '  P.SHORTNAME AS PRIME_SHORTNAME,'
      '  P.LONGNAME AS PRIME_LONGNAME,'
      '  p.type AS PRIME_TYPE,'
      '  p.acn AS PRIME_ACN,'
      '  p.occupation AS PRIME_OCCUPATION,'
      '  p.dob AS PRIME_DOB,'
      '  P.EMAIL AS PRIME_EMAIL,'
      '  P.WWW AS PRIME_WWW,'
      '  P.MOBILE AS PRIME_MOBILE,'
      '  P.CUST_ADDRESS AS PRIME_CUST_ADDRESS,'
      '  P.CUST_SUBURB AS PRIME_CUST_SUBURB,'
      '  P.CUST_STATE AS PRIME_CUST_STATE,'
      '  P.CUST_POSTCODE AS PRIME_CUST_POSTCODE,'
      '  P.CUST_COUNTRY AS PRIME_CUST_COUNTRY,  '
      '  p.whichaddress AS PRIME_WHICHADDRESS,'
      '  TRIM(DECODE(p.WHICHADDRESS,'
      '  '#39'S'#39', P.ADDRESS ||'
      '     chr(13) || chr(10) || '
      #9' P.SUBURB || '#39' '#39' || '
      #9' P.STATE || '#39' '#39' || '
      #9' P.POSTCODE ||'
      '         chr(13) || chr(10) || '
      '         P.COUNTRY,'
      '  '#39'P'#39', P.POSTALADDRESS ||'
      '         chr(13) || chr(10) || '
      #9' P.POSTALSUBURB || '#39' '#39' || '
      #9' P.POSTALSTATE || '#39' '#39' || '
      #9' P.POSTALPOSTCODE ||'
      '         chr(13) || chr(10) || '
      '         P.POSTALCOUNTRY,'
      
        '  '#39'D'#39', '#39'DX '#39' || P.DX || chr(13) || chr(10) || P.DXLOC )) AS PRIM' +
        'E_partyaddress,'
      '  m.GIVENNAMES AS RELATED_GIVENNAMES,'
      '  m.LASTNAME AS RELATED_LASTNAME,'
      '  m.search AS RELATED_SEARCH,'
      '  m.title AS RELATED_TITLE,'
      '  m.gender AS RELATED_GENDER,'
      '  m.WHICHADDRESS AS RELATED_WHICHADDRESS,'
      '  m.ADDRESS AS RELATED_ADDRESS,'
      '  m.SUBURB AS RELATED_SUBURB,'
      '  m.STATE AS RELATED_STATE, '
      '  m.POSTCODE AS RELATED_POSTCODE, '
      '  m.COUNTRY AS RELATED_COUNTRY,'
      '  m.POSTALADDRESS AS RELATED_POSTALADDRESS,'
      '  m.POSTALSUBURB AS RELATED_POSTALSUBURB,'
      '  m.POSTALSTATE AS RELATED_POSTALSTATE,'
      '  m.POSTALPOSTCODE AS RELATED_POSTALPOSTCODE,'
      '  m.POSTALCOUNTRY AS RELATED_POSTALCOUNTRY,'
      '  m.DX AS RELATED_DX,'
      '  m.DXLOC AS RELATED_DXLOC,'
      '  m.SALUTATION AS RELATED_SALUTATION,'
      '  m.WORKPHONE AS RELATED_WORKPHONE,'
      '  m.HOMEPHONE AS RELATED_HOMEPHONE,'
      '  m.FAX AS RELATED_FAX,'
      '  m.code AS RELATED_CODE,'
      '  m.sparty AS RELATED_SPARTY,'
      '  m.solicitor AS RELATED_SOLICITOR,'
      '  m.real_estate AS RELATED_REAL_ESTATE,'
      '  m.referrals AS RELATED_REFERRALS,'
      '  m.note AS RELATED_NOTE,'
      '  m.NAME AS RELATED_NAME,'
      '  m.SHORTNAME AS RELATED_SHORTNAME,'
      '  m.LONGNAME AS RELATED_LONGNAME,'
      '  m.type AS RELATED_TYPE,'
      '  m.acn AS RELATED_ACN,'
      '  m.occupation AS RELATED_OCCUPATION,'
      '  m.dob AS RELATED_DOB,'
      '  m.EMAIL AS RELATED_EMAIL,'
      '  m.WWW AS RELATED_WWW,'
      '  m.MOBILE AS RELATED_MOBILE,'
      '  m.CUST_ADDRESS AS RELATED_CUST_ADDRESS,'
      '  m.CUST_SUBURB AS RELATED_CUST_SUBURB,'
      '  m.CUST_STATE AS RELATED_CUST_STATE,'
      '  m.CUST_POSTCODE AS RELATED_CUST_POSTCODE,'
      '  m.CUST_COUNTRY AS RELATED_CUST_COUNTRY,  '
      '  m.whichaddress AS RELATED_WHICHADDRESS,'
      '  TRIM(DECODE(M.WHICHADDRESS,'
      '  '#39'S'#39', M.ADDRESS ||'
      '     chr(13) || chr(10) || '
      #9' M.SUBURB || '#39' '#39' || '
      #9' M.STATE || '#39' '#39' || '
      #9' M.POSTCODE ||'
      '         chr(13) || chr(10) || '
      '         M.COUNTRY,'
      '  '#39'P'#39', M.POSTALADDRESS ||'
      '     chr(13) || chr(10) || '
      #9' M.POSTALSUBURB || '#39' '#39' || '
      #9' M.POSTALSTATE || '#39' '#39' || '
      #9' M.POSTALPOSTCODE ||'
      '         chr(13) || chr(10) || '
      '         M.POSTALCOUNTRY,'
      
        '  '#39'D'#39', '#39'DX '#39' || M.DX || chr(13) || chr(10) || M.DXLOC )) AS RELA' +
        'TED_partyaddress,'
      '  p.nname'
      'FROM'
      '  PHONEBOOK P,'
      '  PHONEBOOK M'
      'WHERE'
      '  p.nname = :NNAME '
      'AND'
      '  M.NNAME = :REL_NNAME')
    Left = 404
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REL_NNAME'
        Value = nil
      end>
    object qRelationshipDetailsPARTYGIVENNAMES: TStringField
      FieldName = 'PARTYGIVENNAMES'
      Size = 60
    end
    object qRelationshipDetailsPARTYLASTNAME: TStringField
      FieldName = 'PARTYLASTNAME'
      Size = 60
    end
    object qRelationshipDetailsPARTYSEARCH: TStringField
      FieldName = 'PARTYSEARCH'
      Size = 85
    end
    object qRelationshipDetailsPARTYTITLE: TStringField
      FieldName = 'PARTYTITLE'
      Size = 40
    end
    object qRelationshipDetailsPARTYGENDER: TStringField
      FieldName = 'PARTYGENDER'
      Size = 1
    end
    object qRelationshipDetailsPARTYADDRESS: TStringField
      FieldName = 'PARTYADDRESS'
      Size = 246
    end
    object qRelationshipDetailsPARTYSALUTATION: TStringField
      FieldName = 'PARTYSALUTATION'
      Size = 40
    end
    object qRelationshipDetailsPARTYWORKPHONE: TStringField
      FieldName = 'PARTYWORKPHONE'
      Size = 30
    end
    object qRelationshipDetailsPARTYHOMEPHONE: TStringField
      FieldName = 'PARTYHOMEPHONE'
      Size = 30
    end
    object qRelationshipDetailsPARTYDX: TStringField
      FieldName = 'PARTYDX'
      Size = 6
    end
    object qRelationshipDetailsPARTYDXLOC: TStringField
      FieldName = 'PARTYDXLOC'
      Size = 50
    end
    object qRelationshipDetailsPARTYFAX: TStringField
      FieldName = 'PARTYFAX'
      Size = 30
    end
    object qRelationshipDetailsPARTYCODE: TStringField
      FieldName = 'PARTYCODE'
    end
    object qRelationshipDetailsPARTYSPARTY: TStringField
      FieldName = 'PARTYSPARTY'
      Size = 1
    end
    object qRelationshipDetailsPARTYSOLICITOR: TStringField
      FieldName = 'PARTYSOLICITOR'
      Size = 1
    end
    object qRelationshipDetailsPARTYREAL_ESTATE: TStringField
      FieldName = 'PARTYREAL_ESTATE'
      Size = 1
    end
    object qRelationshipDetailsPARTYREFERRALS: TIntegerField
      FieldName = 'PARTYREFERRALS'
    end
    object qRelationshipDetailsPARTYNOTE: TStringField
      FieldName = 'PARTYNOTE'
      Size = 400
    end
    object qRelationshipDetailsPARTYNAME: TStringField
      FieldName = 'PARTYNAME'
      Size = 85
    end
    object qRelationshipDetailsPARTYSHORTNAME: TStringField
      FieldName = 'PARTYSHORTNAME'
      Size = 40
    end
    object qRelationshipDetailsPARTYLONGNAME: TStringField
      FieldName = 'PARTYLONGNAME'
      Size = 150
    end
    object qRelationshipDetailsPARTYMOD_DATE: TDateTimeField
      FieldName = 'PARTYMOD_DATE'
    end
    object qRelationshipDetailsPARTYMOD_BY: TStringField
      FieldName = 'PARTYMOD_BY'
      Size = 3
    end
    object qRelationshipDetailsPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      Size = 1
    end
    object qRelationshipDetailsPARTYCOUNTRY: TStringField
      FieldName = 'PARTYCOUNTRY'
      Size = 30
    end
    object qRelationshipDetailsPARTYACN: TStringField
      FieldName = 'PARTYACN'
      Size = 30
    end
    object qRelationshipDetailsPARTYOCCUPATION: TStringField
      FieldName = 'PARTYOCCUPATION'
      Size = 35
    end
    object qRelationshipDetailsPARTYDOB: TDateTimeField
      FieldName = 'PARTYDOB'
    end
    object qRelationshipDetailsPARTYEMAIL: TStringField
      FieldName = 'PARTYEMAIL'
      Size = 60
    end
    object qRelationshipDetailsPARTYWWW: TStringField
      FieldName = 'PARTYWWW'
      Size = 60
    end
    object qRelationshipDetailsPARTYMOBILE: TStringField
      FieldName = 'PARTYMOBILE'
      Size = 30
    end
    object qRelationshipDetailsADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 120
    end
    object qRelationshipDetailsSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 50
    end
    object qRelationshipDetailsSTATE: TStringField
      FieldName = 'STATE'
    end
    object qRelationshipDetailsPOSTCODE: TStringField
      FieldName = 'POSTCODE'
    end
    object qRelationshipDetailsCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 30
    end
    object qRelationshipDetailsPOSTALADDRESS: TStringField
      FieldName = 'POSTALADDRESS'
      Size = 120
    end
    object qRelationshipDetailsPOSTALSUBURB: TStringField
      FieldName = 'POSTALSUBURB'
      Size = 50
    end
    object qRelationshipDetailsPOSTALSTATE: TStringField
      FieldName = 'POSTALSTATE'
    end
    object qRelationshipDetailsPOSTALPOSTCODE: TStringField
      FieldName = 'POSTALPOSTCODE'
    end
    object qRelationshipDetailsPOSTALCOUNTRY: TStringField
      FieldName = 'POSTALCOUNTRY'
      Size = 30
    end
    object qRelationshipDetailsCUST_ADDRESS: TStringField
      FieldName = 'CUST_ADDRESS'
      Size = 120
    end
    object qRelationshipDetailsCUST_SUBURB: TStringField
      FieldName = 'CUST_SUBURB'
      Size = 50
    end
    object qRelationshipDetailsCUST_STATE: TStringField
      FieldName = 'CUST_STATE'
    end
    object qRelationshipDetailsCUST_POSTCODE: TStringField
      FieldName = 'CUST_POSTCODE'
    end
    object qRelationshipDetailsCUST_COUNTRY: TStringField
      FieldName = 'CUST_COUNTRY'
      Size = 30
    end
    object qRelationshipDetailsWHICHADDRESS: TStringField
      FieldName = 'WHICHADDRESS'
      Size = 1
    end
    object qRelationshipDetailsHESHE: TStringField
      FieldName = 'HESHE'
      Size = 3
    end
    object qRelationshipDetailsHIMHER: TStringField
      FieldName = 'HIMHER'
      Size = 3
    end
    object qRelationshipDetailsHISHER: TStringField
      FieldName = 'HISHER'
      Size = 3
    end
    object qRelationshipDetailsSIRMADAM: TStringField
      FieldName = 'SIRMADAM'
      Size = 5
    end
    object qRelationshipDetailsCLIENT_NUMBER: TFloatField
      FieldName = 'CLIENT_NUMBER'
      Required = True
    end
    object qRelationshipDetailsCLIENT_CODE: TStringField
      FieldName = 'CLIENT_CODE'
      Required = True
    end
    object qRelationshipDetailsPARTNER_CODE: TStringField
      FieldName = 'PARTNER_CODE'
      Size = 3
    end
    object qRelationshipDetailsNNAME: TLargeintField
      FieldName = 'NNAME'
      Required = True
    end
  end
  object qryUpdateItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE DOCREGITEM'
      'SET'
      '  REQUESTED_BY = :REQUESTED_BY,'
      '  REQUESTED_DATE = :REQUESTED_DATE,'
      '  MOVEMENT_REASON = :MOVEMENT_REASON,'
      '  RELEASED_TO = :RELEASED_TO,'
      '  DATE_RELEASED = :RELEASED_DATE,'
      '  DATE_RETURNED = :DATE_RETURNED,'
      '  REQUESTED_DATE = :REQUESTED_DATE'
      'WHERE NCLIENT = :NCLIENT'
      '  AND NDOCUMENT = :NDOCUMENT')
    Left = 158
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REQUESTED_BY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REQUESTED_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MOVEMENT_REASON'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RELEASED_TO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RELEASED_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DATE_RETURNED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NDOCUMENT'
        Value = nil
      end>
  end
  object strCheckForMasterLink: TStringz
    Strings.Strings = (
      'SELECT'
      '  P.NNAMEMASTER AS MASTER,'
      '  P.SHORTNAME AS CHILDSHORTNAME,'
      '  M.SHORTNAME AS PARENTSHORTNAME, '
      '  P.NAME AS CHILDNAME,'
      '  M.NAME AS PARENTNAME,'
      '  P.LONGNAME AS CHILDLONGNAME,'
      '  M.LONGNAME AS PARENTLONGNAME,'
      '  P.HOMEPHONE AS CHILDHOMEPHONE,'
      '  M.HOMEPHONE AS PARENTHOMEPHONE,'
      '  P.WORKPHONE AS CHILDWORKPHONE,'
      '  M.WORKPHONE AS PARENTWORKPHONE,'
      '  P.MOBILE AS CHILDMOBILE,'
      '  M.MOBILE AS PARENTMOBILE,'
      '  P.FAX AS CHILDFAX,'
      '  M.FAX AS PARENTFAX,'
      ''
      '  P.ADDRESS AS CHILDADDRESS,'
      '  M.ADDRESS AS PARENTADDRESS,'
      ''
      '  DECODE(P.ADDRESS, NULL, P.SUBURB, '#39'SUBURB'#39') AS CHILDSUBURB,'
      '  M.SUBURB AS PARENTSUBURB,'
      '  DECODE(P.ADDRESS, NULL, P.STATE, '#39'STATE'#39') AS CHILDSTATE,'
      '  M.STATE AS PARENTSTATE,'
      
        '  DECODE(P.ADDRESS, NULL, P.POSTCODE, '#39'POSTCODE'#39') AS CHILDPOSTCO' +
        'DE,'
      '  M.POSTCODE AS PARENTPOSTCODE,'
      '  DECODE(P.ADDRESS, NULL, P.COUNTRY, '#39'COUNTRY'#39') AS CHILDCOUNTRY,'
      '  M.COUNTRY AS PARENTCOUNTRY, '
      ''
      '  P.DX AS CHILDDX,'
      '  M.DX AS PARENTDX,'
      '  P.DXLOC AS CHILDDXLOC,'
      '  M.DXLOC AS PARENTDXLOC,'
      ''
      '  P.POSTALADDRESS AS CHILDPOSTALADDRESS,'
      '  M.POSTALADDRESS AS PARENTPOSTALADDRESS,'
      ''
      
        '  DECODE(P.POSTALADDRESS, NULL, P.POSTALSUBURB, '#39'POSTALSUBURB'#39') ' +
        'AS CHILDPOSTALSUBURB,'
      '  M.POSTALSUBURB AS PARENTPOSTALSUBURB,'
      
        '  DECODE(P.POSTALADDRESS, NULL, P.POSTALSTATE, '#39'POSTALSTATE'#39') AS' +
        ' CHILDPOSTALSTATE,'
      '  M.POSTALSTATE AS PARENTPOSTALSTATE,'
      
        '  DECODE(P.POSTALADDRESS, NULL, P.POSTALPOSTCODE, '#39'POSTALPOSTCOD' +
        'E'#39') AS CHILDPOSTALPOSTCODE,'
      '  M.POSTALPOSTCODE AS PARENTPOSTALPOSTCODE,'
      
        '  DECODE(P.POSTALADDRESS, NULL, P.POSTALCOUNTRY, '#39'POSTALCOUNTRY'#39 +
        ') AS CHILDPOSTALCOUNTRY,'
      '  M.POSTALCOUNTRY AS PARENTPOSTALCOUNTRY,'
      ''
      '  P.CUST_ADDRESS AS CHILDCUSTADDRESS,'
      '  M.CUST_ADDRESS AS PARENTCUSTADDRESS,'
      ''
      
        '  DECODE(P.CUST_ADDRESS, NULL, P.CUST_SUBURB, '#39'CUSTSUBURB'#39') AS C' +
        'HILDCUSTSUBURB,'
      '  M.CUST_SUBURB AS PARENTCUSTSUBURB,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, P.CUST_STATE, '#39'CUSTSTATE'#39') AS CHI' +
        'LDCUSTSTATE,'
      '  M.CUST_STATE AS PARENTCUSTSTATE,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, P.CUST_POSTCODE, '#39'CUSTPOSTCODE'#39') ' +
        'AS CHILDCUSTPOSTCODE,'
      '  M.CUST_POSTCODE AS PARENTCUSTPOSTCODE,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, P.CUST_COUNTRY, '#39'CUSTCOUNTRY'#39') AS' +
        ' CHILDCUSTCOUNTRY,'
      '  M.CUST_COUNTRY AS PARENTCUSTCOUNTRY,'
      ''
      '  P.EMAIL AS CHILDEMAIL,'
      '  M.EMAIL AS PARENTEMAIL,'
      '  P.WWW AS CHILDWWW,'
      '  M.WWW AS PARENTWWW,'
      '  P.SALUTATION AS CHILDSALUTATION,'
      '  M.SALUTATION AS PARENTSALUTATION,'
      '  P.GIVENNAMES AS CHILDGIVENNAMES,'
      '  M.GIVENNAMES AS PARENTGIVENNAMES,'
      '  P.LASTNAME AS CHILDLASTNAME,'
      '  M.LASTNAME AS PARENTLASTNAME'
      'FROM'
      '  phonebook p,'
      '  phonebook m'
      'WHERE'
      '  p.nclient = :nclient'
      'AND'
      '  p.nnamemaster = m.nname (+)')
    Left = 460
    Top = 329
  end
  object qDataFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.seq,'
      '  f.fieldname,'
      '  t.caption,'
      '  t.type,'
      '  f.textvalue,'
      '  f.nunique,'
      '  f.nunique2,'
      '  g.code AS dataform,'
      '  g.caption AS dataformcaption,'
      '  g.party AS party'
      'FROM'
      '  fieldtypelink f,'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  t.name = f.fieldname'
      '  AND d.dataform = g.code'
      '  AND d.fieldname = t.name'
      '  AND f.linktable = g.code'
      '  AND f.nunique = :nunique'
      '  AND f.nunique2 IS NULL'
      '  AND g.party = :partytype'
      '  AND g.partyismatterspecific = '#39'N'#39
      'UNION'
      'SELECT'
      '  d.seq,'
      '  t.name AS fieldname,'
      '  t.caption,'
      '  t.type,'
      '  NULL AS textvalue,'
      '  -1 AS nunique,'
      '  -1 AS nunique2,'
      '  g.code AS dataform,'
      '  g.caption AS dataformcaption,'
      '  g.party AS party'
      'FROM'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  d.dataform = g.code'
      '  AND g.party = :partytype'
      '  AND d.fieldname = t.name'
      '  AND t.name NOT IN ('
      '    SELECT t.name'
      '    FROM'
      '      fieldtypelink f,'
      '      fieldtype t,'
      '      dataformfield d,'
      '      dataform g'
      '    WHERE t.name = f.fieldname'
      '      AND d.dataform = g.code'
      '      AND g.party = :partytype'
      '      AND d.fieldname = t.NAME'
      '      AND f.linktable = g.code'
      '      AND f.nunique = :nunique'
      '      AND f.nunique2 IS NULL'
      '      AND g.partyismatterspecific = '#39'N'#39
      '  )'
      '  AND g.partyismatterspecific = '#39'N'#39
      'ORDER BY dataform, seq')
    Left = 337
    Top = 589
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nunique'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
    object qDataFieldsFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 40
    end
    object qDataFieldsCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 120
    end
    object qDataFieldsTYPE: TStringField
      FieldName = 'TYPE'
      Size = 2
    end
    object qDataFieldsTEXTVALUE: TStringField
      FieldName = 'TEXTVALUE'
      Size = 2000
    end
    object qDataFieldsNUNIQUE: TFloatField
      FieldName = 'NUNIQUE'
    end
    object qDataFieldsNUNIQUE2: TFloatField
      FieldName = 'NUNIQUE2'
    end
    object qDataFieldsDATAFORM: TStringField
      FieldName = 'DATAFORM'
      Size = 32
    end
    object qDataFieldsPARTY: TStringField
      FieldName = 'PARTY'
      Size = 25
    end
    object qDataFieldsDATAFORMCAPTION: TStringField
      FieldName = 'DATAFORMCAPTION'
      Size = 60
    end
  end
  object qPGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT  /*+ first_rows */ distinct g.category, '
      
        '  decode(g.otherparty,'#39'Y'#39','#39'Yes'#39','#39'No'#39') as otherparty, g.actingfor' +
        ', g.fieldname'
      'FROM'
      '  pbgroup g, pbgroupings p'
      'WHERE'
      '  g.category = p.category(+)'
      'AND p.nname = :nname'
      'ORDER BY g.category ')
    Left = 234
    Top = 197
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qPGroupsCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 25
    end
    object qPGroupsOTHERPARTY: TStringField
      FieldName = 'OTHERPARTY'
      Size = 3
    end
    object qPGroupsACTINGFOR: TStringField
      FieldName = 'ACTINGFOR'
      Size = 1
    end
    object qPGroupsFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 32
    end
  end
  object qryDocs: TUniQuery
    UpdatingTable = 'doc'
    SQLRefresh.Strings = (
      'WHERE'
      '  D.NCLIENT = :NCLIENT')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.DOC_NAME, D.SEARCH, D.DOC_CODE, '
      '   D.JURIS, D.D_CREATE, D.AUTH1, '
      '   D.D_MODIF, D.AUTH2, D.PATH, '
      '   D.DESCR, D.FILEID, D.DOCID, '
      '   D.NPRECCATEGORY, D.NMATTER, '
      '   D.IMAGEINDEX, D.FILE_EXTENSION, D.EMAIL_SENT_TO, '
      '   D.TEMPLATEPATH, D.DATAFILEPATH, D.DATAFORM, '
      '   D.WORKFLOWDOCID, D.KEYWORDS, D.PRECEDENT_DETAILS, '
      '   D.NPRECCLASSIFICATION, D.OT_VERSION, D.OT_FORMAT, '
      '   D.DISPLAY_PATH, D.URL, '
      '   D.EXTERNAL_ACCESS, D.WORKFLOWGENDOCUMENT, D.DOC_NOTES, '
      '   D.DUMMY, D.EMAIL_FROM'
      '  FROM phonebook p, phonebook_doc pd, doc d'
      ' WHERE p.nclient = :nclient '
      ' and p.nname = pd.nname '
      ' AND pd.docid = d.docid')
    Left = 765
    Top = 645
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object dsDocs: TUniDataSource
    DataSet = qryDocs
    Left = 813
    Top = 652
  end
  object plClientDetails: TppDBPipeline
    DataSource = dsClientDetails
    UserName = 'plClientDetails'
    Left = 303
    Top = 559
    object plClientDetailsppField1: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 0
      Position = 0
    end
    object plClientDetailsppField2: TppField
      FieldAlias = 'GIVENNAMES'
      FieldName = 'GIVENNAMES'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plClientDetailsppField3: TppField
      FieldAlias = 'LASTNAME'
      FieldName = 'LASTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plClientDetailsppField4: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object plClientDetailsppField5: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 246
      DisplayWidth = 246
      Position = 4
    end
    object plClientDetailsppField6: TppField
      FieldAlias = 'WORKPHONE'
      FieldName = 'WORKPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object plClientDetailsppField7: TppField
      FieldAlias = 'HOMEPHONE'
      FieldName = 'HOMEPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object plClientDetailsppField8: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object plClientDetailsppField9: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object plClientDetailsppField10: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object plClientDetailsppField11: TppField
      FieldAlias = 'SHORTNAME'
      FieldName = 'SHORTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object plClientDetailsppField12: TppField
      FieldAlias = 'LONGNAME'
      FieldName = 'LONGNAME'
      FieldLength = 150
      DisplayWidth = 150
      Position = 11
    end
    object plClientDetailsppField13: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 12
    end
    object plClientDetailsppField14: TppField
      FieldAlias = 'MOBILE'
      FieldName = 'MOBILE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object plClientDetailsppField15: TppField
      FieldAlias = 'INTRODUCED'
      FieldName = 'INTRODUCED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object plClientDetailsppField16: TppField
      FieldAlias = 'PARTNERCODE'
      FieldName = 'PARTNERCODE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object plClientDetailsppField17: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object plClientDetailsppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALBILLED'
      FieldName = 'TOTALBILLED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object plClientDetailsppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALPAID'
      FieldName = 'TOTALPAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object plClientDetailsppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALWRITEOFF'
      FieldName = 'TOTALWRITEOFF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object plClientDetailsppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALOWING'
      FieldName = 'TOTALOWING'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object plClientDetailsppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object plClientDetailsppField23: TppField
      FieldAlias = 'CONTACT'
      FieldName = 'CONTACT'
      FieldLength = 60
      DisplayWidth = 60
      Position = 22
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 870
    Top = 85
  end
  object ilstToolbar: TImageList
    Left = 700
    Top = 109
    Bitmap = {
      494C010120002500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900333333001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C
      1C001C1C1C001C1C1C0033333300999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000006600000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      800000008000000080000000800000008000FBF6F600F1E3E300EFDEDE00EFDE
      DE00EFDEDE00EFDFCE00E1D1D100E1D1D100E1D1D100E1D1D100E1D1D100E1D1
      D100E1D1D100E8DDDE0000000000000000000000000000000000000000000000
      000000000000C0C0C00000202000002020000020200000202000C0C0C0000000
      000000000000000000000000000000000000000000000000000000000000A4A0
      A000000000005050FF009999FF00000000000000000000000000000000000000
      000000000000000000000000000086868600000066000000660000009900C0C0
      C000C6D6EF003333990000009900000099000000990000009900000080000000
      800000008000000080000000800000008000E9D4D600DCB4A900EED1BE00ECC4
      AD00F1C69100F2BB7400E2977400DD8F6A00D6926800C9936900C9936900CC86
      6C00BD6E5800B18677000000000000000000000000000000000000000000C0C0
      C000002020000020200000FFFF0000FFFF0000FFFF0000FFFF00002020000020
      2000C0C0C000000000000000000000000000000000000000000000000000A4A0
      A00000000000CCCCFF009999FF00CCCCFF000000000000000000000000000000
      0000000000000000000000000000868686000000660000006600000099006666
      CC006666CC00C6D6EF0000009900000099000000990000009900000099000000
      990000009900000099000000990000009900ECD9DA00E2C2B700EFE5E300FCFF
      FF00F6F7F400FAF4E400FFF3D100FDE6C000FAD5AD00FFCF9E00FFCF9E00F5C8
      9800D9905F00BD82820000000000000000000000000000000000C0C0C0000020
      200000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000202000C0C0C0000000000000000000000000000000000000000000A4A0
      A000000000000000000000000000807CFF00CCCCFF009999FF009999FF009999
      FF009999FF00807CFF0000000000868686000000660000006600000099000000
      99003333CC009999CC009999CC002100A5000000990000009900000099000000
      990000009900000099000000990000009900EAD5D600ECE2E000EECECC00EDD8
      DA0000000000F7F9FC00F4F2EF00FAF0DD00FEECCE00FAE3C100EECBA600DBA7
      7C00F7B26C00BB868200000000000000000000000000000000000020200000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00002020000000000000000000000000000000000000000000A4A0
      A000000000000000000000000000EAEAEA006666FF00CCCCFF005050FF00CCCC
      FF009999FF00CCCCFF0000000000868686000000800000006600000099000000
      99000000990000009900000000009999CC00C0C0C0006666CC003333CC003333
      CC009999CC009999CC006666CC0000009900EAD4D400F0E2E300FEFFFF00ECC4
      B700EBD7D500000000000000000000000000F7F6F200F6DDC400DAA48900F8D9
      B200F5C99A00B9907F00000000000000000000000000C0C0C0000020200000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000202000C0C0C00000000000000000000000000000000000A4A0
      A000000000000000000000000000F1F1F1006666FF003333FF00F1F1F100F1F1
      F100F1F1F10000000000000000008686860000008000000080002100A5002100
      A5002100A5002100A5006666CC003333CC002100A5003333CC00EAEAEA00C6D6
      EF009999CC006666CC006666CC0000009900EAD2D200F4E5E600F8F3EB00F7EB
      DA00E6DAD800E9C2B300E6C6BB00E6C6BB00E2B8B100DBBAA700E6DADF00F3DD
      C900FEE3BE00C09892000000000000000000000000000020200000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000020200000000000000000000000000000000000A4A0
      A00000000000F1F1F100F1F1F100F1F1F1009999FF009999FF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F1008686860000008000000080000000CC000000
      CC000000CC000000CC000000CC009999CC000000CC009999CC003333CC002100
      A5002100A5002100A5002100A5002100A500EBE0E200E9E6E800F5F1E800F7F9
      FA00F0F3F300E5E3E100DAD3D500DAD3D500E0DADA00EFF0EF00F1F5F600E6E3
      E500DECABB00D0A79400FEFFFF00FEFFFF00000000000020200000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000020200000000000000000000000000000000000A4A0
      A00000000000F1F1F100F1F1F100F1F1F1006666FF00CCCCFF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F1009696960000008000000080000000CC000000
      CC000000CC000000CC000000CC006666CC006666CC006666CC000000CC000000
      CC000000CC000000CC000000CC000000CC00F2EDE300A79C9700B59CA200EEE6
      E600FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFAF100F0F3
      EF0067B1F500A196A500FFFFFD00FFFFFD00000000000020200000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000020200000000000000000000000000000000000A4A0
      A000F1F1F100F1F1F100F1F1F100F1F1F100807CFF00CCCCFF00F1F1F100F1F1
      F100EAEAEA00EAEAEA00D7D7D7009696960000008000000080000000CC000000
      CC000000CC000000CC000000CC000000CC00EAEAEA000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC00A4936900A48A7700A7896F00AE94
      9300D6EAFF00AEE2FF00A6E5FF0094E5FF008AE2FF0088CCFF0089BFF90064B2
      FC00189CFF00858BAE00FFFFFC00FFFFFC00000000000020200000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000202000000000000000800000008000000080000000
      6600000066000000660000006600000066000000660000006600EAEAEA00E3E3
      E300E3E3E300C0C0C000969696009999990000008000000080000000CC000000
      CC000000CC000000CC000000CC003333CC00CCCCFF000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC0097987600A39F870099858100A392
      9400B1E5FF007DCDFF0072C1FF0059C6FF003EC7FF0031C5FF001DBEFF001A9B
      FD005C83B200E1CAC700000000000000000000000000C0C0C0000020200000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000202000C0C0C000000000000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000008000A4A0A0008686
      86008686860096969600A4A0A000B2B2B20000009900000099000000CC000000
      CC000000CC000000CC000000CC00807CFF00807CFF000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC00BC989A00BDBBB100AAAB9500A79B
      8E00D2F3FB00BDFBFF00A7E9FF009AD4FF0085C8FF0070D1FF0057C4E900929F
      A200E7D4CC0000000000000000000000000000000000000000000020200000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000020200000000000000000000000CC003333FF003333FF003333
      FF003333FF000000CC000000CC000000CC000000CC0000009900868686000000
      000000000000DDDDDD0099999900C0C0C00000009900000099000000CC000000
      CC000000CC000000CC000000CC00807CFF005050FF003333CC000000CC000000
      CC000000CC000000CC000000CC000000CC00B5989000D0B7BA00C0B0B000B2B5
      9F00D8D7D900CAF8F800CFFFFF00C7FFFF00AFEFFF0095B7CD00B6A9A500FFF0
      EB00000000000000000000000000000000000000000000000000C0C0C0000020
      200000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000202000C0C0C00000000000000000000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000009900A4A0A0000000
      0000DDDDDD0099999900B2B2B2000000000000009900000099000000FF000000
      FF000000FF000000FF000000FF006666FF00807CFF000000FF000000FF000000
      CC000000CC000000CC000000CC000000CC00E9EBDF00C8B4AF00E4DAD700C4B1
      AF00FBF0EF00DACFC700CAE3E400CBF3F300B1B6BD00DBC4B900FFFDFB000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000002020000020200000FFFF0000FFFF0000FFFF0000FFFF00002020000020
      2000C0C0C0000000000000000000000000000000000000000000000000009999
      990000000000F1F1F100F1F1F100EAEAEA00EAEAEA00E3E3E300C0C0C000DDDD
      DD00A4A0A000B2B2B200000000000000000000009900000099000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000CC000000CC0000000000D7DACB00BBB49C00DFD1
      CF0000000000FFF8F800E6D5CE00D2BDBE00E1D6D50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000202000002020000020200000202000C0C0C0000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200999999009999990096969600999999009696960096969600969696009999
      9900C0C0C0000000000000000000000000003333CC00C6D6EF00EAEAEA00EAEA
      EA00E3E3E300E3E3E300DDDDDD00DDDDDD00D7D7D700D7D7D700CCCCCC00CCCC
      CC00C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9C277FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006699660066996600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9C176FFD8BF
      6CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000669966003366
      0000339900003399000033660000336633005555550077777700000000000000
      00000000000000000000000000000000000000000000E3E0D1FFE3E0D1FFE2DD
      C7FFE1D8BBFFE0D5B0FFDED1A4FFDDCD99FFDBC88CFFDAC380FFD9C176FFD8BF
      6CFFD7BD64FF0000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000057120000551203005213
      00005612000055130000550F0000551300005412000053110000591100005412
      0000551001005613000000000000000000000000000066993300339900003399
      000033990000339900003399000033990000336600006666330099663300CC66
      3300CC993300CC993300CC9966000000000000000000E3DFD1FFE3DFD1FFE2DB
      C5FFE1D8BCFFE0D5B0FFDED2A4FFDDCD98FFDBC88CFFDAC581FFD9C277FFD8BD
      6CFFD7BC64FFD6BB5DFF000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000056110000FBF9F800FAF8
      F700F5F7F700F4FAF500F8F9F700FAF8F800F8F7F900F7F9FA00F7F6F800FAF8
      F700F9F7F6005611020000000000000000000000000033990000339900003399
      0000C0DCC000669933003399000033990000339900006666330099996600F0CA
      A600FFECCC00F0CAA600CC9933000000000000000000E3DFD1FFE3DFD1FFE2DB
      C5FFE1D8BCFFE0D5B0FFDED2A4FFDDCD98FFDBC88CFFDAC581FFD9C277FFD8BD
      6CFFD7BC64FFD6BB5DFFD6BB5DFF00000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000054120000F5F7F700F8F8
      F800F8F8F800F5F8FC00FBF7FC00F8F7F900FAF8F700F6F8F800F8F9F500F6F8
      F800F3F8F600561100000000000000000000669933003399000066993300EAEA
      EA0000000000F8F8F800669933003399000033990000339900009999660090A9
      AD0099CCCC00FFECCC00CC6633000000000000000000E3DFD1FFE3DFD1FFE2DB
      C5FFE1D8BCFFE0D5B0FFDED2A4FFDDCD98FFDBC88CFFDAC581FFD9C277FFD8BD
      6CFFD7BC64FFD6BB5DFF0000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000550F0200F5FBF600FAF6
      FB00F9F9F900F7F7F70002860000F8F7F900F4F9F700F7F9FA00F6F5F700FCF8
      F700FAF6FB005612000000000000000000003399000066990000F1F1F1000000
      00000000000000000000EAEAEA00669933003399000033990000999966003399
      CC000099FF00FFECCC00CC6633000000000000000000E3DFD1FFE3DFD1FFE2DB
      C5FFE1D8BBFFE0D5B0FFDED0A3FFDDCD98FFDBC98CFFDAC581FFD9C277FFD8C0
      6EFFD7BD64FF0000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000560F0100F5FAF800F8F8
      F800F9F7F60001890100008D020000870000F6F8F900FBF8F300F9F9F900FAF7
      F900F6F7FB00571100000000000000000000339900003399000099CC6600F1F1
      F10099CC6600EAEAEA0000000000E3E3E300339900003399000099996600C0C0
      C00099CCCC00FFECCC00CC663300000000000000000000000000000000000000
      0000000000007C78E9FF00000000000000000000000000000000D9C176FFD8C1
      6EFF000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000054110200F6F8F900FEF6
      F60003880200008B000000890000008C000004880000F7F8F600F9F8FA00FBF9
      F900F5F9F40057120000000000000000000066CC330066CC0000339900006699
      00003399000066CC33000000000099CC66003399000066993300CCCC990066CC
      CC0066CCCC00FFECCC00CC663300000000000000000000000000000000000000
      0000726EE7FF7B78E8FF00000000000000000000000000000000D9C277FF0000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000057120000F0F3F700F0F3
      F8000187000002870100FEF9F800008900000089000000890000F7F8F600F6F7
      FB00F7F9F900561000000000000000000000000000003399000066CC000066CC
      000066CC00003399000066993300339900003399000099CC6600DDDDDD003399
      CC003399CC00F1F1F100CC663300000000000000000000000000000000006B67
      E6FF726EE8FF7C78E9FF8582EAFF9390EDFFA09DEEFFADABF1FFBCBAF4FFCAC8
      F5FFD7D6F8FFE4E2F9FFE4E2F9FF000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000050130000E5EBF200EEED
      EF0003870000F1F0F400F6F0F500FAF3FA00018901000089000000880000F4F9
      F700FBF9F90056100000000000000000000000000000999933003399000066CC
      000066CC000066CC0000339900003399000099CC6600DDDDDD00F1F1F1003399
      FF003399FF00F1F1F100CC6633000000000000000000000000006B67E6FF6B67
      E6FF726EE8FF7C78E8FF8682EAFF938FEDFF9F9DEFFFAEABF1FFBDBAF3FFCAC9
      F6FFD7D6F8FFE4E3FAFFE4E3FAFF000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF0000000000000000005A120100E0E3E700E0E4
      E500E2E5E900E4E9E800E9E9E900EEECEC00F5EFF4000589000000890200FAF7
      F900F6F6F60056110200000000000000000000000000CC663300C0DCC00066CC
      3300669933006699330066CC3300CCCC9900F1F1F100F8F8F800F8F8F8000099
      FF000099FF00F1F1F100CC66330000000000000000006B67E6FF6B67E6FF6B67
      E6FF726EE8FF7C78E8FF8682EAFF938FEDFF9F9DEFFFAEABF1FFBDBAF3FFCAC9
      F6FFD7D6F8FFE4E3FAFFE4E3FAFF00000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000059110000D4DDE000D8DC
      DD00D7DCDD00DBE0DF00DAE2E100E0E5E400E3E6EA00E9EAEE0001850200ECF0
      F100F0F2F20057110000000000000000000000000000CC663300FFECCC000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800F8F8F800FFCCCC00CC6633000000000000000000000000006B67E6FF6B67
      E6FF726EE8FF7C78E8FF8682EAFF938FEDFF9F9DEFFFAEABF1FFBDBAF3FFCAC9
      F6FFD7D6F8FFE4E3FAFFE4E3FAFF00000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000059130200D3D8DB00CCDA
      D900D6D8D800D5DADD00D7DDDC00D7DDE200DBE0DE00E1E3E400E2E5EA00E4E9
      E700E7ECED00560E0200000000000000000000000000CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300000000000000000000000000000000006B67
      E6FF726EE8FF7C78E8FF8582EAFF928FEDFFA09DEEFFADABF1FFBDBAF3FFC9C8
      F6FFD7D6F8FFE4E3FAFFE4E3FAFF0000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000054120000CED7DB00D1D6
      D900D1D6D700D2D7DA00D4D7DB00D1DADD00D8DFDC00D9DEDD00DCE2E100D6E4
      E300E0E6EB0054120000000000000000000000000000FF996600FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
      6600FF996600CC663300CC663300000000000000000000000000000000000000
      0000726EE7FF7B77E9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000054120000581302005311
      000055130100571300005813000051130100540F000057130000561200005311
      0000571200005712010000000000000000000000000000000000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
      6600FF996600FF663300CC999900000000000000000000000000000000000000
      0000000000007C78E9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008686
      86005F5F5F003333660055555500666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000000000000000000000000000C0C0
      C00000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000C0C0C00000000000000000000000000000000000000000006666CC003333
      FF000033FF000033FF003333FF003333CC00333366005F5F5F00000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000FF000000FF000000FF000000FF0000000000000000
      0000C0C0C000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000C0C0C0000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000C0C0C0000000000000000000000000006666CC000033FF003333
      FF006666CC005050FF003333FF000033FF003333CC004242420099663300CC66
      3300CC993300CC993300CC996600000000000000000000000000C0C0C0000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000000000C0C0C0000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000000033FF005050FF00DDDD
      DD00FFECCC00DDDDDD003366CC000033FF000033FF003333990077777700F0CA
      A600FFECCC00F0CAA600CC9933000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF0000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000C0C0C000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000C0C0C000000000003366FF003333CC00CCCCCC00FFEC
      CC00DDDDDD003366CC000033FF005050FF000033FF003333FF006666660090A9
      AD0099CCCC00FFECCC00CC6633000000000000000000C0C0C0000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000C0C0C00000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000033FF003333CC00DDDDDD00EAEA
      EA003366CC000033FF006666FF00E3E3E3005050FF003333FF00777777003399
      CC000099FF00FFECCC00CC66330000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF00000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000033FF003333CC00C0C0C0006666
      CC000033FF006666FF00EAEAEA00F1F1F1003333FF003333FF0086868600CCCC
      CC0099CCCC00FFECCC00CC66330000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF00000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000006666FF000033FF003333CC000033
      FF006666FF00F1F1F100F1F1F100C6D6EF000033FF003366CC00C0C0C00066CC
      CC0066CCCC00FFECCC00CC66330000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000033FF000033FF000033
      FF009999CC009999CC006666CC000033FF003333FF00B2B2B200F1F1F1003399
      FF003399FF00FFECCC00CC66330000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C0C0C000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000C0C0C0000000000000000000996699000033FF000033
      FF000033CC000033CC000033FF003333FF009999CC00F1F1F100F1F1F1003399
      FF003399FF00F1F1F100CC6633000000000000000000C0C0C0000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000CC663300CCCCFF009999
      FF005050FF006666FF009999FF00EAEAEA0000000000F8F8F800F8F8F8000099
      FF000099FF00F1F1F100CC6633000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000C0C0C0000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000C0C0C000000000000000000000000000CC663300FFECCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800FFCCCC00CC663300000000000000000000000000C0C0C0000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000000000C0C0C00000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000C0C0
      C00000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000C0C0C00000000000000000000000000000000000CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC66330000000000000000000000000000000000C0C0
      C000000000000000000000FF000000FF000000FF000000FF0000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000C0C0C0000000
      00000000000000000000000000000000000000000000FF996600FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
      6600FF996600CC663300CC663300000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
      6600FF996600FF663300CC999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E619B2B2B24D9292926D8D8D8D729B9B9B64C7C7C738F9F9
      F906000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0391919F6E2B2B6BD4050563FA000065FF000060FF00004FFF16163DE96262
      629DD4D4D42B0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F40B6060
      909F000084FF00008EFF00008EFF00008FFF00008CFF000088FF000081FF0101
      54FF34343CCBC2C2C23D00000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      00000000000000000000000000000000000000000000FDFDFD025A5A9AA50000
      96FF000097FF00009BFF00009FFF0000A0FF00009DFF000097FF00008FFF0000
      88FF000062FF36363EC9D6D6D62900000000000000000000FF000000FF000000
      FF00000000008484840084848400848484008484840084848400848484008484
      84008484840000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      000000000000000000000000000000000000000000008F8FB7700101A3FF0808
      9EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848B8FFB7B7E3FF2727
      A5FF00008CFF010152FF7171718E00000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000DDDDEF222828ABD90000ABFF2828
      A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7ECFFFFFFF7FF5E5E
      B7FF00009AFF020287FF2E2E45D1000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000009797E5690606B0FD0303B9FF0000
      C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFFF1FF7575B9FF0606
      B1FF0101ABFF0202A0FF12135DED0000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000005859D0AB0808BBFF0707C8FF0505
      D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575C9FF0000BEFF0101
      C3FF0303B8FF0303ACFF0F0F6EF2000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000004B4BD2BC0C0CC9FF0D0DD8FF0B0B
      DCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858DBFF0000CAFF0303
      CBFF0606C5FF0606B8FF111178F10000000000000000FFFFFF00848484008484
      840000FFFF008484840084848400FFFFFF0084848400FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000007272E6931414D8FF1717EAFF0B0B
      F1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFEFFFF6363E5FF0303
      D7FF0A0ACFFF0A0AC3FF21217FE2000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000BBBBF7452525E5F22222FBFF3F3F
      E9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3D6FFFFFFFEFF6161
      E5FF0808DBFF0F0FCAFF4F4F85B20000000000000000FFFFFF00848484008484
      840000FFFF0084848400848484008484840000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF0000000000000000000000000000F3F3FD0C5E5EF1AF3232FFFF5252
      EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252B4FFADADB0FF4D4D
      E1FF1818EDFF1818B1F5B6B6B949000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF000000000000000000000000000000000000D6D6FC293E3EFBE75353
      FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838FCFF4242EBFF3232
      FFFF1F1FE9FF7E7EA7840000000000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000C2C2FC404848
      FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767FFFF5151FFFF3030
      FBFD7C7CB488FEFEFE0100000000000000000000000000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353FFFF5151F2D2A6A6
      CD5C000000000000000000000000000000008484840000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAAFD5DE1E1F81E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00080808000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0C0008080
      8000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF0000000000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0
      C00080808000C0C0C000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C0000000FF00C0C0C000FFFFFF00C0C0C0000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF00C0C0C0000000FF000000FF000000FF00C0C0C000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00C0C0C0000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000084848400848484008484840084848400000000000000
      00008484840084848400000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840084848400848484008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840000000000848484008484840084848400848484000000
      00008484840084848400000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84000000000084848400FFFFFF00000000008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000084848400848484008484840084848400000000000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000FFFFFF00FFFFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C6000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00C6C6C60000FFFF00C6C6C60000FFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00C6C6C60000FFFF00C6C6C6000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FF00000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF000000000000000000000000000000000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF0000000000000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF00000084000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FF00000084000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FF00000084000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FF0000008400
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000084000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000084000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000084000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000084000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E000FFFFFFFFFFFFEFFE80000003F81F
      E9FE00000003E007E8FE00000003C003EE0200000803C003EE02020007038001
      EE06000000038001E800000000008001E800000000008001E000000000008001
      0000000000038001000000000007C00300180000000FC00300110000001FE007
      E8030000887FF81FE0070003FFFFFFFFFFFFFFDFFFFFFFFFF9FFFFCFF83FFFFF
      C03F8007E00F800380018003CFC780038001800187E3800308018003A3F38003
      1C01800731F980030201FBCF38F980030201F3DF3C7980038001E0013E398003
      8001C0013F198003800180019F8B80039FE1C0018FC380038001E001C7E78003
      8001F3FFE00F8003C001FBFFF83FFFFFFC00FFFFFFFFFFFFFC00F81FE0FFF81F
      2000E007C03FE0070000C0038001C0030000C0038001C0030000800100018001
      0000800100018001000080010001800100008001000180010000800180018001
      E000800180018001F800C0038081C003F000C0039FF1C003E001E0078001E007
      C403F81F8001F81FEC07FFFFC001FFFFFFFFF80FFFE3FFFFFC7FE007FC41FFFF
      F83FC0038800C007F81F80010000C007F00780010000C007F00300010000C007
      E00300010000C007E00300010000C007C00300010000C007C00300010000C007
      C00300010000C007E00300010000C007F80380030001C00FFC03C0030001C01F
      FF83E00F000DC03FFFC3F01FD553FFFFFFFFFFFFFFFFFFFFFE7FFFFFC00FFFFF
      FC3FFFFF8007FFFFFC3FFFFF8003E007FE7FFFFF8001C007FC3FFF9F8001C007
      FC3FFE1F800FC007FC3FF81F800FC007FC1FF01F801FC007F20FF81FC01FC007
      E107FE1FC07FC00FE187FF9FFC7FE07FE007FFFFFC7FE07FF00FFFFFFC7FFFFF
      F81FFFFFFC7FFFFFFFFFFFFFFFFFFFFFFEFDFFFFFFFFFFFFFE7DFFFFFFFFC007
      FE3D07C1FFFF8003FE1D07C1FC3F0001FE0D07C180010001FE05010180010001
      FE01000180010000FE05020182010000FE0D020181018000FE1D80038001C000
      FE3DC1078001E001FE7DC1078001E007FEFDE38FC813F007FFFFE38FFC3FF003
      FFFFE38FFFFFF803FFFFFFFFFFFFFFFFFF00BF7FFF7FFEFFFF00BE7FFE7FFE7F
      FF00BC7FFC7FFE3FFE00B87FF87FFE1FFE00B07FF07FFE0FFE00A07FE07FFE07
      C000807FC07FFE038001A07FE07FFE078003B07FF07FFE0F8007B87FF87FFE1F
      800FBC7FFC7FFE3F800FBE7FFE7FFE7F800FBF7FFF7FFEFF801FFFFFFFFFFFFF
      C0FFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFDFFFFFFFFFF
      F81FF8FFFFF9FFFFF40FF07FE7FFFFFFE007E03FC3F3C00F8003C01FC3E78007
      4001800FE1C7800300000007F08F800100000003F81F800180018001FC3F800F
      C003C003F81F800FE00FE00FF09F801FF07FF00FC1C7C0FFF8FFF81F83E3C0FF
      FFFFFC7F8FF1FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryClient: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  C.ROWID,'
      '  C.NCLIENT,'
      '  C.NAME,'
      '  C.CONTACT,'
      '  C.GENDER,'
      '  C.CLIENTGROUP,'
      '  P.SEARCH,'
      '  C.MATTERS,'
      '  C.PARTNER,'
      '  C.ARCHIVES,'
      '  C.BANKERS,'
      '  C.CREDIT_RATING,'
      '  C.PREV_NCMAUDIT,'
      '  C.TAXNO,'
      '  C.INTRODUCED,'
      '  C.INTRODUCER,'
      '  C.CODE,'
      '  C.FEECODE,'
      '  C.FORMAT_FILE,'
      '  C.MATTERSEQ,'
      '  C.BILLTEMPLATE,'
      '  C.ARCHVLOCN,'
      '  C.DATEARCHV,'
      '  C.DATEREVIEW,'
      '  C.DATEDSTRN,'
      '  C.SOURCE,'
      '  C.BGROUP,'
      '  C.INDUSTRY,'
      '  C.NPKTS,'
      '  C.DFLTLCODE,'
      '  C.NMACLOSED,'
      '  C.NDRCLOSED,'
      '  C.NDRARCHV,'
      '  C.STATUS,'
      '  C.TRSTMNT,'
      '  C.ADISINVRECV,'
      '  C.TRUST_BAL,'
      '  C.CL_TRUST_BAL,'
      '  C.UNBILL_FEES,'
      '  C.DEBTORS,'
      '  C.UNBILL_DISB,'
      '  C.BILL_FEES,'
      '  C.BILL_DISB,'
      '  C.CREDIT_LIMIT,'
      '  C.PERIOD0,'
      '  C.PERIOD1,'
      '  C.PERIOD2,'
      '  C.PERIOD3,'
      '  C.BUDGET_FEES,'
      '  C.BUDGET_DISB,'
      '  C.BUDGET_TOTAL,'
      '  C.DISBTHRESHOLD,'
      '  C.ANTDISBS,'
      '  C.ANTDRS,'
      '  C.DISBSWOFF,'
      '  C.DRSWOFF,'
      '  C.WIPWOFF,'
      '  C.CREATED,'
      '  C.MODIFIED,'
      '  C.NDEBTORTASKTEMPLATE,'
      '  C.FEE_TAX_BASIS,'
      '  C.ALLOW_MATTERS,'
      '  C.CLIENT_PACK,'
      '  CASE WHEN (C.CLIENT_PACK = '#39'YES'#39') THEN '#39'Yes'#39' '
      
        '       WHEN (C.CLIENT_PACK = '#39'SCCO'#39') THEN '#39'No - Safe Custody Cli' +
        'ent Only'#39
      
        '       WHEN (C.CLIENT_PACK = '#39'NOCL'#39') THEN '#39'No - Development NOCL' +
        ' Only'#39' '
      '       ELSE '#39#39' '
      '  END as DISP_CLIENT_PACK,'
      '  P.NNAME,'
      '  P.TITLE,'
      '  P.DOB,'
      '  P.CLIENT_IMAGE,'
      '  P.DATE_OF_DEATH,'
      '  SC.DESCR AS SUPERCLIENT,'
      '  P.ACN'
      'FROM'
      '  SUPERCLIENT SC,'
      '  CLIENT C,'
      '  PHONEBOOK P'
      'WHERE'
      '  C.SEARCH = :P_Search'
      'AND'
      '  C.NCLIENT = P.NCLIENT'
      'AND'
      '  P.SUPERCLIENT(+) = SC.CODE')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    BeforeScroll = qryClientBeforeScroll
    AfterScroll = qryClientAfterScroll
    Left = 751
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Search'
        Value = nil
      end>
  end
  object dsClients: TUniDataSource
    DataSet = qryClient
    Left = 640
    Top = 65530
  end
  object qryGender: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT DESCR, CLIENTNAMECAPTION, CLIENTCONTACTCAPTION, ACNCAPTIO' +
        'N'
      'FROM GENDER '
      'WHERE CODE = :GENDER')
    ReadOnly = True
    Left = 649
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GENDER'
        Value = nil
      end>
  end
  object dsGender: TUniDataSource
    AutoEdit = False
    DataSet = qryGender
    Left = 938
    Top = 42
  end
  object dsOtherClients: TUniDataSource
    AutoEdit = False
    DataSet = qOtherClients
    Left = 982
    Top = 81
  end
  object qryReferral: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 490
    Top = 102
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Relationship'
      'Default'
      'Menu'
      'Search'
      'Matter'
      'Reports'
      'diary'
      'popMatterList'
      'Documents'
      'Clients')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    UseSystemFont = False
    Left = 600
    Top = 126
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 231
      FloatTop = 412
      FloatClientWidth = 49
      FloatClientHeight = 57
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end>
      NotDocking = [dsNone]
      OldName = 'Main Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 221
      FloatTop = 278
      FloatClientWidth = 23
      FloatClientHeight = 289
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNewClient'
        end
        item
          Visible = True
          ItemName = 'btnEditClient'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDeleteClient'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          BeginGroup = True
          UserCaption = 'Letter'
          UserDefine = [udCaption, udPaintStyle]
          Visible = True
          ItemName = 'dxBarLetter'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnClientSearch'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'txtArchived'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barEditProspective'
        end>
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Relationship Toolbar'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 24
      FloatClientHeight = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton22'
        end>
      NotDocking = [dsNone]
      OldName = 'Relationship Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'DiaryToolbar'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1137
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end>
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton13: TdxBarButton
      Action = aRelationshipOpen
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = aRelationshipNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton19: TdxBarButton
      Action = aRelationshipEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton20: TdxBarButton
      Action = aRelationshipDelete
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton21: TdxBarButton
      Action = aRelationshipMerge
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton22: TdxBarButton
      Action = aRelationshipPrint
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnNewClient: TdxBarButton
      Action = actNewClient
      Category = 1
      Hint = 'Create client'
    end
    object btnEditClient: TdxBarButton
      Action = actEditClient
      Category = 1
      Hint = 'Edit current client'
    end
    object btnDeleteClient: TdxBarButton
      Action = actDeleteClient
      Category = 1
      Hint = 'Delete client'
    end
    object dxBarButton4: TdxBarButton
      Action = actSnapshot
      Category = 1
      Hint = 'Create Snapshot of current client.'
    end
    object dxBarButton12: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton12Click
    end
    object txtArchived: TdxBarStatic
      Caption = '<Closed>'
      Category = 1
      Hint = '<Closed>'
      Visible = ivNever
      BorderStyle = sbsBump
    end
    object barEditProspective: TcxBarEditItem
      Caption = 'Prospective Client'
      Category = 1
      Hint = 'Prospective Client'
      Style = cxStyle1
      Visible = ivNever
      PropertiesClassName = 'TcxLabelProperties'
      StyleEdit = cxStyle1
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'File'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNewClient'
        end
        item
          Visible = True
          ItemName = 'btnEditClient'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDeleteClient'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Matter'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Search'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnClientSearch'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end>
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'Clients'
      Category = 2
      Visible = ivAlways
      ImageIndex = 1
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarListClients'
        end>
    end
    object dxBarButton7: TdxBarButton
      Action = actNavFirst
      Category = 3
    end
    object dxBarButton8: TdxBarButton
      Action = actNavPrevious
      Category = 3
    end
    object dxBarButton9: TdxBarButton
      Action = actNavNext
      Category = 3
    end
    object dxBarButton10: TdxBarButton
      Action = actNavLast
      Category = 3
    end
    object btnClientSearch: TdxBarButton
      Action = actFindMatter
      Category = 3
    end
    object dxBarButton5: TdxBarButton
      Action = actNewMatter
      Category = 4
      Description = 'New Matter'
      Hint = 'Create matter for current client'
    end
    object dxBarButton6: TdxBarButton
      Action = actEditMatter
      Category = 4
      Description = 'Edit Matter'
      Hint = 'Edit currently selected Matter'
    end
    object dxBarButton14: TdxBarButton
      Action = actMatterArchive
      Category = 4
      Description = 'Archive Matter'
      Hint = 'Archive currently selected Matter'
    end
    object dxBarButton17: TdxBarButton
      Action = actOpenMatter
      Category = 4
      Hint = 'Open currently selected Matter'
    end
    object btnDelete: TdxBarButton
      Action = actDeleteMatter
      Category = 4
    end
    object dxBarButton15: TdxBarButton
      Action = actPositionReport
      Category = 5
      Hint = 'Print Client position report'
    end
    object dxBarButton16: TdxBarButton
      Caption = 'Print'
      Category = 5
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = actPositionReportExecute
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 6
      Hint = 'New Item'
      Visible = ivAlways
      Control = cbShowMatterDiary
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Export to Excel'
      Category = 7
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = dxBarButton11Click
    end
    object dxBarButton23: TdxBarButton
      Caption = 'Print Grid'
      Category = 7
      Hint = 'Print Grid'
      Visible = ivAlways
    end
    object dxBarButtonEmailasAttachment: TdxBarButton
      Caption = 'eMail as Attachment (External)...'
      Category = 8
      Hint = 'eMail as Attachment (External)'
      Visible = ivAlways
      ImageIndex = 30
      OnClick = dxBarButtonEmailasAttachmentClick
    end
    object dxBarButtonEmailAsPDF: TdxBarButton
      Caption = 'eMail Document as PDF attachment...'
      Category = 8
      Hint = 'eMail Document as PDF attachment'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = dxBarButtonEmailAsPDFClick
    end
    object dxBarListClients: TdxBarMRUListItem
      Caption = 'Reopen'
      Category = 9
      Visible = ivAlways
      OnClick = dxBarListClientsClick
      ShowCheck = True
    end
    object dxBarLetter: TdxBarButton
      Caption = '&Letter'
      Category = 9
      Hint = 'Create Letter'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = dxBarLetterClick
    end
  end
  object dsMatterAgedDebtors: TUniDataSource
    DataSet = qryMatterAgedDebtors
    Left = 549
    Top = 103
  end
  object pmViewAttachment: TPopupMenu
    OnPopup = pmViewAttachmentPopup
    Left = 315
    Top = 509
    object ViewAttachment1: TMenuItem
      Caption = 'View Attachment...'
      OnClick = ViewAttachment1Click
    end
  end
  object dxPrintMatterList: TdxComponentPrinter
    CurrentLink = dxPrintMatterListLink1
    Version = 0
    Left = 1016
    Top = 289
    PixelsPerInch = 96
    object dxPrintMatterListLink1: TdxGridReportLink
      Component = dbgrMatters
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 2540
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -10
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210820
      PrinterPage.PageSize.Y = 297180
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Matter Listing'
      ReportDocument.CreationDate = 41677.423729282410000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object rptPhonebook: TppReport
    AutoStop = False
    DataPipeline = plPhoneBookRpt
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter (8.5 x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    Left = 66
    Top = 577
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'plPhoneBookRpt'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Label3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6646
        mmLeft = 3969
        mmTop = 2117
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 125942
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Color = clSilver
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 32279
        mmLeft = 794
        mmTop = 7673
        mmWidth = 200819
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Color = clSilver
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Phone Book Entry'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 3969
        mmTop = 1058
        mmWidth = 30438
        BandType = 4
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 187325
        mmTop = 1058
        mmWidth = 11303
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Type / Gender:'
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
        mmLeft = 4498
        mmTop = 9260
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'First Name:'
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
        mmLeft = 4498
        mmTop = 19315
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Last Name:'
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
        mmLeft = 4498
        mmTop = 24342
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Home:'
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
        mmLeft = 114872
        mmTop = 9260
        mmWidth = 9864
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Work:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 112977
        mmTop = 14552
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Mobile:'
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
        mmLeft = 113506
        mmTop = 19844
        mmWidth = 11134
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Fax:'
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
        mmLeft = 118004
        mmTop = 25665
        mmWidth = 6519
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Street Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 6350
        mmTop = 45773
        mmWidth = 26035
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Postal Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 106892
        mmTop = 45773
        mmWidth = 26628
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Address:'
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
        mmLeft = 12732
        mmTop = 54769
        mmWidth = 13716
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Town:'
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
        mmLeft = 16933
        mmTop = 60061
        mmWidth = 9398
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Post Code:'
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
        mmLeft = 9790
        mmTop = 65352
        mmWidth = 16764
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'State:'
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
        mmLeft = 17727
        mmTop = 70644
        mmWidth = 8805
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'Country:'
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
        mmLeft = 13494
        mmTop = 76200
        mmWidth = 13039
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 54769
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = 'Town:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 60061
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = 'Post Code:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 108479
        mmTop = 65352
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = 'State:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 116417
        mmTop = 70644
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = 'Country:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 112184
        mmTop = 76200
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'MOBILE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 19579
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'FAX'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 25400
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'WORKPHONE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 14288
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'HOMEPHONE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 8996
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'LONGNAME'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128059
        mmTop = 34131
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'GENDER_DESCR'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 8731
        mmWidth = 20362
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'SALUTATION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 13758
        mmWidth = 19854
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'GIVENNAMES'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 34660
        mmTop = 19050
        mmWidth = 24088
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'LASTNAME'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 34660
        mmTop = 24077
        mmWidth = 27263
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 29104
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'SHORTNAME'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 34660
        mmTop = 34396
        mmWidth = 25146
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'ADDRESS'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 29369
        mmTop = 54504
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'SUBURB'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 28840
        mmTop = 59796
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTCODE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 29369
        mmTop = 65088
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'STATE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 29104
        mmTop = 70379
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'COUNTRY'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 29104
        mmTop = 75936
        mmWidth = 72517
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALADDRESS'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 54504
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALSUBURB'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 59796
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALPOSTCODE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 65088
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALSTATE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 70379
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALCOUNTRY'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 75936
        mmWidth = 72517
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 83873
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'DOB'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 30427
        mmTop = 86784
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'ACN'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 92604
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'EMAIL'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 30427
        mmTop = 98425
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'WWW'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 30427
        mmTop = 104775
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'DEFAULT_REF'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 100013
        mmTop = 86784
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'OCCUPATION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 100013
        mmTop = 92604
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 159015
        mmTop = 86784
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = 'Date of Birth:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 8467
        mmTop = 87048
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = 'Email Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 5556
        mmTop = 98690
        mmWidth = 23114
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = 'Web Site Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 529
        mmTop = 105040
        mmWidth = 28067
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = 'Default Ref:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 80433
        mmTop = 87048
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = 'Code:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 147373
        mmTop = 87048
        mmWidth = 8975
        BandType = 4
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'plGroupingsRpt'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 112713
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plGroupingsRpt
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter (8.5 x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '20.0'
          mmColumnWidth = 0
          DataPipelineName = 'plGroupingsRpt'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLabel69: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label32'
              Border.mmPadding = 0
              Caption = 'Groupings:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 2910
              mmTop = 2646
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground5
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer6
              UserName = 'Line3'
              Border.mmPadding = 0
              Pen.Width = 2
              ParentWidth = True
              Position = lpBottom
              Weight = 1.500000000000000000
              mmHeight = 1323
              mmLeft = 0
              mmTop = 6085
              mmWidth = 203200
              BandType = 1
              LayerName = Foreground5
            end
          end
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppDBText61: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText29'
              Border.mmPadding = 0
              DataField = 'CATEGORY'
              DataPipeline = plGroupingsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plGroupingsRpt'
              mmHeight = 3969
              mmLeft = 28310
              mmTop = 1588
              mmWidth = 60590
              BandType = 4
              LayerName = Foreground5
            end
            object ppDBText62: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText30'
              Border.mmPadding = 0
              DataField = 'OTHERPARTY'
              DataPipeline = plGroupingsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plGroupingsRpt'
              mmHeight = 3969
              mmLeft = 128588
              mmTop = 1588
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground5
            end
            object ppLabel70: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label33'
              Border.mmPadding = 0
              Caption = 'Category:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 9959
              mmTop = 1852
              mmWidth = 14647
              BandType = 4
              LayerName = Foreground5
            end
            object ppLabel71: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label34'
              Border.mmPadding = 0
              Caption = 'Other Party:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3810
              mmLeft = 106363
              mmTop = 1852
              mmWidth = 18161
              BandType = 4
              LayerName = Foreground5
            end
          end
          object ppDesignLayers6: TppDesignLayers
            object ppDesignLayer6: TppDesignLayer
              UserName = 'Foreground5'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataField = 'GENDER_OCCUPATIONCAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 70644
        mmTop = 92604
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText31'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'GENDER_ACNCAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 8731
        mmTop = 92604
        mmWidth = 19854
        BandType = 4
        LayerName = Foreground1
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'plRelationshipsRpt'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 118798
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = plRelationshipsRpt
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter (8.5 x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '20.0'
          mmColumnWidth = 0
          DataPipelineName = 'plRelationshipsRpt'
          object ppTitleBand3: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppLabel72: TppLabel
              DesignLayer = ppDesignLayer7
              UserName = 'Label26'
              Border.mmPadding = 0
              Caption = 'Relationships:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4191
              mmLeft = 2911
              mmTop = 3175
              mmWidth = 24257
              BandType = 1
              LayerName = Foreground6
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer7
              UserName = 'Line4'
              Border.mmPadding = 0
              Pen.Width = 2
              ParentWidth = True
              Position = lpBottom
              Weight = 1.500000000000000000
              mmHeight = 1323
              mmLeft = 0
              mmTop = 7144
              mmWidth = 203200
              BandType = 1
              LayerName = Foreground6
            end
          end
          object ppDetailBand5: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8996
            mmPrintPosition = 0
            object ppDBText65: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText33'
              Border.mmPadding = 0
              DataField = 'SEARCH'
              DataPipeline = plRelationshipsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plRelationshipsRpt'
              mmHeight = 3969
              mmLeft = 72496
              mmTop = 794
              mmWidth = 50800
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText66: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText38'
              Border.mmPadding = 0
              DataField = 'RELATIONSHIP'
              DataPipeline = plRelationshipsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plRelationshipsRpt'
              mmHeight = 3969
              mmLeft = 27252
              mmTop = 794
              mmWidth = 31221
              BandType = 4
              LayerName = Foreground6
            end
            object ppLabel73: TppLabel
              DesignLayer = ppDesignLayer7
              UserName = 'Label7'
              Border.mmPadding = 0
              Caption = 'Relationship:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 6085
              mmTop = 794
              mmWidth = 20151
              BandType = 4
              LayerName = Foreground6
            end
            object ppLabel74: TppLabel
              DesignLayer = ppDesignLayer7
              UserName = 'Label12'
              Border.mmPadding = 0
              Caption = 'Name:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3810
              mmLeft = 61913
              mmTop = 794
              mmWidth = 9694
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText67: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText39'
              Border.mmPadding = 0
              DataField = 'ADDRESS'
              DataPipeline = plRelationshipsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plRelationshipsRpt'
              mmHeight = 7673
              mmLeft = 138377
              mmTop = 794
              mmWidth = 62706
              BandType = 4
              LayerName = Foreground6
            end
            object ppLabel75: TppLabel
              DesignLayer = ppDesignLayer7
              UserName = 'Label30'
              Border.mmPadding = 0
              Caption = 'Address:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3810
              mmLeft = 124090
              mmTop = 794
              mmWidth = 13716
              BandType = 4
              LayerName = Foreground6
            end
          end
          object ppDesignLayers7: TppDesignLayers
            object ppDesignLayer7: TppDesignLayer
              UserName = 'Foreground6'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'GENDER_CLIENTNAMECAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 4498
        mmTop = 29104
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'GENDER_SHORTNAMECAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 3704
        mmTop = 34396
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'GENDER_TITLECAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 4498
        mmTop = 14023
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText37'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'GENDER_LONGNAMECAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 99484
        mmTop = 34396
        mmWidth = 25146
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 160602
        mmTop = 2117
        mmWidth = 33486
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3683
        mmLeft = 3969
        mmTop = 1852
        mmWidth = 10033
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object qryGroupingsRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ''
      'g.category, '
      'g.otherparty,'
      'g.actingfor,'
      'g.fieldname'
      ''
      'FROM'
      ''
      'pbgroup g,'
      'pbgroupings p'
      ''
      'WHERE'
      ''
      'g.category = p.category(+) AND'
      'p.nname = :nname AND'
      'g.otherparty = '#39'Y'#39
      ''
      'ORDER BY'
      ''
      'g.category')
    Left = 39
    Top = 230
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object dsGroupingsRpt: TUniDataSource
    DataSet = qryGroupingsRpt
    Left = 87
    Top = 251
  end
  object plGroupingsRpt: TppDBPipeline
    DataSource = dsGroupingsRpt
    UserName = 'plGroupingsRpt'
    Left = 82
    Top = 228
    object plGroupingsRptppField1: TppField
      FieldAlias = 'CATEGORY'
      FieldName = 'CATEGORY'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plGroupingsRptppField2: TppField
      FieldAlias = 'OTHERPARTY'
      FieldName = 'OTHERPARTY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object plGroupingsRptppField3: TppField
      FieldAlias = 'ACTINGFOR'
      FieldName = 'ACTINGFOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object plGroupingsRptppField4: TppField
      FieldAlias = 'FIELDNAME'
      FieldName = 'FIELDNAME'
      FieldLength = 32
      DisplayWidth = 32
      Position = 3
    end
  end
  object plPhoneBookRpt: TppDBPipeline
    DataSource = dsPhoneBookRpt
    UserName = 'plPhoneBookRpt'
    Left = 187
    Top = 243
    object plPhoneBookRptppField1: TppField
      FieldAlias = 'SHORTNAME'
      FieldName = 'SHORTNAME'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plPhoneBookRptppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plPhoneBookRptppField3: TppField
      FieldAlias = 'LONGNAME'
      FieldName = 'LONGNAME'
      FieldLength = 150
      DisplayWidth = 150
      Position = 2
    end
    object plPhoneBookRptppField4: TppField
      FieldAlias = 'HOMEPHONE'
      FieldName = 'HOMEPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object plPhoneBookRptppField5: TppField
      FieldAlias = 'WORKPHONE'
      FieldName = 'WORKPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object plPhoneBookRptppField6: TppField
      FieldAlias = 'MOBILE'
      FieldName = 'MOBILE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object plPhoneBookRptppField7: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object plPhoneBookRptppField8: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 7
    end
    object plPhoneBookRptppField9: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object plPhoneBookRptppField10: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plPhoneBookRptppField11: TppField
      FieldAlias = 'POSTCODE'
      FieldName = 'POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plPhoneBookRptppField12: TppField
      FieldAlias = 'COUNTRY'
      FieldName = 'COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 11
    end
    object plPhoneBookRptppField13: TppField
      FieldAlias = 'DX'
      FieldName = 'DX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plPhoneBookRptppField14: TppField
      FieldAlias = 'DXLOC'
      FieldName = 'DXLOC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object plPhoneBookRptppField15: TppField
      FieldAlias = 'POSTALADDRESS'
      FieldName = 'POSTALADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 14
    end
    object plPhoneBookRptppField16: TppField
      FieldAlias = 'POSTALSUBURB'
      FieldName = 'POSTALSUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object plPhoneBookRptppField17: TppField
      FieldAlias = 'POSTALSTATE'
      FieldName = 'POSTALSTATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object plPhoneBookRptppField18: TppField
      FieldAlias = 'POSTALPOSTCODE'
      FieldName = 'POSTALPOSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object plPhoneBookRptppField19: TppField
      FieldAlias = 'POSTALCOUNTRY'
      FieldName = 'POSTALCOUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 18
    end
    object plPhoneBookRptppField20: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object plPhoneBookRptppField21: TppField
      FieldAlias = 'WWW'
      FieldName = 'WWW'
      FieldLength = 60
      DisplayWidth = 60
      Position = 20
    end
    object plPhoneBookRptppField22: TppField
      FieldAlias = 'SALUTATION'
      FieldName = 'SALUTATION'
      FieldLength = 40
      DisplayWidth = 40
      Position = 21
    end
    object plPhoneBookRptppField23: TppField
      FieldAlias = 'GIVENNAMES'
      FieldName = 'GIVENNAMES'
      FieldLength = 60
      DisplayWidth = 60
      Position = 22
    end
    object plPhoneBookRptppField24: TppField
      FieldAlias = 'LASTNAME'
      FieldName = 'LASTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
    object plPhoneBookRptppField25: TppField
      FieldAlias = 'ACN'
      FieldName = 'ACN'
      FieldLength = 30
      DisplayWidth = 30
      Position = 24
    end
    object plPhoneBookRptppField26: TppField
      FieldAlias = 'ABN'
      FieldName = 'ABN'
      FieldLength = 14
      DisplayWidth = 14
      Position = 25
    end
    object plPhoneBookRptppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object plPhoneBookRptppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object plPhoneBookRptppField29: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 85
      DisplayWidth = 85
      Position = 28
    end
    object plPhoneBookRptppField30: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 29
    end
    object plPhoneBookRptppField31: TppField
      FieldAlias = 'GENDER'
      FieldName = 'GENDER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object plPhoneBookRptppField32: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object plPhoneBookRptppField33: TppField
      FieldAlias = 'SPARTY'
      FieldName = 'SPARTY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 32
    end
    object plPhoneBookRptppField34: TppField
      FieldAlias = 'SOLICITOR'
      FieldName = 'SOLICITOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 33
    end
    object plPhoneBookRptppField35: TppField
      FieldAlias = 'REAL_ESTATE'
      FieldName = 'REAL_ESTATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 34
    end
    object plPhoneBookRptppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERRALS'
      FieldName = 'REFERRALS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object plPhoneBookRptppField37: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 36
    end
    object plPhoneBookRptppField38: TppField
      FieldAlias = 'MOD_DATE'
      FieldName = 'MOD_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 37
    end
    object plPhoneBookRptppField39: TppField
      FieldAlias = 'MOD_BY'
      FieldName = 'MOD_BY'
      FieldLength = 3
      DisplayWidth = 3
      Position = 38
    end
    object plPhoneBookRptppField40: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 39
    end
    object plPhoneBookRptppField41: TppField
      FieldAlias = 'OCCUPATION'
      FieldName = 'OCCUPATION'
      FieldLength = 35
      DisplayWidth = 35
      Position = 40
    end
    object plPhoneBookRptppField42: TppField
      FieldAlias = 'DOB'
      FieldName = 'DOB'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 41
    end
    object plPhoneBookRptppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'NNAMEMASTER'
      FieldName = 'NNAMEMASTER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object plPhoneBookRptppField44: TppField
      FieldAlias = 'WHICHADDRESS'
      FieldName = 'WHICHADDRESS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 43
    end
    object plPhoneBookRptppField45: TppField
      FieldAlias = 'DEFAULT_REF'
      FieldName = 'DEFAULT_REF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 44
    end
    object plPhoneBookRptppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDISBS'
      FieldName = 'ANTDISBS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object plPhoneBookRptppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDRS'
      FieldName = 'ANTDRS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 46
    end
    object plPhoneBookRptppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERRALCODE'
      FieldName = 'REFERRALCODE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object plPhoneBookRptppField49: TppField
      FieldAlias = 'REFERREDBY'
      FieldName = 'REFERREDBY'
      FieldLength = 60
      DisplayWidth = 60
      Position = 48
    end
    object plPhoneBookRptppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDUSTRYCODE'
      FieldName = 'INDUSTRYCODE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 49
    end
    object plPhoneBookRptppField51: TppField
      FieldAlias = 'REFERRALMAINTAINER'
      FieldName = 'REFERRALMAINTAINER'
      FieldLength = 3
      DisplayWidth = 3
      Position = 50
    end
    object plPhoneBookRptppField52: TppField
      FieldAlias = 'CUST_ADDRESS'
      FieldName = 'CUST_ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 51
    end
    object plPhoneBookRptppField53: TppField
      FieldAlias = 'CUST_SUBURB'
      FieldName = 'CUST_SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 52
    end
    object plPhoneBookRptppField54: TppField
      FieldAlias = 'CUST_STATE'
      FieldName = 'CUST_STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 53
    end
    object plPhoneBookRptppField55: TppField
      FieldAlias = 'CUST_POSTCODE'
      FieldName = 'CUST_POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 54
    end
    object plPhoneBookRptppField56: TppField
      FieldAlias = 'CUST_COUNTRY'
      FieldName = 'CUST_COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 55
    end
    object plPhoneBookRptppField57: TppField
      FieldAlias = 'GENDER_DESCR'
      FieldName = 'GENDER_DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 56
    end
    object plPhoneBookRptppField58: TppField
      FieldAlias = 'GENDER_SEARCHCAPTION'
      FieldName = 'GENDER_SEARCHCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 57
    end
    object plPhoneBookRptppField59: TppField
      FieldAlias = 'GENDER_NAMECAPTION'
      FieldName = 'GENDER_NAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 58
    end
    object plPhoneBookRptppField60: TppField
      FieldAlias = 'GENDER_LONGNAMECAPTION'
      FieldName = 'GENDER_LONGNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 59
    end
    object plPhoneBookRptppField61: TppField
      FieldAlias = 'GENDER_SHORTNAMECAPTION'
      FieldName = 'GENDER_SHORTNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 60
    end
    object plPhoneBookRptppField62: TppField
      FieldAlias = 'GENDER_TITLECAPTION'
      FieldName = 'GENDER_TITLECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 61
    end
    object plPhoneBookRptppField63: TppField
      FieldAlias = 'GENDER_ACNCAPTION'
      FieldName = 'GENDER_ACNCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 62
    end
    object plPhoneBookRptppField64: TppField
      FieldAlias = 'GENDER_OCCUPATIONCAPTION'
      FieldName = 'GENDER_OCCUPATIONCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 63
    end
    object plPhoneBookRptppField65: TppField
      FieldAlias = 'GENDER_CLIENTNAMECAPTION'
      FieldName = 'GENDER_CLIENTNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object plPhoneBookRptppField66: TppField
      FieldAlias = 'GENDER_CLIENTCONTACTCAPTION'
      FieldName = 'GENDER_CLIENTCONTACTCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 65
    end
    object plPhoneBookRptppField67: TppField
      FieldAlias = 'ARCHIVED'
      FieldName = 'ARCHIVED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 66
    end
  end
  object dsPhoneBookRpt: TUniDataSource
    DataSet = qryPhoneBookRpt
    Left = 6
    Top = 266
  end
  object qryPhoneBookRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  NVL(P.SHORTNAME, M.SHORTNAME) as SHORTNAME, '
      '  NVL(P.NAME, M.NAME) as NAME,'
      '  NVL(P.LONGNAME, M.LONGNAME) as LONGNAME,'
      '  NVL(P.HOMEPHONE, M.HOMEPHONE) as HOMEPHONE,'
      '  NVL(P.WORKPHONE, M.WORKPHONE) as WORKPHONE,'
      '  NVL(P.MOBILE, M.MOBILE) as MOBILE,'
      '  NVL(P.FAX, M.FAX) as FAX,       '
      '  NVL(P.ADDRESS, M.ADDRESS) as ADDRESS,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, M.SUBURB), P.SUBURB) as ' +
        'SUBURB,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.STATE, M.STATE), P.STATE) as STA' +
        'TE,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, M.POSTCODE), P.POSTCOD' +
        'E) as POSTCODE,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, M.COUNTRY), P.COUNTRY) ' +
        'as COUNTRY,'
      '  NVL(P.DX, M.DX) as DX,'
      '  NVL(P.DXLOC, M.DXLOC) as DXLOC,'
      '  NVL(P.POSTALADDRESS, M.POSTALADDRESS) as POSTALADDRESS,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, M.POSTALSUBU' +
        'RB), P.POSTALSUBURB) as POSTALSUBURB,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, M.POSTALSTATE' +
        '), P.POSTALSTATE) as POSTALSTATE,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, M.POSTALPO' +
        'STCODE), P.POSTALPOSTCODE) as POSTALPOSTCODE,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, M.POSTALCOU' +
        'NTRY), P.POSTALCOUNTRY) as POSTALCOUNTRY,'
      '  NVL(P.EMAIL, M.EMAIL) as EMAIL,'
      '  NVL(P.WWW, M.WWW) as WWW,'
      '  NVL(P.SALUTATION, M.SALUTATION) as SALUTATION,'
      '  NVL(P.GIVENNAMES, M.GIVENNAMES) as GIVENNAMES,'
      '  NVL(P.LASTNAME, M.LASTNAME) as LASTNAME,'
      '  P.ACN,'
      '  P.ABN,'
      '  P.NNAME,'
      '  P.NCLIENT,'
      '  P.SEARCH,'
      '  P.TITLE,'
      '  P.GENDER,'
      '  P.CODE,'
      '  P.SPARTY,'
      '  P.SOLICITOR,'
      '  P.REAL_ESTATE,'
      '  P.REFERRALS,'
      '  P.NOTE,'
      '  P.MOD_DATE,'
      '  P.MOD_BY,'
      '  P.TYPE,'
      '  P.OCCUPATION,'
      '  P.DOB,'
      '  P.NNAMEMASTER,'
      '  P.WHICHADDRESS,'
      '  P.DEFAULT_REF,'
      '  P.ANTDISBS,'
      '  P.ANTDRS,'
      '  P.REFERRALCODE,'
      '  P.REFERREDBY,'
      '  P.INDUSTRYCODE,'
      '  P.REFERRALMAINTAINER,'
      '  NVL(P.CUST_ADDRESS, M.CUST_ADDRESS) as CUST_ADDRESS,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_SUBURB, M.CUST_SUBURB)' +
        ', P.CUST_SUBURB) as CUST_SUBURB,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_STATE, M.CUST_STATE), ' +
        'P.CUST_STATE) as CUST_STATE,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_POSTCODE, M.CUST_POSTC' +
        'ODE), P.CUST_POSTCODE) as CUST_POSTCODE,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, M.CUST_COUNTR' +
        'Y), P.CUST_COUNTRY) as CUST_COUNTRY,'
      '  g.descr                AS gender_descr,'
      '  g.searchcaption        AS gender_searchcaption,'
      '  g.namecaption          AS gender_namecaption,'
      '  g.longnamecaption      AS gender_longnamecaption,'
      '  g.shortnamecaption     AS gender_shortnamecaption,'
      '  g.titlecaption         AS gender_titlecaption,'
      '  g.acncaption           AS gender_acncaption,'
      '  g.occupationcaption    AS gender_occupationcaption,'
      '  g.clientnamecaption    AS gender_clientnamecaption,'
      '  g.clientcontactcaption AS gender_clientcontactcaption,'
      '  p.Archived'
      'FROM'
      '  phonebook p, gender g,'
      '  phonebook m'
      'WHERE'
      '  g.code(+) = p.gender'
      'AND'
      '  p.nname = :nname'
      'AND'
      '  p.nnamemaster = m.nname (+)'
      ''
      ''
      ''
      ''
      '/*'
      ''
      'SELECT'
      'p.rowid,'
      'p.*,'
      'g.descr                AS gender_descr,'
      'g.searchcaption        AS gender_searchcaption,'
      'g.namecaption          AS gender_namecaption,'
      'g.longnamecaption      AS gender_longnamecaption,'
      'g.shortnamecaption     AS gender_shortnamecaption,'
      'g.titlecaption         AS gender_titlecaption,'
      'g.acncaption           AS gender_acncaption,'
      'g.occupationcaption    AS gender_occupationcaption,'
      'g.clientnamecaption    AS gender_clientnamecaption,'
      'g.clientcontactcaption AS gender_clientcontactcaption'
      'FROM'
      'phonebook p, gender g'
      'WHERE'
      'g.code(+) = p.gender AND'
      'p.nname = :nname'
      '*/')
    Left = 158
    Top = 234
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qRelationshipsRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  r.forward, r.relationship, pb.search as backward, r.rowid, '#39'Y'#39 +
        ' as deleteable, r.backwardCategory, r.backwardSeq,'
      
        '  r.forwardCategory, r.forwardSeq, r.linkTable, r.nunique, r.bac' +
        'kward as search, r.nchild, address'
      'FROM'
      '  relationship r, phonebook pb'
      'WHERE'
      '  r.nparent = :search'
      'AND'
      '  pb.nname = r.nchild'
      'UNION'
      
        '  SELECT null, '#39'Parent'#39' as relationship, search as backward, row' +
        'id, '#39'N'#39' as deleteable, null, 0, null, 0,'
      '  null, nname as nunique, search, nname as nchild, address'
      'FROM '
      '  PHONEBOOK'
      'where'
      ' nname = :nnamemaster'
      'UNION'
      
        '  SELECT null, '#39'Child'#39' as relationship, search as backward, rowi' +
        'd, '#39'N'#39' as deleteable, null, 0, null, 0,'
      '  null, nname as nunique, search, nname as nchild, address'
      'from'
      '  phonebook'
      'where'
      '  nnamemaster = :nname '
      'ORDER BY relationship, backward')
    Left = 207
    Top = 237
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'search'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nnamemaster'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qRelationshipsRptFORWARD: TStringField
      FieldName = 'FORWARD'
      Size = 85
    end
    object qRelationshipsRptRELATIONSHIP: TStringField
      FieldName = 'RELATIONSHIP'
      Size = 35
    end
    object qRelationshipsRptBACKWARD: TStringField
      FieldName = 'BACKWARD'
      Size = 85
    end
    object qRelationshipsRptROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qRelationshipsRptDELETEABLE: TStringField
      FieldName = 'DELETEABLE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qRelationshipsRptBACKWARDCATEGORY: TStringField
      FieldName = 'BACKWARDCATEGORY'
      Size = 35
    end
    object qRelationshipsRptFORWARDCATEGORY: TStringField
      FieldName = 'FORWARDCATEGORY'
      Size = 35
    end
    object qRelationshipsRptLINKTABLE: TStringField
      FieldName = 'LINKTABLE'
    end
    object qRelationshipsRptSEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Size = 85
    end
    object qRelationshipsRptADDRESS: TStringField
      FieldName = 'ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qRelationshipsRptBACKWARDSEQ: TFloatField
      FieldName = 'BACKWARDSEQ'
    end
    object qRelationshipsRptFORWARDSEQ: TFloatField
      FieldName = 'FORWARDSEQ'
    end
    object qRelationshipsRptNUNIQUE: TLargeintField
      FieldName = 'NUNIQUE'
    end
    object qRelationshipsRptNCHILD: TLargeintField
      FieldName = 'NCHILD'
    end
  end
  object dsRelationshipsRpt: TUniDataSource
    DataSet = qRelationshipsRpt
    Left = 263
    Top = 228
  end
  object plRelationshipsRpt: TppDBPipeline
    DataSource = dsRelationshipsRpt
    UserName = 'plRelationshipsRpt'
    Left = 257
    Top = 297
    object plRelationshipsRptppField1: TppField
      FieldAlias = 'FORWARD'
      FieldName = 'FORWARD'
      FieldLength = 85
      DisplayWidth = 85
      Position = 0
    end
    object plRelationshipsRptppField2: TppField
      FieldAlias = 'RELATIONSHIP'
      FieldName = 'RELATIONSHIP'
      FieldLength = 35
      DisplayWidth = 35
      Position = 1
    end
    object plRelationshipsRptppField3: TppField
      FieldAlias = 'BACKWARD'
      FieldName = 'BACKWARD'
      FieldLength = 85
      DisplayWidth = 85
      Position = 2
    end
    object plRelationshipsRptppField4: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 3
    end
    object plRelationshipsRptppField5: TppField
      FieldAlias = 'DELETEABLE'
      FieldName = 'DELETEABLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object plRelationshipsRptppField6: TppField
      FieldAlias = 'BACKWARDCATEGORY'
      FieldName = 'BACKWARDCATEGORY'
      FieldLength = 35
      DisplayWidth = 35
      Position = 5
    end
    object plRelationshipsRptppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'BACKWARDSEQ'
      FieldName = 'BACKWARDSEQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plRelationshipsRptppField8: TppField
      FieldAlias = 'FORWARDCATEGORY'
      FieldName = 'FORWARDCATEGORY'
      FieldLength = 35
      DisplayWidth = 35
      Position = 7
    end
    object plRelationshipsRptppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORWARDSEQ'
      FieldName = 'FORWARDSEQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plRelationshipsRptppField10: TppField
      FieldAlias = 'LINKTABLE'
      FieldName = 'LINKTABLE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plRelationshipsRptppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUNIQUE'
      FieldName = 'NUNIQUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plRelationshipsRptppField12: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 85
      DisplayWidth = 85
      Position = 11
    end
    object plRelationshipsRptppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCHILD'
      FieldName = 'NCHILD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object plRelationshipsRptppField14: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 13
    end
  end
  object qrySubBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUBBILLS.NSUBBILL_ID,NMEMO.REFNO as SORT_REFNO,SUBBILLS.N' +
        'SUBBILL,NMEMO.NMASTER,SUBBILLS.DEBTOR_NAME,'
      
        'NMEMO.DISPATCHED, NMEMO.GENERATED, NMEMO.NMEMO, '#39'(subbill)'#39' as R' +
        'EFNO, SUBBILLS.FEES, '
      
        'SUBBILLS.DISB, SUBBILLS.ANTD, SUBBILLS.SUND, SUBBILLS.TAX, SUBBI' +
        'LLS.TRUST, SUBBILLS.FEES_PAID, '
      
        'SUBBILLS.DISB_PAID, SUBBILLS.ANTD_PAID, SUBBILLS.SUND_PAID, SUBB' +
        'ILLS.TAX_PAID, NMEMO.RV_NMEMO, NMEMO.RV_TYPE,'
      
        'SUBBILLS.TOTAL, SUBBILLS.OWING, SUBBILLS.FEES_WOFF, SUBBILLS.DIS' +
        'B_WOFF, SUBBILLS.ANTD_WOFF, SUBBILLS.SUND_WOFF, '
      
        'SUBBILLS.UPCRED_WOFF, SUBBILLS.UPCRED, SUBBILLS.UPCRED_PAID, Mat' +
        'ter.TITLE, NMEMO.FILEID,MASTERBILLS.DESCR as MASTER_DESCR,NMEMO.' +
        'SPLIT_BILL,'
      
        'Matter.NMATTER, NMEMO.AUTHOR, NMEMO.PARTNER, NMEMO.TAKE_ON, to_c' +
        'har(SUBBILLS.PERCENTAGE)||'#39'%'#39' as PERCENTAGE, NULL'
      'FROM NMEMO, MATTER,MASTERBILLS,subbills'
      'WHERE NMEMO.NMATTER  = Matter.NMATTER AND '
      'MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  AND '
      'NMEMO.NMEMO = SUBBILLS.NMEMO    AND '
      'MATTER.NCLIENT = :P_Client')
    Left = 654
    Top = 679
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Client'
        Value = nil
      end>
  end
  object qryInvoices: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, FEES, DISB, ' +
        'ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PAID, SUND_PA' +
        'ID, TAX_PAID, RV_NMEMO, RV_TYPE'
      
        ',(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(TA' +
        'X,0) + nvl(UPCRED,0)) AS TOTAL'
      
        ',OWING, UPCRED, UPCRED_PAID,SPLIT_BILL, EXPPAYMENT, INV_NOTE, AU' +
        'THORISED, invoice_copy, invoice_copy_ext, nbill_to, path, fileid'
      'FROM NMEMO'
      'WHERE NCLIENT= :P_Client'
      'ORDER BY NMEMO DESC'
      ''
      ''
      '/*'
      
        'SELECT BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, FEES, DISB, ' +
        'ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PAID, SUND_PA' +
        'ID, TAX_PAID, RV_NMEMO, RV_TYPE'
      
        ',(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(TA' +
        'X,0) + nvl(UPCRED,0)) AS TOTAL'
      
        ',((nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(T' +
        'AX,0) + nvl(UPCRED,0)) - (/*NVL(TRUST,0) +*/'
      
        '/*NVL(FEES_PAID,0) +  nvl(DISB_PAID,0) + nvl(ANTD_PAID,0) + nvl(' +
        'SUND_PAID,0) + nvl(TAX_PAID,0) + NVL(FEES_WOFF,0) +'
      
        'nvl(DISB_WOFF,0) + nvl(ANTD_WOFF,0) + nvl(SUND_WOFF,0) + nvl(TAX' +
        '_WOFF,0) + nvl(UPCRED_PAID, 0) + nvl(UPCRED_WOFF,0) )) AS OWING,'
      'UPCRED, UPCRED_PAID,SPLIT_BILL, EXPPAYMENT, INV_NOTE, AUTHORISED'
      'FROM NMEMO'
      'WHERE NMATTER  = :P_Matter'
      'ORDER BY NMEMO DESC    */')
    Filter = 'rv_nmemo is null'
    Left = 432
    Top = 502
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Client'
        Value = nil
      end>
  end
  object dsInvoices: TUniDataSource
    DataSet = qryInvoices
    Left = 656
    Top = 288
  end
  object dsSubBill: TUniDataSource
    DataSet = qrySubBill
    Left = 720
    Top = 328
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 603
    Top = 279
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object styBillTotals: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object styRed: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object styGreen: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGreen
    end
    object styDefault: TcxStyle
    end
  end
  object rptDebtorStmnt: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Debtor Statement'
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
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\DebtorStatement.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 794
    Top = 366
    Version = '20.0'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object qryInsertNNameDoc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'insert into'
      'PHONEBOOK_DOC(nname, docid)'
      'values'
      '(:nname, :docid)')
    Left = 552
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
  object ilstDocuments: TImageList
    Left = 663
    Top = 500
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000663300006633
      0000990000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090A9AD0099CCFF0099CCFF0099CCFF0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000000000000000000000000000005F5F5F00CC663300000000000000
      00000000000099660000292929006633000099000000CC333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC003399CC003399CC003399
      CC006699990099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0066CCFF0066CC
      FF0066CCCC000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000008080
      8000000000000000000000000000000000005F5F5F0099660000000000000000
      00001616160099000000CC330000CC66330099660000CC660000FF6633009966
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F8F8F800E3E3E3006699
      CC00CCFFFF00CCFFFF00C6D6EF0099CCFF0099CCFF0099CCFF0099CCFF0066CC
      FF0066CCFF0066CCCC0000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000008080
      8000808080000000000000000000000000005F5F5F00FF663300000000009933
      0000CC333300CC333300CC660000FF663300FF663300FF663300FF663300FF66
      3300FF6633009966000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF006699CC0099CC
      CC00CCFFFF00CCFFFF00CCFFFF00C6D6EF0099CCFF0099CCFF0099CCFF0099CC
      FF0066CCFF0066CCFF0090A9AD00000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000005F5F5F00FF663300660000009900
      0000CC333300CC660000FF663300996600009966000099660000FF663300FF66
      3300FF663300FF66330099660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F1F1F1003366CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0066CCCC000066CC003399CC0099CCFF0099CC
      FF0099CCFF0066CCFF0090A9AD0000000000000000000000000080808000C0C0
      C000000000000000000000000000C0C0C000000000000000000000000000C0C0
      C0000000000080808000808080000000000055555500FF663300996600009933
      330099660000FF663300CC660000000000000000000000000000CC333300FF66
      3300FF990000CC993300CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F1F1F1003366CC00F0FB
      FF00CCFFFF00CCFFFF0099CCCC000066CC003399CC003399CC000099CC0099CC
      FF0099CCFF0099CCFF0099CCCC00000000000000000080808000000000000000
      00000000000000000000C0C0C000FF000000C0C0C00000000000000000000000
      0000000000000000000080808000000000005555550099666600FF6633009933
      3300CC660000FF66330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F8F8F8003366CC00C6D6
      EF00F0FBFF0099CCCC00006699003399CC00CCFFFF00CCFFFF003399CC000099
      CC0066CCFF0099CCFF0099CCFF00000000000000000080808000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000080808000808080007777770077777700FF663300FF66
      0000CC660000FF663300FF663300FF663300CC993300CC993300CC993300FF99
      0000FF990000FF990000FF990000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF003366CC00C6D6
      EF00F0FBFF00006699003399CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF006699
      CC0066CCCC0099CCFF0099CCFF00000000008080800000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000080808000000000003399990066999900FF66
      3300CC660000FF663300FF663300FF663300CC993300CC993300FF990000FF99
      0000FF990000FF990000FF990000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF006699CC009999
      CC00F0FBFF00C6D6EF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00C6D6EF0099CCFF00B2B2B200000000008080800000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000080808000000000006633330066CCCC00CC66
      6600FF663300FF6633000000000000000000000000000000000099000000FFCC
      3300FFFF6600FFFF6600FF990000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF0099CCFF006699
      CC00C6D6EF00F0FBFF00F0FBFF00F0FBFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00C6D6EF0000000000000000008080800000000000000000000000
      0000000000000000000000000000C0C0C000FF000000FF000000000000000000
      00000000000000000000000000008080800000000000CC3333009966000099FF
      FF00CC666600FF663300CC660000000000000000000000000000CC660000FFCC
      3300FFFF9900FFFF3300CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399FF00F0FBFF0099CCFF0099CC
      FF0099CCCC00C6D6EF00F0FBFF00F0FBFF00F0FBFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF006699CC0000000000000000008080800000000000000000000000
      000000000000FF000000FF00000000000000FF000000FF000000000000000000
      000000000000000000000000000000000000000000000000000099000000CC66
      000099FFFF00CC666600FF993300CC660000CC333300CC660000FFCC3300FFFF
      6600FFFF6600FF990000CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0099CCFF000000000099CC
      FF0099CCFF0099CCFF0099CCFF0099CCFF00C6D6EF00CCFFFF00D6E7E700C6D6
      EF0099CCFF003399FF0000000000000000000000000080808000000000000000
      000000000000C0C0C000FF000000FF000000FF000000C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      0000CC660000B2B2B200CC996600CC993300CC993300CC993300FFCC0000FFCC
      3300FF993300FF99000000000000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF000000
      0000C6D6EF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CC
      FF0099CCFF003399FF0000000000000000000000000080808000C0C0C0000000
      00000000000000000000C0C0C000FF000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC660000CC660000FF663300FF663300CC993300CC993300FF990000FF99
      0000CC6600000000000000000000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC0099CC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000003399FF0000000000000000000000000000000000808080008080
      8000C0C0C0000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000CC660000CC660000CC660000FF663300CC6600000000
      0000000000000000000000000000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003399
      CC003399CC003399FF003399FF003399FF003399FF003399FF003399FF003399
      FF003399FF003399FF0000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      00000000000000000000CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A0000000000000000000000000009999
      9900333333001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C
      1C001C1C1C001C1C1C0033333300999999000000000000000000000000000000
      0000C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000969696000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A0A0000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000086868600000000000000000000000000CC66
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000003399330033663300969696000000
      000000000000000000000000000000000000F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F8F8F8000000000000000000A4A0A000000000000000000000000000A4A0
      A000000000005050FF009999FF00000000000000000000000000000000000000
      000000000000000000000000000086868600996666009966660099666600CC66
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000000000000000000000000000C0C0
      C000000000000000000000000000000000003366330099CC9900C0DCC0000000
      0000000000000000000000000000F0FBFF00F0FBFF0099CC9900006633000066
      3300F1F1F1000000000000000000A4A0A000000000000000000000000000A4A0
      A00000000000CCCCFF009999FF00CCCCFF000000000000000000000000000000
      00000000000000000000000000008686860099663300F0CAA600CC999900CC66
      6600000000000000000000000000000000000000000000000000F8F8F8000000
      0000000000000000000000000000A4A0A0000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000000000C0C0
      C0000000000000000000000000000000000033663300C0C0C000969696000000
      000099CC990066CC990066CC660066CC66006699660000663300006633006699
      66006699660099CC990000000000A4A0A000000000000000000000000000A4A0
      A000000000000000000000000000807CFF00CCCCFF009999FF009999FF009999
      FF009999FF00807CFF00000000008686860099663300F0CAA600CC666600CC66
      66000000000000000000F8F8F800F0CAA60000000000EAEAEA00CC999900F8F8
      F800000000000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      00000000000000000000000000000000000033663300C0DCC000336633000000
      000000000000C0DCC00066CC660066CC66003366330000663300669966006699
      6600669966006699660000000000A4A0A000000000000000000000000000A4A0
      A000000000000000000000000000EAEAEA006666FF00CCCCFF005050FF00CCCC
      FF009999FF00CCCCFF00000000008686860099663300F0CAA60099663300CC66
      66000000000000000000F1F1F100CC663300F1F1F100EAEAEA00CC663300FFCC
      CC00000000000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C0000000000000000000000000000000000033663300C0DCC000336633000000
      00000000000000000000E3E3E300339966000066330033663300C0DCC0000000
      0000F0FBFF00F0FBFF0000000000A4A0A000000000000000000000000000A4A0
      A000000000000000000000000000F1F1F1006666FF003333FF00F1F1F100F1F1
      F100F1F1F10000000000000000008686860099663300F0CAA60099333300CC66
      660000000000000000000000000099333300CC666600E3E3E30099333300CC66
      6600F8F8F8000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000000000000000000000000000C0C0
      C0000000000000000000000000000000000033663300C0DCC000336633000000
      00000000000000000000C0DCC00000663300006633006699660066CC660099CC
      9900F8F8F8000000000000000000A4A0A000000000000000000000000000A4A0
      A00000000000F1F1F100F1F1F100F1F1F1009999FF009999FF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F1008686860099663300F0CAA60099333300CC66
      660000000000000000000000000099333300CC996600CC99990099333300CCCC
      9900CC9999000000000000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000000000C0C0
      C0000000000000000000000000000000000033663300C0DCC000336633000000
      000000000000F1F1F100006633000066330090A9AD00EAEAEA0066CC660066CC
      660099CC9900F1F1F10000000000B2B2B200000000000000000000000000A4A0
      A00000000000F1F1F100F1F1F100F1F1F1006666FF00CCCCFF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F1009696960099663300F0CAA60099333300CC66
      6600F1F1F100000000000000000099663300FFCCCC00CC663300993333000000
      000099663300FFECCC0000000000B2B2B2000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000033993300D7D7D700669966000000
      00000000000033996600339933006699660000000000000000000000000066CC
      660066CC660099CC990000000000B2B2B200000000000000000000000000A4A0
      A000F1F1F100F1F1F100F1F1F100F1F1F100807CFF00CCCCFF00F1F1F100F1F1
      F100EAEAEA00EAEAEA00D7D7D7009696960099666600CCCCCC00CC996600CC66
      6600D7D7D70000000000CC996600CC666600CC996600E3E3E300996633000000
      0000CC996600CC66660000000000B2B2B2000000000000000000C0C0C000C0C0
      C000000000000000000000000000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000033993300D7D7D70099CC99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000800000008000000080000000
      6600000066000000660000006600000066000000660000006600EAEAEA00E3E3
      E300E3E3E300C0C0C000969696009999990099666600FFCCCC00CC999900CC66
      6600CBCBCB0000000000F8F8F800FFECCC00F8F8F80000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      00000000000000FFFF0000000000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000033993300C0DCC00099CC99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000008000A4A0A0008686
      86008686860096969600A4A0A000B2B2B200CC666600D7D7D700CC999900CC66
      6600C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006699660099CC9900EAEAEA0099CC
      990099CC990099CC990099CC990099CC990099CC990099CC990099CC990099CC
      9900F1F1F1003399330000000000000000000000CC003333FF003333FF003333
      FF003333FF000000CC000000CC000000CC000000CC0000009900868686000000
      000000000000DDDDDD0099999900C0C0C000CC999900CCCC9900FFECCC00CC66
      6600CCCC99000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000000000000000000000000000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033993300C0DCC000F1F1
      F100C0DCC00099CC990099CC990099CC990099CC990099CC990099CC990099CC
      9900F1F1F1003399330000000000000000000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000009900A4A0A0000000
      0000DDDDDD0099999900B2B2B200000000000000000099666600CCCCCC00FFEC
      CC00CC999900CC999900CC999900CC999900CC999900CC999900CC999900CC99
      9900CC999900CC99660000000000000000000000000000000000000000000000
      0000C0C0C0000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000003399330099CC
      9900DDDDDD00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F1006699330000000000000000000000000000000000000000009999
      990000000000F1F1F100F1F1F100EAEAEA00EAEAEA00E3E3E300C0C0C000DDDD
      DD00A4A0A000B2B2B2000000000000000000000000000000000099666600CCCC
      9900EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00CC99660000000000000000000000000000000000FFFF00000000
      0000C0C0C0000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000000066CC
      6600339933003399330033993300339933003399330033993300339933003399
      330033993300669933000000000000000000000000000000000000000000B2B2
      B200999999009999990096969600999999009696960096969600969696009999
      9900C0C0C000000000000000000000000000000000000000000000000000CC99
      9900CC996600CC666600CC666600CC66660099666600CC666600CC666600CC66
      6600CC666600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFF8FC7FF0000FC0FFE4F383F0000
      0007F8CF300F00000003F1C7200300000001E7C3000100000001CEE101C10000
      0001BC7903FF00000001BEF80001000000017EFC8001000000017E7C83C10000
      00037E3C81C100000003793DC00100002003B83BE002000090039C7BF0060000
      CFFBC7E7FC1E0000E003F01FFFED0000E000E000F0008003DFFEEFFEEFFEBF8B
      1F06E9FE0FFEBC0B1E06E8FE0FDEB80B1002EE020C8EB91B1802EE020C0EB98B
      1C12EE060E06B80B1C06E8000E06B80B1802E8000612B81B18E2E0000412C0FB
      1FFE0000047EC0FB1FFE000007FEC1FB0003001807FEC7FB8003001180038003
      C003E803C0038003E003E007E003880300000000000000000000000000000000
      000000000000}
  end
  object FormMgr: TRwMAPIFormManager
    MAPISession = dmAxiom.MapiSession
    OnNewMessage = FormMgrNewMessage
    Left = 121
    Top = 452
  end
  object qrySingleDoc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select doc.*, doc.rowid'
      'from doc'
      'where docid = :docid'
      '')
    Left = 828
    Top = 323
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
  object dsDocList: TUniDataSource
    DataSet = qryDocList
    Left = 911
    Top = 101
  end
  object ppDocList: TppDBPipeline
    DataSource = dsDocList
    UserName = 'DocList'
    Left = 989
    Top = 128
    object ppDocListppField1: TppField
      FieldAlias = 'DOCID'
      FieldName = 'DOCID'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object ppDocListppField2: TppField
      FieldAlias = 'DOC_NAME'
      FieldName = 'DOC_NAME'
      FieldLength = 200
      DisplayWidth = 200
      Position = 1
    end
    object ppDocListppField3: TppField
      FieldAlias = 'D_CREATE'
      FieldName = 'D_CREATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object ppDocListppField4: TppField
      FieldAlias = 'AUTH1'
      FieldName = 'AUTH1'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object ppDocListppField5: TppField
      FieldAlias = 'D_MODIF'
      FieldName = 'D_MODIF'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppDocListppField6: TppField
      FieldAlias = 'PATH'
      FieldName = 'PATH'
      FieldLength = 255
      DisplayWidth = 255
      Position = 5
    end
    object ppDocListppField7: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 6
    end
    object ppDocListppField8: TppField
      FieldAlias = 'DOC_CODE'
      FieldName = 'DOC_CODE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppDocListppField9: TppField
      FieldAlias = 'NPRECCATEGORY'
      FieldName = 'NPRECCATEGORY'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object ppDocListppField10: TppField
      FieldAlias = 'IMAGEINDEX'
      FieldName = 'IMAGEINDEX'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 9
    end
    object ppDocListppField11: TppField
      FieldAlias = 'FILE_EXTENSION'
      FieldName = 'FILE_EXTENSION'
      FieldLength = 5
      DisplayWidth = 5
      Position = 10
    end
    object ppDocListppField12: TppField
      FieldAlias = 'EMAIL_SENT_TO'
      FieldName = 'EMAIL_SENT_TO'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 11
    end
    object ppDocListppField13: TppField
      FieldAlias = 'AUTH2'
      FieldName = 'AUTH2'
      FieldLength = 3
      DisplayWidth = 3
      Position = 12
    end
  end
  object rptDocList: TppReport
    AutoStop = False
    DataPipeline = ppDocList
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
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
    Left = 1018
    Top = 146
    Version = '20.0'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDocList'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label55'
        Border.mmPadding = 0
        Caption = 'Document List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6900
        mmLeft = 125337
        mmTop = 1852
        mmWidth = 33486
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label56'
        OnGetText = ppLabel78GetText
        Border.mmPadding = 0
        Caption = 'Label56'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5165
        mmLeft = 15081
        mmTop = 9790
        mmWidth = 13631
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line11'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 20373
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label57'
        Border.mmPadding = 0
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 1588
        mmTop = 17198
        mmWidth = 2836
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label58'
        Border.mmPadding = 0
        Caption = 'Document Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 14552
        mmTop = 17198
        mmWidth = 22183
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label59'
        Border.mmPadding = 0
        Caption = 'Created'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 75406
        mmTop = 17198
        mmWidth = 10287
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label60'
        Border.mmPadding = 0
        Caption = 'By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 96573
        mmTop = 17198
        mmWidth = 3260
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label61'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 106363
        mmTop = 17198
        mmWidth = 15028
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label62'
        Border.mmPadding = 0
        Caption = 'Modified'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 198438
        mmTop = 17198
        mmWidth = 12023
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label63'
        Border.mmPadding = 0
        Caption = 'By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 220398
        mmTop = 17198
        mmWidth = 3260
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label65'
        Border.mmPadding = 0
        Caption = 'Sent to'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 230188
        mmTop = 17198
        mmWidth = 9313
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label66'
        Border.mmPadding = 0
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5165
        mmLeft = 1588
        mmTop = 9790
        mmWidth = 11388
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape1'
        Brush.Color = clSilver
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        Visible = False
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText31'
        Border.mmPadding = 0
        DataField = 'DOCID'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3852
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataField = 'DOC_NAME'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3852
        mmLeft = 14552
        mmTop = 1323
        mmWidth = 59796
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText33'
        Border.mmPadding = 0
        DataField = 'D_CREATE'
        DataPipeline = ppDocList
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3852
        mmLeft = 75406
        mmTop = 1323
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'AUTH1'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3852
        mmLeft = 96573
        mmTop = 1323
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3852
        mmLeft = 106363
        mmTop = 1323
        mmWidth = 91017
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'D_MODIF'
        DataPipeline = ppDocList
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3852
        mmLeft = 198438
        mmTop = 1323
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText37'
        Border.mmPadding = 0
        DataField = 'AUTH2'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3852
        mmLeft = 220398
        mmTop = 1323
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'EMAIL_SENT_TO'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3852
        mmLeft = 230188
        mmTop = 1323
        mmWidth = 51858
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line10'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 529
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable5'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4276
        mmLeft = 3969
        mmTop = 2646
        mmWidth = 32343
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable6'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3852
        mmLeft = 255853
        mmTop = 2646
        mmWidth = 8424
        BandType = 8
        LayerName = Foreground3
      end
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DetailBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DetailBeforePrint;'#13#10'begin'#13#10'    Shape1.Visible := (Deta' +
          'il.Count mod 2) = 1;'#13#10'end;'#13#10
        raProgram.ComponentName = 'Detail'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object qryDocList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '   d.DOCid, d.DOC_NAME,'
      '   d.D_CREATE, d.AUTH1, d.D_MODIF,'
      '   d.PATH, d.DESCR, d.DOC_CODE,'
      '   d.NPRECCATEGORY,   '
      '   d.IMAGEINDEX, d.FILE_EXTENSION, d.EMAIL_SENT_TO, '
      '   d.auth2'
      ' FROM phonebook p, doc d, phonebook_doc pd'
      ' WHERE p.nclient = :nclient '
      ' and p.nname = pd.nname '
      ' AND pd.docid = d.docid'
      'order by 3 desc')
    Left = 951
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = Null
      end>
  end
  object qContactNotes: TUniQuery
    UpdatingTable = 'DIARY'
    KeyFields = 'ndiary'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.rowid,'
      '  d.ndiary,'
      '  d.nname,'
      '  d.start_dt,'
      '  d.descr,'
      '  d.creation_date,'
      '  e.name as enteredby,'
      '  d.entered_by as enteredbycode'
      'FROM'
      '  diary d, employee e'
      'WHERE'
      '  d.nname = :nname'
      'and '
      '  e.code = d.entered_by')
    Left = 356
    Top = 246
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object dsContactNotes: TUniDataSource
    AutoEdit = False
    DataSet = qContactNotes
    Left = 416
    Top = 250
  end
  object popEmailDoc: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxBarButtonEmailAsPDF'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonEmailasAttachment'
      end>
    UseOwnFont = False
    Left = 939
    Top = 299
    PixelsPerInch = 96
  end
  object dsDocReg2: TUniDataSource
    DataSet = qryDocReg2
    Left = 1020
    Top = 219
  end
end
