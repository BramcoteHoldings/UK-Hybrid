object frmWIPWriteOff: TfrmWIPWriteOff
  Left = 0
  Top = 0
  Caption = 'WIP Write Off'
  ClientHeight = 477
  ClientWidth = 1038
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    1038
    477)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 44
    Width = 38
    Height = 15
    Caption = 'Matter:'
  end
  object grdFeeList: TcxGrid
    Left = 8
    Top = 79
    Width = 1020
    Height = 387
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitWidth = 762
    ExplicitHeight = 324
    object tvFeeList: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnFocusedRecordChanged = tvFeeListFocusedRecordChanged
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsFees
      DataController.KeyFieldNames = 'NFEE'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object tvFeeListSelect: TcxGridDBColumn
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.OnEditValueChanged = tvFeeListSelectPropertiesEditValueChanged
        HeaderGlyph.SourceDPI = 96
        HeaderGlyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00FFFFFF00000000FF000000FF000000FFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00000000FF000000FF000000FF000000FF000000FFFFFFFF00FFFF
          FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00000000FF000000FFFFFFFF00000000FF000000FF000000FFFFFF
          FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00000000FF000000FF0000
          00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 30
        Options.Sorting = False
        VisibleForCustomization = False
        Width = 30
        OnHeaderClick = tvFeeListSelectHeaderClick
      end
      object tvFeeListNFEE: TcxGridDBColumn
        DataBinding.FieldName = 'NFEE'
        Visible = False
        Options.Focusing = False
        VisibleForCustomization = False
      end
      object tvFeeListCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        Options.Focusing = False
        Width = 72
      end
      object tvFeeListDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        Options.Focusing = False
        Width = 236
      end
      object tvFeeListMINS: TcxGridDBColumn
        Caption = 'Minutes'
        DataBinding.FieldName = 'MINS'
        Options.Focusing = False
        Width = 47
      end
      object tvFeeListAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        Options.Focusing = False
        Width = 43
      end
      object tvFeeListNMATTER: TcxGridDBColumn
        DataBinding.FieldName = 'NMATTER'
        Visible = False
        Options.Focusing = False
        VisibleForCustomization = False
      end
      object tvFeeListUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        Options.Focusing = False
        Width = 46
      end
      object tvFeeListAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Options.Focusing = False
        Width = 47
      end
      object tvFeeListTASK_AMOUNT: TcxGridDBColumn
        Caption = 'Task Amount'
        DataBinding.FieldName = 'TASK_AMOUNT'
        Options.Focusing = False
        Width = 45
      end
      object tvFeeListITEMS: TcxGridDBColumn
        Caption = 'Items'
        DataBinding.FieldName = 'ITEMS'
        Options.Focusing = False
        Width = 48
      end
      object tvFeeListVALUE: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'VALUE'
        Options.Focusing = False
        Width = 45
      end
      object tvFeeListITEM_UNIT: TcxGridDBColumn
        Caption = 'Item Units'
        DataBinding.FieldName = 'ITEM_UNIT'
        Options.Focusing = False
        Width = 46
      end
      object tvFeeListITEM_AMOUNT: TcxGridDBColumn
        Caption = 'Item Amount'
        DataBinding.FieldName = 'ITEM_AMOUNT'
        Options.Focusing = False
        Width = 45
      end
    end
    object grdFeeListLevel1: TcxGridLevel
      GridView = tvFeeList
    end
  end
  object btnedMatter: TcxButtonEdit
    Left = 65
    Top = 41
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.CharCase = ecUpperCase
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Properties.OnValidate = btnedMatterPropertiesValidate
    TabOrder = 1
    Width = 146
  end
  object rgWIPActions: TcxRadioGroup
    Left = 245
    Top = 31
    Caption = 'Action'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Write OFF'
      end
      item
        Caption = 'Undo Write OFF'
      end>
    ItemIndex = 0
    TabOrder = 6
    OnClick = rgWIPActionsClick
    Height = 41
    Width = 215
  end
  object rgBillable: TcxRadioGroup
    Left = 472
    Top = 31
    Caption = 'Billable\NonBillable'
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = 'All (Billable and Non Billable)'
      end
      item
        Caption = 'Billable'
      end
      item
        Caption = 'NonBillable'
      end>
    Properties.ShowEndEllipsis = True
    ItemIndex = 0
    TabOrder = 7
    OnClick = rgBillableClick
    Height = 41
    Width = 537
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
    Left = 388
    Top = 6
    PixelsPerInch = 96
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
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
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
    object dxBarButton2: TdxBarButton
      Caption = 'Process'
      Category = 0
      Hint = 'Process'
      Visible = ivAlways
      ImageIndex = 19
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
  end
  object qryFees: TUniQuery
    UpdatingTable = 'fee'
    KeyFields = 'nfee'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT fee.*, fee.ROWID'
      '  FROM fee'
      ' WHERE '
      'billed = :billed '
      'AND TYPE = :type '
      'AND nmemo IS NULL '
      'AND WOFF = :WOFF'
      'AND nmatter = :nmatter'
      'AND BILLTYPE = nvl(:BILLTYPE, BILLTYPE)')
    IndexFieldNames = 'nfee'
    Left = 306
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'billed'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLTYPE'
        Value = nil
      end>
  end
  object dsFees: TUniDataSource
    DataSet = qryFees
    Left = 368
    Top = 128
  end
  object sqlFeeUpdate: TUniSQL
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update fee'
      'set type = '#39'wo'#39
      ',woff = '#39'Y'#39
      ',billed = '#39'Y'#39
      ',private = '#39'Y'#39
      ',woff_date = sysdate'
      'where nfee = :nfee')
    Left = 195
    Top = 293
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nfee'
        Value = nil
      end>
  end
  object sqlFeeUndo: TUniSQL
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update fee'
      'set type = '#39'N'#39
      ',woff = '#39'N'#39
      ',billed = '#39'N'#39
      ',private = '#39'N'#39
      ',woff_date = null'
      'where nfee = :nfee')
    Left = 367
    Top = 294
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nfee'
        Value = nil
      end>
  end
end
