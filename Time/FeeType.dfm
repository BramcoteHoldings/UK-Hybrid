inherited frmFeeType: TfrmFeeType
  Caption = 'Fee Types'
  ClientHeight = 195
  ClientWidth = 346
  OldCreateOrder = True
  ExplicitWidth = 352
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 40
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 64
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 88
    Width = 23
    Height = 15
    Caption = 'Rate'
  end
  object dbtbTaxDescr: TDBText [3]
    Left = 144
    Top = 137
    Width = 161
    Height = 17
    DataField = 'CODE'
  end
  object Label4: TLabel [4]
    Left = 8
    Top = 137
    Width = 43
    Height = 15
    Caption = 'Tax Rate'
  end
  object dbtbCode: TDBEdit [5]
    Left = 72
    Top = 37
    Width = 25
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CODE'
    DataSource = dsSource
    TabOrder = 0
  end
  object dbtbDescr: TDBEdit [6]
    Left = 72
    Top = 61
    Width = 233
    Height = 23
    DataField = 'DESCR'
    DataSource = dsSource
    TabOrder = 1
  end
  object dbtbRate: TDBEdit [7]
    Left = 72
    Top = 85
    Width = 65
    Height = 23
    DataField = 'RATE'
    DataSource = dsSource
    TabOrder = 2
  end
  object dbchkBillable: TDBCheckBox [8]
    Left = 8
    Top = 111
    Width = 77
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Billable?'
    DataField = 'BILLABLE'
    DataSource = dsSource
    TabOrder = 3
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
  end
  object dbcbTaxType: TDBLookupComboBox [9]
    Left = 72
    Top = 133
    Width = 65
    Height = 23
    DataField = 'TAXCODE'
    DataSource = dsSource
    KeyField = 'CODE'
    ListField = 'CODE'
    ListSource = dsTaxType
    TabOrder = 6
  end
  inherited dsSource: TUniDataSource
    Top = 26
  end
  inherited ilstToolbar: TImageList
    Left = 229
    Top = 68
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT F.*, F.ROWID'
      'FROM FEETYPE F'
      'ORDER BY F.CODE')
    Top = 23
  end
  inherited bmMain: TdxBarManager
    Top = 36
    PixelsPerInch = 96
    inherited bmMainBar1: TdxBar
      OldName = 'Main Menu1'
    end
    inherited bmMainBar2: TdxBar
      Font.Height = -12
      OldName = 'Toolbar1'
      Row = 1
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Top = 33
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
        mmLeft = 1058
        mmTop = 794
        mmWidth = 9790
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
        mmLeft = 12965
        mmTop = 794
        mmWidth = 60854
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'RATE'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 794
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox1: TmyDBCheckBox
        DesignLayer = ppDesignLayer1
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'N'
        BooleanTrue = 'Y'
        DataPipeline = plSource
        DataField = 'BILLABLE'
        DataPipelineName = 'plSource'
        mmHeight = 6350
        mmLeft = 120386
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'TAXCODE'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 149225
        mmTop = 794
        mmWidth = 22225
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
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plSourceppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'RATE'
      FieldName = 'RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plSourceppField5: TppField
      FieldAlias = 'BILLABLE'
      FieldName = 'BILLABLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object plSourceppField6: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
  end
  object qryTaxType: TUniQuery
    SQL.Strings = (
      'SELECT CODE, DESCR FROM TAXTYPE'
      'UNION'
      'SELECT '#39' '#39' AS CODE, '#39#39' AS DESCR FROM DUAL'
      'ORDER BY 1')
    Left = 277
    Top = 86
    object qryTaxTypeCODE: TStringField
      FieldName = 'CODE'
    end
    object qryTaxTypeDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
  end
  object dsTaxType: TUniDataSource
    DataSet = qryTaxType
    Left = 301
    Top = 48
  end
end
