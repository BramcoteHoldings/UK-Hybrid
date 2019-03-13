object frmCheqReqInvoiceDebit: TfrmCheqReqInvoiceDebit
  Left = 238
  Top = 131
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Credit Note'
  ClientHeight = 411
  ClientWidth = 403
  Color = clBtnFace
  Constraints.MinHeight = 432
  Constraints.MinWidth = 386
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    403
    411)
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 59
    Width = 39
    Height = 14
    Caption = 'Matter:'
  end
  object Label2: TLabel
    Left = 8
    Top = 10
    Width = 82
    Height = 14
    Caption = '&Date Required:'
  end
  object Label3: TLabel
    Left = 8
    Top = 35
    Width = 75
    Height = 14
    Caption = 'Bank Account:'
  end
  object Label4: TLabel
    Left = 8
    Top = 205
    Width = 44
    Height = 14
    Caption = 'Reason:'
  end
  object Label8: TLabel
    Left = 8
    Top = 229
    Width = 45
    Height = 14
    Caption = '&Amount:'
  end
  object lblTypeDesc: TLabel
    Left = 119
    Top = 151
    Width = 3
    Height = 14
  end
  object Label5: TLabel
    Left = 8
    Top = 157
    Width = 35
    Height = 14
    Caption = 'Pa&yee:'
  end
  object lblClient: TLabel
    Left = 226
    Top = 59
    Width = 158
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object Label6: TLabel
    Left = 8
    Top = 270
    Width = 77
    Height = 14
    Caption = 'Requested By:'
  end
  object lblAuthorName: TLabel
    Left = 83
    Top = 258
    Width = 3
    Height = 14
  end
  object lblLgr: TLabel
    Left = 8
    Top = 131
    Width = 39
    Height = 14
    Caption = 'Ledger:'
  end
  object lblLgrDesc: TLabel
    Left = 225
    Top = 131
    Width = 158
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object Label9: TLabel
    Left = 8
    Top = 312
    Width = 35
    Height = 14
    Caption = '&Notes:'
  end
  object lblInvoiceMsg: TLabel
    Left = 236
    Top = 10
    Width = 19
    Height = 14
    Caption = 'Bill'
    Visible = False
  end
  object lblInvoice: TLabel
    Left = 254
    Top = 10
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
    Left = 119
    Top = 81
    Width = 264
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object lblTaxType: TLabel
    Left = 200
    Top = 229
    Width = 20
    Height = 14
    Caption = 'Tax:'
  end
  object Label7: TLabel
    Left = 8
    Top = 293
    Width = 75
    Height = 14
    Caption = 'Expense Type:'
  end
  object lblTotal: TLabel
    Left = 8
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
    Width = 68
    Height = 14
    Caption = 'Cheque Req:'
  end
  object lblNmemo: TLabel
    Left = 331
    Top = 294
    Width = 3
    Height = 14
  end
  object Label10: TLabel
    Left = 8
    Top = 180
    Width = 107
    Height = 16
    AutoSize = False
    Caption = 'Creditor Invoice No:'
    WordWrap = True
  end
  object tbFile: TcxButtonEdit
    Left = 119
    Top = 55
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
    TabOrder = 2
    OnExit = tbFileExit
    Width = 101
  end
  object tbLedger: TcxButtonEdit
    Left = 119
    Top = 126
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
    Properties.OnValidate = tbLedgerPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    OnExit = tbLedgerExit
    Width = 101
  end
  object cmbBank: TcxLookupComboBox
    Left = 119
    Top = 31
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
    TabOrder = 1
    Width = 268
  end
  object tbDesc: TcxTextEdit
    Left = 119
    Top = 201
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 7
    OnExit = tbPayeeExit
    OnKeyPress = tbPayeeKeyPress
    Width = 268
  end
  object tbPayee: TcxButtonEdit
    Left = 119
    Top = 152
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
    TabOrder = 5
    OnExit = tbPayeeExit
    OnKeyPress = tbPayeeKeyPress
    Width = 268
  end
  object neAmount: TcxCurrencyEdit
    Left = 119
    Top = 225
    Properties.OnChange = neAmountChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 8
    OnExit = neAmountExit
    Width = 76
  end
  object neTax: TcxCurrencyEdit
    Left = 317
    Top = 225
    Properties.OnChange = neTaxChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 10
    Width = 70
  end
  object cbTaxType: TcxComboBox
    Left = 229
    Top = 225
    Properties.OnChange = cbTaxTypeChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 9
    OnClick = cbTaxTypeClick
    Width = 76
  end
  object dfSlipNo: TcxTextEdit
    Left = 119
    Top = 177
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Width = 121
  end
  object cmbAuthor: TcxLookupComboBox
    Left = 119
    Top = 266
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
    TabOrder = 11
    Width = 267
  end
  object cmbExpenseType: TcxLookupComboBox
    Left = 119
    Top = 289
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
    TabOrder = 12
    Width = 268
  end
  object mmoNotes: TcxMemo
    Left = 8
    Top = 327
    Lines.Strings = (
      '')
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 13
    OnExit = tbPayeeExit
    OnKeyPress = tbPayeeKeyPress
    Height = 43
    Width = 379
  end
  object dtpReqDate: TEnforceCustomDateEdit
    Left = 119
    Top = 6
    EditValue = 42527.5487483796d
    Properties.ShowTime = False
    Properties.OnCloseUp = dtpReqDatePropertiesCloseUp
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 106
  end
  object edtChequeReq: TcxTextEdit
    Left = 119
    Top = 102
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Width = 101
  end
  object btnSave: TBitBtn
    Left = 233
    Top = 379
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Ok'
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
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 14
    OnClick = btnSaveClick
    ExplicitLeft = 218
  end
  object btnCancel: TBitBtn
    Left = 314
    Top = 379
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Glyph.Data = {
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
    ModalResult = 2
    NumGlyphs = 2
    TabOrder = 15
    OnClick = btnCancelClick
    ExplicitLeft = 299
  end
  object dsCheqReq: TUniDataSource
    DataSet = qryCheqReq
    Left = 328
    Top = 254
  end
  object qryCheqReq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID FROM CHEQREQ C WHERE C.NCHEQREQ = :NCHEQREQ')
    CachedUpdates = True
    Left = 269
    Top = 250
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end>
  end
  object qrySundryType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from sundrytype'
      'where entity = :entity')
    Left = 184
    Top = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsSundryType: TUniDataSource
    DataSet = qrySundryType
    Left = 215
    Top = 299
  end
  object qryCheqreqUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE CHEQREQ SET CONVERTED = '#39'Y'#39', CREDIT_NOTE = :CREDIT_NOTE'
      'WHERE NCHEQREQ = :NCHEQREQ ')
    Left = 264
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CREDIT_NOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end>
  end
end
