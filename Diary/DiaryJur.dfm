inherited frmDiaryJur: TfrmDiaryJur
  Left = 226
  Top = 178
  Caption = 'Diary Jurisdictions'
  ClientHeight = 116
  ClientWidth = 322
  OldCreateOrder = True
  ExplicitWidth = 328
  ExplicitHeight = 144
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 61
    Width = 52
    Height = 13
    Caption = 'Jurisdiction'
  end
  object DBEdit1: TDBEdit [1]
    Left = 72
    Top = 59
    Width = 161
    Height = 21
    DataField = 'JURISDICTION'
    DataSource = dsSource
    TabOrder = 2
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT D.*, D.ROWID'
      'FROM DIARYJUR D'
      'ORDER BY D.JURISDICTION')
  end
  inherited bmMain: TdxBarManager
    DockControlHeights = (
      0
      0
      53
      0)
    inherited bmMainBar1: TdxBar
      IsMainMenu = True
      MultiLine = True
      OldName = 'Main Menu1'
      Visible = True
      WholeRow = True
    end
    inherited bmMainBar2: TdxBar
      DockedTop = 25
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
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'JURISDICTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 12435
        mmWidth = 53975
        BandType = 0
      end
    end
    inherited ppMaintDetailBand: TppDetailBand
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'JURISDICTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 529
        mmWidth = 53975
        BandType = 4
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
      FieldAlias = 'JURISDICTION'
      FieldName = 'JURISDICTION'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 1
    end
  end
end
