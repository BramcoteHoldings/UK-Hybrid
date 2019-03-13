object frmForcePay: TfrmForcePay
  Left = 196
  Top = 211
  HelpContext = 99
  BorderIcons = [biSystemMenu]
  Caption = 'Cheque Req Force Pay'
  ClientHeight = 304
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    627
    304)
  PixelsPerInch = 96
  TextHeight = 14
  object dbgrdCheqReqs: TcxGrid
    Left = 6
    Top = 13
    Width = 613
    Height = 255
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    object tvCheqReqs: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCheqReqs
      DataController.Filter.MaxValueListCount = 1000
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnPopup.MaxDropDownItemCount = 12
      OptionsBehavior.PullFocusing = True
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      Preview.AutoHeight = False
      Preview.MaxLineCount = 2
      Styles.Footer = cxStyle2
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle1
      object tvCheqReqsREQDATE: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'REQDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DateOnError = deToday
        Properties.InputKind = ikRegExpr
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 83
      end
      object tvCheqReqsDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 227
      end
      object tvCheqReqsPAYEE: TcxGridDBColumn
        Caption = 'Payee'
        DataBinding.FieldName = 'PAYEE'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 145
      end
      object tvCheqReqsAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 82
      end
      object tvCheqReqsTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 56
      end
      object tvCheqReqsTAXCODE: TcxGridDBColumn
        Caption = 'Tax Code'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 63
      end
      object tvCheqReqsFORCEPAY: TcxGridDBColumn
        Caption = 'Force Pay'
        DataBinding.FieldName = 'FORCEPAY'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taLeftJustify
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueGrayed = ''
        Properties.ValueUnchecked = '0'
        Properties.OnChange = dbgrdCheqReqsFORCEPAYChange
        MinWidth = 56
        Options.Filtering = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 56
      end
    end
    object dbgrdCheqReqsLevel1: TcxGridLevel
      GridView = tvCheqReqs
    end
  end
  object btnOk: TcxButton
    Left = 454
    Top = 274
    Width = 78
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Enabled = False
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
    OnClick = btnOkClick
  end
  object btnCancel: TcxButton
    Left = 541
    Top = 274
    Width = 78
    Height = 25
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
    OnClick = btnCancelClick
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 22
    Top = 203
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
  end
  object qryCheqReqs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      '  payee, descr, reqdate, taxcode, amount, tax, forcepay, rowid'
      'from'
      '  cheqreq'
      'where'
      '  nmemo = :BillNo')
    CachedUpdates = True
    Left = 139
    Top = 81
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BillNo'
        Value = nil
      end>
  end
  object dsCheqReqs: TUniDataSource
    DataSet = qryCheqReqs
    Left = 188
    Top = 79
  end
end
