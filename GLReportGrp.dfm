inherited frmGLReportGrp: TfrmGLReportGrp
  Left = 589
  Top = 386
  Caption = 'GL Report Group'
  ClientHeight = 190
  ClientWidth = 559
  OldCreateOrder = True
  ExplicitWidth = 565
  ExplicitHeight = 221
  PixelsPerInch = 106
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 58
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 84
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 111
    Width = 46
    Height = 15
    Caption = 'OIF Type'
  end
  object dbtbCode: TDBEdit [3]
    Left = 72
    Top = 55
    Width = 81
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CODE'
    DataSource = dsSource
    TabOrder = 4
  end
  object dbtbDescr: TDBEdit [4]
    Left = 72
    Top = 81
    Width = 233
    Height = 23
    DataField = 'DESCR'
    DataSource = dsSource
    TabOrder = 6
  end
  object cxDBImageComboBox1: TcxDBImageComboBox [5]
    Left = 72
    Top = 107
    DataBinding.DataField = 'OIFTYPE'
    DataBinding.DataSource = dsSource
    Properties.Items = <
      item
        Description = 'Operating'
        ImageIndex = 0
        Value = 'O'
      end
      item
        Description = 'Financial'
        Value = 'F'
      end
      item
        Description = 'Investment'
        Value = 'I'
      end
      item
        Description = 'Other'
        Value = 'X'
      end>
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 5
    Width = 180
  end
  inherited dsSource: TUniDataSource
    Left = 463
    Top = 31
  end
  inherited ilstToolbar: TImageList
    Left = 343
    Top = 95
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.*, Q.ROWID'
      'FROM gl_reportgroup Q'
      'ORDER BY Q.CODE')
    Left = 341
    Top = 42
  end
  inherited bmMain: TdxBarManager
    PixelsPerInch = 106
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 429
    Top = 99
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
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 3440
        mmTop = 12171
        mmWidth = 7959
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 32015
        mmTop = 12171
        mmWidth = 17526
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppMaintDetailBand: TppDetailBand
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'CODE'
        DataPipeline = plSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 794
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'DESCR'
        DataPipeline = plSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 794
        mmWidth = 161661
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
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'OIFTYPE'
      FieldName = 'OIFTYPE'
      FieldLength = 1
      DisplayWidth = 1
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
