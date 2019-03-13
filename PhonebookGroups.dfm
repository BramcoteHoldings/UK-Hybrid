inherited frmPhonebookGroups: TfrmPhonebookGroups
  Left = 300
  Top = 373
  Caption = 'Contact Groups'
  ClientHeight = 454
  ClientWidth = 618
  OldCreateOrder = True
  ExplicitWidth = 624
  ExplicitHeight = 485
  PixelsPerInch = 106
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 229
    Top = 60
    Width = 48
    Height = 15
    Caption = 'Category'
  end
  object dbtbCategory: TDBEdit [1]
    Left = 287
    Top = 57
    Width = 189
    Height = 23
    DataField = 'CATEGORY'
    DataSource = dsSource
    TabOrder = 0
    OnKeyPress = dbtbCategoryKeyPress
  end
  object dbchkOtherParty: TDBCheckBox [2]
    Left = 287
    Top = 87
    Width = 97
    Height = 17
    Caption = 'Other Party?'
    DataField = 'OTHERPARTY'
    DataSource = dsSource
    TabOrder = 3
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
    OnClick = dbchkOtherPartyClick
  end
  object gbOPOptions: TGroupBox [3]
    Left = 279
    Top = 113
    Width = 305
    Height = 81
    Caption = 'Other Party Options'
    TabOrder = 4
    object Label2: TLabel
      Left = 8
      Top = 51
      Width = 74
      Height = 15
      Caption = 'DataField Link'
    end
    object dbchkActingFor: TDBCheckBox
      Left = 8
      Top = 24
      Width = 98
      Height = 17
      Caption = 'Acting For?'
      DataField = 'ACTINGFOR'
      DataSource = dsSource
      TabOrder = 0
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
    end
    object cbFieldName: TComboBox
      Left = 88
      Top = 48
      Width = 209
      Height = 23
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbFieldNameChange
      OnKeyDown = cbFieldNameKeyDown
    end
  end
  object dbgCategorys: TDBGrid [4]
    Left = 8
    Top = 57
    Width = 215
    Height = 322
    DataSource = dsSource
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CATEGORY'
        Width = 195
        Visible = True
      end>
  end
  inherited dsSource: TUniDataSource
    Left = 315
    Top = 268
  end
  inherited ilstToolbar: TImageList
    Left = 413
    Top = 207
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT P.*, P.ROWID'
      'FROM PBGROUP P'
      'ORDER BY P.CATEGORY')
    Left = 240
    Top = 265
    object qrySourceCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 25
    end
    object qrySourceOTHERPARTY: TStringField
      FieldName = 'OTHERPARTY'
      Size = 1
    end
    object qrySourceACTINGFOR: TStringField
      FieldName = 'ACTINGFOR'
      Size = 1
    end
    object qrySourceFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 32
    end
    object qrySourceROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  inherited bmMain: TdxBarManager
    Left = 478
    Top = 210
    PixelsPerInch = 106
    DockControlHeights = (
      0
      0
      54
      0)
    inherited bmMainBar1: TdxBar
      IsMainMenu = True
      MultiLine = True
      OldName = 'Main Menu1'
      Visible = True
      WholeRow = True
    end
    inherited bmMainBar2: TdxBar
      DockedTop = 24
      IsMainMenu = False
      MultiLine = False
      OldName = 'Toolbar1'
      Row = 1
      WholeRow = False
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 319
    Top = 208
  end
  inherited rpMaintReport: TppReport
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
        DataField = 'CATEGORY'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'OTHERPARTY'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 794
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'ACTINGFOR'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 38365
        mmTop = 794
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'FIELDNAME'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 49742
        mmTop = 794
        mmWidth = 85725
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
    object plSourceppField1: TppField
      FieldAlias = 'CATEGORY'
      FieldName = 'CATEGORY'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'OTHERPARTY'
      FieldName = 'OTHERPARTY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'ACTINGFOR'
      FieldName = 'ACTINGFOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object plSourceppField4: TppField
      FieldAlias = 'FIELDNAME'
      FieldName = 'FIELDNAME'
      FieldLength = 32
      DisplayWidth = 32
      Position = 3
    end
    object plSourceppField5: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 4
    end
  end
end
