inherited frmMarketRelationshipStatus: TfrmMarketRelationshipStatus
  Caption = 'Market Relationship Status'
  ClientHeight = 471
  ExplicitWidth = 651
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 15
  object cxGrid1: TcxGrid [0]
    Left = 7
    Top = 36
    Width = 630
    Height = 424
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1CODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CODE'
        Width = 76
      end
      object cxGrid1DBTableView1DESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        Width = 552
      end
      object cxGrid1DBTableView1ROWID: TcxGridDBColumn
        DataBinding.FieldName = 'ROWID'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.*, Q.ROWID'
      'FROM relationship_status Q'
      'ORDER BY Q.CODE')
    Active = True
  end
  inherited bmMain: TdxBarManager
    PixelsPerInch = 96
    inherited dxBarDBNavInsert4: TdxBarDBNavButton
      Enabled = True
    end
  end
  inherited rpMaintReport: TppReport
    DataPipelineName = 'plSource'
    inherited ppMaintHeaderBand: TppHeaderBand
      inherited ppSystemVariable1: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppSystemVariable2: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblEntity: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppLine1: TppLine
        LayerName = Foreground
      end
    end
    inherited ppMaintSummaryBand: TppSummaryBand
      inherited ppLine2: TppLine
        LayerName = Foreground
      end
    end
  end
end
