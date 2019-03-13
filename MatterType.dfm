inherited frmMatterType: TfrmMatterType
  Left = 446
  Top = 273
  Caption = 'Matter Types'
  ClientHeight = 409
  ClientWidth = 437
  OldCreateOrder = True
  OnHide = FormHide
  ExplicitWidth = 443
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 62
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 83
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object Label13: TLabel [2]
    Left = 8
    Top = 108
    Width = 103
    Height = 15
    Caption = 'Ledger Component'
  end
  object Label15: TLabel [3]
    Left = 8
    Top = 133
    Width = 80
    Height = 15
    Caption = 'Sundry Percent'
  end
  object Label16: TLabel [4]
    Left = 209
    Top = 133
    Width = 65
    Height = 15
    Caption = 'Sundry Type'
  end
  object dbtbCode: TDBEdit [5]
    Left = 115
    Top = 57
    Width = 53
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CODE'
    DataSource = dsSource
    TabOrder = 0
  end
  object dbtbDescr: TDBEdit [6]
    Left = 115
    Top = 81
    Width = 185
    Height = 23
    DataField = 'DESCR'
    DataSource = dsSource
    TabOrder = 2
  end
  object btnCodeSearch: TBitBtn [7]
    Left = 169
    Top = 57
    Width = 24
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
    TabOrder = 1
    OnClick = btnCodeSearchClick
  end
  object edLedgerComponent: TDBEdit [8]
    Left = 115
    Top = 105
    Width = 90
    Height = 23
    DataField = 'LEDGER_COMPONENT'
    DataSource = dsSource
    TabOrder = 3
  end
  object pagDetails: TcxPageControl [9]
    Left = 7
    Top = 164
    Width = 422
    Height = 238
    TabOrder = 6
    Properties.ActivePage = tabWorkflow
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    TabSlants.Kind = skCutCorner
    OnChange = pagDetailsChange
    ClientRectBottom = 234
    ClientRectLeft = 4
    ClientRectRight = 418
    ClientRectTop = 26
    object tabWorkflow: TcxTabSheet
      Caption = 'Workflow Defaults'
      ImageIndex = 0
      object Label11: TLabel
        Left = 8
        Top = 10
        Width = 79
        Height = 15
        Caption = 'Workflow Type'
      end
      object Label10: TLabel
        Left = 8
        Top = 34
        Width = 55
        Height = 15
        Caption = 'Initial Task'
      end
      object Label3: TLabel
        Left = 8
        Top = 61
        Width = 52
        Height = 15
        Caption = 'DataForm'
      end
      object btnDataForm: TcxDBButtonEdit
        Left = 96
        Top = 59
        DataBinding.DataField = 'DATAFORM'
        DataBinding.DataSource = dsSource
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
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
              FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = btnDataFormPropertiesButtonClick
        TabOrder = 0
        Width = 207
      end
      object btnWorkflowType: TcxDBButtonEdit
        Left = 96
        Top = 5
        DataBinding.DataField = 'WORKFLOWTYPE'
        DataBinding.DataSource = dsSource
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
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
              FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = btnWorkflowTypePropertiesButtonClick
        TabOrder = 1
        Width = 207
      end
      object btnTask: TcxDBButtonEdit
        Left = 96
        Top = 32
        DataBinding.DataField = 'TASK'
        DataBinding.DataSource = dsSource
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
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
              FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
              00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
              00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
              FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = btnTaskPropertiesButtonClick
        TabOrder = 2
        Width = 207
      end
    end
    object tabFees: TcxTabSheet
      Caption = 'Fees + Bills'
      ImageIndex = 1
      object Label5: TLabel
        Left = 8
        Top = 16
        Width = 44
        Height = 15
        Caption = 'Fee Rate'
      end
      object Label4: TLabel
        Left = 8
        Top = 43
        Width = 72
        Height = 15
        Caption = 'Fee Rate Type'
      end
      object Label6: TLabel
        Left = 8
        Top = 64
        Width = 68
        Height = 15
        Caption = 'Bill Template'
      end
      object dblblBilltemplate: TDBText
        Left = 128
        Top = 64
        Width = 88
        Height = 13
        AutoSize = True
        DataField = 'BILLTEMPLATE'
        DataSource = dsSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 192
        Top = 16
        Width = 78
        Height = 15
        Caption = 'Expected Value'
      end
      object lblFeeCodeDescr: TLabel
        Left = 170
        Top = 45
        Width = 3
        Height = 15
      end
      object dbtbFeeRate: TDBEdit
        Left = 96
        Top = 16
        Width = 73
        Height = 23
        DataField = 'FEE_RATE'
        DataSource = dsSource
        TabOrder = 0
      end
      object cbFeeCode: TComboBox
        Left = 96
        Top = 40
        Width = 65
        Height = 23
        Style = csDropDownList
        TabOrder = 1
        OnClick = cbFeeCodeClick
        OnExit = cbFeeCodeExit
      end
      object btnBillTemplate: TBitBtn
        Left = 96
        Top = 64
        Width = 24
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
        TabOrder = 2
        OnClick = btnBillTemplateClick
      end
      object DBEdit4: TDBEdit
        Left = 280
        Top = 16
        Width = 81
        Height = 23
        DataField = 'WORD_RATE'
        DataSource = dsSource
        TabOrder = 3
      end
    end
    object tabParties: TcxTabSheet
      Caption = 'Other Party Captions'
      ImageIndex = 2
      object Label7: TLabel
        Left = 8
        Top = 19
        Width = 22
        Height = 15
        Caption = 'First'
      end
      object Label9: TLabel
        Left = 8
        Top = 67
        Width = 28
        Height = 15
        Caption = 'Third'
      end
      object Label8: TLabel
        Left = 8
        Top = 43
        Width = 39
        Height = 15
        Caption = 'Second'
      end
      object dbtbParty1: TDBEdit
        Left = 88
        Top = 16
        Width = 185
        Height = 23
        DataField = 'PARTY1_DESC'
        DataSource = dsSource
        TabOrder = 0
      end
      object dbtbParty2: TDBEdit
        Left = 88
        Top = 40
        Width = 185
        Height = 23
        DataField = 'PARTY2_DESC'
        DataSource = dsSource
        TabOrder = 1
      end
      object dbtbParty3: TDBEdit
        Left = 88
        Top = 64
        Width = 185
        Height = 23
        DataField = 'PARTY3_DESC'
        DataSource = dsSource
        TabOrder = 2
      end
    end
    object tabSubType: TcxTabSheet
      Caption = 'Sub Type'
      ImageIndex = 3
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 414
        Height = 208
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsSubType
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGrid1DBTableView1CODE: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 50
          end
          object cxGrid1DBTableView1DESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            Width = 264
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object tabDebtorTask: TcxTabSheet
      Caption = 'Debtor Task'
      ImageIndex = 4
      TabVisible = False
      object Label14: TLabel
        Left = 8
        Top = 16
        Width = 120
        Height = 15
        Caption = 'Debtor Task Template :'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 125
        Top = 13
        Width = 172
        Height = 23
        DataField = 'NDEBTORTASKTEMPLATE'
        DataSource = dsSource
        KeyField = 'NTEMPLATE'
        ListField = 'DESCR'
        ListSource = dsDebtorTaskTemplate
        TabOrder = 0
      end
    end
  end
  object spSundryPercent: TcxDBSpinEdit [10]
    Left = 115
    Top = 129
    DataBinding.DataField = 'SUNDRY_PERCENT'
    DataBinding.DataSource = dsSource
    Properties.DisplayFormat = '0'
    Properties.MaxValue = 100.000000000000000000
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 4
    Width = 90
  end
  object cmbSundryType: TcxDBLookupComboBox [11]
    Left = 279
    Top = 129
    DataBinding.DataField = 'SUNDRY_TYPE'
    DataBinding.DataSource = dsSource
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 20
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsSundryType
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 5
    Width = 146
  end
  inherited dsSource: TUniDataSource
    Left = 170
    Top = 13
  end
  inherited ilstToolbar: TImageList
    Left = 296
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT M.*, M.ROWID'
      'FROM MATTERTYPE M'
      'ORDER BY M.CODE')
    AfterScroll = qrySourceAfterScroll
    Left = 71
    Top = 22
  end
  inherited bmMain: TdxBarManager
    Left = 342
    Top = 63
    PixelsPerInch = 96
    inherited bmMainBar1: TdxBar
      OldName = 'Main Menu1'
    end
    inherited bmMainBar2: TdxBar
      IsMainMenu = False
      MultiLine = False
      OldName = 'Toolbar1'
      WholeRow = False
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 314
    Top = 105
  end
  inherited rpMaintReport: TppReport
    Left = 228
    Top = 282
    DataPipelineName = 'plSource'
    inherited ppMaintHeaderBand: TppHeaderBand
      inherited ppLine1: TppLine [0]
        LayerName = Foreground
      end
      inherited ppSystemVariable1: TppSystemVariable [1]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppSystemVariable2: TppSystemVariable [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblEntity: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblTitle: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppMaintDetailBand: TppDetailBand
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'CODE'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'DESCR'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 1058
        mmWidth = 159809
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppMaintSummaryBand: TppSummaryBand
      inherited ppLine2: TppLine
        LayerName = Foreground
      end
    end
  end
  inherited plSource: TppDBPipeline
    DataSource = UniDataSource1
    Left = 145
    Top = 284
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM DATAFORM ORDER BY CODE')
    Left = 263
  end
  object qrySubType: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO MATTERSUBTYPE'
      '  (CODE, MATTERTYPE, DESCR)'
      'VALUES'
      '  (:CODE, :MATTERTYPE, :DESCR)')
    SQLDelete.Strings = (
      'DELETE FROM MATTERSUBTYPE'
      'WHERE'
      '  CODE = :CODE')
    SQLUpdate.Strings = (
      'UPDATE MATTERSUBTYPE'
      'SET'
      '  CODE = :CODE,'
      '  MATTERTYPE = :MATTERTYPE,'
      '  DESCR = :DESCR'
      'WHERE'
      '  CODE = :OLD_CODE')
    SQLLock.Strings = (
      'SELECT * FROM MATTERSUBTYPE'
      'WHERE'
      '  CODE = :CODE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  CODE = :CODE')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT MATTERSUBTYPE.*, MATTERSUBTYPE.rowid '
      'FROM MATTERSUBTYPE'
      'WHERE MATTERTYPE=:CODE')
    MasterSource = dsSource
    OnNewRecord = qrySubTypeNewRecord
    Left = 217
    Top = 351
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object dsSubType: TUniDataSource
    DataSet = qrySubType
    Left = 331
    Top = 243
  end
  object qryDebtorTaskTemplate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from debtorworkflowtemplate')
    Left = 324
    Top = 29
  end
  object dsDebtorTaskTemplate: TUniDataSource
    DataSet = qryDebtorTaskTemplate
    Left = 391
    Top = 70
  end
  object qrySundryType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select descr, code from sundrytype'
      'order by descr')
    Left = 372
    Top = 156
  end
  object dsSundryType: TUniDataSource
    DataSet = qrySundryType
    Left = 370
    Top = 207
  end
  object UniQuery1: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT M.*, M.ROWID'
      'FROM MATTERTYPE M'
      'ORDER BY M.CODE')
    Left = 40
    Top = 280
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 104
    Top = 280
  end
end
