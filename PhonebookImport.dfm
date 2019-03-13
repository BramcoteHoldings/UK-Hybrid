object frmPhonebookImport: TfrmPhonebookImport
  Left = 255
  Top = 196
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Contact Import'
  ClientHeight = 702
  ClientWidth = 1208
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1208
    702)
  PixelsPerInch = 106
  TextHeight = 15
  object Label3: TLabel
    Left = 15
    Top = 45
    Width = 86
    Height = 15
    Caption = 'Import from File'
  end
  object Label1: TLabel
    Left = 903
    Top = 42
    Width = 141
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Import Note(max 20 chars)'
  end
  object Label2: TLabel
    Left = 324
    Top = 677
    Width = 3
    Height = 15
  end
  object cbKeepOpen: TcxCheckBox
    Left = 5
    Top = 673
    Anchors = [akLeft, akBottom]
    Caption = 'Keep form open after import?'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object tbFile: TcxButtonEdit
    Left = 100
    Top = 39
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          0000000000004D1000004D1000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00777777FF777777FFFFFFFF00FFFFFF00FFFFFF005F5F5FFF6666
          66FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6666
          66FF969696FF669999FF5F5F5FFFFFFFFF00FFFFFF003399CCFF3399CCFF3399
          CCFF0066CCFF006699FF006699FF006699FF006699FF006699FF336699FF9696
          96FF3399CCFF3399CCFF4D4D4DFFFFFFFF00FFFFFF003399CCFF3399CCFFCCFF
          FFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF999999FF3399
          CCFF66CCFFFF006699FF336666FF777777FFFFFFFF003399CCFF3399CCFFCCFF
          FFFF99FFFFFF99CCCCFFCBCBCBFFC0C0C0FFB2B2B2FF90A9ADFF6699CCFF66CC
          FFFF66CCFFFF006699FF006699FF5F5F5FFFFFFFFF003399CCFF3399CCFF99CC
          FFFFCBCBCBFFEAEAEAFFF8F8F8FFFFFFCCFFFFECCCFFCCCC99FF99CCCCFF66CC
          FFFF99FFFFFF3399CCFF339999FF555555FFFFFFFF003399CCFF33CCCCFF3399
          CCFFF0CAA6FFFFFFFF00FFFFFF00F1F1F1FFFFECCCFFFFECCCFFC0C0C0FF99FF
          FFFF99FFFFFF66CCFFFF006699FF336666FF777777FF3399CCFF66CCFFFF3399
          CCFFF0CAA6FFF1F1F1FFF8F8F8FFFFFFCCFFFFECCCFFFFECCCFFCCCCCCFF99FF
          FFFF99FFFFFF66CCFFFF3399CCFF006699FF4D4D4DFF3399CCFF66CCFFFF3399
          CCFFF0CAA6FFFFFFCCFFFFFFCCFFFFECCCFFFFECCCFFFFECCCFFFFCCCCFFFFFF
          FF00FFFFFF0099CCFFFF66CCFFFF006699FF5F5F5FFF3399CCFF99FFFFFF66CC
          FFFF868686FFFFECCCFFFFECCCFFFFECCCFFF8F8F8FFDDDDDDFF6699CCFF3399
          CCFF3399CCFF3399CCFF3399CCFF006699FFFFFFFF003399CCFF99FFFFFF99FF
          FFFF99FFFFFFC0C0C0FFF0CAA6FFF0CAA6FFCBCBCBFFE3E3E3FFFFFFFF00FFFF
          FF00FFFFFF00006699FF777777FFFFFFFF00FFFFFF003399CCFFFFFFFF0099FF
          FFFF99FFFFFF99FFFFFF99FFFFFFFFFFFF003399CCFF3399CCFF3399CCFF3399
          CCFF3399CCFF0066CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003399CCFFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF003399CCFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003399
          CCFF3399CCFF3399CCFF3399CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 452
  end
  object grdImport: TcxGrid
    Left = 8
    Top = 113
    Width = 1192
    Height = 547
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object tvImport: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NavigatorOffset = 54
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 13
      Preview.LeftIndent = 21
    end
    object grdImportDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NavigatorOffset = 54
      OptionsView.IndicatorWidth = 13
      Preview.LeftIndent = 21
      object grdImportDBTableView1FIELD1: TcxGridDBColumn
        DataBinding.FieldName = 'FIELD1'
        MinWidth = 21
      end
    end
    object grdImportLevel1: TcxGridLevel
      GridView = tvImport
    end
  end
  object btnOK: TcxButton
    Left = 1030
    Top = 669
    Width = 80
    Height = 26
    Action = actDsbecovery
    Anchors = [akRight, akBottom]
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      0000000000004D1000004D100000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000FFFFFFFF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000800000FF800000FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000800000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FF008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000800000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000800000FF0080
      00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
      00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
      FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000080800000FF00FF0080800000808000008080000080
      80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000FF00FF008000FF0080
      00FF008000FF800000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000080800000FF
      00FF008000FF008000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000FF00FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 3
  end
  object pbCancel: TcxButton
    Left = 1114
    Top = 669
    Width = 81
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      0000000000004D1000004D100000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000000FFFF808080FF008080000080800000808000008080000080
      8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000FFFFFFFF00808000008080000080
      8000008080000080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
      80FF008080000080800000808000008080000080800000808000808080FFFFFF
      FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
      80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
      FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
      80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000000
      FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
      8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
      800000808000008080000080800000808000000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
      80FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      800000808000008080000000FFFF000080FF0080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
      8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF0000FFFF0080800000808000008080000080800000808000008080000080
      8000808080FF808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 4
    OnClick = pbCancelClick
  end
  object cbDeleteImportFile: TcxCheckBox
    Left = 560
    Top = 39
    Caption = 'Delete Import file after succesfull import.'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object edImportNote: TEdit
    Left = 1049
    Top = 39
    Width = 149
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 10
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 73
    Width = 1200
    Height = 34
    BevelOuter = bvNone
    TabOrder = 11
    DesignSize = (
      1200
      34)
    object btnLoad: TcxButton
      Left = 1108
      Top = 3
      Width = 80
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Load File'
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = btnLoadClick
    end
    object btnSaveSettings: TcxButton
      Left = 510
      Top = 6
      Width = 89
      Height = 22
      Caption = 'Save Settings'
      Enabled = False
      LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnClick = btnSaveSettingsClick
    end
    object cmbDelimeter: TcxComboBox
      Left = 1015
      Top = 5
      Anchors = [akTop, akRight]
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Comma (,)'
        'TAB'
        'Semicolon (;)')
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Text = 'Comma (,)'
      Width = 81
    end
    object cxLabel2: TcxLabel
      Left = 956
      Top = 7
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Delimeter:'
      Transparent = True
      Height = 18
      Width = 54
    end
    object Progress: TcxProgressBar
      Left = 5
      Top = 5
      Anchors = [akLeft, akTop, akBottom]
      Properties.BarStyle = cxbsGradient
      Properties.BeginColor = clGreen
      Properties.EndColor = clLime
      TabOrder = 4
      Width = 496
    end
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 155
    Top = 488
  end
  object expSave: TSaveDialog
    FileName = 'currmat.dat'
    Title = 'Enter the name of the export file'
    Left = 334
    Top = 101
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    LookAndFeel.NativeStyle = True
    Options.ShowNonFolders = True
    Root.BrowseFolder = bfDrives
    Title = 'Contact File Import'
    Left = 415
    Top = 1
  end
  object ActionManager1: TActionManager
    Left = 468
    Top = 109
    StyleName = 'XP Style'
    object actDsbecovery: TAction
      Caption = 'Import'
      OnExecute = actDsbecoveryExecute
      OnUpdate = actDsbecoveryUpdate
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'ColumnsList'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 564
    Top = 138
    PixelsPerInch = 106
    DockControlHeights = (
      0
      0
      30
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 34
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OldName = 'Main'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Search'
      Category = 0
      Hint = 'Search'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Title'
      Category = 0
      Hint = 'Title'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Address'
      Category = 0
      Hint = 'Address'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Suburb'
      Category = 0
      Hint = 'Suburb'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'State'
      Category = 0
      Hint = 'State'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Postcode'
      Category = 0
      Hint = 'Postcode'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton8: TdxBarButton
      Caption = 'WorkPhone'
      Category = 0
      Hint = 'WorkPhone'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Mobile'
      Category = 0
      Hint = 'Mobile'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Email'
      Category = 0
      Hint = 'Email'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Name'
      Category = 0
      Hint = 'Name'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton12: TdxBarButton
      Caption = 'GivenNames'
      Category = 0
      Hint = 'GivenNames'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton13: TdxBarButton
      Caption = 'LastName'
      Category = 0
      Hint = 'LastName'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton14: TdxBarButton
      Caption = 'Website'
      Category = 0
      Hint = 'Website'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Code'
      Category = 0
      Hint = 'Code'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton16: TdxBarButton
      Caption = 'Fax'
      Category = 0
      Hint = 'Fax'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton17: TdxBarButton
      Caption = 'Gender'
      Category = 0
      Hint = 'Gender'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton18: TdxBarButton
      Caption = 'IndustryCode'
      Category = 0
      Hint = 'IndustryCode'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton19: TdxBarButton
      Caption = 'DX'
      Category = 0
      Hint = 'DX'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton20: TdxBarButton
      Caption = 'DXLoc'
      Category = 0
      Hint = 'DXLoc'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton21: TdxBarButton
      Caption = 'PostalAddress'
      Category = 0
      Hint = 'PostalAddress'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton22: TdxBarButton
      Caption = 'PostalSuburb'
      Category = 0
      Hint = 'PostalSuburb'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton23: TdxBarButton
      Caption = 'PostalState'
      Category = 0
      Hint = 'PostalState'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton24: TdxBarButton
      Caption = 'PostalPostcode'
      Category = 0
      Hint = 'PostalPostcode'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        Visible = True
        ItemName = 'dxBarButton23'
      end
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end>
    UseOwnFont = False
    Left = 194
    Top = 301
    PixelsPerInch = 106
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdImport
    PopupMenus = <
      item
        GridView = tvImport
        HitTypes = [gvhtColumnHeader]
        Index = 0
        PopupMenu = dxBarPopupMenu1
      end>
    UseBuiltInPopupMenus = False
    OnPopup = cxGridPopupMenu1Popup
    Left = 354
    Top = 258
  end
  object qryPhonebookInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO PHONEBOOK'
      
        '  (SEARCH, TITLE, ADDRESS, SUBURB, STATE, POSTCODE, WORKPHONE, N' +
        'AME, EMAIL, MOBILE,'
      
        '  GIVENNAMES, LASTNAME, GENDER, IMPORT_NOTE, INDUSTRYCODE, DX, D' +
        'XLOC, POSTALADDRESS,'
      '  POSTALSUBURB, POSTALSTATE, POSTALPOSTCODE)'
      'VALUES'
      
        '  (:SEARCH, :TITLE, :ADDRESS, :SUBURB, :STATE, :POSTCODE, :WORKP' +
        'HONE, :NAME, :EMAIL,'
      
        '  :MOBILE, :GIVENNAMES, :LASTNAME, :GENDER, :IMPORT_NOTE, :INDUS' +
        'TRYCODE, :DX, :DXLOC,'
      '  :POSTALADDRESS, :POSTALSUBURB, :POSTALSTATE, :POSTALPOSTCODE)')
    Left = 294
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SEARCH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TITLE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ADDRESS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUBURB'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'STATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'POSTCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WORKPHONE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MOBILE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GIVENNAMES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LASTNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GENDER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPORT_NOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'INDUSTRYCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DXLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'POSTALADDRESS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'POSTALSUBURB'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'POSTALSTATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'POSTALPOSTCODE'
        Value = nil
      end>
  end
end
