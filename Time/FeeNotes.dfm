object frmFeeNotes: TfrmFeeNotes
  Left = 767
  Top = 241
  Caption = 'WIP Note Entry'
  ClientHeight = 582
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    623
    582)
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 11
    Top = 464
    Width = 26
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Note'
    Transparent = True
    ExplicitTop = 452
  end
  object btnOk: TcxButton
    Left = 446
    Top = 550
    Width = 75
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Save'
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
    OnClick = btnOkClick
  end
  object cxButton2: TcxButton
    Left = 534
    Top = 550
    Width = 75
    Height = 26
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
    TabOrder = 6
  end
  object mlNote: TcxRichEdit
    Left = 72
    Top = 464
    Anchors = [akLeft, akRight, akBottom]
    Properties.ScrollBars = ssVertical
    Lines.Strings = (
      'mlNote')
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Height = 79
    Width = 531
  end
  object cxGroupBox1: TcxGroupBox
    Left = 6
    Top = 4
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Selection Criteria'
    TabOrder = 0
    DesignSize = (
      608
      422)
    Height = 422
    Width = 608
    object Label1: TLabel
      Left = 5
      Top = 32
      Width = 53
      Height = 15
      Caption = 'Date from'
      Transparent = True
    end
    object Label2: TLabel
      Left = 5
      Top = 61
      Width = 56
      Height = 15
      Caption = 'Entered By'
      Transparent = True
    end
    object Label4: TLabel
      Left = 259
      Top = 32
      Width = 38
      Height = 15
      Caption = 'Date to'
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 5
      Top = 85
      Caption = 'Fee Earner'
      Transparent = True
    end
    object cmbDate: TcxDateEdit
      Left = 66
      Top = 29
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.PostPopupValueOnTab = True
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 131
    end
    object lBy: TcxLabel
      Left = 66
      Top = 59
      Caption = 'lBy'
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cmbAuthor: TcxLookupComboBox
      Left = 66
      Top = 84
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'CODE'
        end
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsAuthors
      Properties.OnCloseUp = cmbBillRefPropertiesCloseUp
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 144
    end
    object cmbDateTo: TcxDateEdit
      Left = 323
      Top = 29
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.PostPopupValueOnTab = True
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 131
    end
    object grdFees: TcxGrid
      Left = 66
      Top = 112
      Width = 531
      Height = 298
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 5
      RootLevelOptions.DetailTabsPosition = dtpTop
      OnActiveTabChanged = grdFeesActiveTabChanged
      object tvFees: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsFees
        DataController.KeyFieldNames = 'NFEE'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            OnGetText = tvFeesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
            FieldName = 'AMOUNT'
            Column = tvFeesAMOUNT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object tvFeesSELECTED: TcxGridDBColumn
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00000000FF000000FF000000FFFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00000000FF000000FF000000FF000000FF000000FFFFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00000000FF000000FFFFFFFF00000000FF000000FF000000FFFFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00000000FF000000FF0000
            00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
            00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          HeaderGlyphAlignmentHorz = taCenter
          Options.Sorting = False
          Width = 31
          OnHeaderClick = tvFeesSELECTEDHeaderClick
        end
        object tvFeesCREATED: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'CREATED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.AssignedValues.DisplayFormat = True
          Properties.ShowTime = False
          Options.Editing = False
          Options.Focusing = False
          Width = 76
        end
        object tvFeesAMOUNT: TcxGridDBColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'AMOUNT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Options.Focusing = False
          Width = 75
        end
        object tvFeesDESCR: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'DESCR'
          MinWidth = 200
          Options.Editing = False
          Options.Focusing = False
          Width = 212
        end
        object tvFeesAUTHOR: TcxGridDBColumn
          Caption = 'Fee Earner'
          DataBinding.FieldName = 'AUTHOR'
          Options.Editing = False
          Options.Focusing = False
          Width = 101
        end
        object tvFeesFILEID: TcxGridDBColumn
          Caption = 'Matter'
          DataBinding.FieldName = 'FILEID'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          VisibleForCustomization = False
        end
        object tvFeesNFEE: TcxGridDBColumn
          DataBinding.FieldName = 'NFEE'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          VisibleForCustomization = False
        end
      end
      object tvBills: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsBills
        DataController.KeyFieldNames = 'NMEMO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'FEES'
            Column = tvBillsFEES
          end
          item
            Kind = skSum
            FieldName = 'FEES_PAID'
            Column = tvBillsFEES_PAID
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object tvBillsNMEMO: TcxGridDBColumn
          DataBinding.FieldName = 'NMEMO'
          Visible = False
          VisibleForCustomization = False
        end
        object tvBillsDISPATCHED: TcxGridDBColumn
          Caption = 'Bill Date'
          DataBinding.FieldName = 'DISPATCHED'
        end
        object tvBillsREFNO: TcxGridDBColumn
          Caption = 'Bill No'
          DataBinding.FieldName = 'REFNO'
        end
        object tvBillsFILEID: TcxGridDBColumn
          Caption = 'Matter '
          DataBinding.FieldName = 'FILEID'
          Visible = False
          VisibleForCustomization = False
        end
        object tvBillsFEES: TcxGridDBColumn
          Caption = 'Fees Billed'
          DataBinding.FieldName = 'FEES'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object tvBillsFEES_PAID: TcxGridDBColumn
          Caption = 'Fees Received'
          DataBinding.FieldName = 'FEES_PAID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
      end
      object tvBilledFees: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = tvBilledFeesCellClick
        DataController.DataSource = dsBilledFees
        DataController.DetailKeyFieldNames = 'NMEMO'
        DataController.KeyFieldNames = 'NFEE'
        DataController.MasterKeyFieldNames = 'NMEMO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.OnGetContentStyle = tvBilledFeesStylesGetContentStyle
        object tvBilledFeesCREATED: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'CREATED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
        end
        object tvBilledFeesDESCR: TcxGridDBColumn
          Caption = 'Narration'
          DataBinding.FieldName = 'DESCR'
          Width = 300
        end
        object tvBilledFeesAUTHOR: TcxGridDBColumn
          Caption = 'Fee Earner'
          DataBinding.FieldName = 'AUTHOR'
        end
        object tvBilledFeesAMOUNT: TcxGridDBColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'AMOUNT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object tvBilledFeesNMEMO: TcxGridDBColumn
          DataBinding.FieldName = 'NMEMO'
          Visible = False
          VisibleForCustomization = False
        end
        object tvBilledFeesNFEE: TcxGridDBColumn
          DataBinding.FieldName = 'NFEE'
          Visible = False
          VisibleForCustomization = False
        end
        object tvBilledFeesNFEE_DEBTORNOTES: TcxGridDBColumn
          DataBinding.FieldName = 'NFEE_DEBTORNOTES'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object grdFeesLevel1: TcxGridLevel
        Caption = 'WIP'
        GridView = tvFees
      end
      object grdFeesLevel2: TcxGridLevel
        Caption = 'Billed WIP'
        GridView = tvBills
        object grdFeesLevel3: TcxGridLevel
          GridView = tvBilledFees
        end
      end
    end
    object btnSearchFees: TcxButton
      Left = 522
      Top = 83
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Search'
      TabOrder = 6
      OnClick = btnSearchFeesClick
    end
  end
  object lblEnteredBy: TcxLabel
    Left = 72
    Top = 549
    Anchors = [akLeft, akBottom]
    Transparent = True
  end
  object cmbBillDate: TcxDateEdit
    Left = 72
    Top = 434
    Properties.DateButtons = [btnClear, btnNow, btnToday]
    Properties.PostPopupValueOnTab = True
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 97
  end
  object cxLabel2: TcxLabel
    Left = 11
    Top = 435
    Caption = 'Bill Date'
    Transparent = True
  end
  object edAmounttoBill: TcxCurrencyEdit
    Left = 504
    Top = 434
    Anchors = [akTop, akRight]
    EditValue = 0c
    Properties.Alignment.Horz = taRightJustify
    TabOrder = 7
    Width = 99
  end
  object cxLabel3: TcxLabel
    Left = 420
    Top = 435
    Anchors = [akTop, akRight]
    Caption = 'Amount to bill'
    Transparent = True
  end
  object cmbdebtor_task_codes: TcxLookupComboBox
    Left = 260
    Top = 434
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        Width = 120
        FieldName = 'DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsdebtor_task_codes
    Properties.OnEditValueChanged = cmbdebtor_task_codesPropertiesEditValueChanged
    TabOrder = 9
    Width = 145
  end
  object cxLabel4: TcxLabel
    Left = 187
    Top = 426
    AutoSize = False
    Caption = 'Debtor Task code'
    Properties.Alignment.Horz = taRightJustify
    Properties.WordWrap = True
    Transparent = True
    Height = 35
    Width = 68
    AnchorX = 255
  end
  object dsDebtorNotes: TUniDataSource
    DataSet = qryFeeDebtorNotes
    Left = 129
    Top = 310
  end
  object qryMaxSequence: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(max(nvl(sequence,0))+1,1) as newsequence from fee_deb' +
        'tornotes'
      'where nmatter = :nmatter')
    Left = 165
    Top = 350
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
  object dsAuthors: TUniDataSource
    DataSet = qryAuthors
    Left = 20
    Top = 210
  end
  object qryAuthors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct employee.code, employee.name '
      'from fee, employee'
      'where'
      'fee.nmatter = :nmatter'
      'and'
      'fee.author = employee.code')
    Left = 20
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qryFeeDebtorNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT Fee_Debtornotes.*'
      'FROM Fee_Debtornotes')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'Oracle.ExtendedFieldsInfo=True')
    Left = 27
    Top = 252
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    CachedUpdates = True
    Left = 20
    Top = 117
  end
  object qryFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   *'
      '    FROM fee'
      '   WHERE fee.nmatter = :nmatter'
      '     AND fee.author = NVL (:author, fee.author)'
      
        '     AND TRUNC (fee.created) >= TRUNC (NVL (:start_date, fee.cre' +
        'ated))'
      
        '     AND TRUNC (fee.created) <= TRUNC (NVL (:end_date, fee.creat' +
        'ed))'
      '     AND nmemo IS NULL'
      '     AND TYPE NOT IN ('#39'wo'#39', '#39'ia'#39')'
      
        '     AND nvl(nfee_debtornotes,999999) = NVL (:nfee_debtornotes, ' +
        '999999)'
      'ORDER BY created')
    Left = 210
    Top = 157
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'author'
        Value = ''
      end
      item
        DataType = ftDate
        Name = 'start_date'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'end_date'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'NFEE_DEBTORNOTES'
        Value = nil
      end>
  end
  object dsFees: TUniDataSource
    DataSet = qryFees
    Left = 210
    Top = 207
  end
  object qryFeeUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update fee'
      'set nfee_debtornotes = :nfee_debtornote'
      'where nfee = :nfee')
    Left = 25
    Top = 507
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nfee_debtornote'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nfee'
        Value = nil
      end>
  end
  object qryBills: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from '
      'nmemo'
      'where'
      'nmatter = :nmatter'
      'and'
      'fees <> 0'
      'and'
      'dispatched is not null'
      'and'
      
        'nmemo in (select nmemo from fee where NFEE_DEBTORNOTES is not nu' +
        'll)'
      'order by dispatched desc')
    Left = 283
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsBills: TUniDataSource
    DataSet = qryBills
    Left = 283
    Top = 205
  end
  object qryBilledFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from '
      'fee'
      'where'
      'fee.nmatter = :nmatter'
      'and nmemo is not null'
      'order by nmemo')
    Left = 384
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsBilledFees: TUniDataSource
    DataSet = qryBilledFees
    Left = 384
    Top = 203
  end
  object qryAuthorFeeDates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select min(created) as start_date, max(created) as end_date'
      'from fee'
      'where nmemo is null and type = '#39'N'#39
      'and nmatter = :nmatter'
      'and fee.author = nvl(:author, fee.author)')
    Left = 492
    Top = 43
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
  end
  object qrydebtor_task_codes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   *'
      '    FROM debtor_task_codes'
      '   WHERE active = '#39'Y'#39
      'ORDER BY code')
    Left = 229
    Top = 275
  end
  object dsdebtor_task_codes: TUniDataSource
    DataSet = qrydebtor_task_codes
    Left = 229
    Top = 325
  end
end
