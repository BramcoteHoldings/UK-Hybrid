object frmChequePresent: TfrmChequePresent
  Left = 361
  Top = 177
  Caption = 'Batch Present Cheques'
  ClientHeight = 586
  ClientWidth = 985
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    985
    586)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 70
    Width = 49
    Height = 13
    Caption = 'Presented'
  end
  object Label2: TLabel
    Left = 9
    Top = 99
    Width = 37
    Height = 13
    Caption = 'Cheque'
  end
  object lblBankName: TLabel
    Left = 128
    Top = 41
    Width = 3
    Height = 13
    ShowAccelChar = False
  end
  object Label3: TLabel
    Left = 9
    Top = 41
    Width = 23
    Height = 13
    Caption = 'Bank'
  end
  object tbCheque: TEdit
    Left = 74
    Top = 94
    Width = 95
    Height = 21
    TabOrder = 2
  end
  object cbBank: TComboBox
    Left = 74
    Top = 36
    Width = 52
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnClick = cbBankClick
  end
  object btnPresent: TBitBtn
    Left = 890
    Top = 121
    Width = 81
    Height = 27
    Anchors = [akTop, akRight]
    Caption = '&Add'
    Default = True
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000010000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
      030300FEFEFEFEFEFE00030303030303030300000000000000000303030303F9
      000300FBFFFBFFFBFF0003030303F9F9F900FBFFFBFFFBFFFB0003030303F9F9
      F900FF00FFFBFFFBFF00030303F9F9F9F9F90000FBFFFBFF00F90303F9F9F9F9
      F9F90000FF00FF00FC0003A4F9F90003F9F9F900FB0000FC0000A4F900000000
      00F9F900FF00FC000000FFFFFFFFFFFFFFF9F900FB0000FFFF00FFFFFFFFFFFF
      FFFFF9F90000FFFFFF00FEFEFEFEFEFEFEFE00A4F900FEFEFF00FFFFFFFFFFFF
      FFFFFC00A4F900FFFF00FEFEFEFEFEFEFE00FEFEFEFEF9F90000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000}
    TabOrder = 3
    OnClick = btnPresentClick
    ExplicitLeft = 900
  end
  object btnProcess: TBitBtn
    Left = 890
    Top = 548
    Width = 82
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Process'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
      00005555000FFFFFFFF05500097F0000FFF0000F9997FFFFFFF00F0F99970000
      00F00F0999997FFFFFF00F999999700000F00F997F9997FFFFF0097F0F09970F
      FFF00F0F0F09997F00000F0F0F0F997F0F050F0F0F0FF99700550F0F0F000009
      75550F0F0000000597550F000000055559970000000555555555}
    TabOrder = 5
    OnClick = btnProcessClick
    ExplicitLeft = 900
    ExplicitTop = 580
  end
  object btnRemove: TBitBtn
    Left = 9
    Top = 123
    Width = 80
    Height = 27
    Caption = '&Remove'
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333F3333333333333
      30F33333F333333337333330F333333333333337FF3333333F3333000F333333
      0F3333777F333333733333000F333330F33333777FF33337F333333000F33300
      F333333777FF337733333333000F300F33333333777FF77333333333300000F3
      33333333377777333333333333000F333333333333777FF333333333300000F3
      33333333377777F333333333000F30F33333333F7773373FF333330000F33300
      F333337777333377FF3330000F3333300F333777733333377FF3300F33333333
      00F3377333333333773333333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 4
    OnClick = btnRemoveClick
  end
  object dbgrPresent: TcxGrid
    Left = 9
    Top = 154
    Width = 963
    Height = 388
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
    LookAndFeel.NativeStyle = True
    ExplicitWidth = 973
    ExplicitHeight = 420
    object tvPresent: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPresent
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvPresentCREATED1: TcxGridDBColumn
        Caption = 'Presented'
        DataBinding.FieldName = 'CREATED'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Width = 105
      end
      object tvPresentREFNO1: TcxGridDBColumn
        Caption = 'Cheque'
        DataBinding.FieldName = 'REFNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Width = 85
      end
      object tvPresentDEBIT1: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'DEBIT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        Width = 88
      end
    end
    object dbgrPresentLevel1: TcxGridLevel
      GridView = tvPresent
    end
  end
  object dtpPresent: TEnforceCustomDateEdit
    Left = 74
    Top = 65
    EditValue = 42621.7000411806d
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.OnValidate = dtpPresentPropertiesValidate
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 1
    Width = 130
  end
  object cbKeepOpen: TCheckBox
    Left = 10
    Top = 594
    Width = 230
    Height = 19
    Anchors = [akLeft, akBottom]
    Caption = 'Keep Form open after processing?'
    TabOrder = 11
    ExplicitTop = 533
  end
  object qryPresent: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM LEDGER WHERE REPORTER = '#39'prz'#39' AND  AUTHOR = :AUTHOR')
    CachedUpdates = True
    Left = 355
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end>
  end
  object dsPresent: TDataSource
    DataSet = qryPresent
    Left = 423
    Top = 37
  end
  object qryChequeCheck: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, PRESENTED, AMOUNT FROM CHEQUE WHERE ACCT = :ACCT' +
        ' AND CHQNO = :CHQNO')
    Left = 366
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end>
  end
  object qryUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE CHEQUE '
      'SET PRESENTED = :PRESENTED, RECONDATE = :PRESENTED '
      'WHERE ACCT = :ACCT '
      '  AND CHQNO = :CHQNO')
    Left = 447
    Top = 86
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRESENTED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end>
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    AutoDockColor = False
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
    DockColor = clBtnFace
    ImageOptions.ImageListBkColor = clDefault
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    UseSystemFont = False
    Left = 545
    Top = 58
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
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Add'
      Category = 0
      Hint = 'Add'
      Visible = ivAlways
      OnClick = btnPresentClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Process'
      Category = 0
      Hint = 'Process'
      Visible = ivAlways
      OnClick = btnProcessClick
    end
  end
end
