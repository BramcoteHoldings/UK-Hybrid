inherited frmPostcode: TfrmPostcode
  Left = 176
  Top = 145
  Caption = 'Postcodes'
  ClientHeight = 350
  ClientWidth = 595
  OldCreateOrder = True
  ExplicitWidth = 601
  ExplicitHeight = 379
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 41
    Width = 72
    Height = 15
    Caption = 'Town/Suburb'
  end
  object lblState: TLabel [1]
    Left = 8
    Top = 67
    Width = 26
    Height = 15
    Caption = 'State'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 93
    Width = 49
    Height = 15
    Caption = 'Postcode'
  end
  object dbtbSuburb: TDBEdit [3]
    Left = 85
    Top = 38
    Width = 257
    Height = 23
    DataField = 'SUBURB'
    DataSource = dsSource
    TabOrder = 0
  end
  object DBEdit1: TDBEdit [4]
    Left = 85
    Top = 64
    Width = 188
    Height = 23
    CharCase = ecUpperCase
    DataField = 'STATE'
    DataSource = dsSource
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [5]
    Left = 85
    Top = 90
    Width = 65
    Height = 23
    DataField = 'PCODE'
    DataSource = dsSource
    TabOrder = 5
  end
  object btnCodeSearch: TBitBtn [6]
    Left = 342
    Top = 39
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
    TabOrder = 1
    OnClick = btnCodeSearchClick
  end
  inherited dsSource: TUniDataSource
    Left = 432
    Top = 41
  end
  inherited ilstToolbar: TImageList
    Left = 365
    Top = 93
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT P.*, P.ROWID '
      'FROM POSTCODE P '
      'ORDER BY P.SUBURB, P.STATE')
    Left = 408
  end
  inherited bmMain: TdxBarManager
    Left = 336
    Top = 158
    PixelsPerInch = 96
    inherited bmMainBar1: TdxBar
      IsMainMenu = True
      MultiLine = True
      OldName = 'Main Menu1'
      WholeRow = True
    end
    inherited bmMainBar2: TdxBar
      IsMainMenu = False
      MultiLine = False
      OldName = 'Toolbar1'
      WholeRow = False
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 325
    Top = 117
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
        DataField = 'SUBURB'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 1058
        mmWidth = 47890
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'STATE'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 57415
        mmTop = 1323
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'PCODE'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 85990
        mmTop = 1323
        mmWidth = 53975
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
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'PCODE'
      FieldName = 'PCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'SUBREAL'
      FieldName = 'SUBREAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object plSourceppField4: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 20
      DisplayWidth = 20
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
