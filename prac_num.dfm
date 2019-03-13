object frmPracNum: TfrmPracNum
  Left = 0
  Top = 0
  Caption = 'Practice Number Maintenance'
  ClientHeight = 589
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  DesignSize = (
    946
    589)
  PixelsPerInch = 96
  TextHeight = 13
  object grdPracNumber: TcxGrid
    Left = 8
    Top = 38
    Width = 930
    Height = 545
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tvPracNumber: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPracNum
      DataController.KeyFieldNames = 'PRAC_NUM'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnMoving = False
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object tvPracNumberPRAC_NUM: TcxGridDBColumn
        Caption = 'Practice No.'
        DataBinding.FieldName = 'PRAC_NUM'
        Width = 124
      end
      object tvPracNumberDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        Width = 361
      end
      object tvPracNumberEFFECTIVE_FROM: TcxGridDBColumn
        Caption = 'Effective From'
        DataBinding.FieldName = 'EFFECTIVE_FROM'
        Width = 112
      end
      object tvPracNumberEFFECTIVE_TO: TcxGridDBColumn
        Caption = 'Effective To'
        DataBinding.FieldName = 'EFFECTIVE_TO'
        Width = 112
      end
      object tvPracNumberROWID: TcxGridDBColumn
        DataBinding.FieldName = 'ROWID'
        Visible = False
      end
    end
    object grdPracNumberLevel1: TcxGridLevel
      GridView = tvPracNumber
    end
  end
  object qryPracNum: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      'prac_num.*, prac_num.rowid'
      'from prac_num')
    CachedUpdates = True
    Left = 125
    Top = 296
  end
  object dsPracNum: TUniDataSource
    DataSet = qryPracNum
    Left = 205
    Top = 301
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
    Left = 358
    Top = 75
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 763
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Update Transaction'
      Category = 0
      Hint = 'Update Transaction'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
  end
end
