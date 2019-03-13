inherited frmWorkflowType: TfrmWorkflowType
  Left = 554
  Top = 331
  Caption = 'Workflow Types'
  ClientHeight = 521
  ClientWidth = 628
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Scaled = True
  ExplicitWidth = 592
  ExplicitHeight = 515
  PixelsPerInch = 106
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 9
    Top = 64
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label2: TLabel [1]
    Left = 9
    Top = 87
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object DBEdit1: TDBEdit [2]
    Left = 77
    Top = 61
    Width = 104
    Height = 22
    CharCase = ecUpperCase
    DataField = 'CODE'
    DataSource = dsSource
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [3]
    Left = 77
    Top = 87
    Width = 284
    Height = 22
    DataField = 'DESCR'
    DataSource = dsSource
    TabOrder = 2
  end
  object btnCodeSearch: TBitBtn [4]
    Left = 182
    Top = 62
    Width = 26
    Height = 23
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 3
    OnClick = btnCodeSearchClick
  end
  object cxGrid1: TcxGrid [5]
    Left = 14
    Top = 128
    Width = 599
    Height = 373
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 8
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 54
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 13
      Preview.LeftIndent = 21
      object cxGrid1DBTableView1CODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CODE'
        MinWidth = 21
        Width = 167
      end
      object cxGrid1DBTableView1DESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 21
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnCopy: TcxButton [6]
    Left = 253
    Top = 56
    Width = 109
    Height = 27
    Caption = 'Copy Workflow'
    LookAndFeel.NativeStyle = True
    TabOrder = 7
    Visible = False
    OnClick = btnCopyClick
  end
  inherited ilstToolbar: TImageList
    Left = 190
    Top = 40
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT W.*, W.ROWID '
      'FROM WORKFLOWTYPE W '
      'ORDER BY W.CODE')
    object qrySourceCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 11
    end
    object qrySourceDESCR: TStringField
      FieldName = 'DESCR'
      Required = True
      Size = 60
    end
    object qrySourceROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  inherited bmMain: TdxBarManager
    PixelsPerInch = 106
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 358
    Top = 43
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
        mmLeft = 2117
        mmTop = 529
        mmWidth = 30163
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
        mmLeft = 42598
        mmTop = 529
        mmWidth = 149490
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
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 2
    end
  end
end
