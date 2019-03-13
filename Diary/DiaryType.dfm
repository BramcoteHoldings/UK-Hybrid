inherited frmDiaryType: TfrmDiaryType
  Left = 345
  Top = 233
  Caption = 'Dairy Type'
  ClientHeight = 119
  ClientWidth = 398
  OldCreateOrder = True
  ExplicitWidth = 404
  ExplicitHeight = 148
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 59
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 81
    Width = 63
    Height = 15
    Caption = 'Description:'
  end
  object dbtbCode: TDBEdit [2]
    Left = 72
    Top = 55
    Width = 33
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CODE'
    DataSource = dsSource
    TabOrder = 0
  end
  object dbmmoDescr: TDBMemo [3]
    Left = 72
    Top = 79
    Width = 289
    Height = 26
    DataField = 'DESCR'
    DataSource = dsSource
    TabOrder = 3
  end
  inherited ilstToolbar: TImageList
    Left = 208
    Top = 32
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.*, Q.ROWID'
      'FROM DIARY_TYPE Q'
      'ORDER BY Q.CODE')
    Left = 158
    Top = 1
  end
  inherited bmMain: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      50
      0)
    inherited bmMainBar1: TdxBar
      IsMainMenu = True
      MultiLine = True
      OldName = 'Main Menu1'
      Visible = True
      WholeRow = True
    end
    inherited bmMainBar2: TdxBar
      DockedTop = 22
      IsMainMenu = False
      MultiLine = False
      OldName = 'Toolbar1'
      Row = 1
      WholeRow = False
    end
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
        mmLeft = 1588
        mmTop = 265
        mmWidth = 23019
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
        mmLeft = 27781
        mmTop = 794
        mmWidth = 159394
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
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
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
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plSourceppField4: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 3
    end
  end
end
