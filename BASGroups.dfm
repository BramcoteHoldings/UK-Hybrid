inherited frmBASGroups: TfrmBASGroups
  Left = 615
  Top = 370
  Caption = 'BAS Group Codes'
  ClientHeight = 550
  ClientWidth = 756
  OldCreateOrder = True
  ExplicitWidth = 762
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 8
    Top = 40
    Width = 740
    Height = 502
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.KeyFieldNames = 'CODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CODE'
      end
      object cxGrid1DBTableView1DESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited dsSource: TUniDataSource
    Left = 193
    Top = 36
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.*, Q.ROWID'
      'FROM BASGROUP Q'
      'ORDER BY Q.CODE')
    Active = True
    Left = 142
    Top = 33
  end
  inherited bmMain: TdxBarManager
    DockControlHeights = (
      0
      0
      28
      0)
    inherited dxBarDBNavNext3: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavLast3: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavInsert4: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavDelete3: TdxBarDBNavButton
      Enabled = True
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 270
    Top = 27
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
        mmLeft = 2117
        mmTop = 794
        mmWidth = 41804
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
        mmLeft = 44979
        mmTop = 529
        mmWidth = 146050
        BandType = 4
      end
    end
    inherited ppMaintSummaryBand: TppSummaryBand
      inherited ppLine2: TppLine
        LayerName = Foreground
      end
    end
  end
end
