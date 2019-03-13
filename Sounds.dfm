object frmSounds: TfrmSounds
  Left = 329
  Top = 226
  Caption = 'Sounds'
  ClientHeight = 111
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 38
    Width = 62
    Height = 13
    Caption = 'Sound Event'
  end
  object dbtbCode: TDBText
    Left = 80
    Top = 38
    Width = 65
    Height = 17
    DataField = 'CODE'
    DataSource = dsSounds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 62
    Width = 41
    Height = 13
    Caption = 'File Path'
  end
  object dbtbPath: TDBEdit
    Left = 80
    Top = 62
    Width = 209
    Height = 21
    DataField = 'PATH'
    DataSource = dsSounds
    TabOrder = 0
  end
  object dbnavSounds: TDBNavigator
    Left = 8
    Top = 86
    Width = 232
    Height = 25
    DataSource = dsSounds
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
    Kind = dbnHorizontal
    TabOrder = 1
  end
  object btnOpen: TBitBtn
    Left = 296
    Top = 62
    Width = 81
    Height = 22
    Caption = 'Open'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555755
      5558555555577F755585555557787F75585555557887FFF7855555578BF7FFF8
      55557778B8B7FF8755887B7BFBF7FFF788857F7FBFB70FF755557B7BFBF700F8
      88887F7FBFB70FF75555777FFFF7FFF788855557BFF7FF87558855557BF7FFF8
      55555555577B7F758555555555577F7558555555555557555585}
    TabOrder = 2
    OnClick = btnOpenClick
  end
  object qrySounds: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT S.ROWID, S.* FROM SOUNDS S WHERE S.USERID = :P_UserID ORD' +
        'ER BY S.CODE')
    Left = 216
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_UserID'
      end>
  end
  object dsSounds: TUniDataSource
    DataSet = qrySounds
    Left = 248
    Top = 30
  end
  object dlgOpen: TOpenDialog
    Left = 280
    Top = 30
  end
  object qryInsertSounds: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SOUNDS '
      '  (CODE, USERID, PATH) '
      '  SELECT CODE, :USERID, PATH FROM SOUNDS WHERE USERID IS NULL')
    Left = 184
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USERID'
      end>
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
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 321
    Top = 91
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 83
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Save && Close'
      Category = 0
      Hint = 'Save & Close'
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
      OnClick = dxBarButton2Click
    end
  end
end
