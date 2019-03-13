object frmExpenseTemplateSelection: TfrmExpenseTemplateSelection
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Expense Template Selection'
  ClientHeight = 474
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    557
    474)
  PixelsPerInch = 96
  TextHeight = 13
  object grdExpenseTemplate: TcxGrid
    Left = 8
    Top = 8
    Width = 533
    Height = 427
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tvExpenseTemplate: TcxGridDBTableView
      OnDblClick = tvExpenseTemplateDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsTemplates
      DataController.KeyFieldNames = 'CODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      object tvExpenseTemplateCODE: TcxGridDBColumn
        Caption = 'Template Code'
        DataBinding.FieldName = 'CODE'
        Width = 45
      end
      object tvExpenseTemplateDESCR: TcxGridDBColumn
        Caption = 'Template Description'
        DataBinding.FieldName = 'DESCR'
        Options.FilteringFilteredItemsList = False
        Width = 387
      end
      object tvExpenseTemplateTOTAL: TcxGridDBColumn
        Caption = 'Template Total'
        DataBinding.FieldName = 'TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 68
      end
    end
    object tvExpenseItems: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsExpItems
      DataController.DetailKeyFieldNames = 'EXP_CODE'
      DataController.KeyFieldNames = 'EXP_CODE'
      DataController.MasterKeyFieldNames = 'CODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'RATE'
          Column = tvExpenseItemsRATE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvExpenseItemsCODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CODE'
      end
      object tvExpenseItemsDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
      end
      object tvExpenseItemsRATE: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tvExpenseItemsEXP_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'EXP_CODE'
        Visible = False
      end
    end
    object lvExpenseTemplate: TcxGridLevel
      GridView = tvExpenseTemplate
      object lvExpenseItems: TcxGridLevel
        GridView = tvExpenseItems
      end
    end
  end
  object btnOK: TcxButton
    Left = 375
    Top = 441
    Width = 80
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000FF000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000FF000000FF000000FF000000FF000000FF000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000FF000000FF000000FF000000FF000000FF000000FF000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080
      000000FF000000FF000000000000FF00FF0000FF000000FF000000FF00000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF00000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
      000000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000080000000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000080000000FF000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton
    Left = 461
    Top = 441
    Width = 81
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E6E6E619B2B2B24D9292926D8D8D8D729B9B
      9B64C7C7C738F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFCFC0391919F6E2B2B6BD4050563FA000065FF000060FF0000
      4FFF16163DE96262629DD4D4D42BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4F4F40B6060909F000084FF00008EFF00008EFF00008FFF00008CFF0000
      88FF000081FF010154FF34343CCBC2C2C23DFFFFFF00FFFFFF00FFFFFF00FDFD
      FD025A5A9AA5000096FF000097FF00009BFF00009FFF0000A0FF00009DFF0000
      97FF00008FFF000088FF000062FF36363EC9D6D6D629FFFFFF00FFFFFF008F8F
      B7700101A3FF08089EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848
      B8FFB7B7E3FF2727A5FF00008CFF010152FF7171718EFFFFFF00DDDDEF222828
      ABD90000ABFF2828A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7
      ECFFFFFFF7FF5E5EB7FF00009AFF020287FF2E2E45D1FFFFFF009797E5690606
      B0FD0303B9FF0000C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFF
      F1FF7575B9FF0606B1FF0101ABFF0202A0FF12135DEDFFFFFF005859D0AB0808
      BBFF0707C8FF0505D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575
      C9FF0000BEFF0101C3FF0303B8FF0303ACFF0F0F6EF2FFFFFF004B4BD2BC0C0C
      C9FF0D0DD8FF0B0BDCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858
      DBFF0000CAFF0303CBFF0606C5FF0606B8FF111178F1FFFFFF007272E6931414
      D8FF1717EAFF0B0BF1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFE
      FFFF6363E5FF0303D7FF0A0ACFFF0A0AC3FF21217FE2FFFFFF00BBBBF7452525
      E5F22222FBFF3F3FE9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3
      D6FFFFFFFEFF6161E5FF0808DBFF0F0FCAFF4F4F85B2FFFFFF00F3F3FD0C5E5E
      F1AF3232FFFF5252EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252
      B4FFADADB0FF4D4DE1FF1818EDFF1818B1F5B6B6B949FFFFFF00FFFFFF00D6D6
      FC293E3EFBE75353FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838
      FCFF4242EBFF3232FFFF1F1FE9FF7E7EA784FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C2C2FC404848FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767
      FFFF5151FFFF3030FBFD7C7CB488FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCDCFE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353
      FFFF5151F2D2A6A6CD5CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAA
      FD5DE1E1F81EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object qryTemplates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   expense_templates.code, expense_templates.descr, SUM (r' +
        'ate) AS total'
      '    FROM expense_templates, expense_template_link, sundrytype'
      
        '   WHERE expense_templates.code = expense_template_link.exp_temp' +
        'late_code'
      '     AND expense_template_link.expense_code = sundrytype.code'
      'GROUP BY expense_templates.code, expense_templates.descr'
      'order by code')
    Active = True
    Left = 97
    Top = 103
  end
  object dsTemplates: TUniDataSource
    DataSet = qryTemplates
    Left = 165
    Top = 100
  end
  object qryExpItems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   expense_templates.code AS exp_code, sundrytype.code,'
      '         sundrytype.descr, rate'
      '    FROM expense_templates, expense_template_link, sundrytype'
      
        '   WHERE expense_templates.code = expense_template_link.exp_temp' +
        'late_code'
      '     AND expense_template_link.expense_code = sundrytype.code'
      'ORDER BY 1')
    Active = True
    Left = 98
    Top = 171
  end
  object dsExpItems: TUniDataSource
    DataSet = qryExpItems
    Left = 166
    Top = 168
  end
end
