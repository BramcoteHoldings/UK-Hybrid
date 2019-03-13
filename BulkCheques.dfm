object frmBulkCheques: TfrmBulkCheques
  Left = 624
  Top = 320
  Caption = 'Bulk Cheques'
  ClientHeight = 529
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    814
    529)
  PixelsPerInch = 96
  TextHeight = 15
  object grdBulkCheques: TcxGrid
    Left = 8
    Top = 42
    Width = 799
    Height = 456
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object tvBulkCheques: TcxGridDBTableView
      PopupMenu = popMenu
      OnDblClick = tvBulkChequesDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvBulkChequesAMOUNT
        end
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'TAX'
          Column = tvBulkChequesTAX
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      object tvBulkChequesREFNO: TcxGridDBColumn
        Caption = 'File'
        DataBinding.FieldName = 'NCHEQUE'
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 119
      end
      object tvBulkChequesPAYEE: TcxGridDBColumn
        Caption = 'Payee'
        DataBinding.FieldName = 'PAYEE'
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 270
      end
      object tvBulkChequesAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 122
      end
      object tvBulkChequesTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Focusing = False
        Options.Moving = False
        Width = 130
      end
      object tvBulkChequesPROCESS: TcxGridDBColumn
        Caption = 'Process'
        DataBinding.FieldName = 'PROCESS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 79
        OnHeaderClick = tvBulkChequesPROCESSHeaderClick
      end
      object tvBulkChequesNCHEQREQ_LIST: TcxGridDBColumn
        DataBinding.FieldName = 'NCHEQREQ_LIST'
        Visible = False
        Width = 50
      end
      object tvBulkChequesDBUNIQUEID: TcxGridDBColumn
        DataBinding.FieldName = 'CHEQUE_GROUP_ID'
        Visible = False
      end
    end
    object lvBulkCheques: TcxGridLevel
      GridView = tvBulkCheques
    end
  end
  object pbOk: TcxButton
    Left = 633
    Top = 500
    Width = 81
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333377F3333333333000033334224333333333333
      337337F3333333330000333422224333333333333733337F3333333300003342
      222224333333333373333337F3333333000034222A22224333333337F337F333
      7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
      33333337F73337F337F33333000033A33333A222433333337333337F337F3333
      0000333333333A222433333333333337F337F33300003333333333A222433333
      333333337F337F33000033333333333A222433333333333337F337F300003333
      33333333A222433333333333337F337F00003333333333333A22433333333333
      3337F37F000033333333333333A223333333333333337F730000333333333333
      333A333333333333333337330000333333333333333333333333333333333333
      0000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 1
    OnClick = pbOkClick
  end
  object pbCancel: TcxButton
    Left = 726
    Top = 500
    Width = 81
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 2
  end
  object cmbPrinter: TcxComboBox
    Left = 53
    Top = 11
    AutoSize = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Height = 22
    Width = 187
  end
  object lblPrinter: TcxLabel
    Left = 5
    Top = 5
    AutoSize = False
    Caption = 'Default Printer:'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Properties.WordWrap = True
    Transparent = True
    Height = 34
    Width = 45
  end
  object cxLabel2: TcxLabel
    Left = 420
    Top = 13
    AutoSize = False
    Caption = 'Authorized by:'
    Transparent = True
    Height = 18
    Width = 89
  end
  object cbAuthBy: TcxLookupComboBox
    Left = 513
    Top = 11
    AutoSize = False
    Properties.DropDownRows = 25
    Properties.DropDownWidth = 300
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Width = 180
        FieldName = 'NAME'
      end
      item
        Width = 80
        FieldName = 'CODE'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsEmployee
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Height = 22
    Width = 183
  end
  object cbPrint: TcxCheckBox
    Left = 9
    Top = 526
    Anchors = [akLeft, akBottom]
    Caption = 'Print selected cheque(s)'
    Properties.NullStyle = nssUnchecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Visible = False
    Width = 160
  end
  object pbSelect: TcxButton
    Left = 706
    Top = 10
    Width = 101
    Height = 24
    Caption = 'Select All'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000FFFFF0FFFFFFFFF
      0FFFFF0FFF0FFFFF0FFFFF0FF000FFFF0FFFFF0F00000FFF0FFFFF0F00F000FF
      0FFFFF0F0FFF000F0FFFFF0FFFFFF00F0FFFFF0FFFFFFF0F0FFFFF0FFFFFFFFF
      0FFFFF00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = pbSelectClick
  end
  object lblEFTBank: TcxLabel
    Left = 12
    Top = 10
    Caption = 'Bank'
    Transparent = True
  end
  object cmbEFTBank: TcxLookupComboBox
    Left = 51
    Top = 10
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'ACCT'
    Properties.ListColumns = <
      item
        Width = 230
        FieldName = 'NAME'
      end
      item
        Width = 50
        FieldName = 'BANK_ABBREV'
      end
      item
        Width = 50
        FieldName = 'ACCT'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsEFTBank
    Properties.OnCloseUp = cmbEFTBankPropertiesCloseUp
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 10
    Width = 223
  end
  object teRefNo: TcxTextEdit
    Left = 348
    Top = 11
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 15
    Width = 67
  end
  object lblReference: TcxLabel
    Left = 280
    Top = 13
    Caption = 'Reference:'
    Transparent = True
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE WHERE ACTIVE = '#39'Y'#39' ORDER BY CODE')
    Left = 428
    Top = 365
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 477
    Top = 364
  end
  object bmBulkCheque: TdxBarManager
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
    ImageOptions.LargeImages = dmAxiom.ilstToolbar
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 597
    Top = 100
    DockControlHeights = (
      0
      0
      0
      0)
    object bbSelectAll: TdxBarButton
      Caption = 'Select All'
      Category = 0
      Hint = 'Select All'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000FFFFF0FFFFFFFFF
        0FFFFF0FFF0FFFFF0FFFFF0FF000FFFF0FFFFF0F00000FFF0FFFFF0F00F000FF
        0FFFFF0F0FFF000F0FFFFF0FFFFFF00F0FFFFF0FFFFFFF0F0FFFFF0FFFFFFFFF
        0FFFFF00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = bbSelectAllClick
    end
  end
  object popMenu: TdxBarPopupMenu
    BarManager = bmBulkCheque
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbSelectAll'
      end>
    UseOwnFont = False
    Left = 541
    Top = 107
  end
  object qryEFTBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from bank where EFT_TRANS= '#39'Y'#39)
    Left = 201
    Top = 384
  end
  object dsEFTBank: TUniDataSource
    DataSet = qryEFTBank
    Left = 234
    Top = 384
  end
end
