object frmSecureMatters: TfrmSecureMatters
  Left = 543
  Top = 207
  Caption = 'Secure Documents'
  ClientHeight = 594
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 71
    Width = 581
    Height = 523
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      581
      523)
    object Label4: TLabel
      Left = 6
      Top = 2
      Width = 59
      Height = 14
      Caption = 'Employees'
      Transparent = True
    end
    object Label5: TLabel
      Left = 333
      Top = 3
      Width = 116
      Height = 14
      Caption = 'Access given to these'
      Transparent = True
    end
    object lbAllEmployees: TcxListBox
      Left = 6
      Top = 17
      Width = 238
      Height = 500
      Anchors = [akLeft, akTop, akBottom]
      ItemHeight = 14
      MultiSelect = True
      Sorted = True
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnDblClick = btnLaunchSelectClick
    end
    object lbSelectedEmployees: TcxListBox
      Left = 331
      Top = 17
      Width = 243
      Height = 500
      Anchors = [akLeft, akTop, akBottom]
      ItemHeight = 14
      MultiSelect = True
      Sorted = True
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnDblClick = btnRemoveClick
    end
    object btnLaunchAll: TcxButton
      Left = 247
      Top = 35
      Width = 80
      Height = 25
      Caption = '&All'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888A888888A88888888AA88888AA8888888AAA8888AAA888888AAAA888AAAA
        88888AAAAA88AAAAA8888AAAAAA8AAAAAA888AAAAAAAAAAAAAA88AAAAAA8AAAA
        AA888AAAAA88AAAAA8888AAAA888AAAA88888AAA8888AAA888888AA88888AA88
        88888A888888A888888888888888888888888888888888888888}
      OptionsImage.Layout = blGlyphRight
      TabOrder = 2
      OnClick = btnLaunchAllClick
    end
    object btnLaunchSelect: TcxButton
      Left = 247
      Top = 63
      Width = 80
      Height = 25
      Caption = 'Add'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888A888888888888888AA88888888888888AAA8888888888888AAAA8888888
        88888AAAAA88888888888AAAAAA8888888888AAAAAAA888888888AAAAAA88888
        88888AAAAA88888888888AAAA888888888888AAA8888888888888AA888888888
        88888A8888888888888888888888888888888888888888888888}
      OptionsImage.Layout = blGlyphRight
      TabOrder = 3
      OnClick = btnLaunchSelectClick
    end
    object btnRemove: TcxButton
      Left = 247
      Top = 208
      Width = 80
      Height = 25
      Caption = '&Remove'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888898888888888888899888888888888899988888888888899
        9988888888888999998888888888999999888888888999999988888888889999
        9988888888888999998888888888889999888888888888899988888888888888
        9988888888888888898888888888888888888888888888888888}
      TabOrder = 4
      OnClick = btnRemoveClick
    end
    object btnLaunchNone: TcxButton
      Left = 247
      Top = 236
      Width = 80
      Height = 25
      Caption = 'All'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888988888898888888998888899888888999888899988888999988899
        9988889999988999998889999998999999889999999999999988899999989999
        9988889999988999998888899998889999888888999888899988888889988888
        9988888888988888898888888888888888888888888888888888}
      TabOrder = 5
      OnClick = btnLaunchNoneClick
    end
  end
  object btnMatter: TcxButtonEdit
    Left = 65
    Top = 38
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Properties.OnValidate = btnMatterPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Width = 162
  end
  object cxLabel1: TcxLabel
    Left = 26
    Top = 39
    Caption = 'Matter'
  end
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from '
      'matter where'
      'closed = 0')
    Left = 407
    Top = 24
  end
  object dsMatters: TUniDataSource
    DataSet = qryMatters
    Left = 460
    Top = 15
  end
  object qryEmployees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from employee e'
      'where active = '#39'Y'#39
      
        'and not exists (select 1 from matter_doc_security ms where ms.em' +
        'ployee_code = e.code and ms.nmatter = nvl(:nmatter, ms.nmatter))')
    Left = 57
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
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
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone, dsLeft]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 333
    Top = 26
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
      Caption = 'toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 604
      FloatTop = 354
      FloatClientWidth = 23
      FloatClientHeight = 22
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
      NotDocking = [dsNone]
      OldName = 'toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
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
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
  end
  object qryEmployeesAttached: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from employee e'
      'where active = '#39'Y'#39
      
        'and exists (select 1 from matter_doc_security ms where ms.employ' +
        'ee_code = e.code and ms.nmatter = nvl(:nmatter, ms.nmatter))')
    Left = 321
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qryUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 402
    Top = 182
  end
  object qryMatterSecurity: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM matter_security')
    Left = 574
    Top = 302
  end
  object qryMatterSecEmps: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT MS.ROWID, MS.* FROM matter_doc_security MS WHERE MS.NMATT' +
        'ER = :nmatter AND EMPLOYEE_CODE = :EmpCode')
    Left = 583
    Top = 379
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EmpCode'
        Value = nil
      end>
  end
end
