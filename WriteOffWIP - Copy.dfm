object frmWIPWriteOff: TfrmWIPWriteOff
  Left = 0
  Top = 0
  Caption = 'WIP Write Off'
  ClientHeight = 414
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    780
    414)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 38
    Width = 36
    Height = 13
    Caption = 'Matter:'
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 64
    Width = 762
    Height = 339
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = UniDataSource1
      DataController.KeyFieldNames = 'NFEE'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        MinWidth = 30
        Options.Sorting = False
        Width = 30
      end
      object cxGrid1DBTableView1NFEE: TcxGridDBColumn
        DataBinding.FieldName = 'NFEE'
        Visible = False
        Options.Editing = False
        Options.Focusing = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1CREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        Options.Editing = False
        Options.Focusing = False
        Width = 72
      end
      object cxGrid1DBTableView1DESCR: TcxGridDBColumn
        Caption = 'description'
        DataBinding.FieldName = 'DESCR'
        Options.Editing = False
        Options.Focusing = False
        Width = 236
      end
      object cxGrid1DBTableView1MINS: TcxGridDBColumn
        Caption = 'Minutes'
        DataBinding.FieldName = 'MINS'
        Options.Editing = False
        Options.Focusing = False
        Width = 47
      end
      object cxGrid1DBTableView1AUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        Options.Editing = False
        Options.Focusing = False
        Width = 43
      end
      object cxGrid1DBTableView1NMATTER: TcxGridDBColumn
        DataBinding.FieldName = 'NMATTER'
        Visible = False
        Options.Editing = False
        Options.Focusing = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1UNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        Options.Editing = False
        Options.Focusing = False
        Width = 46
      end
      object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Options.Editing = False
        Options.Focusing = False
        Width = 47
      end
      object cxGrid1DBTableView1TASK_AMOUNT: TcxGridDBColumn
        Caption = 'Task Amount'
        DataBinding.FieldName = 'TASK_AMOUNT'
        Options.Editing = False
        Options.Focusing = False
        Width = 45
      end
      object cxGrid1DBTableView1ITEMS: TcxGridDBColumn
        Caption = 'Items'
        DataBinding.FieldName = 'ITEMS'
        Options.Editing = False
        Options.Focusing = False
        Width = 48
      end
      object cxGrid1DBTableView1VALUE: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'VALUE'
        Options.Editing = False
        Options.Focusing = False
        Width = 45
      end
      object cxGrid1DBTableView1ITEM_UNIT: TcxGridDBColumn
        Caption = 'Item Units'
        DataBinding.FieldName = 'ITEM_UNIT'
        Options.Editing = False
        Options.Focusing = False
        Width = 46
      end
      object cxGrid1DBTableView1ITEM_AMOUNT: TcxGridDBColumn
        Caption = 'Item Amount'
        DataBinding.FieldName = 'ITEM_AMOUNT'
        Options.Editing = False
        Options.Focusing = False
        Width = 45
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnedMatter: TcxButtonEdit
    Left = 80
    Top = 37
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.CharCase = ecUpperCase
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Properties.OnValidate = btnedMatterPropertiesValidate
    TabOrder = 1
    Width = 121
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
    Left = 552
    Top = 8
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 783
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
    end
  end
  object qryFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'fee '
      'where billed = '#39'N'#39
      'and type = '#39'N'#39
      'and nmemo is null'
      'and nmatter = :nmatter')
    Left = 312
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object UniDataSource1: TUniDataSource
    DataSet = qryFees
    Left = 368
    Top = 128
  end
end
