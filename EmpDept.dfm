inherited frmEmpDept: TfrmEmpDept
  Left = 464
  Top = 390
  Caption = 'Employee Departments'
  ClientHeight = 326
  ClientWidth = 483
  OldCreateOrder = True
  Position = poMainFormCenter
  ExplicitWidth = 489
  ExplicitHeight = 355
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 41
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 66
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object Label3: TLabel [2]
    Left = 7
    Top = 89
    Width = 103
    Height = 15
    Caption = 'Ledger Component'
  end
  object DBEdit1: TDBEdit [3]
    Left = 120
    Top = 37
    Width = 41
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CODE'
    DataSource = dsSource
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [4]
    Left = 120
    Top = 62
    Width = 153
    Height = 23
    DataField = 'DESCR'
    DataSource = dsSource
    TabOrder = 3
  end
  object edLedgerComponent: TDBEdit [5]
    Left = 120
    Top = 87
    Width = 121
    Height = 23
    DataField = 'LEDGER_COMPONENT'
    DataSource = dsSource
    TabOrder = 6
  end
  object cxDBCheckBox1: TcxDBCheckBox [6]
    Left = 8
    Top = 116
    Caption = 'Active'
    DataBinding.DataField = 'ACTIVE'
    DataBinding.DataSource = dsSource
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = 'Y'
    Properties.ValueUnchecked = 'N'
    TabOrder = 7
  end
  inherited dsSource: TUniDataSource
    Top = 26
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT E.*, E.ROWID '
      'FROM EMPDEPT E'
      'ORDER BY E.CODE')
    Left = 310
    Top = 201
  end
  inherited bmMain: TdxBarManager
    PixelsPerInch = 96
    inherited bmMainBar1: TdxBar
      IsMainMenu = True
      MultiLine = True
      OldName = 'Main Menu1'
      WholeRow = True
    end
    inherited bmMainBar2: TdxBar
      Font.Height = -12
      IsMainMenu = False
      MultiLine = False
      OldName = 'Toolbar1'
      WholeRow = False
    end
  end
  inherited rpMaintReport: TppReport
    DataPipelineName = 'plSource'
    inherited ppMaintHeaderBand: TppHeaderBand
      inherited ppLine1: TppLine [0]
      end
      inherited ppSystemVariable1: TppSystemVariable [1]
      end
      inherited ppSystemVariable2: TppSystemVariable [2]
      end
      inherited pplblEntity: TppLabel [3]
      end
      inherited pplblTitle: TppLabel [4]
      end
    end
    inherited ppMaintDetailBand: TppDetailBand
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
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
