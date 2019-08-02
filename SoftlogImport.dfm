object frmSoftlogImport: TfrmSoftlogImport
  Left = 326
  Top = 75
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Disbursement Recovery'
  ClientHeight = 641
  ClientWidth = 872
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
    872
    641)
  PixelsPerInch = 106
  TextHeight = 15
  object cbKeepOpen: TcxCheckBox
    Left = 5
    Top = 617
    Anchors = [akLeft, akBottom]
    Caption = 'Keep form open after import?'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object pagImport: TcxPageControl
    Left = 8
    Top = 97
    Width = 856
    Height = 514
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    Properties.ActivePage = tabImport
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 510
    ClientRectLeft = 4
    ClientRectRight = 852
    ClientRectTop = 26
    object tabImport: TcxTabSheet
      Caption = 'Import'
      ImageIndex = 0
      ExplicitTop = 25
      ExplicitHeight = 485
      DesignSize = (
        848
        484)
      object Label3: TLabel
        Left = 9
        Top = 13
        Width = 86
        Height = 15
        Caption = 'Import from File'
      end
      object Label1: TLabel
        Left = 9
        Top = 69
        Width = 64
        Height = 15
        Caption = 'Sundry Date'
      end
      object btnOK: TcxButton
        Left = 678
        Top = 454
        Width = 81
        Height = 27
        Action = actDsbecovery
        Anchors = [akRight, akBottom]
        LookAndFeel.NativeStyle = True
        ModalResult = 1
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D560A00000000000036000000280000002400000012000000010020000000
          000000000000C40E0000C40E0000000000000000000000808000008080000080
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
        TabOrder = 0
        ExplicitTop = 455
      end
      object pbCancel: TcxButton
        Left = 764
        Top = 454
        Width = 80
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = 'Cancel'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D560A00000000000036000000280000002400000012000000010020000000
          000000000000C40E0000C40E0000000000000000000000808000008080000080
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
        TabOrder = 1
        OnClick = pbCancelClick
        ExplicitTop = 455
      end
      object tbFile: TcxButtonEdit
        Left = 106
        Top = 6
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
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
        TabOrder = 2
        Width = 454
      end
      object cxLabel1: TcxLabel
        Left = 9
        Top = 36
        Caption = 'Sundry Type'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object cmbSundryType: TcxLookupComboBox
        Left = 106
        Top = 35
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSundryTypes
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 211
      end
      object dptSund: TcxDateEdit
        Left = 106
        Top = 64
        Properties.ImmediatePost = True
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 122
      end
      object cbDeleteImportFile: TcxCheckBox
        Left = 269
        Top = 67
        Caption = 'Delete Import file after succesfull import.'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Transparent = True
      end
      object grdImport: TcxGrid
        Left = 3
        Top = 130
        Width = 840
        Height = 321
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 7
        Visible = False
        LookAndFeel.NativeStyle = True
        ExplicitHeight = 322
        object tvImport: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
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
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
        end
        object grdImportDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsView.NavigatorOffset = 54
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
          object grdImportDBTableView1FIELD1: TcxGridDBColumn
            DataBinding.FieldName = 'FIELD1'
            MinWidth = 22
          end
        end
        object grdImportLevel1: TcxGridLevel
          GridView = tvImport
        end
      end
      object cmbDateFormat: TcxComboBox
        Left = 701
        Top = 64
        Anchors = [akTop, akRight]
        Properties.Items.Strings = (
          'dd-mon-yyyy'
          'dd-mm-yyyy'
          'dd/mm/yyyy'
          'mm-dd-yyyy'
          'mm/dd/yyyy')
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Visible = False
        Width = 130
      end
      object cxLabel3: TcxLabel
        Left = 586
        Top = 66
        Anchors = [akTop, akRight]
        Caption = 'Import Date Format:'
        Transparent = True
        Visible = False
      end
      object pnlGrid: TPanel
        Left = 3
        Top = 91
        Width = 840
        Height = 34
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 10
        DesignSize = (
          840
          34)
        object Progress: TcxProgressBar
          Left = 5
          Top = 8
          Anchors = [akLeft, akTop, akBottom]
          Properties.BarStyle = cxbsGradient
          Properties.BeginColor = clGreen
          Properties.EndColor = clLime
          TabOrder = 0
          Width = 499
        end
        object btnSaveSettings: TcxButton
          Left = 513
          Top = 8
          Width = 89
          Height = 22
          Caption = 'Save Settings'
          Enabled = False
          LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnClick = btnSaveSettingsClick
        end
        object cxLabel2: TcxLabel
          Left = 602
          Top = 10
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = 'Delimeter:'
          Transparent = True
          Height = 18
          Width = 55
        end
        object cmbDelimeter: TcxComboBox
          Left = 661
          Top = 8
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
          TabOrder = 3
          Text = 'Comma (,)'
          Width = 82
        end
        object btnLoad: TcxButton
          Left = 755
          Top = 6
          Width = 81
          Height = 24
          Anchors = [akTop, akRight]
          Caption = 'Load File'
          LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnClick = btnLoadClick
        end
      end
    end
    object tabExport: TcxTabSheet
      Caption = 'Export'
      ImageIndex = 1
      ExplicitTop = 25
      ExplicitHeight = 485
      object rgExpCurrentMatters: TcxGroupBox
        Left = 16
        Top = 13
        Caption = 'Export Current Matters'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 115
        Width = 217
        object Label5: TLabel
          Left = 9
          Top = 55
          Width = 55
          Height = 15
          Caption = 'MarkerFile'
        end
        object Label6: TLabel
          Left = 9
          Top = 26
          Width = 30
          Height = 15
          Caption = 'Entity'
        end
        object edMarker: TcxTextEdit
          Left = 68
          Top = 51
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Text = 'delmatt.dat'
          Width = 130
        end
        object btnExport: TcxButton
          Left = 9
          Top = 81
          Width = 80
          Height = 27
          Caption = 'Export'
          LookAndFeel.NativeStyle = True
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360800000000000036000000280000002000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000000
            00FF008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080007F7F
            7FFFFFFFFFFFFFFFFFFF00808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000000
            FFFF000000FF0080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080007F7F
            7FFF7F7F7FFFFFFFFFFFFFFFFFFF008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000000
            FFFF0000FFFF000000FF00808000008080000080800000808000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F
            7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF00808000000000FF000000FF0000
            00FF000000FF000000FF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
            FFFF0000FFFF0000FFFF000000FF00808000008080007F7F7FFF7F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
            FFFF0000FFFF0000FFFF0000FFFF000000FF008080007F7F7FFFFFFFFFFF0080
            800000808000008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
            FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FF7F7F7FFFFFFFFFFF0080
            8000FFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF000000FFFFFFFFFF0000
            00FF000000FFFFFFFFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
            FFFF0000FFFF0000FFFF0000FFFF000000FF008080007F7F7FFFFFFFFFFF7F7F
            7FFF7F7F7FFF008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF00808000000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
            FFFF0000FFFF0000FFFF000000FF00808000008080007F7F7FFFFFFFFFFF0080
            8000FFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF7F7F7FFF0080800000808000000000FFFFFFFFFF0000
            00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
            FFFF0000FFFF000000FF0080800000808000008080007F7F7FFFFFFFFFFF7F7F
            7FFF7F7F7FFF00808000008080000080800000808000008080007F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF008080000080800000808000000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
            FFFF000000FF008080000080800000808000008080007F7F7FFFFFFFFFFF0080
            8000FFFFFFFFFFFFFFFF00808000FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F
            7FFF7F7F7FFF00808000008080000080800000808000000000FFFFFFFFFF0000
            00FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
            00FF00808000008080000080800000808000008080007F7F7FFFFFFFFFFF7F7F
            7FFF7F7F7FFF008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
            7FFF0080800000808000008080000080800000808000000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FF008080000080
            800000808000008080000080800000808000008080007F7F7FFFFFFFFFFF0080
            8000FFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFF008080007F7F7FFF008080000080
            80000080800000808000008080000080800000808000000000FFFFFFFFFF0000
            00FFBFBFBFFFFFFFFFFF000000FFFFFFFFFF000000FF00808000008080000080
            800000808000008080000080800000808000008080007F7F7FFFFFFFFFFF7F7F
            7FFF7F7F7FFF008080007F7F7FFFFFFFFFFF7F7F7FFF00808000008080000080
            80000080800000808000008080000080800000808000000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FF000000FF0080800000808000008080000080
            800000808000008080000080800000808000008080007F7F7FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF0080800000808000008080000080
            80000080800000808000008080000080800000808000000000FF000000FF0000
            00FF000000FF000000FF000000FF008080000080800000808000008080000080
            800000808000008080000080800000808000008080007F7F7FFF7F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000008080000080800000808000}
          OptionsImage.NumGlyphs = 2
          TabOrder = 1
          OnClick = btnExportClick
        end
        object cmbEntity: TcxComboBox
          Left = 69
          Top = 22
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 130
        end
      end
    end
  end
  object rFileType: TRadioGroup
    Left = 8
    Top = 34
    Width = 250
    Height = 48
    Caption = 'File Type'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Type 1'
      'Type 2'
      'Type 3')
    TabOrder = 6
    OnClick = RadioGroup1Click
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CLOSED,FILEID, NMATTER, NCLIENT, AUTHOR, COMPLETED FROM M' +
        'ATTER WHERE FILEID = :FILEID')
    Left = 251
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qrySundryInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRY'
      '  (ACCT, CREATED, AMOUNT, BILLED, DESCR, NMATTER, NCLIENT,'
      '   PERUNIT, UNITS, NMEMO, TYPE, PRIVATE, FILEID, TAX,TAXCODE)'
      'VALUES'
      '  (:ACCT, :CREATED, :AMOUNT, '#39'N'#39', :DESCR, :NMATTER, :NCLIENT,'
      '   :PERUNIT, :UNITS, null, :TYPE, '#39'N'#39', :FILEID, :TAX,:TAXCODE)'
      '  ')
    Left = 219
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PERUNIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end>
  end
  object qrySundryErrorInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRYERROR'
      '  (NSUNDRYERROR, FILEID, SUNDRYTYPE, UNITS, AMOUNT, '
      '  CREATED, DESCR, ERROR)'
      'VALUES'
      '  (:NSUNDRYERROR, :FILEID, :SUNDRYTYPE, :UNITS, :AMOUNT, '
      '  :CREATED, :DESCR, :ERROR)'
      '  ')
    Left = 187
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NSUNDRYERROR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRYTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ERROR'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 155
    Top = 488
  end
  object qrySundryTypes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR, TAXCODE,RATE '
      'FROM SUNDRYTYPE'
      'WHERE CODE = :TYPE')
    Left = 283
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end>
  end
  object qryGetMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '#39'"'#39' || rpad(lpad(m.fileid,6,'#39'0'#39'),14,'#39' '#39') || '#39'","'#39' ||'
      'rpad(substr(m.title,0,22),22,'#39' '#39') || '#39'","'#39' ||'
      'rpad(substr(m.shortdescr,0,22),22,'#39' '#39')  ||'#39'","B"," ","'#39' ||'
      'rpad(substr(c.code,0,8),8,'#39' '#39') || '#39'",T,""'#39' as ln'
      'from matter m,client c'
      'where m.nclient = c.nclient '
      'and closed = 0'
      'and (entity = :ENTITY or :ENTITY is null)'
      '')
    Left = 436
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object expSave: TSaveDialog
    FileName = 'currmat.dat'
    Title = 'Enter the name of the export file'
    Left = 334
    Top = 101
  end
  object tblSundryTypes: TUniTable
    TableName = 'SUNDRYTYPE'
    Connection = dmAxiom.uniInsight
    KeyFields = 'CODE'
    Left = 153
    Top = 528
  end
  object dsSundryTypes: TUniDataSource
    DataSet = tblSundryTypes
    Left = 185
    Top = 529
  end
  object ActionManager1: TActionManager
    Left = 489
    Top = 67
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
    Font.Height = -12
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
    Left = 555
    Top = 17
    PixelsPerInch = 96
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
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 34
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
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
      Caption = 'Created'
      Category = 0
      Hint = 'Created'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Matter'
      Category = 0
      Hint = 'Matter'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Amount'
      Category = 0
      Hint = 'Amount'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Units'
      Category = 0
      Hint = 'Units'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Type'
      Category = 0
      Hint = 'Type'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Description'
      Category = 0
      Hint = 'Description'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Tax'
      Category = 0
      Hint = 'Tax'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Clear Heading'
      Category = 0
      Hint = 'Clear Heading'
      Visible = ivAlways
      OnClick = dxBarButton9Click
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
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
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
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end>
    UseOwnFont = False
    Left = 195
    Top = 301
    PixelsPerInch = 96
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
  object OpenDialog1: TOpenDialog
    Title = 'Disbursement Recovery Import File'
    Left = 352
    Top = 48
  end
end
