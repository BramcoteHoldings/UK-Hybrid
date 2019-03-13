object frmAdvertising: TfrmAdvertising
  Left = 0
  Top = 0
  Caption = 'Advertising Setup'
  ClientHeight = 572
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdAdvertising: TcxGrid
    Left = 0
    Top = 28
    Width = 1122
    Height = 544
    Align = alClient
    TabOrder = 4
    object tvAdvertising: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAdvertising
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object tvAdvertisingCODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CODE'
        Width = 57
      end
      object tvAdvertisingDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        Width = 601
      end
      object tvAdvertisingDATE_START: TcxGridDBColumn
        Caption = 'Start Date'
        DataBinding.FieldName = 'DATE_START'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 123
      end
      object tvAdvertisingDATE_END: TcxGridDBColumn
        Caption = 'End Date'
        DataBinding.FieldName = 'DATE_END'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 57
      end
      object tvAdvertisingCOST: TcxGridDBColumn
        Caption = 'Cost'
        DataBinding.FieldName = 'COST'
        Width = 72
      end
      object tvAdvertisingTERMS: TcxGridDBColumn
        Caption = 'Terms'
        DataBinding.FieldName = 'TERMS'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        Width = 97
      end
      object tvAdvertisingADV_MEDIA_ID: TcxGridDBColumn
        Caption = 'Media'
        DataBinding.FieldName = 'ADV_MEDIA_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsAdMedia
      end
      object tvAdvertisingADV_SUBMEDIA_ID: TcxGridDBColumn
        Caption = 'Sub Media'
        DataBinding.FieldName = 'ADV_SUBMEDIA_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsAdSubMedia
      end
      object tvAdvertisingREGION: TcxGridDBColumn
        Caption = 'Region'
        DataBinding.FieldName = 'REGION'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'REGION'
          end>
        Properties.ListSource = dsAdvRegion
        Options.Filtering = False
        Width = 56
      end
      object tvAdvertisingSUPPLIER: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'SUPPLIER'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'SUPPLIER'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsAdvSupplier
        Width = 57
      end
      object tvAdvertisingADID: TcxGridDBColumn
        DataBinding.FieldName = 'ADID'
        Visible = False
        VisibleForCustomization = False
      end
      object tvAdvertisingCREATEDDATE: TcxGridDBColumn
        DataBinding.FieldName = 'CREATEDDATE'
        Visible = False
        VisibleForCustomization = False
      end
      object tvAdvertisingCREATEDUSER: TcxGridDBColumn
        DataBinding.FieldName = 'CREATEDUSER'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object grdAdvertisingLevel1: TcxGridLevel
      GridView = tvAdvertising
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'data'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 624
    Top = 48
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
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 963
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavInsert1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavDelete1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavRefresh1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavCancel1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = navMatter
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = navMatter
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = navMatter
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = navMatter
      NavButton = dxbnLast
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777000777
        7777777777000777777777777700077777777770000000007777777000000000
        7777777000000000777777777700077777777777770007777777777777000777
        7777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      BarDBNavigator = navMatter
      NavButton = dxbnInsert
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777770000000000777777000000000
        0777777000000000077777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      BarDBNavigator = navMatter
      NavButton = dxbnDelete
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777007777700
        7777777000777000777777770007000777777777700000777777777777000777
        7777777770000077777777770007000777777770007770007777777007777700
        7777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      BarDBNavigator = navMatter
      NavButton = dxbnCancel
    end
    object dxBarDBNavRefresh1: TdxBarDBNavButton
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777778087777777777780087777
        7777777700877777777777780877777777777770077777777777777007770000
        0777777008777800077777780087800007777777000000080777777778000877
        0777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      BarDBNavigator = navMatter
      NavButton = dxbnRefresh
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777770777777
        7777777700077777777777700000777777777700070007777777770077700077
        7777777777770007777777777777700077777777777777000777777777777770
        0777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      BarDBNavigator = navMatter
      NavButton = dxbnPost
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Close'
      Category = 1
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object qryAdvertising: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'advertising')
    Active = True
    Left = 136
    Top = 64
  end
  object dsAdvertising: TUniDataSource
    DataSet = qryAdvertising
    Left = 264
    Top = 56
  end
  object navMatter: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'data'
    ConfirmDelete = False
    DataSource = dsAdvertising
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnInsert, dxbnDelete, dxbnPost, dxbnCancel, dxbnRefresh]
    Left = 811
    Top = 57
  end
  object tbAdvRegion: TUniTable
    TableName = 'adv_region'
    OrderFields = 'REGION'
    Connection = dmAxiom.uniInsight
    IndexFieldNames = 'ID'
    Left = 80
    Top = 224
  end
  object dsAdvRegion: TUniDataSource
    DataSet = tbAdvRegion
    Left = 144
    Top = 224
  end
  object tbAdvSupplier: TUniTable
    TableName = 'adv_supplier'
    OrderFields = 'SUPPLIER'
    Connection = dmAxiom.uniInsight
    IndexFieldNames = 'ID'
    Left = 80
    Top = 272
  end
  object dsAdvSupplier: TUniDataSource
    DataSet = tbAdvSupplier
    Left = 144
    Top = 272
  end
  object tbAdMedia: TUniTable
    TableName = 'adv_media'
    OrderFields = 'DESCR'
    Connection = dmAxiom.uniInsight
    Active = True
    IndexFieldNames = 'ID'
    Left = 78
    Top = 330
  end
  object dsAdMedia: TUniDataSource
    DataSet = tbAdMedia
    Left = 142
    Top = 330
  end
  object tbAdSubMedia: TUniTable
    TableName = 'adv_submedia'
    OrderFields = 'DESCR'
    Connection = dmAxiom.uniInsight
    MasterSource = dsAdMedia
    MasterFields = 'ID'
    DetailFields = 'ADV_MEDIA_ID'
    Active = True
    IndexFieldNames = 'ID'
    Left = 78
    Top = 378
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object dsAdSubMedia: TUniDataSource
    DataSet = tbAdSubMedia
    Left = 142
    Top = 378
  end
end
