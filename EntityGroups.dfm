object frmEntityGroups: TfrmEntityGroups
  Left = 0
  Top = 0
  Caption = 'Company (Entity Groups)'
  ClientHeight = 739
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    943
    739)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 33
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Company (Entity Group)'
    TabOrder = 0
    DesignSize = (
      925
      273)
    Height = 273
    Width = 925
    object grdEntityGroups: TcxGrid
      Left = 9
      Top = 116
      Width = 909
      Height = 150
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object tvEntityGroups: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        OnCellClick = tvEntityGroupsCellClick
        DataController.DataSource = dsEntityGroups
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvEntityGroupsCODE: TcxGridDBColumn
          Caption = 'Code'
          DataBinding.FieldName = 'CODE'
          Width = 84
        end
        object tvEntityGroupsDESCRIPTION: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'DESCRIPTION'
          Width = 711
        end
      end
      object lvEntityGroups: TcxGridLevel
        GridView = tvEntityGroups
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 9
      Top = 17
      Caption = 'Details'
      TabOrder = 1
      Height = 93
      Width = 477
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 79
        Top = 25
        DataBinding.DataField = 'CODE'
        DataBinding.DataSource = dsEntityGroups
        TabOrder = 0
        Width = 76
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 26
        Caption = 'Code'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 16
        Top = 53
        Caption = 'Description'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 79
        Top = 52
        DataBinding.DataField = 'DESCRIPTION'
        DataBinding.DataSource = dsEntityGroups
        TabOrder = 3
        Width = 264
      end
      object btnNew: TcxButton
        Left = 383
        Top = 12
        Width = 75
        Height = 25
        Action = DatasetInsert1
        TabOrder = 4
      end
      object cxButton1: TcxButton
        Left = 383
        Top = 36
        Width = 75
        Height = 25
        Action = DatasetPost1
        TabOrder = 5
      end
      object cxButton2: TcxButton
        Left = 383
        Top = 60
        Width = 75
        Height = 25
        Action = DatasetCancel1
        TabOrder = 6
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 310
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Entities'
    TabOrder = 1
    DesignSize = (
      925
      418)
    Height = 418
    Width = 925
    object cxGrid2: TcxGrid
      Left = 9
      Top = 19
      Width = 909
      Height = 389
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsentity_group_link
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView1ENTITY_GROUP_CODE: TcxGridDBColumn
          Caption = 'Company (Entity Group)'
          DataBinding.FieldName = 'ENTITY_GROUP_CODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRIPTION'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEntityGroups
          Width = 200
        end
        object cxGridDBTableView1ENTITY_CODE: TcxGridDBColumn
          Caption = 'Entity'
          DataBinding.FieldName = 'ENTITY_CODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEntity
          Width = 595
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 780
    Top = 206
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 877
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object qryEntityGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select entity_groups.*, entity_groups.rowid'
      'from'
      'entity_groups'
      'order by description')
    Left = 126
    Top = 151
  end
  object dsEntityGroups: TUniDataSource
    DataSet = qryEntityGroups
    Left = 215
    Top = 164
  end
  object qryentity_group_link: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select entity_group_link.*, entity_group_link.rowid'
      'from'
      'entity_group_link'
      'where'
      'ENTITY_GROUP_CODE = :ENTITY_GROUP_CODE')
    Left = 139
    Top = 316
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY_GROUP_CODE'
        Value = nil
      end>
  end
  object dsentity_group_link: TUniDataSource
    DataSet = qryentity_group_link
    Left = 356
    Top = 329
  end
  object qryEntity: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code, name'
      'from'
      'entity'
      'order by name')
    Left = 177
    Top = 384
  end
  object dsEntity: TUniDataSource
    DataSet = qryEntity
    Left = 270
    Top = 390
  end
  object ActionManager1: TActionManager
    Left = 551
    Top = 65
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Action1'
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Add'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsEntityGroups
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Save'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsEntityGroups
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsEntityGroups
    end
  end
end
