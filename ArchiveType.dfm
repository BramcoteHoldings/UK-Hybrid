inherited frmArchiveType: TfrmArchiveType
  Left = 437
  Top = 320
  Caption = 'Archive Type'
  ClientHeight = 362
  ClientWidth = 640
  OldCreateOrder = True
  ExplicitWidth = 646
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  object grdArchiveType: TcxGrid [0]
    Left = 0
    Top = 53
    Width = 640
    Height = 309
    Align = alClient
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object tvArchiveType: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      object tvArchiveTypeCODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CODE'
        Width = 70
      end
      object tvArchiveTypeNAME: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'NAME'
        Width = 142
      end
      object tvArchiveTypeNEXTARCHIVE: TcxGridDBColumn
        Caption = 'Number'
        DataBinding.FieldName = 'NEXTARCHIVE'
        Width = 46
      end
      object tvArchiveTypeDESCRIPTION: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 241
      end
      object tvArchiveTypeACTIVE: TcxGridDBColumn
        Caption = 'Active'
        DataBinding.FieldName = 'ACTIVE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Width = 49
      end
      object tvArchiveTypeDFLT_TYPE: TcxGridDBColumn
        Caption = 'Default'
        DataBinding.FieldName = 'DFLT_TYPE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
      end
    end
    object grdArchiveTypeLevel1: TcxGridLevel
      GridView = tvArchiveType
    end
  end
  inherited ilstToolbar: TImageList
    Left = 240
    Top = 153
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.*, Q.ROWID'
      'FROM ARCHIVETYPE Q'
      'ORDER BY Q.CODE')
  end
  inherited bmMain: TdxBarManager
    AllowReset = False
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
      AllowClose = False
      AllowReset = False
      DockedTop = 25
      IsMainMenu = False
      MultiLine = False
      OldName = 'Toolbar1'
      Row = 1
      WholeRow = False
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 312
    Top = 151
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
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1588
        mmTop = 12171
        mmWidth = 7959
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 29633
        mmTop = 11642
        mmWidth = 8678
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 93398
        mmTop = 11642
        mmWidth = 17526
        BandType = 0
      end
    end
    inherited ppMaintDetailBand: TppDetailBand
      object ppDBText1: TppDBText
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
        mmLeft = 1852
        mmTop = 529
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NAME'
        DataPipeline = plSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 3969
        mmLeft = 29633
        mmTop = 529
        mmWidth = 59267
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'DESCRIPTION'
        DataPipeline = plSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 3969
        mmLeft = 93398
        mmTop = 529
        mmWidth = 101336
        BandType = 4
      end
    end
    inherited ppMaintSummaryBand: TppSummaryBand
      inherited ppLine2: TppLine
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = plSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plSource'
        mmHeight = 3598
        mmLeft = 20108
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
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
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object plSourceppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'NEXTARCHIVE'
      FieldName = 'NEXTARCHIVE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plSourceppField4: TppField
      FieldAlias = 'DESCRIPTION'
      FieldName = 'DESCRIPTION'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plSourceppField5: TppField
      FieldAlias = 'ACTIVE'
      FieldName = 'ACTIVE'
      FieldLength = 1
      DisplayWidth = 1
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
