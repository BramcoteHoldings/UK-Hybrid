inherited frmEmpDept: TfrmEmpDept
  Left = 464
  Top = 390
  Caption = 'Employee Departments'
  ClientHeight = 142
  ClientWidth = 328
  OldCreateOrder = True
  Position = poMainFormCenter
  ExplicitWidth = 334
  ExplicitHeight = 170
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 59
    Width = 25
    Height = 13
    Caption = 'Code'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 83
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object Label3: TLabel [2]
    Left = 7
    Top = 106
    Width = 90
    Height = 13
    Caption = 'Ledger Component'
  end
  object DBEdit1: TDBEdit [3]
    Left = 104
    Top = 55
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CODE'
    DataSource = dsSource
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [4]
    Left = 104
    Top = 79
    Width = 153
    Height = 21
    DataField = 'DESCR'
    DataSource = dsSource
    TabOrder = 3
  end
  object edLedgerComponent: TDBEdit [5]
    Left = 104
    Top = 104
    Width = 121
    Height = 21
    DataField = 'LEDGER_COMPONENT'
    DataSource = dsSource
    TabOrder = 6
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT E.*, E.ROWID '
      'FROM EMPDEPT E'
      'ORDER BY E.CODE')
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
    end
    inherited ppMaintDetailBand: TppDetailBand
      object ppDBText1: TppDBText
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
        mmLeft = 3175
        mmTop = 1058
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText2: TppDBText
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
        mmLeft = 14552
        mmTop = 794
        mmWidth = 43656
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'LEDGER_COMPONENT'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 65352
        mmTop = 1058
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
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'COSTCENTRE'
      FieldName = 'COSTCENTRE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object plSourceppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPORTGROUP'
      FieldName = 'REPORTGROUP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plSourceppField5: TppField
      FieldAlias = 'LEDGER_COMPONENT'
      FieldName = 'LEDGER_COMPONENT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plSourceppField6: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 5
    end
  end
end
