object frmMarketReferralOther: TfrmMarketReferralOther
  Left = 191
  Top = 152
  Caption = 'Market Referral - Other'
  ClientHeight = 535
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grdReferral: TcxGrid
    Left = 0
    Top = 28
    Width = 450
    Height = 507
    Align = alClient
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    ExplicitWidth = 369
    ExplicitHeight = 342
    object grdReferralDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsReferralSource
      DataController.KeyFieldNames = 'REFERRAL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdReferralDBTableView1REFERRAL: TcxGridDBColumn
        Caption = 'Referral'
        DataBinding.FieldName = 'REFERRAL'
        Width = 363
      end
    end
    object grdReferralLevel1: TcxGridLevel
      GridView = grdReferralDBTableView1
    end
  end
  object dxManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'FileMenuCategory')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 192
    Top = 88
    DockControlHeights = (
      0
      0
      28
      0)
    object dxManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'File'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 213
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          Visible = True
          ItemName = 'dxbtnAdd'
        end
        item
          Visible = True
          ItemName = 'dxbtnDelete'
        end
        item
          Visible = True
          ItemName = 'dxbtnEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbtnSave'
        end
        item
          Visible = True
          ItemName = 'dxbtnCancel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OldName = 'File'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxManagerBar2: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'FileMenu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 312
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 110
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxSubItemFile'
        end>
      NotDocking = [dsNone]
      OldName = 'FileMenu'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxbtnDelete: TdxBarButton
      Caption = 'Delete Referral'
      Category = 0
      Hint = 'Delete Referral'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxbtnDeleteClick
    end
    object dxbtnEdit: TdxBarButton
      Caption = 'Edit Referrral'
      Category = 0
      Hint = 'Edit Referrral'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = dxbtnEditClick
    end
    object dxbtnSave: TdxBarButton
      Caption = 'Save Referral'
      Category = 0
      Hint = 'Save Referral'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxbtnSaveClick
    end
    object dxbtnCancel: TdxBarButton
      Caption = 'Cancel'
      Category = 0
      Hint = 'Cancel'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = dxbtnCancelClick
    end
    object dxbtnAdd: TdxBarButton
      Caption = 'Add Referral'
      Category = 0
      Hint = 'Add Referral'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxbtnAddClick
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton1Click
    end
    object dxSubItemFile: TdxBarSubItem
      Caption = 'File'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbtnAdd'
        end
        item
          Visible = True
          ItemName = 'dxbtnDelete'
        end
        item
          Visible = True
          ItemName = 'dxbtnEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbtnSave'
        end
        item
          Visible = True
          ItemName = 'dxbtnCancel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
  end
  object dsReferralSource: TUniDataSource
    DataSet = qryReferralSource
    Left = 296
    Top = 144
  end
  object qryReferralSource: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT referral, rowid FROM referral_source'
      'ORDER BY referral')
    Left = 296
    Top = 88
  end
end
