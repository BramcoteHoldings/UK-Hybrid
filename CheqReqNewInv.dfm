object frmCheqReqNew: TfrmCheqReqNew
  Left = 529
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cheque Requisition'
  ClientHeight = 499
  ClientWidth = 385
  Color = clBtnFace
  Constraints.MinHeight = 514
  Constraints.MinWidth = 393
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefaultPosOnly
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 59
    Width = 33
    Height = 13
    Caption = 'Matter:'
  end
  object Label2: TLabel
    Left = 8
    Top = 9
    Width = 72
    Height = 13
    Caption = '&Date Required:'
  end
  object Label3: TLabel
    Left = 8
    Top = 35
    Width = 71
    Height = 13
    Caption = 'Bank Account:'
  end
  object Label4: TLabel
    Left = 8
    Top = 205
    Width = 40
    Height = 13
    Caption = 'Reason:'
  end
  object Label8: TLabel
    Left = 186
    Top = 229
    Width = 39
    Height = 13
    Caption = '&Amount:'
  end
  object lblTypeDesc: TLabel
    Left = 106
    Top = 151
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 8
    Top = 157
    Width = 33
    Height = 13
    Caption = 'Pa&yee:'
  end
  object lblClient: TLabel
    Left = 213
    Top = 59
    Width = 158
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object Label6: TLabel
    Left = 8
    Top = 270
    Width = 70
    Height = 13
    Caption = 'Requested By:'
  end
  object lblAuthorName: TLabel
    Left = 83
    Top = 258
    Width = 3
    Height = 13
  end
  object lblLgr: TLabel
    Left = 8
    Top = 131
    Width = 36
    Height = 13
    Caption = 'Ledger:'
  end
  object lblLgrDesc: TLabel
    Left = 212
    Top = 131
    Width = 158
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object Label9: TLabel
    Left = 8
    Top = 312
    Width = 31
    Height = 13
    Caption = '&Notes:'
  end
  object lblInvoiceMsg: TLabel
    Left = 223
    Top = 9
    Width = 13
    Height = 13
    Caption = 'Bill'
    Visible = False
  end
  object lblInvoice: TLabel
    Left = 239
    Top = 12
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblMatterDescr: TLabel
    Left = 106
    Top = 81
    Width = 264
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object lblTaxType: TLabel
    Left = 8
    Top = 229
    Width = 44
    Height = 13
    Caption = 'Tax type:'
  end
  object Label7: TLabel
    Left = 8
    Top = 295
    Width = 71
    Height = 13
    Caption = 'Expense Type:'
  end
  object lblTotal: TLabel
    Left = 9
    Top = 248
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblBillNo: TLabel
    Left = 8
    Top = 105
    Width = 33
    Height = 13
    Caption = 'Bill No:'
  end
  object lblNmemo: TLabel
    Left = 318
    Top = 294
    Width = 3
    Height = 13
  end
  object Label10: TLabel
    Left = 8
    Top = 182
    Width = 94
    Height = 17
    AutoSize = False
    Caption = 'Creditor Inv No:'
    WordWrap = True
  end
  object tbFile: TcxButtonEdit
    Left = 106
    Top = 55
    Width = 101
    Height = 24
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = tbFilePropertiesButtonClick
    Properties.OnValidate = tbFilePropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    OnExit = tbFileExit
  end
  object edtBillRef: TcxButtonEdit
    Left = 106
    Top = 100
    Width = 101
    Height = 24
    BeepOnEnter = False
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = edtBillRefPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    OnClick = btnBillClick
  end
  object tbLedger: TcxButtonEdit
    Left = 106
    Top = 126
    Width = 101
    Height = 24
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          B6040000424DB604000000000000B60000002800000010000000100000000100
          2000000000000004000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
          0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0000000000000000000000000000000000000000000C0C0C00000000000FFFF
          FF00000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00000000000000000000000000C0C0C00000000000FFFF
          FF00000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00000000000000000000000000C0C0C000000000000000
          00000000000000000000000000000000000000000000C0C0C000000000000000
          00000000000000000000000000000000000000000000C0C0C000000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000C0C0C000000000000000
          0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
          FF000000000000000000000000000000000000000000C0C0C000000000000000
          0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
          FF000000000000000000000000000000000000000000C0C0C000C0C0C0000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00000000000000000000000000C0C0C00000000000FFFF
          FF00000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0000000000000000000000000000000000000000000C0C0C000000000000000
          0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
          00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF0000000000C0C0C000C0C0C000C0C0C0000000
          0000FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
          00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = tbLedgerPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    OnExit = tbLedgerExit
  end
  object cmbBank: TcxLookupComboBox
    Left = 106
    Top = 30
    Width = 268
    Height = 21
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 10
    Properties.DropDownWidth = 200
    Properties.KeyFieldNames = 'ACCT'
    Properties.ListColumns = <
      item
        Width = 150
        FieldName = 'NAME'
      end
      item
        Width = 50
        FieldName = 'ACCT'
      end>
    Properties.ListSource = dmAxiom.dsEntityBank
    Properties.OnChange = cbBankChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object tbDesc: TcxTextEdit
    Left = 106
    Top = 201
    Width = 268
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    OnExit = tbPayeeExit
    OnKeyPress = tbPayeeKeyPress
  end
  object tbPayee: TcxButtonEdit
    Left = 106
    Top = 152
    Width = 268
    Height = 24
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          B6040000424DB604000000000000B60000002800000010000000100000000100
          2000000000000004000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
          0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0000000000000000000000000000000000000000000C0C0C00000000000FFFF
          FF00000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00000000000000000000000000C0C0C00000000000FFFF
          FF00000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00000000000000000000000000C0C0C000000000000000
          00000000000000000000000000000000000000000000C0C0C000000000000000
          00000000000000000000000000000000000000000000C0C0C000000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000C0C0C000000000000000
          0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
          FF000000000000000000000000000000000000000000C0C0C000000000000000
          0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
          FF000000000000000000000000000000000000000000C0C0C000C0C0C0000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00000000000000000000000000C0C0C00000000000FFFF
          FF00000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0000000000000000000000000000000000000000000C0C0C000000000000000
          0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
          00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF0000000000C0C0C000C0C0C000C0C0C0000000
          0000FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
          00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = tbPayeePropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    OnExit = tbPayeeExit
    OnKeyPress = tbPayeeKeyPress
  end
  object neAmount: TcxCurrencyEdit
    Left = 235
    Top = 225
    Width = 76
    Height = 21
    Properties.OnChange = neAmountChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 8
    OnExit = neAmountExit
  end
  object neTax: TcxCurrencyEdit
    Left = 312
    Top = 225
    Width = 61
    Height = 21
    Properties.OnChange = neTaxChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cbTaxType: TcxComboBox
    Left = 106
    Top = 225
    Width = 76
    Height = 21
    Properties.OnChange = cbTaxTypeChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 7
    OnClick = cbTaxTypeClick
  end
  object dfSlipNo: TcxTextEdit
    Left = 106
    Top = 177
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cmbAuthor: TcxLookupComboBox
    Left = 106
    Top = 266
    Width = 267
    Height = 21
    Properties.ClearKey = 46
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 150
        FieldName = 'NAME'
      end
      item
        Caption = 'Code'
        FieldName = 'CODE'
      end>
    Properties.ListSource = dmAxiom.dsEmplyeeList
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cmbExpenseType: TcxLookupComboBox
    Left = 106
    Top = 291
    Width = 267
    Height = 21
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 10
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'DESCR'
      end
      item
        FieldName = 'CODE'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsSundryType
    Properties.OnChange = cbExpenseTypeChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object chkFunds: TcxCheckBox
    Left = 5
    Top = 376
    Width = 263
    Height = 21
    Caption = '&Wait until Funds Received? (Anticipated Creditor)'
    ParentColor = False
    Style.Color = clNone
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 13
    OnClick = chkFundsClick
  end
  object chkInvoiceSupplied: TcxCheckBox
    Left = 5
    Top = 396
    Width = 203
    Height = 24
    AutoSize = False
    Caption = '&Supplier Invoice Received'
    ParentColor = False
    Style.Color = clNone
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object chkPrint: TcxCheckBox
    Left = 5
    Top = 416
    Width = 121
    Height = 24
    AutoSize = False
    Caption = '&Print'
    ParentColor = False
    Style.Color = clNone
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object chkNoExit: TcxCheckBox
    Left = 5
    Top = 437
    Width = 221
    Height = 24
    AutoSize = False
    Caption = '&Keep form open after posting?'
    ParentColor = False
    Style.Color = clNone
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 16
  end
  object chkBill: TcxCheckBox
    Left = 269
    Top = 416
    Width = 106
    Height = 24
    AutoSize = False
    Caption = 'To be Billed?'
    ParentColor = False
    Properties.Alignment = taRightJustify
    Style.Color = clNone
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 18
    OnClick = chkBillClick
  end
  object chkUrgent: TcxCheckBox
    Left = 286
    Top = 437
    Width = 89
    Height = 24
    AutoSize = False
    Caption = 'Urgent'
    ParentColor = False
    Properties.Alignment = taRightJustify
    Style.Color = clNone
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 19
  end
  object chkHeld: TcxCheckBox
    Left = 275
    Top = 396
    Width = 100
    Height = 24
    AutoSize = False
    Caption = 'To be Held?'
    ParentColor = False
    Properties.Alignment = taRightJustify
    Style.Color = clNone
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 17
  end
  object btnSave: TcxButton
    Left = 212
    Top = 468
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 21
    OnClick = btnSaveClick
    Glyph.Data = {
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
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object btnCancel: TcxButton
    Left = 296
    Top = 468
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 20
    OnClick = btnCancelClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033337733333333333333333F333333333333
      0000333911733333973333333377F333333F3333000033391117333911733333
      37F37F333F77F33300003339111173911117333337F337F3F7337F3300003333
      911117111117333337F3337F733337F3000033333911111111733333337F3337
      3333F7330000333333911111173333333337F333333F73330000333333311111
      7333333333337F3333373333000033333339111173333333333337F333733333
      00003333339111117333333333333733337F3333000033333911171117333333
      33337333337F333300003333911173911173333333373337F337F33300003333
      9117333911173333337F33737F337F33000033333913333391113333337FF733
      37F337F300003333333333333919333333377333337FFF730000333333333333
      3333333333333333333777330000333333333333333333333333333333333333
      0000}
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object mmoNotes: TcxMemo
    Left = 8
    Top = 327
    Width = 366
    Height = 43
    Lines.Strings = (
      '')
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 12
    OnExit = tbPayeeExit
    OnKeyPress = tbPayeeKeyPress
  end
  object dtpReqDate: TEnforceCustomDateEdit
    Left = 106
    Top = 5
    Width = 106
    Height = 21
    EditValue = 38833.6179266088d
    Properties.ShowTime = False
    Properties.OnCloseUp = dtpReqDatePropertiesCloseUp
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 22
    AllowForwardDating = True
  end
    object dsCheqReq: TUniDataSource
    DataSet = qryCheqReq
    Left = 316
    Top = 269
  end
  object qryCheqReq: TUniQuery
    SQL.Strings = (
            'SELECT C.*, C.ROWID FROM CHEQREQ C WHERE C.NCHEQREQ = :NCHEQREQ')
    CachedUpdates = True
    Left = 257
    Top = 266
  end
  object qrySundryType: TUniQuery
    SQL.Strings = (
            'select * from sundrytype'
            'where entity = :entity')
    Left = 171
    Top = 300
  end
  object dsSundryType: TUniDataSource
    DataSet = qrySundryType
    Left = 202
    Top = 299
  end
end
