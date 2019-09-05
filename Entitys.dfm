object frmEntity: TfrmEntity
  Left = 664
  Top = 394
  Caption = 'Entities'
  ClientHeight = 603
  ClientWidth = 835
  Color = clBtnFace
  Constraints.MinHeight = 384
  Constraints.MinWidth = 751
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 55
    Top = 65
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Caption = 'Name'
  end
  object lblACN: TLabel
    Left = 53
    Top = 91
    Width = 34
    Height = 15
    Alignment = taRightJustify
    Caption = 'A.C.N.'
  end
  object Label13: TLabel
    Left = 59
    Top = 39
    Width = 28
    Height = 15
    Alignment = taRightJustify
    Caption = 'Code'
  end
  object Label3: TLabel
    Left = 146
    Top = 39
    Width = 37
    Height = 15
    Caption = 'Started'
  end
  object Label5: TLabel
    Left = 20
    Top = 140
    Width = 67
    Height = 15
    Alignment = taRightJustify
    Caption = 'Default Bank'
  end
  object Label7: TLabel
    Left = 37
    Top = 166
    Width = 50
    Height = 15
    Alignment = taRightJustify
    Caption = 'Last Bill #'
  end
  object Label8: TLabel
    Left = 18
    Top = 264
    Width = 69
    Height = 15
    Alignment = taRightJustify
    Caption = 'WP Directory'
  end
  object lblABN: TLabel
    Left = 54
    Top = 116
    Width = 33
    Height = 15
    Alignment = taRightJustify
    Caption = 'A.B.N.'
  end
  object Label11: TLabel
    Left = 176
    Top = 166
    Width = 85
    Height = 15
    Caption = 'Last Credit Note'
  end
  object Label33: TLabel
    Left = 35
    Top = 188
    Width = 52
    Height = 15
    Alignment = taRightJustify
    Caption = 'Lock Date'
  end
  object Label36: TLabel
    Left = 15
    Top = 237
    Width = 72
    Height = 15
    Alignment = taRightJustify
    Caption = 'Last  Year End'
  end
  object Label46: TLabel
    Left = 28
    Top = 290
    Width = 59
    Height = 15
    Alignment = taRightJustify
    Caption = 'Last Matter'
  end
  object Label47: TLabel
    Left = 20
    Top = 213
    Width = 67
    Height = 15
    Alignment = taRightJustify
    Caption = 'Last Rollover'
  end
  object Label50: TLabel
    Left = 25
    Top = 316
    Width = 62
    Height = 15
    Alignment = taRightJustify
    Caption = 'Last Journal'
  end
  object Label4: TLabel
    Left = 20
    Top = 341
    Width = 67
    Height = 15
    Alignment = taRightJustify
    Caption = 'Fee Tax Basis'
  end
  object Label6: TLabel
    Left = 46
    Top = 365
    Width = 41
    Height = 15
    Alignment = taRightJustify
    Caption = 'CMA ID'
  end
  object lblBPayCode: TLabel
    Left = 30
    Top = 392
    Width = 57
    Height = 15
    Alignment = taRightJustify
    Caption = 'BPay Code'
  end
  object Label10: TLabel
    Left = 51
    Top = 420
    Width = 36
    Height = 15
    Alignment = taRightJustify
    Caption = 'Colour'
  end
  object gbLedgers: TcxGroupBox
    Left = 346
    Top = 41
    Caption = 'Ledgers for automatic posting'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Transparent = True
    Height = 334
    Width = 387
    object Label69: TLabel
      Left = 16
      Top = 24
      Width = 86
      Height = 15
      Caption = 'Creditor Control'
    end
    object dbtbCreditors: TcxDBTextEdit
      Left = 114
      Top = 20
      DataBinding.DataField = 'CREDITORS'
      DataBinding.DataSource = dsEntity
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnDblClick = dbtbLedgerDblClick
      Width = 68
    end
    object pagLedgers: TcxPageControl
      Left = 6
      Top = 53
      Width = 376
      Height = 272
      TabOrder = 1
      Properties.ActivePage = tabInvoice
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      ClientRectBottom = 268
      ClientRectLeft = 4
      ClientRectRight = 372
      ClientRectTop = 26
      object tabCreation: TcxTabSheet
        Caption = 'Creation'
        ImageIndex = 0
        object Label51: TLabel
          Left = 8
          Top = 30
          Width = 18
          Height = 15
          Caption = 'Fee'
          Transparent = True
          Visible = False
        end
        object Label56: TLabel
          Left = 153
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Debit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object Label57: TLabel
          Left = 225
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Credit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object Label58: TLabel
          Left = 225
          Top = 81
          Width = 68
          Height = 15
          Caption = 'Cash at Bank'
          Transparent = True
        end
        object Label55: TLabel
          Left = 8
          Top = 130
          Width = 89
          Height = 15
          Caption = 'Unpaid Creditors'
          Transparent = True
        end
        object Label54: TLabel
          Left = 9
          Top = 105
          Width = 140
          Height = 15
          Caption = 'Antd. Cheque Requisitions'
          Transparent = True
        end
        object Label53: TLabel
          Left = 8
          Top = 81
          Width = 73
          Height = 15
          Caption = 'Disbursement'
          Transparent = True
        end
        object Label52: TLabel
          Left = 8
          Top = 55
          Width = 82
          Height = 15
          Caption = 'Sundry Expense'
          Transparent = True
          Visible = False
        end
        object dbtbNewFeeDR: TcxDBTextEdit
          Left = 153
          Top = 27
          DataBinding.DataField = 'NEW_FEE_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Visible = False
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
        object dbtbNewFeeCR: TcxDBTextEdit
          Left = 224
          Top = 27
          DataBinding.DataField = 'NEW_FEE_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Visible = False
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbNewSundCR: TcxDBTextEdit
          Left = 224
          Top = 52
          DataBinding.DataField = 'NEW_SUND_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Visible = False
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbNewSundDR: TcxDBTextEdit
          Left = 153
          Top = 52
          DataBinding.DataField = 'NEW_SUND_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Visible = False
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
        object dbtbNewDisbDR: TcxDBTextEdit
          Left = 153
          Top = 77
          DataBinding.DataField = 'NEW_DISB_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbNewDisbDRExit
          Width = 68
        end
        object dbtbNewAntdCR: TcxDBTextEdit
          Left = 224
          Top = 102
          DataBinding.DataField = 'NEW_ANTD_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbNewAntdDR: TcxDBTextEdit
          Left = 153
          Top = 102
          DataBinding.DataField = 'NEW_ANTD_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
        object dbtbNewCredDR: TcxDBTextEdit
          Left = 153
          Top = 127
          DataBinding.DataField = 'NEW_UPCRED_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
        object dbtbNewCredCR: TcxDBTextEdit
          Left = 224
          Top = 127
          DataBinding.DataField = 'NEW_UPCRED_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
      end
      object tabInvoice: TcxTabSheet
        Caption = 'Billing'
        ImageIndex = 1
        object Label66: TLabel
          Left = 139
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Debit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object Label67: TLabel
          Left = 211
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Credit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object Label68: TLabel
          Left = 282
          Top = 8
          Width = 35
          Height = 13
          Caption = 'Tax DR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object Label65: TLabel
          Left = 8
          Top = 177
          Width = 89
          Height = 15
          Caption = 'Unpaid Creditors'
          Transparent = True
        end
        object Label64: TLabel
          Left = 8
          Top = 152
          Width = 108
          Height = 15
          Caption = 'Cheque Requisitions'
          Transparent = True
        end
        object Label63: TLabel
          Left = 8
          Top = 128
          Width = 73
          Height = 15
          Caption = 'Disbursement'
          Transparent = True
        end
        object Label62: TLabel
          Left = 8
          Top = 103
          Width = 82
          Height = 15
          Caption = 'Sundry Expense'
          Transparent = True
        end
        object Label61: TLabel
          Left = 8
          Top = 78
          Width = 76
          Height = 15
          Caption = 'Fee - Discount'
          Transparent = True
        end
        object Label60: TLabel
          Left = 8
          Top = 54
          Width = 105
          Height = 15
          Caption = 'Fee - Over Recovery'
          Transparent = True
        end
        object Label59: TLabel
          Left = 8
          Top = 29
          Width = 18
          Height = 15
          Caption = 'Fee'
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 204
          Width = 94
          Height = 15
          Caption = 'Disbursement Adj'
          Transparent = True
        end
        object dbtbBillFeeTaxDR: TcxDBTextEdit
          Left = 283
          Top = 26
          DataBinding.DataField = 'BILL_FEE_TAX_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillFeeCR: TcxDBTextEdit
          Left = 211
          Top = 26
          DataBinding.DataField = 'BILL_FEE_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillFeeDR: TcxDBTextEdit
          Left = 138
          Top = 26
          DataBinding.DataField = 'BILL_FEE_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillOverFeeDR: TcxDBTextEdit
          Left = 138
          Top = 51
          DataBinding.DataField = 'BILL_OVERFEE_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillOverFeeCR: TcxDBTextEdit
          Left = 211
          Top = 51
          DataBinding.DataField = 'BILL_OVERFEE_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbBillOverFeeCRExit
          Width = 69
        end
        object dbtbBillOverFeeTaxDR: TcxDBTextEdit
          Left = 283
          Top = 51
          DataBinding.DataField = 'BILL_OVERFEE_TAX_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillDiscFeeTaxDR: TcxDBTextEdit
          Left = 283
          Top = 76
          DataBinding.DataField = 'BILL_DISCFEE_TAX_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillDiscFeeCR: TcxDBTextEdit
          Left = 211
          Top = 76
          DataBinding.DataField = 'BILL_DISCFEE_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillDiscFeeDR: TcxDBTextEdit
          Left = 138
          Top = 76
          DataBinding.DataField = 'BILL_DISCFEE_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbBillDiscFeeDRExit
          Width = 69
        end
        object dbtbBillSundDR: TcxDBTextEdit
          Left = 138
          Top = 101
          DataBinding.DataField = 'BILL_SUND_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbWoffSundDRExit
          Width = 69
        end
        object dbtbBillSundCR: TcxDBTextEdit
          Left = 211
          Top = 101
          DataBinding.DataField = 'BILL_SUND_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillSundTaxDR: TcxDBTextEdit
          Left = 283
          Top = 101
          DataBinding.DataField = 'BILL_SUND_TAX_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillDisbTaxDR: TcxDBTextEdit
          Left = 283
          Top = 126
          DataBinding.DataField = 'BILL_DISB_TAX_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 14
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillDisbCR: TcxDBTextEdit
          Left = 211
          Top = 126
          DataBinding.DataField = 'BILL_DISB_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillDisbDR: TcxDBTextEdit
          Left = 138
          Top = 126
          DataBinding.DataField = 'BILL_DISB_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbBillDisbDRExit
          Width = 69
        end
        object dbtbBillAntdDR: TcxDBTextEdit
          Left = 138
          Top = 151
          DataBinding.DataField = 'BILL_ANTD_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 15
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbBillAntdDRExit
          Width = 69
        end
        object dbtbBillAntdCR: TcxDBTextEdit
          Left = 211
          Top = 151
          DataBinding.DataField = 'BILL_ANTD_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 16
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillAntdTaxDR: TcxDBTextEdit
          Left = 283
          Top = 151
          DataBinding.DataField = 'BILL_ANTD_TAX_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 17
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillUpCredTaxDR: TcxDBTextEdit
          Left = 283
          Top = 176
          DataBinding.DataField = 'BILL_UPCRED_TAX_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 18
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 211
          Top = 176
          DataBinding.DataField = 'BILL_UPCRED_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 20
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 138
          Top = 176
          DataBinding.DataField = 'BILL_UPCRED_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 19
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbBillAntdDRExit
          Width = 69
        end
        object dbtbBillDisbAdjCR: TcxDBTextEdit
          Left = 173
          Top = 201
          DataBinding.DataField = 'BILL_DISB_ADJ_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 21
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbBillDisbAdjTaxDR: TcxDBTextEdit
          Left = 283
          Top = 201
          DataBinding.DataField = 'BILL_DISB_ADJ_TAX_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 22
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
      end
      object tabReceipt: TcxTabSheet
        Caption = 'Receipting'
        ImageIndex = 2
        object Label70: TLabel
          Left = 16
          Top = 34
          Width = 18
          Height = 15
          Caption = 'Fee'
          Transparent = True
        end
        object Label71: TLabel
          Left = 16
          Top = 59
          Width = 82
          Height = 15
          Caption = 'Sundry Expense'
          Transparent = True
        end
        object Label72: TLabel
          Left = 16
          Top = 84
          Width = 120
          Height = 15
          Caption = 'Unbilled Disbursement'
          Transparent = True
        end
        object Label73: TLabel
          Left = 16
          Top = 109
          Width = 73
          Height = 15
          Caption = 'Disbursement'
          Transparent = True
        end
        object Label74: TLabel
          Left = 16
          Top = 134
          Width = 108
          Height = 15
          Caption = 'Cheque Requisitions'
          Transparent = True
        end
        object Label75: TLabel
          Left = 16
          Top = 159
          Width = 89
          Height = 15
          Caption = 'Unpaid Creditors'
          Transparent = True
        end
        object Label76: TLabel
          Left = 165
          Top = 31
          Width = 75
          Height = 137
          AutoSize = False
          Caption = 
            'The debit sides of these transactions are always posted to the C' +
            'ash at Bank ledger for the bank account selected when receipting' +
            '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label77: TLabel
          Left = 254
          Top = 13
          Width = 31
          Height = 13
          Caption = 'Credit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 16
          Top = 184
          Width = 94
          Height = 15
          Caption = 'Disbursement Adj'
          Transparent = True
        end
        object dbtbRecFeeCR: TcxDBTextEdit
          Left = 254
          Top = 31
          DataBinding.DataField = 'REC_FEE_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbRecSundCR: TcxDBTextEdit
          Left = 254
          Top = 56
          DataBinding.DataField = 'REC_SUND_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbRecUndisbCR: TcxDBTextEdit
          Left = 254
          Top = 81
          DataBinding.DataField = 'REC_UNDISB_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbRecDisbCR: TcxDBTextEdit
          Left = 254
          Top = 106
          DataBinding.DataField = 'REC_DISB_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbRecAntdCR: TcxDBTextEdit
          Left = 254
          Top = 131
          DataBinding.DataField = 'REC_ANTD_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object cxDBTextEdit37: TcxDBTextEdit
          Left = 254
          Top = 156
          DataBinding.DataField = 'REC_UPCRED_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          OnDblClick = dbtbLedgerDblClick
          Width = 70
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 254
          Top = 182
          DataBinding.DataField = 'REC_DISB_ADJ_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          OnDblClick = dbtbLedgerDblClick
          Width = 70
        end
      end
      object tabWriteOff: TcxTabSheet
        Caption = 'Write Off'
        ImageIndex = 3
        OnShow = tabWriteOffShow
        object Label78: TLabel
          Left = 8
          Top = 29
          Width = 58
          Height = 15
          Caption = 'Fee - Billed'
          Transparent = True
        end
        object Label84: TLabel
          Left = 160
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Debit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object Label85: TLabel
          Left = 231
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Credit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object Label83: TLabel
          Left = 8
          Top = 154
          Width = 95
          Height = 15
          Caption = 'Unbilled Creditors'
          Transparent = True
        end
        object Label82: TLabel
          Left = 8
          Top = 129
          Width = 108
          Height = 15
          Caption = 'Cheque Requisitions'
          Transparent = True
        end
        object Label81: TLabel
          Left = 8
          Top = 104
          Width = 113
          Height = 15
          Caption = 'Disbursement - Billed'
          Transparent = True
        end
        object Label80: TLabel
          Left = 8
          Top = 79
          Width = 128
          Height = 15
          Caption = 'Disbursement - Unbilled'
          Transparent = True
        end
        object Label79: TLabel
          Left = 8
          Top = 54
          Width = 122
          Height = 15
          Caption = 'Sundry Expense - Billed'
          Transparent = True
        end
        object Label12: TLabel
          Left = 8
          Top = 180
          Width = 53
          Height = 15
          Caption = 'Bad Debts'
          Transparent = True
        end
        object dbtbWoffFeeCR: TcxDBTextEdit
          Left = 233
          Top = 27
          DataBinding.DataField = 'WOFF_FEE_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbWoffFeeDR: TcxDBTextEdit
          Left = 159
          Top = 26
          DataBinding.DataField = 'WOFF_FEE_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
        object dbtbWoffSundDR: TcxDBTextEdit
          Left = 159
          Top = 51
          DataBinding.DataField = 'WOFF_SUND_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbWoffSundDRExit
          Width = 68
        end
        object dbtbWoffSundCR: TcxDBTextEdit
          Left = 231
          Top = 51
          DataBinding.DataField = 'WOFF_SUND_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbWoffUnDisbCR: TcxDBTextEdit
          Left = 231
          Top = 76
          DataBinding.DataField = 'WOFF_UNDISB_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbWoffUnDisbDR: TcxDBTextEdit
          Left = 159
          Top = 76
          DataBinding.DataField = 'WOFF_UNDISB_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbWoffUnDisbDRExit
          Width = 68
        end
        object dbtbWoffDisbDR: TcxDBTextEdit
          Left = 159
          Top = 101
          DataBinding.DataField = 'WOFF_DISB_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          OnDblClick = dbtbLedgerDblClick
          OnExit = dbtbWoffDisbDRExit
          Width = 68
        end
        object dbtbWoffDisbCR: TcxDBTextEdit
          Left = 231
          Top = 101
          DataBinding.DataField = 'WOFF_DISB_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object cxDBTextEdit42: TcxDBTextEdit
          Left = 231
          Top = 126
          DataBinding.DataField = 'WOFF_ANTD_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object cxDBTextEdit48: TcxDBTextEdit
          Left = 159
          Top = 126
          DataBinding.DataField = 'WOFF_ANTD_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
        object cxDBTextEdit49: TcxDBTextEdit
          Left = 159
          Top = 151
          DataBinding.DataField = 'WOFF_UPCRED_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
        object cxDBTextEdit43: TcxDBTextEdit
          Left = 231
          Top = 151
          DataBinding.DataField = 'WOFF_UPCRED_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
        object dbtbWoffBadDebtDR: TcxDBTextEdit
          Left = 159
          Top = 176
          DataBinding.DataField = 'WOFF_BAD_DEBT_DR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
        object dbtbWoffBadDebtCR: TcxDBTextEdit
          Left = 231
          Top = 176
          DataBinding.DataField = 'WOFF_BAD_DEBT_CR'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          OnDblClick = dbtbLedgerDblClick
          Width = 69
        end
      end
      object tabEOY: TcxTabSheet
        Caption = 'End Of Year'
        ImageIndex = 4
        object Label86: TLabel
          Left = 8
          Top = 21
          Width = 154
          Height = 15
          Caption = 'Profit Appropriation Account'
          Transparent = True
        end
        object cxDBTextEdit50: TcxDBTextEdit
          Left = 206
          Top = 18
          DataBinding.DataField = 'PROFIT_APPR_ACCT'
          DataBinding.DataSource = dsEntity
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnDblClick = dbtbLedgerDblClick
          Width = 68
        end
      end
    end
  end
  object cxDBLabel1: TcxDBLabel
    Left = 94
    Top = 39
    DataBinding.DataField = 'CODE'
    DataBinding.DataSource = dsEntity
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 17
    Width = 42
  end
  object cxDBLabel2: TcxDBLabel
    Left = 194
    Top = 39
    DataBinding.DataField = 'STARTED'
    DataBinding.DataSource = dsEntity
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 17
    Width = 141
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 94
    Top = 63
    DataBinding.DataField = 'NAME'
    DataBinding.DataSource = dsEntity
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Width = 241
  end
  object dbtLockDate: TcxDBLabel
    Left = 94
    Top = 188
    DataBinding.DataField = 'LOCKDATE'
    DataBinding.DataSource = dsEntity
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 18
    Width = 83
  end
  object dbtRolloverDate: TcxDBLabel
    Left = 94
    Top = 213
    DataBinding.DataField = 'LAST_ROLLOVER'
    DataBinding.DataSource = dsEntity
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 16
    Width = 83
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 94
    Top = 88
    DataBinding.DataField = 'ACN'
    DataBinding.DataSource = dsEntity
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Width = 241
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 94
    Top = 113
    DataBinding.DataField = 'ABN'
    DataBinding.DataSource = dsEntity
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Width = 241
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 94
    Top = 138
    DataBinding.DataField = 'DEFAULT_BANK'
    DataBinding.DataSource = dsEntity
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 8
    Width = 73
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 94
    Top = 163
    DataBinding.DataField = 'LASTBILL'
    DataBinding.DataSource = dsEntity
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 9
    Width = 73
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 272
    Top = 163
    DataBinding.DataField = 'LASTCREDITNOTE'
    DataBinding.DataSource = dsEntity
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 10
    Width = 63
  end
  object dfNextMatter: TcxDBTextEdit
    Left = 94
    Top = 288
    DataBinding.DataField = 'NEXTMATTER'
    DataBinding.DataSource = dsEntity
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Width = 122
  end
  object cxDBTextEdit9: TcxDBTextEdit
    Left = 94
    Top = 313
    DataBinding.DataField = 'NJOURNAL'
    DataBinding.DataSource = dsEntity
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 13
    Width = 122
  end
  object cxDBButtonEdit1: TcxDBButtonEdit
    Left = 94
    Top = 261
    DataBinding.DataField = 'WPDIR'
    DataBinding.DataSource = dsEntity
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
          00FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBD
          BDFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFF
          FFFF000000FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FF
          FFFFBDBDBDFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FF00FF
          FFFFFFFFFFFF000000FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBD
          BDFF00FFFFFFBDBDBDFF00FFFFFF000000FFFF00FF00FF00FF00000000FFFFFF
          FFFF00FFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF00FF
          FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
          FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFF
          FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
          FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF00FF
          FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF0000
          00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
          7BFF000000FF000000FF000000FF000000FF7B7B7BFFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 14
    Width = 241
  end
  object cxDBLookupComboBox3: TcxDBLookupComboBox
    Left = 94
    Top = 338
    DataBinding.DataField = 'FEE_TAX_BASIS'
    DataBinding.DataSource = dsEntity
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Caption = 'Tax'
        FieldName = 'CODE'
      end
      item
        Caption = 'Descrption'
        FieldName = 'DESCR'
      end>
    Properties.ListSource = dsTaxRate
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 15
    Width = 122
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 94
    Top = 363
    DataBinding.DataField = 'CMA_FIRM_ID'
    DataBinding.DataSource = dsEntity
    TabOrder = 16
    Width = 122
  end
  object edBPayCode: TcxDBTextEdit
    Left = 94
    Top = 389
    DataBinding.DataField = 'BPAY_CODE'
    DataBinding.DataSource = dsEntity
    TabOrder = 17
    Width = 122
  end
  object cxDBColorComboBox1: TcxDBColorComboBox
    Left = 94
    Top = 416
    DataBinding.DataField = 'COLOUR'
    DataBinding.DataSource = dsEntity
    Properties.CustomColors = <>
    TabOrder = 18
    Width = 122
  end
  object dbtFinYearEnd: TcxDBDateEdit
    Left = 94
    Top = 234
    DataBinding.DataField = 'FINANCIALYEARENDING'
    DataBinding.DataSource = dsEntity
    TabOrder = 11
    Width = 122
  end
  object cxGroupBox1: TcxGroupBox
    Left = 392
    Top = 444
    Caption = 'Default Branch / Dept for Ledger Postings'
    TabOrder = 19
    Height = 117
    Width = 336
    object Label14: TLabel
      Left = 24
      Top = 30
      Width = 104
      Height = 15
      Alignment = taRightJustify
      Caption = 'Default Department'
    end
    object Label15: TLabel
      Left = 50
      Top = 61
      Width = 78
      Height = 15
      Alignment = taRightJustify
      Caption = 'Default Branch'
    end
    object txtDefDept: TcxDBTextEdit
      Left = 134
      Top = 29
      DataBinding.DataField = 'DEFAULT_DEPARTMENT'
      DataBinding.DataSource = dsEntity
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 115
    end
    object txtDefBranch: TcxDBTextEdit
      Left = 134
      Top = 58
      DataBinding.DataField = 'DEFAULT_BRANCH'
      DataBinding.DataSource = dsEntity
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 115
    end
  end
  object grpMultiCurrency: TcxGroupBox
    Left = 18
    Top = 444
    Enabled = False
    TabOrder = 22
    Transparent = True
    Height = 117
    Width = 328
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 100
      Top = 56
      DataBinding.DataField = 'ENTITY_GROUP_CURRENCY'
      DataBinding.DataSource = dsEntity
      TabOrder = 1
      Width = 61
    end
    object cxLabel1: TcxLabel
      Left = 6
      Top = 30
      Caption = 'Currency'
      Properties.Alignment.Horz = taLeftJustify
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 6
      Top = 55
      Caption = 'Group Currency'
      Properties.Alignment.Horz = taLeftJustify
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 6
      Top = 86
      Caption = 'FX Gain'
      Properties.Alignment.Horz = taLeftJustify
      Transparent = True
    end
    object txtFXGain: TcxDBTextEdit
      Left = 62
      Top = 85
      DataBinding.DataField = 'FX_GAIN_ADJ'
      DataBinding.DataSource = dsEntity
      TabOrder = 2
      Width = 98
    end
    object cxLabel4: TcxLabel
      Left = 176
      Top = 86
      Caption = 'FX Loss'
      Transparent = True
    end
    object txtFXLoss: TcxDBTextEdit
      Left = 227
      Top = 85
      DataBinding.DataField = 'FX_LOSS_ADJ'
      DataBinding.DataSource = dsEntity
      TabOrder = 3
      Width = 94
    end
    object cmbCurrency: TcxDBLookupComboBox
      Left = 100
      Top = 27
      DataBinding.DataField = 'CURRENCY'
      DataBinding.DataSource = dsEntity
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ISO4217_CURRENCY_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'MAX(ISO4217_CURRENCY_NAME)'
        end
        item
          FieldName = 'ISO4217_CURRENCY_CODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dmAxiom.dsCurrencyList
      TabOrder = 0
      Width = 221
    end
  end
  object cbMultiCurrency: TcxDBCheckBox
    Left = 24
    Top = 440
    AutoSize = False
    Caption = 'Use Multi currency'
    DataBinding.DataField = 'USE_MULTICURRENCY'
    DataBinding.DataSource = dsEntity
    Properties.ImmediatePost = True
    Properties.NullStyle = nssUnchecked
    Properties.ReadOnly = False
    Properties.ValueChecked = 'Y'
    Properties.ValueUnchecked = 'N'
    Properties.OnEditValueChanged = cbMultiCurrencyPropertiesEditValueChanged
    TabOrder = 25
    Height = 23
    Width = 123
  end
  object qryEntity: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT E.ROWID, E.* FROM ENTITY E ORDER BY E.CODE')
    AfterScroll = qryEntitySetButtons
    AfterRefresh = qryEntitySetButtons
    Left = 772
    Top = 63
  end
  object dsEntity: TUniDataSource
    DataSet = qryEntity
    Left = 778
    Top = 112
  end
  object ilstToolbar: TImageList
    Left = 733
    Top = 33
    Bitmap = {
      494C01010E001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C000101520071717100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E4500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B80011117800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF007B7B7B000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF007B7B7B00000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000084000000
      8400000084000000840084848400848484008484840084848400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000084000000
      8400000084000000840084848400848484008484840084848400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000008400C6C6
      C600C6C6C600000084008484840084848400848484008484840000008400C6C6
      C600C6C6C6000000840084848400000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000008400C6C6
      C600C6C6C600000084008484840084848400848484008484840000008400C6C6
      C600C6C6C600000084008484840000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000084000000
      8400000084000000840084848400848484008484840084848400000084000000
      8400000084000000840084848400000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000008400000084008484840000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000008484840000008400C6C6
      C600C6C6C6000000840000008400C6C6C600C6C6C6000000840000008400C6C6
      C600C6C6C6000000840084848400000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000008400C6C6
      C600C6C6C6000000840000008400C6C6C600C6C6C6000000840000008400C6C6
      C600C6C6C600000084008484840000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000000000000000FFFF000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000FFFF007B7B
      7B00000000000000000000000000000000000000000084848400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000008484840000008400C6C6
      C600C6C6C6000000840000008400C6C6C600C6C6C6000000840000008400C6C6
      C600C6C6C6000000840084848400000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B00000000007B7B7B0000FFFF0000FFFF000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000007B7B7B0000FFFF007B7B
      7B0000000000000000000000000000000000000000008484840000008400C6C6
      C600C6C6C6000000840000008400C6C6C600C6C6C6000000840000008400C6C6
      C600C6C6C6000000840084848400000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000FFFF000000000000FF
      FF0000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000FFFF00000000000000000000FF
      FF007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF0000000000FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000000000FFFF000000
      00000000000000000000000000000000000000000000848484000000FF000000
      FF0000000000FFFFFF000000FF000000FF000000FF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000008484000000
      000000000000000000000000000000000000848484000000FF000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF000000FF000000FF0000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000FFFF000000000000FFFF000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF00000000000000FF
      FF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000008484000000
      000084000000000000000000000000000000FFFF0000FFFF00000000000000FF
      FF00FFFFFF0000FFFF000000000000FFFF000000FF000000FF00000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF00000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000848400000000008400
      000084000000840000000000000000000000FFFF0000FFFF0000FFFF00000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000008484000000FF000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000084840000000000840000008400
      00008400000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000084840000000000848484000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000FFFF00000000
      0000000000000000000000000000000000000000000084000000840000008484
      84000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00F01FF80F00000000F83FE00700000000
      EC6FC00300000000FEFF800100000000BFFB800100000000FFFF000100000000
      7FFD000100000000FFFF0001000000007FFD000100000000FFE3000100000000
      07C100010000000007C100010000000007C180030000000007E3C00300000000
      07EFE00F00000000FABFF01F000000008000FC1FFC1FFFFF8000F007F007F83F
      8000E003E003E7CF8000C001C001DFF78000C001C001B01B8000C001C001B83B
      8000C001C0017C7D8000C00140017E8D8000E003A00341058000F1C7C3C74105
      8000F1C7004741058000F1C7C1C7818B8000F007A1C781FB8000F80F6007DFF7
      C000FC1FE80FE7CFE000FFFFEC1FF83FFEFFFEFDFFFFFFFFFE7FFE7DC007FE7F
      FE3FFE3DBFEBFC3FFE1FFE1D0005FC3FFE0FFE0D7E31FE7FFE07FE057E35FC3F
      FE03FE010006FC3FFE07FE057FEAFC3FFE0FFE0D8014FC1FFE1FFE1DC00AF20F
      FE3FFE3DE001E107FE7FFE7DE007E187FEFFFEFDF007E007FFFFFFFFF003F00F
      FFFFFFFFF803F81FFFFFFFFFFFFFFFFFFFFFFFFFBF7FFF7FFFFFFFFFBE7FFE7F
      F8FFF8FFBC7FFC7FF07FF07FB87FF87FE00FE00FB07FF07FC00FC00FA07FE07F
      801F801F807FC07F800F800FA07FE07F000F000FB07FF07F00070007B87FF87F
      00030003BC7FFC7F00010001BE7FFE7F00000000BF7FFF7F0F000F00FFFFFFFF
      1F801F80FFFFFFFF3FC03FC0FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object odlgPath: TOpenDialog
    Left = 805
    Top = 298
  end
  object spDoRollover: TUniStoredProc
    StoredProcName = 'DO_ROLLOVER'
    Connection = dmAxiom.uniInsight
    Left = 746
    Top = 197
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'AROLLOVER_DATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'AENTITY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'AWHO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'DO_ROLLOVER'
  end
  object qryUpdateLock: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE ENTITY'
      'SET LOCKDATE = :LOCKDATE'
      'WHERE CODE = :ENTITY')
    Left = 740
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOCKDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 825
    Top = 267
    PixelsPerInch = 96
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
      FloatLeft = 252
      FloatTop = 331
      FloatClientWidth = 23
      FloatClientHeight = 286
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbLockAccts'
        end
        item
          Visible = True
          ItemName = 'tbUnlockAccts'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbRollAccts'
        end
        item
          Visible = True
          ItemName = 'tbUnrollAccounts'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
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
      Caption = 'New'
      Category = 0
      Hint = 'New'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = tbtnNewClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Use'
      Category = 0
      Hint = 'Use this entity'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = tbtnUseClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Branches'
      Category = 0
      Hint = 'Branches'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = tbtnBranchesClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = dxBarButton4Click
    end
    object tbLockAccts: TdxBarButton
      Caption = 'Lock Accounts'
      Category = 0
      Hint = 'Lock Accounts'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = tbLockAcctsClick
    end
    object tbUnlockAccts: TdxBarButton
      Caption = 'UnLock Accounts'
      Category = 0
      Hint = 'UnLock Accounts'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = tbUnlockAcctsClick
    end
    object tbRollAccts: TdxBarButton
      Caption = 'Roll over Accounts'
      Category = 0
      Hint = 'Roll over Accounts'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = tbRollAcctsClick
    end
    object tbUnrollAccounts: TdxBarButton
      Caption = 'Unroll Accounts'
      Category = 0
      Hint = 'Unroll Accounts'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = tbUnrollAccountsClick
    end
    object dxBarButton9: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 13
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = ToolButton1Click
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000808080FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FF808080FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000808080FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
        80FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000808080FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000808080FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000808080FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
        80FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF000000FF000000FF8080
        80FF808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
      Category = 1
      Description = 'Save Changes'
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
        00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008000FF00FF
        00FF00FF00FF000000FFFF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008000FF00FF00FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF00FF00FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080
        00FF00FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00008000FF00FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
      HintEx = 'Save Changes'
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = dsEntity
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnPost]
    Left = 795
    Top = 209
  end
  object qryTaxRate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from taxtype')
    Left = 290
    Top = 324
  end
  object dsTaxRate: TUniDataSource
    DataSet = qryTaxRate
    Left = 301
    Top = 331
  end
  object qryEntityPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname,'
      
        #39'New Disbursement Debit'#39' as C_TYPE, ddrc.COMPONENT_CODE_DISPLAY ' +
        'as GL_CODE, ddrc.DEFAULT_TAXCODE AS GL_TAXCODE, '
      
        'ddrc.CHARTTYPE AS GL_CHARTTYPE, ddrct.DESCR as GL_CHRTTYPE_DESC,' +
        ' ddrc.DESCR as CHART_DESC, ddrc.REPORT_DESC as CHART_REPORTRDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- disb debit - d'
      
        'inner join chart ddrc on E.CODE = ddrc.BANK and ddrc.COMPONENT_C' +
        'ODE_DISPLAY = e.NEW_DISB_DR '
      
        'left outer join taxtype ddrtt on ddrc.DEFAULT_TAXCODE = ddrtt.co' +
        'de'
      'left outer join CHARTTYPE ddrct on ddrc.TYPE = ddrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- anticipated debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname,'
      
        #39'New Anticipated Cheque Req Debit'#39' as C_TYPE, adrc.COMPONENT_COD' +
        'E_DISPLAY as A_DR_GL_CODE, adrc.DEFAULT_TAXCODE AS A_DR_GL_TAXCO' +
        'DE, '
      
        'adrc.CHARTTYPE AS A_DR_CHARTTYPE, adrct.DESCR as A_DR_CHTY_DESC,' +
        ' adrc.DESCR as A_DR_CH_DESC, adrc.REPORT_DESC as A_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- anticipated debit - a'
      
        'inner join chart adrc on E.CODE = adrc.BANK and adrc.COMPONENT_C' +
        'ODE_DISPLAY = e.NEW_ANTD_DR '
      
        'left outer join taxtype adrtt on adrc.DEFAULT_TAXCODE = adrtt.co' +
        'de'
      'left outer join CHARTTYPE adrct on adrc.TYPE = adrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- anticipated credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname,'
      
        #39'New Anticipated Cheque Req Credit'#39' as C_TYPE, acrc.COMPONENT_CO' +
        'DE_DISPLAY as A_CR_GL_CODE, acrc.DEFAULT_TAXCODE AS A_CR_GL_TAXC' +
        'ODE, '
      
        'acrc.CHARTTYPE AS A_CR_CHARTTYPE, acrct.DESCR as A_CR_CHTY_DESC,' +
        ' acrc.DESCR as A_CR_CH_DESC, acrc.REPORT_DESC as A_CR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- anticipated credit - a'
      
        'inner join chart acrc on E.CODE = acrc.BANK and acrc.COMPONENT_C' +
        'ODE_DISPLAY = e.NEW_ANTD_CR '
      
        'left outer join taxtype acrtt on acrc.DEFAULT_TAXCODE = acrtt.co' +
        'de'
      'left outer join CHARTTYPE acrct on acrc.TYPE = acrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- CREDITORS debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname,'
      
        #39'New Unpaid Creditors Debit'#39' as C_TYPE, hdrc.COMPONENT_CODE_DISP' +
        'LAY as H_DR_GL_CODE, hdrc.DEFAULT_TAXCODE AS H_DR_GL_TAXCODE, '
      
        'hdrc.CHARTTYPE AS H_DR_CHARTTYPE, hdrct.DESCR as H_DR_CHTY_DESC,' +
        ' hdrc.DESCR as H_DR_CH_DESC, hdrc.REPORT_DESC as H_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- creditors debit - h '
      
        'inner join chart hdrc on E.CODE = hdrc.BANK and hdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.NEW_UPCRED_DR '
      
        'left outer join taxtype hdrtt on hdrc.DEFAULT_TAXCODE = hdrtt.co' +
        'de'
      'left outer join CHARTTYPE hdrct on hdrc.TYPE = hdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- CREDITORS credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname,'
      
        #39'New Unpaid Creditors Credit'#39' as C_TYPE, hcrc.COMPONENT_CODE_DIS' +
        'PLAY as H_CR_GL_CODE, hcrc.DEFAULT_TAXCODE AS H_CR_GL_TAXCODE, '
      
        'hcrc.CHARTTYPE AS H_CR_CHARTTYPE, hcrct.DESCR as H_CR_CHTY_DESC,' +
        ' hcrc.DESCR as H_CR_CH_DESC, hcrc.REPORT_DESC as H_CR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- creditors credit - h '
      
        'inner join chart hcrc on E.CODE = hcrc.BANK and hcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.NEW_UPCRED_CR '
      
        'left outer join taxtype hcrtt on hcrc.DEFAULT_TAXCODE = hcrtt.co' +
        'de'
      'left outer join CHARTTYPE hcrct on hcrc.TYPE = hcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed fee debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname,'
      
        #39'Billed Fee Debit'#39' as C_TYPE, fdrc.COMPONENT_CODE_DISPLAY as F_D' +
        'R_GL_CODE, fdrc.DEFAULT_TAXCODE AS F_DR_GL_TAXCODE, '
      
        'fdrc.CHARTTYPE AS F_DR_CHARTTYPE, fdrct.DESCR as F_DR_CHTY_DESC,' +
        ' fdrc.DESCR as F_DR_CH_DESC, fdrc.REPORT_DESC as F_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed fee debit - f'
      
        'inner join chart fdrc on E.CODE = fdrc.BANK and fdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_FEE_DR '
      
        'left outer join taxtype fdrtt on fdrc.DEFAULT_TAXCODE = fdrtt.co' +
        'de'
      'left outer join CHARTTYPE fdrct on fdrc.TYPE = fdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed fee credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Billed Fee Credit'#39' as C_TYPE, fcrc.COMPONENT_CODE_DISPLAY as F_' +
        'CR_GL_CODE, fcrc.DEFAULT_TAXCODE AS F_CR_GL_TAXCODE, '
      
        'fcrc.CHARTTYPE AS F_FCR_CHARTTYPE, fcrct.DESCR as F_CR_CHTY_DESC' +
        ', fcrc.DESCR as F_CR_CH_DESC, fcrc.REPORT_DESC as F_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed fee credit - f'
      
        'inner join chart fcrc on E.CODE = fcrc.BANK and fcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_FEE_CR '
      
        'left outer join taxtype fcrtt on fcrc.DEFAULT_TAXCODE = fcrtt.co' +
        'de'
      'left outer join CHARTTYPE fcrct on fcrc.TYPE = fcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed fee tax Debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Billed Fee Tax Debit'#39' as C_TYPE, fcrc.COMPONENT_CODE_DISPLAY as' +
        ' F_CR_GL_CODE, fcrc.DEFAULT_TAXCODE AS F_CR_GL_TAXCODE, '
      
        'fcrc.CHARTTYPE AS F_FCR_CHARTTYPE, fcrct.DESCR as F_CR_CHTY_DESC' +
        ', fcrc.DESCR as F_CR_CH_DESC, fcrc.REPORT_DESC as F_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed fee tax Debit - f'
      
        'inner join chart fcrc on E.CODE = fcrc.BANK and fcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_FEE_TAX_DR '
      
        'left outer join taxtype fcrtt on fcrc.DEFAULT_TAXCODE = fcrtt.co' +
        'de'
      'left outer join CHARTTYPE fcrct on fcrc.TYPE = fcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed overfee debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Fee Over Recovery Debit'#39' as C_TYPE, odrc.COMPONENT_CODE_DI' +
        'SPLAY as O_DR_GL_CODE, odrc.DEFAULT_TAXCODE AS O_DR_GL_TAXCODE, '
      
        'odrc.CHARTTYPE AS O_DR_CHARTTYPE, odrct.DESCR as O_DR_CHTY_DESC,' +
        ' odrc.DESCR as O_DR_CH_DESC, odrc.REPORT_DESC as O_DR_CH_REPDESC'
      '--- billed overfee debit - o'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      
        'inner join chart odrc on E.CODE = odrc.BANK and odrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_OVERFEE_DR '
      
        'left outer join taxtype odrtt on odrc.DEFAULT_TAXCODE = odrtt.co' +
        'de'
      'left outer join CHARTTYPE odrct on odrc.TYPE = odrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed overfee credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Fee Over Recovery Credit'#39' as C_TYPE, ocrc.COMPONENT_CODE_D' +
        'ISPLAY as O_CR_GL_CODE, ocrc.DEFAULT_TAXCODE AS O_CR_GL_TAXCODE,' +
        ' '
      
        'ocrc.CHARTTYPE AS O_FCR_CHARTTYPE, ocrct.DESCR as O_CR_CHTY_DESC' +
        ', ocrc.DESCR as O_CR_CH_DESC, ocrc.REPORT_DESC as O_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed overfee credit - o'
      
        'inner join chart ocrc on E.CODE = ocrc.BANK and ocrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_OVERFEE_CR '
      
        'left outer join taxtype ocrtt on ocrc.DEFAULT_TAXCODE = ocrtt.co' +
        'de'
      'left outer join CHARTTYPE ocrct on ocrc.TYPE = ocrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed overfee tax debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Fee Over Recovery Tax Debit'#39' as C_TYPE, ocrc.COMPONENT_COD' +
        'E_DISPLAY as O_CR_GL_CODE, ocrc.DEFAULT_TAXCODE AS O_CR_GL_TAXCO' +
        'DE, '
      
        'ocrc.CHARTTYPE AS O_FCR_CHARTTYPE, ocrct.DESCR as O_CR_CHTY_DESC' +
        ', ocrc.DESCR as O_CR_CH_DESC, ocrc.REPORT_DESC as O_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed overfee credit - o'
      
        'inner join chart ocrc on E.CODE = ocrc.BANK and ocrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_OVERFEE_TAX_DR '
      
        'left outer join taxtype ocrtt on ocrc.DEFAULT_TAXCODE = ocrtt.co' +
        'de'
      'left outer join CHARTTYPE ocrct on ocrc.TYPE = ocrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed discount fee debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Fee Discount Debit'#39' as C_TYPE, idrc.COMPONENT_CODE_DISPLAY' +
        ' as I_DR_GL_CODE, idrc.DEFAULT_TAXCODE AS I_DR_GL_TAXCODE, '
      
        'idrc.CHARTTYPE AS I_DR_CHARTTYPE, idrct.DESCR as I_DR_CHTY_DESC,' +
        ' idrc.DESCR as I_DR_CH_DESC, idrc.REPORT_DESC as I_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed discount debit - i'
      
        'inner join chart idrc on E.CODE = idrc.BANK and idrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_DISCFEE_DR '
      
        'left outer join taxtype idrtt on idrc.DEFAULT_TAXCODE = idrtt.co' +
        'de'
      'left outer join CHARTTYPE idrct on idrc.TYPE = idrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed discount fee credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Fee Discount Credit'#39' as C_TYPE, icrc.COMPONENT_CODE_DISPLA' +
        'Y as I_CR_GL_CODE, icrc.DEFAULT_TAXCODE AS I_CR_GL_TAXCODE, '
      
        'icrc.CHARTTYPE AS I_FCR_CHARTTYPE, icrct.DESCR as I_CR_CHTY_DESC' +
        ', icrc.DESCR as I_CR_CH_DESC, icrc.REPORT_DESC as I_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed discount credit - i'
      
        'inner join chart icrc on E.CODE = icrc.BANK and icrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_DISCFEE_CR '
      
        'left outer join taxtype icrtt on icrc.DEFAULT_TAXCODE = icrtt.co' +
        'de'
      'left outer join CHARTTYPE icrct on icrc.TYPE = icrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed discount fee tax debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Fee Discount Tax Debit'#39' as C_TYPE, icrc.COMPONENT_CODE_DIS' +
        'PLAY as I_CR_GL_CODE, icrc.DEFAULT_TAXCODE AS I_CR_GL_TAXCODE, '
      
        'icrc.CHARTTYPE AS I_FCR_CHARTTYPE, icrct.DESCR as I_CR_CHTY_DESC' +
        ', icrc.DESCR as I_CR_CH_DESC, icrc.REPORT_DESC as I_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed discount tax debit - i'
      
        'inner join chart icrc on E.CODE = icrc.BANK and icrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_DISCFEE_TAX_DR'
      
        'left outer join taxtype icrtt on icrc.DEFAULT_TAXCODE = icrtt.co' +
        'de'
      'left outer join CHARTTYPE icrct on icrc.TYPE = icrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed SUNDRY debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Sundry Expense Debit'#39' as C_TYPE, udrc.COMPONENT_CODE_DISPL' +
        'AY as U_DR_GL_CODE, udrc.DEFAULT_TAXCODE AS U_DR_GL_TAXCODE, '
      
        'udrc.CHARTTYPE AS U_DR_CHARTTYPE, udrct.DESCR as U_DR_CHTY_DESC,' +
        ' udrc.DESCR as U_DR_CH_DESC, udrc.REPORT_DESC as U_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed sundry debit - u'
      
        'inner join chart udrc on E.CODE = udrc.BANK and udrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_SUND_DR '
      
        'left outer join taxtype udrtt on udrc.DEFAULT_TAXCODE = udrtt.co' +
        'de'
      'left outer join CHARTTYPE udrct on udrc.TYPE = udrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed SUNDRY credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Sundry Expense Credit'#39' as C_TYPE, ucrc.COMPONENT_CODE_DISP' +
        'LAY as U_CR_GL_CODE, ucrc.DEFAULT_TAXCODE AS U_CR_GL_TAXCODE, '
      
        'ucrc.CHARTTYPE AS U_FCR_CHARTTYPE, ucrct.DESCR as U_CR_CHTY_DESC' +
        ', ucrc.DESCR as U_CR_CH_DESC, ucrc.REPORT_DESC as U_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed sundry credit - u'
      
        'inner join chart ucrc on E.CODE = ucrc.BANK and ucrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_SUND_CR '
      
        'left outer join taxtype ucrtt on ucrc.DEFAULT_TAXCODE = ucrtt.co' +
        'de'
      'left outer join CHARTTYPE ucrct on ucrc.TYPE = ucrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed SUNDRY tax debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Sundry Expense Tax Debit'#39' as C_TYPE, ucrc.COMPONENT_CODE_D' +
        'ISPLAY as U_CR_GL_CODE, ucrc.DEFAULT_TAXCODE AS U_CR_GL_TAXCODE,' +
        ' '
      
        'ucrc.CHARTTYPE AS U_FCR_CHARTTYPE, ucrct.DESCR as U_CR_CHTY_DESC' +
        ', ucrc.DESCR as U_CR_CH_DESC, ucrc.REPORT_DESC as U_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed sundry tax debit - u'
      
        'inner join chart ucrc on E.CODE = ucrc.BANK and ucrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_SUND_TAX_DR '
      
        'left outer join taxtype ucrtt on ucrc.DEFAULT_TAXCODE = ucrtt.co' +
        'de'
      'left outer join CHARTTYPE ucrct on ucrc.TYPE = ucrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed disb debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Disbursement Debit'#39' as C_TYPE, bdrc.COMPONENT_CODE_DISPLAY' +
        ' as B_DR_GL_CODE, bdrc.DEFAULT_TAXCODE AS B_DR_GL_TAXCODE, '
      
        'bdrc.CHARTTYPE AS B_DR_CHARTTYPE, bdrct.DESCR as B_DR_CHTY_DESC,' +
        ' bdrc.DESCR as B_DR_CH_DESC, bdrc.REPORT_DESC as B_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed disb debit - b'
      
        'inner join chart bdrc on E.CODE = bdrc.BANK and bdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_DISB_DR '
      
        'left outer join taxtype bdrtt on bdrc.DEFAULT_TAXCODE = bdrtt.co' +
        'de'
      'left outer join CHARTTYPE bdrct on bdrc.TYPE = bdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed disb credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Disbursement Credit'#39' as C_TYPE, bcrc.COMPONENT_CODE_DISPLA' +
        'Y as B_CR_GL_CODE, bcrc.DEFAULT_TAXCODE AS B_CR_GL_TAXCODE, '
      
        'bcrc.CHARTTYPE AS B_FCR_CHARTTYPE, bcrct.DESCR as B_CR_CHTY_DESC' +
        ', bcrc.DESCR as B_CR_CH_DESC, bcrc.REPORT_DESC as B_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed disb credit - b'
      
        'inner join chart bcrc on E.CODE = bcrc.BANK and bcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_DISB_CR '
      
        'left outer join taxtype bcrtt on bcrc.DEFAULT_TAXCODE = bcrtt.co' +
        'de'
      'left outer join CHARTTYPE bcrct on bcrc.TYPE = bcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed disb tax debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Disbursement Tax Debit'#39' as C_TYPE, bcrc.COMPONENT_CODE_DIS' +
        'PLAY as B_CR_GL_CODE, bcrc.DEFAULT_TAXCODE AS B_CR_GL_TAXCODE, '
      
        'bcrc.CHARTTYPE AS B_FCR_CHARTTYPE, bcrct.DESCR as B_CR_CHTY_DESC' +
        ', bcrc.DESCR as B_CR_CH_DESC, bcrc.REPORT_DESC as B_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed disb tax debit - b'
      
        'inner join chart bcrc on E.CODE = bcrc.BANK and bcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_DISB_TAX_DR '
      
        'left outer join taxtype bcrtt on bcrc.DEFAULT_TAXCODE = bcrtt.co' +
        'de'
      'left outer join CHARTTYPE bcrct on bcrc.TYPE = bcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed anticipated debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Cheque Requisitions Debit'#39' as C_TYPE, ndrc.COMPONENT_CODE_' +
        'DISPLAY as N_DR_GL_CODE, ndrc.DEFAULT_TAXCODE AS N_DR_GL_TAXCODE' +
        ', '
      
        'ndrc.CHARTTYPE AS N_DR_CHARTTYPE, ndrct.DESCR as N_DR_CHTY_DESC,' +
        ' ndrc.DESCR as N_DR_CH_DESC, ndrc.REPORT_DESC as N_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed anticipated debit - n'
      
        'inner join chart ndrc on E.CODE = ndrc.BANK and ndrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_ANTD_DR '
      
        'left outer join taxtype ndrtt on ndrc.DEFAULT_TAXCODE = ndrtt.co' +
        'de'
      'left outer join CHARTTYPE ndrct on ndrc.TYPE = ndrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed anticipated credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Cheque Requisitions Credit'#39' as C_TYPE, ncrc.COMPONENT_CODE' +
        '_DISPLAY as N_CR_GL_CODE, ncrc.DEFAULT_TAXCODE AS N_CR_GL_TAXCOD' +
        'E, '
      
        'ncrc.CHARTTYPE AS N_FCR_CHARTTYPE, ncrct.DESCR as N_CR_CHTY_DESC' +
        ', ncrc.DESCR as N_CR_CH_DESC, ncrc.REPORT_DESC as N_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed anticipated credit - n'
      
        'inner join chart ncrc on E.CODE = ncrc.BANK and ncrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_ANTD_CR '
      
        'left outer join taxtype ncrtt on ncrc.DEFAULT_TAXCODE = ncrtt.co' +
        'de'
      'left outer join CHARTTYPE ncrct on ncrc.TYPE = ncrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed anticipated tax debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Cheque Requisitions Tax Debit'#39' as C_TYPE, ncrc.COMPONENT_C' +
        'ODE_DISPLAY as N_CR_GL_CODE, ncrc.DEFAULT_TAXCODE AS N_CR_GL_TAX' +
        'CODE, '
      
        'ncrc.CHARTTYPE AS N_FCR_CHARTTYPE, ncrct.DESCR as N_CR_CHTY_DESC' +
        ', ncrc.DESCR as N_CR_CH_DESC, ncrc.REPORT_DESC as N_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed anticipated tax debit - n'
      
        'inner join chart ncrc on E.CODE = ncrc.BANK and ncrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_ANTD_TAX_DR '
      
        'left outer join taxtype ncrtt on ncrc.DEFAULT_TAXCODE = ncrtt.co' +
        'de'
      'left outer join CHARTTYPE ncrct on ncrc.TYPE = ncrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed creditors debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Unpaid Creditors Debit'#39' as C_TYPE, jdrc.COMPONENT_CODE_DIS' +
        'PLAY as J_DR_GL_CODE, jdrc.DEFAULT_TAXCODE AS J_DR_GL_TAXCODE, '
      
        'jdrc.CHARTTYPE AS J_DR_CHARTTYPE, jdrct.DESCR as J_DR_CHTY_DESC,' +
        ' jdrc.DESCR as J_DR_CH_DESC, jdrc.REPORT_DESC as J_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed CREDITORS debit - j'
      
        'inner join chart jdrc on E.CODE = jdrc.BANK and jdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_UPCRED_DR '
      
        'left outer join taxtype jdrtt on jdrc.DEFAULT_TAXCODE = jdrtt.co' +
        'de'
      'left outer join CHARTTYPE jdrct on jdrc.TYPE = jdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed creditors credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Unpaid Creditors Credit'#39' as C_TYPE, jcrc.COMPONENT_CODE_DI' +
        'SPLAY as J_CR_GL_CODE, jcrc.DEFAULT_TAXCODE AS J_CR_GL_TAXCODE, '
      
        'jcrc.CHARTTYPE AS J_FCR_CHARTTYPE, jcrct.DESCR as J_CR_CHTY_DESC' +
        ', jcrc.DESCR as J_CR_CH_DESC, jcrc.REPORT_DESC as J_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed CREDITORS credit - j'
      
        'inner join chart jcrc on E.CODE = jcrc.BANK and jcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_UPCRED_CR '
      
        'left outer join taxtype jcrtt on jcrc.DEFAULT_TAXCODE = jcrtt.co' +
        'de'
      'left outer join CHARTTYPE jcrct on jcrc.TYPE = jcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- billed creditors Tax debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Bill Unpaid Creditors Tax Debit'#39' as C_TYPE, jcrc.COMPONENT_CODE' +
        '_DISPLAY as J_CR_GL_CODE, jcrc.DEFAULT_TAXCODE AS J_CR_GL_TAXCOD' +
        'E, '
      
        'jcrc.CHARTTYPE AS J_FCR_CHARTTYPE, jcrct.DESCR as J_CR_CHTY_DESC' +
        ', jcrc.DESCR as J_CR_CH_DESC, jcrc.REPORT_DESC as J_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- billed CREDITORS tax debit - j'
      
        'inner join chart jcrc on E.CODE = jcrc.BANK and jcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.BILL_UPCRED_TAX_DR '
      
        'left outer join taxtype jcrtt on jcrc.DEFAULT_TAXCODE = jcrtt.co' +
        'de'
      'left outer join CHARTTYPE jcrct on jcrc.TYPE = jcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL --- receipt fee credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Receipt Fee Credit'#39' as C_TYPE, gcrc.COMPONENT_CODE_DISPLAY as G' +
        '_CR_GL_CODE, gcrc.DEFAULT_TAXCODE AS G_CR_GL_TAXCODE, '
      
        'gcrc.CHARTTYPE AS G_CR_CHARTTYPE, gcrct.DESCR as G_CR_CHTY_DESC,' +
        ' gcrc.DESCR as G_CR_CH_DESC, gcrc.REPORT_DESC as G_CR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- RECEIPT FEE credit - g'
      
        'inner join chart gcrc on E.CODE = gcrc.BANK and gcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.REC_FEE_CR '
      
        'left outer join taxtype gcrtt on gcrc.DEFAULT_TAXCODE = gcrtt.co' +
        'de'
      'left outer join CHARTTYPE gcrct on gcrc.TYPE = gcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- receipt sundry credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Receipt Sundry Expense Credit'#39' as C_TYPE, scrc.COMPONENT_CODE_D' +
        'ISPLAY as S_CR_GL_CODE, scrc.DEFAULT_TAXCODE AS S_CR_GL_TAXCODE,' +
        ' '
      
        'scrc.CHARTTYPE AS S_FCR_CHARTTYPE, scrct.DESCR as S_CR_CHTY_DESC' +
        ', scrc.DESCR as S_CR_CH_DESC, scrc.REPORT_DESC as S_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- RECEIPT SUND credit - s'
      
        'inner join chart scrc on E.CODE = scrc.BANK and scrc.COMPONENT_C' +
        'ODE_DISPLAY = e.REC_SUND_CR '
      
        'left outer join taxtype scrtt on scrc.DEFAULT_TAXCODE = scrtt.co' +
        'de'
      'left outer join CHARTTYPE scrct on scrc.TYPE = scrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- receipt disb credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Receipt Unbilled Disbursement Credit'#39' as C_TYPE, qcrc.COMPONENT' +
        '_CODE_DISPLAY as Q_CR_GL_CODE, qcrc.DEFAULT_TAXCODE AS Q_CR_GL_T' +
        'AXCODE, '
      
        'qcrc.CHARTTYPE AS Q_CR_CHARTTYPE, qcrct.DESCR as Q_CR_CHTY_DESC,' +
        ' qcrc.DESCR as Q_CR_CH_DESC, qcrc.REPORT_DESC as Q_CR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- RECEIPT DISB credit - q'
      
        'inner join chart qcrc on E.CODE = qcrc.BANK and qcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.REC_UNDISB_CR '
      
        'left outer join taxtype qcrtt on qcrc.DEFAULT_TAXCODE = qcrtt.co' +
        'de'
      'left outer join CHARTTYPE qcrct on qcrc.TYPE = qcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- receipt undisb credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Receipt Disbursement Credit'#39' as C_TYPE, vcrc.COMPONENT_CODE_DIS' +
        'PLAY as V_CR_GL_CODE, vcrc.DEFAULT_TAXCODE AS V_CR_GL_TAXCODE, '
      
        'vcrc.CHARTTYPE AS V_FCR_CHARTTYPE, vcrct.DESCR as V_CR_CHTY_DESC' +
        ', vcrc.DESCR as V_CR_CH_DESC, vcrc.REPORT_DESC as V_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- RECEIPT UNDISB credit - v'
      
        'inner join chart vcrc on E.CODE = vcrc.BANK and vcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.REC_DISB_CR '
      
        'left outer join taxtype vcrtt on vcrc.DEFAULT_TAXCODE = vcrtt.co' +
        'de'
      'left outer join CHARTTYPE vcrct on vcrc.TYPE = vcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- receipt anticipated credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Receipt Cheque Requisitions Credit'#39' as C_TYPE, tcrc.COMPONENT_C' +
        'ODE_DISPLAY as T_CR_GL_CODE, tcrc.DEFAULT_TAXCODE AS T_CR_GL_TAX' +
        'CODE, '
      
        'tcrc.CHARTTYPE AS T_FCR_CHARTTYPE, tcrct.DESCR as T_CR_CHTY_DESC' +
        ', tcrc.DESCR as T_CR_CH_DESC, tcrc.REPORT_DESC as T_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- RECEIPT ANTICIPATED credit'
      
        'inner join chart tcrc on E.CODE = tcrc.BANK and tcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.REC_ANTD_CR '
      
        'left outer join taxtype tcrtt on tcrc.DEFAULT_TAXCODE = tcrtt.co' +
        'de'
      'left outer join CHARTTYPE tcrct on tcrc.TYPE = tcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- receipt creditors credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Receipt Unpaid Creditors Credit'#39' as C_TYPE, pcrc.COMPONENT_CODE' +
        '_DISPLAY as P_CR_GL_CODE, pcrc.DEFAULT_TAXCODE AS P_CR_GL_TAXCOD' +
        'E, '
      
        'pcrc.CHARTTYPE AS P_FCR_CHARTTYPE, pcrct.DESCR as P_CR_CHTY_DESC' +
        ', pcrc.DESCR as P_CR_CH_DESC, pcrc.REPORT_DESC as P_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- RECEIPT CREDITORS credit'
      
        'inner join chart pcrc on E.CODE = pcrc.BANK and pcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.REC_UPCRED_CR '
      
        'left outer join taxtype pcrtt on pcrc.DEFAULT_TAXCODE = pcrtt.co' +
        'de'
      'left outer join CHARTTYPE pcrct on pcrc.TYPE = pcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff fee debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Fee - Billed Debit'#39' as C_TYPE, wdrc.COMPONENT_CODE_DI' +
        'SPLAY as W_DR_GL_CODE, wdrc.DEFAULT_TAXCODE AS W_DR_GL_TAXCODE, '
      
        'wdrc.CHARTTYPE AS W_DR_CHARTTYPE, wdrct.DESCR as W_DR_CHTY_DESC,' +
        ' wdrc.DESCR as W_DR_CH_DESC, wdrc.REPORT_DESC as W_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff fee debit - w'
      
        'inner join chart wdrc on E.CODE = wdrc.BANK and wdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_FEE_DR '
      
        'left outer join taxtype wdrtt on wdrc.DEFAULT_TAXCODE = wdrtt.co' +
        'de'
      'left outer join CHARTTYPE wdrct on wdrc.TYPE = wdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff fee credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Fee - Billed Credit'#39' as C_TYPE, wcrc.COMPONENT_CODE_D' +
        'ISPLAY as W_CR_GL_CODE, wcrc.DEFAULT_TAXCODE AS W_CR_GL_TAXCODE,' +
        ' '
      
        'wcrc.CHARTTYPE AS W_FCR_CHARTTYPE, wcrct.DESCR as W_CR_CHTY_DESC' +
        ', wcrc.DESCR as W_CR_CH_DESC, wcrc.REPORT_DESC as W_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff fee credit - w'
      
        'inner join chart wcrc on E.CODE = wcrc.BANK and wcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_FEE_CR '
      
        'left outer join taxtype wcrtt on wcrc.DEFAULT_TAXCODE = wcrtt.co' +
        'de'
      'left outer join CHARTTYPE wcrct on wcrc.TYPE = wcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff sundry debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Sundry Expense - Billed Debit'#39' as C_TYPE, xdrc.COMPON' +
        'ENT_CODE_DISPLAY as X_DR_GL_CODE, xdrc.DEFAULT_TAXCODE AS X_DR_G' +
        'L_TAXCODE, '
      
        'xdrc.CHARTTYPE AS X_DR_CHARTTYPE, xdrct.DESCR as X_DR_CHTY_DESC,' +
        ' xdrc.DESCR as X_DR_CH_DESC, xdrc.REPORT_DESC as X_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff SUND debit - x'
      
        'inner join chart xdrc on E.CODE = xdrc.BANK and xdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_SUND_DR '
      
        'left outer join taxtype xdrtt on xdrc.DEFAULT_TAXCODE = xdrtt.co' +
        'de'
      'left outer join CHARTTYPE xdrct on xdrc.TYPE = xdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff sundry credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Sundry Expense - Billed Credit'#39' as C_TYPE, xcrc.COMPO' +
        'NENT_CODE_DISPLAY as X_CR_GL_CODE, xcrc.DEFAULT_TAXCODE AS X_CR_' +
        'GL_TAXCODE, '
      
        'xcrc.CHARTTYPE AS X_FCR_CHARTTYPE, xcrct.DESCR as X_CR_CHTY_DESC' +
        ', xcrc.DESCR as X_CR_CH_DESC, xcrc.REPORT_DESC as X_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff SUND credit - x'
      
        'inner join chart xcrc on E.CODE = xcrc.BANK and xcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_SUND_CR '
      
        'left outer join taxtype xcrtt on xcrc.DEFAULT_TAXCODE = xcrtt.co' +
        'de'
      'left outer join CHARTTYPE xcrct on xcrc.TYPE = xcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff UNDISB debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Disbursement - UnBilled Debit'#39' as C_TYPE, ydrc.COMPON' +
        'ENT_CODE_DISPLAY as Y_DR_GL_CODE, ydrc.DEFAULT_TAXCODE AS Y_DR_G' +
        'L_TAXCODE, '
      
        'ydrc.CHARTTYPE AS Y_DR_CHARTTYPE, ydrct.DESCR as Y_DR_CHTY_DESC,' +
        ' ydrc.DESCR as Y_DR_CH_DESC, ydrc.REPORT_DESC as Y_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff undisb debit - y'
      
        'inner join chart ydrc on E.CODE = ydrc.BANK and ydrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_UNDISB_DR '
      
        'left outer join taxtype ydrtt on ydrc.DEFAULT_TAXCODE = ydrtt.co' +
        'de'
      'left outer join CHARTTYPE ydrct on ydrc.TYPE = ydrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff UNDISB credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Disbursement - UnBilled Credit'#39' as C_TYPE, ycrc.COMPO' +
        'NENT_CODE_DISPLAY as Y_CR_GL_CODE, ycrc.DEFAULT_TAXCODE AS Y_CR_' +
        'GL_TAXCODE, '
      
        'ycrc.CHARTTYPE AS Y_FCR_CHARTTYPE, ycrct.DESCR as Y_CR_CHTY_DESC' +
        ', ycrc.DESCR as Y_CR_CH_DESC, ycrc.REPORT_DESC as Y_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff undisb credit - y'
      
        'inner join chart ycrc on E.CODE = ycrc.BANK and ycrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_UNDISB_CR '
      
        'left outer join taxtype ycrtt on ycrc.DEFAULT_TAXCODE = ycrtt.co' +
        'de'
      'left outer join CHARTTYPE ycrct on ycrc.TYPE = ycrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff DISB debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Disbursement - Billed Debit'#39' as C_TYPE, mdrc.COMPONEN' +
        'T_CODE_DISPLAY as M_DR_GL_CODE, mdrc.DEFAULT_TAXCODE AS M_DR_GL_' +
        'TAXCODE, '
      
        'mdrc.CHARTTYPE AS M_DR_CHARTTYPE, mdrct.DESCR as M_DR_CHTY_DESC,' +
        ' mdrc.DESCR as M_DR_CH_DESC, mdrc.REPORT_DESC as M_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff disb debit - m'
      
        'inner join chart mdrc on E.CODE = mdrc.BANK and mdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_DISB_DR '
      
        'left outer join taxtype mdrtt on mdrc.DEFAULT_TAXCODE = mdrtt.co' +
        'de'
      'left outer join CHARTTYPE mdrct on mdrc.TYPE = mdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff DISB credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Disbursement - Billed Credit'#39' as C_TYPE, mcrc.COMPONE' +
        'NT_CODE_DISPLAY as M_CR_GL_CODE, mcrc.DEFAULT_TAXCODE AS M_CR_GL' +
        '_TAXCODE, '
      
        'mcrc.CHARTTYPE AS M_FCR_CHARTTYPE, mcrct.DESCR as M_CR_CHTY_DESC' +
        ', mcrc.DESCR as M_CR_CH_DESC, mcrc.REPORT_DESC as M_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff disb credit - m'
      
        'inner join chart mcrc on E.CODE = mcrc.BANK and mcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_DISB_CR '
      
        'left outer join taxtype mcrtt on mcrc.DEFAULT_TAXCODE = mcrtt.co' +
        'de'
      'left outer join CHARTTYPE mcrct on mcrc.TYPE = mcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff Anticipated debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Cheque Requisitions Debit'#39' as C_TYPE, zdrc.COMPONENT_' +
        'CODE_DISPLAY as Z_DR_GL_CODE, zdrc.DEFAULT_TAXCODE AS Z_DR_GL_TA' +
        'XCODE, '
      
        'zdrc.CHARTTYPE AS Z_DR_CHARTTYPE, zdrct.DESCR as Z_DR_CHTY_DESC,' +
        ' zdrc.DESCR as Z_DR_CH_DESC, zdrc.REPORT_DESC as Z_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff anticipated debit - z'
      
        'inner join chart zdrc on E.CODE = zdrc.BANK and zdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_ANTD_DR '
      
        'left outer join taxtype zdrtt on zdrc.DEFAULT_TAXCODE = zdrtt.co' +
        'de'
      'left outer join CHARTTYPE zdrct on zdrc.TYPE = zdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff Anticipated credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Cheque Requisitions Credit'#39' as C_TYPE, zcrc.COMPONENT' +
        '_CODE_DISPLAY as Z_CR_GL_CODE, zcrc.DEFAULT_TAXCODE AS Z_CR_GL_T' +
        'AXCODE, '
      
        'zcrc.CHARTTYPE AS Z_FCR_CHARTTYPE, zcrct.DESCR as Z_CR_CHTY_DESC' +
        ', zcrc.DESCR as Z_CR_CH_DESC, zcrc.REPORT_DESC as Z_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff anticipated credit - z'
      
        'inner join chart zcrc on E.CODE = zcrc.BANK and zcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_ANTD_CR '
      
        'left outer join taxtype zcrtt on zcrc.DEFAULT_TAXCODE = zcrtt.co' +
        'de'
      'left outer join CHARTTYPE zcrct on zcrc.TYPE = zcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff creditors debit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Unpaid Creditors Debit'#39' as C_TYPE, rdrc.COMPONENT_COD' +
        'E_DISPLAY as R_DR_GL_CODE, rdrc.DEFAULT_TAXCODE AS R_DR_GL_TAXCO' +
        'DE, '
      
        'rdrc.CHARTTYPE AS R_DR_CHARTTYPE, rdrct.DESCR as R_DR_CHTY_DESC,' +
        ' rdrc.DESCR as R_DR_CH_DESC, rdrc.REPORT_DESC as R_DR_CH_REPDESC'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff creditors debit - r'
      
        'inner join chart rdrc on E.CODE = rdrc.BANK and rdrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_UPCRED_DR '
      
        'left outer join taxtype rdrtt on rdrc.DEFAULT_TAXCODE = rdrtt.co' +
        'de'
      'left outer join CHARTTYPE rdrct on rdrc.TYPE = rdrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- woff creditors credit'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Write off Unpaid Creditors Credit'#39' as C_TYPE, rcrc.COMPONENT_CO' +
        'DE_DISPLAY as R_CR_GL_CODE, rcrc.DEFAULT_TAXCODE AS R_CR_GL_TAXC' +
        'ODE, '
      
        'rcrc.CHARTTYPE AS R_FCR_CHARTTYPE, rcrct.DESCR as R_CR_CHTY_DESC' +
        ', rcrc.DESCR as R_CR_CH_DESC, rcrc.REPORT_DESC as R_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- woff creditors credit - r'
      
        'inner join chart rcrc on E.CODE = rcrc.BANK and rcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.WOFF_UPCRED_CR '
      
        'left outer join taxtype rcrtt on rcrc.DEFAULT_TAXCODE = rcrtt.co' +
        'de'
      'left outer join CHARTTYPE rcrct on rcrc.TYPE = rcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- creditors control'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Creditors Control Account'#39' as C_TYPE, lcrc.COMPONENT_CODE_DISPL' +
        'AY as L_CR_GL_CODE, lcrc.DEFAULT_TAXCODE AS L_CR_GL_TAXCODE, '
      
        'lcrc.CHARTTYPE AS L_FCR_CHARTTYPE, lcrct.DESCR as L_CR_CHTY_DESC' +
        ', lcrc.DESCR as L_CR_CH_DESC, lcrc.REPORT_DESC as L_CR_CH_REPDES' +
        'C'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- creditors control - l'
      
        'inner join chart lcrc on E.CODE = lcrc.BANK and lcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.CREDITORS '
      
        'left outer join taxtype lcrtt on lcrc.DEFAULT_TAXCODE = lcrtt.co' +
        'de'
      'left outer join CHARTTYPE lcrct on lcrc.TYPE = lcrct.CODE'
      'where e.code = :ENTITY'
      'UNION ALL'
      '--- YEAR END ACCOUNT'
      'select e.CODE, e.NAME, e.ABN, e.DEFAULT_BANK, b.bankname, '
      
        #39'Profit Appropriation Account'#39' as C_TYPE, kcrc.COMPONENT_CODE_DI' +
        'SPLAY as K_CR_GL_CODE, kcrc.DEFAULT_TAXCODE AS K_CR_GL_TAXCODE, '
      
        'kcrc.CHARTTYPE AS K_FCR_CHARTTYPE, kcrct.DESCR as K_CR_CHTY_DESC' +
        ', kcrc.DESCR as K_CR_CH_DESC, kcrc.REPORT_DESC as K_CR_CH_REPDES' +
        'C '
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      '--- YEAR END ACCOUNT - k'
      
        'inner join chart kcrc on E.CODE = kcrc.BANK and kcrc.COMPONENT_C' +
        'ODE_DISPLAY = e.PROFIT_APPR_ACCT '
      
        'left outer join taxtype kcrtt on kcrc.DEFAULT_TAXCODE = kcrtt.co' +
        'de'
      'left outer join CHARTTYPE kcrct on kcrc.TYPE = kcrct.CODE '
      'where e.code = :ENTITY')
    Left = 296
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object qryEntityPrintBase: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select e.CODE, e.NAME, e.ABN, e.ACN, e.DEFAULT_BANK, b.bankname,' +
        ' e.DEFAULT_ENTITY,'
      
        'case when e.CASH_OR_ACCRUAL = '#39'A'#39' then '#39'Accrual'#39' else '#39'Cash'#39' end' +
        ' as CASH_OR_ACCRUAL,'
      
        'e.FEE_TAX_BASIS, e.NJOURNAL, e.LASTBILL, e.LASTCREDITNOTE, e.NEX' +
        'TMATTER, e.NEXTARCHIVE,'
      
        'case when e.CLIENTCODE = '#39'A'#39' then '#39'Partial name'#39' else '#39'Numerical' +
        #39' end as CLIENTCODE, '
      'e.CLIENTPAD, e.CLIENTLENGTH, e.CLIENTSEPARATOR,'
      
        'case when e.USE_PHONEBOOK_NAME = '#39'Y'#39' then '#39'Yes'#39' else '#39'No'#39' end as' +
        ' USE_PHONEBOOK_NAME,'
      
        'case when e.USE_ENTITY_CODE = '#39'Y'#39' then '#39'Yes'#39' else '#39'No'#39' end as US' +
        'E_ENTITY_CODE,'
      'e.USE_ENTITY_LENGTH, e.USE_ENTITY_SEPARATOR,'
      
        'case when e.CLIENTACRONYM = '#39'Y'#39' then '#39'Yes'#39' else '#39'No'#39' end as CLIE' +
        'NTACRONYM, '
      'case '
      '    when e.MATTERCODE = '#39'N'#39' then '#39'Numerical'#39' '
      '    when e.MATTERCODE = '#39'C'#39' then '#39'Client code + sequence'#39' '
      '    when e.MATTERCODE = '#39'A'#39' then '#39'Author + Matter number'#39' '
      '    when e.MATTERCODE = '#39'A'#39' then '#39'Author + Matter number'#39' '
      '    when e.MATTERCODE = '#39'T'#39' then '#39'Type + Matter number'#39' '
      
        '    when e.MATTERCODE = '#39'E'#39' then '#39'Client + Entity + Matter numbe' +
        'r'#39' '
      '    else '#39'Other'#39' end as MATTERCODE, '
      'e.MATTERPREFIX, e.MATTERPAD, e.MATTERSEPERATOR, '
      
        'case when e.CREDITORCODE = '#39'A'#39' then '#39'Partial name'#39' else '#39'Numeric' +
        'al'#39' end as CREDITORCODE,'
      'e.CREDITORPAD, e.CREDITORLENGTH, '
      
        'case when e.CREDITORACRONYM = '#39'Y'#39' then '#39'Yes'#39' else '#39'No'#39' end as CR' +
        'EDITORACRONYM,'
      
        'e.LOCKDATE, e.FINANCIALYEARENDING AS FINYEAREND, e.LAST_ROLLOVER' +
        ', e.CLOSE_ARCHIVE, e.CREDITORS'
      'from entity e'
      'inner join BANK b on e.default_bank = B.ACCT'
      'where e.code = :ENTITY')
    Left = 376
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object dsEntityPrint: TUniDataSource
    DataSet = qryEntityPrint
    Left = 296
    Top = 424
  end
  object dsEntityPrintBase: TUniDataSource
    DataSet = qryEntityPrintBase
    Left = 376
    Top = 424
  end
  object peEntityPrint: TppDBPipeline
    DataSource = dsEntityPrint
    UserName = 'peEntityPrint'
    Left = 296
    Top = 472
    object peEntityPrintppField1: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 0
    end
    object peEntityPrintppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object peEntityPrintppField3: TppField
      FieldAlias = 'ABN'
      FieldName = 'ABN'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object peEntityPrintppField4: TppField
      FieldAlias = 'DEFAULT_BANK'
      FieldName = 'DEFAULT_BANK'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object peEntityPrintppField5: TppField
      FieldAlias = 'BANKNAME'
      FieldName = 'BANKNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object peEntityPrintppField6: TppField
      FieldAlias = 'C_TYPE'
      FieldName = 'C_TYPE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 5
    end
    object peEntityPrintppField7: TppField
      FieldAlias = 'GL_CODE'
      FieldName = 'GL_CODE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 6
    end
    object peEntityPrintppField8: TppField
      FieldAlias = 'GL_TAXCODE'
      FieldName = 'GL_TAXCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object peEntityPrintppField9: TppField
      FieldAlias = 'GL_CHARTTYPE'
      FieldName = 'GL_CHARTTYPE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 8
    end
    object peEntityPrintppField10: TppField
      FieldAlias = 'GL_CHRTTYPE_DESC'
      FieldName = 'GL_CHRTTYPE_DESC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object peEntityPrintppField11: TppField
      FieldAlias = 'CHART_DESC'
      FieldName = 'CHART_DESC'
      FieldLength = 120
      DisplayWidth = 120
      Position = 10
    end
    object peEntityPrintppField12: TppField
      FieldAlias = 'CHART_REPORTRDESC'
      FieldName = 'CHART_REPORTRDESC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 11
    end
  end
  object peEntityPrintBase: TppDBPipeline
    DataSource = dsEntityPrintBase
    UserName = 'peEntityPrintBase'
    Left = 376
    Top = 472
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = peEntityPrint
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Development - old\INSIGHT work up to 26 oct 2017\Insight\ppRe' +
      'port1.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    Icon.Data = {
      0000010002002020100000000000E80200002600000010101000000000002801
      00000E0300002800000020000000400000000100040000000000800200000000
      0000000000000000000000000000000000000000800000800000008080008000
      0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000888888880000000000
      088888888888888888888880000088888888888888888888887CC88000008888
      88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
      CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
      F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
      000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
      000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
      000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
      001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
      003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
      0000C00000000000000000000000000000000000000000000000000080000080
      00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
      888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
      8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
      7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
      CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
      0000000F00000007000000030000000100000000000000000000000000000003
      0000001F0000001F0000007F0000007F0000FFFF0000}
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 564
    Top = 452
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'peEntityPrint'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 121179
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Entity Information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7673
        mmLeft = 6350
        mmTop = 4233
        mmWidth = 54769
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        AutoSize = True
        MaintainAspectRatio = False
        Border.mmPadding = 0
        Picture.Data = {
          0A544A504547496D61676578260000FFD8FFE000104A46494600010101007800
          780000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108004A011203012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDF2
          BDD420D32DCCB733436F10EAF2B8451F89AA1FF09D687FF419D27FF0323FF1AF
          953FE0B8CECBFB036BBB5DD375C052518A9C18A41D453BC29FF0453FD9AF52F0
          BE9B7137C3EB979AE2D229646FF848F541B9990127FE3E3D4D007D53FF0009D6
          87FF00419D27FF000323FF001A3FE13AD0FF00E833A4FF00E0647FE35F30FF00
          C394BF6601FF003213FF00E14FA9FF00F24D03FE08A5FB3013FF002213FF00E1
          4FA9FF00F24D3B317323E9EFF84EB43FFA0CE93FF8191FF8D3A1F1A68D7132C7
          1EAFA5BBB9DAAAB77192C7D00CD7CC327FC1137F66387EFF00C3F9933D37789B
          5419FF00C99AD0F07FFC11FBF66FF0178B34CD734AF04B5B6A7A3DD47796931F
          126A2FE54B1B0656DAD7054E081C1047B52B30BA3EA1A29B1CCB30CAB2B7BA9C
          D324BC8617DAF2C4ADE8CE01A064B4543FDA36FF00F3DE0FFBF829F0DC47704F
          97223E3AED6071400FA28A64B731C18DF22267A6E6033400FA29B14C93AE51D5
          C74CA9CD3A800A2A217F033604F0939C6378A7C92AC49B999557D58E05003A8A
          8E2BA8E73F2491BE3AED607152500145151A5CC72CAC8B246CEBF79430257EA2
          80B925145140051451400514530DC4626F2F7A7998CECDC377E5400FA28A2800
          A28A67DA23F3BCBDE9E6633B370DDF95003E8A28A0028A28A0028A28A00F8FBF
          E0B8FF00F260FAE7FD7CAFFE8B92BEA8F089FF008B7DA67FD8362FFD142BE57F
          F82E3FFC983EB9FF005F2BFF00A2E4AFAA3C23CFC3ED33FEC1B17FE8A14D6E27
          B1F805E3AF1B6B51F8E35A55D6356005FDC0005E49C7EF1BDEAC7C2EF1AEB52F
          C4EF0DAB6B1AAB2B6AB6A083792608F393DEA4F1C7C25F15CFE37D65D3C2FE23
          656BF9C8234C98823CC6FF0066AC7C30F84FE2AB6F899E1C77F0C788911355B5
          2CCDA6CC028132724EDAFEBC94F0FF00577AC76F2EC7F9C94E9E37EBAB495B9B
          CFB9F727FC17CB5DBED1B58F865F63BDBCB4F322D4377913347BB0D6F8CE08CD
          7E797FC273ADFF00D06756FF00C0C93FF8AAFD14FF0082F3783F57F156AFF0D3
          FB2F4AD4F52F262D43CC3696AF3797930633B41C6707AFA57E7C7FC2A0F16FFD
          0ADE24FF00C164FF00FC4D7CC7014A82C8A873B57F7BB7F348FB9F1729E2DF16
          E2DD252B7B9B5EDFC381FA7BFF000428D5EEF57FD9EBC58F77757376EBAF6034
          D2B4840F253804935F9D1FF05EAF18EAFA37FC14D7C5F0DA6B1AB5A5BA693A51
          1141792C68B9B55CE15580AFD1CFF8219F86B52F0C7ECFBE2C8B52D3AFF4E95F
          5DDCA9756EF0B30F25390180C8AFCD1FF82FF2EEFF00829EF8C47AE91A4FFE92
          AD7E23C68E2F3BC472EDCDFA23FA9FC31535C2D8353DF97AFF0089997E13FF00
          8257FED5FE38F0B69BAD699E1FF105C69BABDAC57B692FFC248ABE6C3220746C
          197232A41E7D6B8EF8CDFB3C7ED29FB0CC969AFF008A2DFE20783E0F39238357
          B6D5E47B6F34F2A8648E420371D1BAFBD7EA3FECFBFF0005DAFD9DFE1E7C05F0
          4E81A9EBDE208F51D1341B1B0BA44D166655962B74470081823729E6BC0BFE0A
          EDFF00059EF865FB52FECBB77F0E3E1DDB6AFABDC6BD750C97B7F7F646D60B18
          627127C818EE6919801D00032727A57CB9F787BD7FC106BFE0A35E2DFDAF7C23
          E27F0578FEF8EB3E25F07470DDDAEAD200B3EA169212844B8C02F1B81F36390E
          33C8AF16FF00839BFC47A8E85E36F8462C751D42C44967A89716D72F0EFC3C38
          CED2335AFF00F06D57ECB3E23F09FF00C269F15359D36F34DD1F5FB18749D0DE
          7429FDA2824324D3203C940C88A1BA13BB1D2B9CFF0083A13FE477F841FF005E
          5A8FFE870D007D01FF0006E26B179ADFEC35ADCB7B79777B28F165D2892E2669
          580F22DF8CB12715F7BEB071A3DDFF00D717FF00D04D7E2F7FC1203FE0AE3F0B
          3F612FD99752F0878D6D3C5D3EAB77AF4FA923697A7C7710F94F1C4A32CD2A9D
          D943C63D2BEA6D43FE0E3EFD9FAEB4F9E25D3BE246E9236419D1A1EA411FF3DE
          803F26BF674F1D6BB37EDC7E0989F5DD6DE26F1F59A3235FCC5597FB454608DD
          8C63B57ED57FC177352B9D27FE09A1E379ED2E6E2D275BBD3B6CB04AD1BAE6F6
          2070CA41AFC3AFD97EF9354FDB67E1F5D47BBCABAF1D584E9B873B5F504619F7
          C1AFDBEFF82F5FFCA31BC73FF5F7A6FF00E96C3401F177FC1B3DE27D4F5DFDA5
          3E2525F6A7A95F22786ADD956E6EA49829FB4F50189C1AFD97AFC5AFF83627FE
          4E67E26FFD8B36FF00FA555FB4B40057807C02FD8B6FFE0BFED5FF0010BE244F
          E2A6D52D3C6ED3345A61819458EF98483E62E41C018E00AF7FAF8CFF0064EF8F
          3E31F1A7FC1417E3D786755F10EA17DA0786E29DB4CB195818AC889D546C18C8
          C0E2BDDCA2962A786C53A124A2A0B9935BAE64ACB4D35B763E5388ABE069E370
          2B174DCA6EA3F66D3B72CB924EEF557564D753ECCC518AFCC0FD867F691F8FBF
          B5EE857FE00D1FC51796D20BD37DADF8CAF02CD3E9564C8AA96D02E00F31DD5C
          83D793D0026BDB7E237FC13FFE297C2BF08EA1E24F01FC79F88FAB789F4C85AE
          A2B1D5EEFCEB6BF283718F69254120606411DB8EB5E962F856183C4BC2633150
          84FA2B49EFB36D2F753F3D6DAB563C3CB7C40AB9960966396606A54A56D5DE11
          7A6EA29BBCDAF2D2FA26DDCFB4A8C57C67F077FE0A6D7BE26FF827B78A7E256B
          165667C5FE0F91B4DB8B64431C17374DB042FB7AAA9F301619EAAC0573DF00FF
          00658F8B3FB64FC31D3FE20F8FBE35F8DFC373F8890DDD8697E1E9BEC905B404
          9D848520648E40C64023249AE7FF00562A5155278FA8A94612E4BEB26E56BE89
          2D55B5BE8762E3BA38A951A594519579D587B4B2718A8C2F6BC9C9E8F9AEACAE
          EE99F76F4AF0FD63F645BDD53F6E7D2BE300F12B4763A7694DA7368BE4B62463
          1BA6FDFBB1FC79FBBDABC0354F883F12FF00E09A7F1F3C23A778CFC797BE3EF8
          49E33BA161FDA3AC0CDDE9331EECF92DC6431C92A5777008AF41F14FC68F14DA
          7FC15BFC31E0A875DBE5F095E78626BC9B4B561F67965114A43918CE72A0F5ED
          5D14726C5E19CEA616AC5C274A72E649DA515F146CD5D4BA797739313C4B80C7
          2A74B30A138D5A788A51706D5E1396B09DE32B4A1D53D6FDB43EAEA315F157ED
          89FB52FC4FF8A3FB4BA7C11F81F2C363AAD8C0B71E20D6F0A4D806C12BB98108
          AAACA4900B12C157915B3A67FC135BC7DA3DA8BF83F68EF89DFF0009205DE659
          2632D9349E861673F267B13D2B916414E951855C7622349D4578C6D293B3D9BE
          55EEA7D3AF91E8BE2EAD5F15568657849D78D27CB29A708C7996F18B935CCD6C
          F649F53EBCAF87AF6FE7FF0087E6DBDBF9F3791FF08C67CAF30ECCFD98F3B7A5
          795FC56FDB6BE33785FE39FC39F871E29D46E7C3FE2CD13C431D9EB33E9C025A
          7892C65787C89F18C723782063A9E01E04BFB5F7C58F117C1DFF0082BA7F68F8
          47454F1078A6FF0042B7D2F4AB391888DAE278B62BB63AAAF2C791D392057D3E
          4DC3389C2CEA42728B75A854E5B3D2D7493BBD2CF74FB6E7C1F1371CE0B1D4A8
          D5A709C561B15439D35EF5DA9371E5577CC9A716BBED75A9FA618A315F2127FC
          13B3E24F8FAC9357F16FED07F10AD7C5370A259A2D167FB369D6721E76471A91
          951D33C6715C6FC03F8DBF156C7E38F8B3F66CF1FF008AE75D7A5B0964F0E78C
          2DE21F6C0A00911B0787CC61882DC82AC093D6BE6A3C3D4AAD39CB0B898CDD35
          792B495A3D64AEBDE4BADB5B743EE27C635F0F569C330C14E92AAF969B7283BC
          DABC612B4BDC94B657BABEED1EA9F06BF6B4F15F8EFF00E0A23F107E185F0D37
          FE11AF0D58FDA2CFCB836DC6EFDD7DE7CF23E73DBD2BE9BAFCB4F829FB3BF8D7
          5FFF0082937C46F0B59FC59F11697AFE99A7F9975E248ADA3375A8AFEE7E4753
          F281F30E9FDD15FA63F0E7C357DE0EF02E95A5EA7AC5CF88350B0B6586E352B8
          50B2DEB8EB2301C027DAB7E2BCBB0B859D2FAB4E3AC2174935BC7E2D525AFDFD
          D1C7E1EE738FC752C42C6D397BB56AA5294A2ED69D94346DFBBB6D6ECCDAA28A
          2BE48FD14F8FBFE0B8FF00F260FAE7FD7CAFFE8B92BEAAF06BF95E02D29BFBBA
          7C27F28857CA9FF05CA709FB036B849007DA5793FF005CE4AFAA7C227FE2DEE9
          9FF60D8BFF00450A6B713D8FCC7F12FF00C174BE2668BE24D42CD3C35E0D64B4
          BA96052D15C648572A33FBCEBC54BE0CFF0082E5FC4BF1278C748D3A5F0D7839
          22BFBD86DA4658E7DCAAF22A923F79D706BE21F1EFFC8F7ADFFD842E3FF46B55
          9F855FF2547C35FF00616B5FFD1C95FD3CF83324F61CDF578DEDE7DBD4FE0F87
          89BC50F16A9BC6CEDCD6E9DFD0FD6DFF00829D7EDF3E29FD89AFFC1F178734BD
          13515F10A5D35C1D41643E5F94620BB7632F5DE739F415F2AFFC3F97E27FFD0B
          1E0BFF00BF571FFC72BB6FF83813FE431F0C3FEB96A3FF00A15BD7E73D7CFF00
          05F0BE558BC9A8E2313414A6F9AEDDFF0099AEE7D8F89DC7BC41977136270782
          C54A14E3CB64AD657845BE9DD9FB65FF0004D6FDB13C41FB66FC2BD735DF1169
          FA569F73A66A7F62892C15C232796AD93B998E726BF20FFE0BFADB3FE0A7BE31
          3E9A4693FF00A4AB5FA43FF0417FF9375F177FD87FFF0068257E6F7FC17F577F
          FC14FBC623D748D27FF4956BF22E2CC2D1C366F5E8508F2C62F45DB447F47787
          B986231DC3B85C5E2E6E75251BB6F77AB3ECDF81BFF06ED7C1AF89BF053C1FE2
          4BEF12FC448AF7C41A259EA57090DF5B88D249A04918283092141638C93C5793
          7FC149FF00E082FE17FD97BF665D6FE227C3EF13F886F9FC2CA973A8E9FACBC5
          28B8B62C119A37444C3A960704104679AD8F83FF00F0726E9BF0B3E12F85FC30
          DF08750BD6F0EE936BA61B85F10A209CC30AC7BC2F90719DB9C64E335E4DFF00
          050BFF0082F0EB3FB687C08BEF87BA178297C15A46B4F18D56E66D4C5ECF770A
          307F25711A0452C17279242E38C9AF9D3EC8EB3FE0DD3FDB0BC51A2FED2537C2
          3D4757BCD43C29E23D36E2F34EB3B894C8BA75D40A24262C9F915A30E0A8E321
          4F6AEAFF00E0E84FF91DFE107FD796A3FF00A1C35CE7FC1B89FB21EBDE21F8F5
          7FF18EFAC66B4F0BF87EC27D374BB9950A8D42EE6011FCACFDE448F70661C658
          0F5C747FF07427FC8EFF00083FEBCB51FF00D0E1A00E53FE0903FF00048DF85B
          FB76FECCDA978BFC6B79E2E8355B4D7A7D35174BD423821F292389812AD131DD
          973CE7D2BEA5D43FE0DBFF00D9FED74F9E55D4FE246E8E36719D621EA013FF00
          3C299FF06D8FFC9896B9FF006375DFFE88B7AFD00D67FE40F77FF5C1FF00F413
          401FCC27ECBD629A5FEDB1F0F6D63DC63B5F1D584085BA954D411467DF02BF6F
          BFE0BD7FF28C6F1CFF00D7DE9BFF00A5B0D7E23FECE1FF0027D7E07FFB28167F
          FA725AFDB8FF0082F5FF00CA31BC73FF005F7A6FFE96C3401F107FC1B13FF273
          3F137FEC59B7FF00D2AAFDA5AFE717FE0981FF0005134FF82717C4EF13F889FC
          23278C0788F4C8F4E16E9A90B1FB3EC97CCDFB8C6FBB3D3181F5AFB57FE228FB
          7FFA22375FF8552FFF0022D007EB2D7C0DFB13FF00CA4FFF00695FFAE171FF00
          A52B553F60CFF82EE43FB6FF00ED3DA1FC374F85F3F869B5A82EA6FED06D7D6E
          C43E442D2E3CB1026776DC7DE18CD5BFD89FFE527FFB4AFF00D70B8FFD295AFA
          CE1CFF0073C77FD7B5FF00A5C4FCF78D3FE465957FD7E97FE9A997FF00E082BA
          6C507ECEFE33BA083CFB8F11F96EF8E4AADBC4547D0166FCCD7DCD7633692FFB
          8DFCABE20FF820DFFC9B378B3FEC667FFD2682BEDFBAFF008F597FDC6FE553C6
          8DBCF7117FE6FD115E17A4B84F0497F23FFD299F9B9FF04EBF80569FB4DFECBB
          F1F7C13733FD8FFB5FC4456DEE00C8B79977346E4770194647A66B6BE12FC46F
          DA7FF607D02D7C27AE7C373F123C1DA3E22B3BBD2899678A0CE76A3460B1001E
          1648F23A6702BCEFF64DF18F8F7E1DFEC6BF1DBC41F0E67F235FD13C5D1DE4A4
          5BACECD6ABBBCE01181CE14EEE9D14D7DDBFB207ED91E17FDA83E0D68DAD41AC
          E970EB86D91355D3DAE1526B5B950049F2120ED27953D30457D7F10D7C4E1EAE
          2273A51AD8773578BBDE32E48EB75671BAD2FE47E73C1B84C162F0F83A54B113
          C363234A4E338F2F2CE1ED67EEDA5753E57AB564D5EFE9C17C26FF008289FC26
          FDA63C516DE11F14E8D73E19F129947D9F48F15E9CA034BD004760577FA67693
          D073C5717E2F511FFC1707C1E00C01E0F9C003B7EE67AE6FFE0B61E27F0678DF
          E1CF86BC39A49D3F5BF89973ABC434D8B4F0B3DEC30E183A929960198A614F53
          C8E953787AC350D27FE0AE9F0B2DB562CDAADB7C3B48AF4B1C9332DA4824C9EE
          77035C783C050861658DA1194154A3597249DED64BDE8BD1F2BBF55BADD9E9E6
          39B62EA63E9E578B946ABA388C33F6B05CB7E694BDD9ABB4A51B747B3D91D07F
          C12BA04F107C77FDA2FC4374BBB569FC58D6AD21FBCB17993305FA67F957DA75
          F03F873E22DA7FC13AFF00E0A2BE3C83C62D2697E02F8B6E354D3B54D8C6DADE
          E4B9660F81C619DD5BFBA361E86BED993E2BF85E2D03FB55BC49A08D336799F6
          B37F1793B7AE77EEC57CF71561EAD4C5C7174E2DD3A91838B5B69149AF54D59A
          3EC780319428E5D3CBEB4946B509D4534DA4F59CA4A4FCA49A69ECCF87FF00E0
          AC9E18B5B7FDAFBE00EB08A82F6EB524B3948EAC91DCC4CB9FA176AD2D6F4D83
          51FF0082ED5819A3590DB78704D1647DC716AC011EF863F9D7857ED8FF00B4C5
          B7ED47FB7A7C39D53C3EB7171E0BF0FEB56DA3E9DA9142B06A370B708F3BC79E
          A06E403D803DEBDF2F7FE53B16FF00F62BFF00EDB1AFB4586AD86C053A55B492
          C356D3AABC93B7C93D8FCC1E3B0D8ECE2BE230B67078EC2D9F47684936BBA6D5
          D3EBB9F7357C25F15C6CFF0082EAFC3BC71BBC38D9C77FF45BEAFBB6BE13F8B3
          FF0029D4F873FF0062E3FF00E935F57C4F09FF001313FF005E2AFF00E927EA3E
          217F0703FF0061543FF4B1DFB347FCA66BE30FFD827FF91EBEEAAF833F67FD6A
          D3C3FF00F05A0F8B097D73059B5E695B6013B84F34EDB76C0CF5E39FA57DDF69
          7915FDBACD04B1CD138CABC6C195BE84714F8B53F6F41F4F634BFF0049178752
          8FD53151BEBF58AFFF00A5B24A28A2BE50FD0486F6C20D4A0315C430DC447AA4
          A81D4FE06A478834253A295DB81D853A8A00F8F754FF0082227C1CD5F54B9BB9
          6F3C6BE6DD4AF33EDD4A3C6E662C71FBAF534FD0BFE0897F07BC3DAE596A105E
          78D3CFB0B88EE630DA94654B2306191E574C8AFAFE8AFA2FF5BB39B72FD6656F
          53E33FE21DF0D2973AC153BEFB1E2FFB5AFEC25E0AFDB3AEB4397C5D36BB0B78
          7D665B5FECFBA584112942DBB28D9FB831F8D78F7FC38CFE0C7FCFEF8DFF00F0
          671FFF001AAFB268AC309C499A61692A187AF28C16C93D3B9D598704E438FC44
          B178CC2C27525BC9AD5D9597E091E5BFB2A7EC89E15FD8EFC1FA8689E1497579
          6CF53BBFB6CC750B8599C3ED0BC10AB81803B5739F1C7FE09A1F033F693F8917
          5E2EF1C7C3ED3BC41E23BE8A2827BD9AEEE63691225D8830922AF0BC74AF75AF
          02F137EDE36E9FB4D7887E177853C0DE27F1BEB5E0AB7B0BAF12CDA7CF6B0269
          31DE1FDC9549E5479CED05DBCA07681D7240AF2F138AAB88AAEBD793949EEDEE
          CF7B0381C3E0A8470B84828423B25B239AFF00872D7ECBFF00F449347FFC0FBD
          FF00E3D5AFE10FF8248FECDDE06D4E3BBB0F845E1633C4DB94DD896F141FF766
          775FD2BDA355F8C3E11D0BC716BE19BDF15786ECFC497C01B6D267D4E18EFAE0
          1E9B212C1DB3EC2BC07FE1E8DE129FF6A4F885E018D345B7D13E145B2DC78A75
          FBEF105B5BFD9C79066736F6BCC93AC58092118D8EC17193581D67D31A468F69
          E1ED2E0B2B0B5B6B1B2B6411C36F6F108E2894740AAA0003E95E65FB487EC3FF
          000ABF6BBBCD2AE3E23F83ECFC513688924762D3DC4F17D9D6420B81E5BAE73B
          475CF4AD2F84BFB5AFC34F8E7E10B0D73C2FE39F0C6A961A8E9F26AB0ECD4625
          945AC67124CF196DE8A8480E580DA7838AE8AD3E2F784F50B0B6BA83C51E1C9E
          D6F74E6D62DE68F5285A3B8B15C6EBB460D86806E5CC83E5191CF34018BFB3DF
          ECCBE05FD94FC1537877E1F787ADFC35A2DC5D35EC96B0CD2CAAD3305567CC8C
          C790ABDF1C5775344B710B238CABA9561EA0F5AE474DFDA17C01ACF83AEBC456
          7E39F075D787EC65105CEA90EB56CF676F2120047983EC56248182739229BAA7
          ED15F0FB43D022D56F7C79E0CB3D2E7BA7B18AF27D6EDA3B792E10E1E1572E14
          C8A7AA8391E9401E45E1FF00F82467ECE5E15F1AD9F88B4FF85FA55B6B5A7DF2
          6A76F74B7B765A2B949048B20065C6438070463DABD8FE377C0CF0A7ED1FF0E6
          F7C25E36D1A1D7FC3BA83C6F71652C9246B298DC3A125195B8650783DA8F8D9F
          19F43F807F05BC4BE3CD7AE523D07C2FA5CDAB5CC8B228F3638E32E1509214BB
          E02A8CFCCCCA075AF33FD987F6ECD0FE38FECEF69F12FC4F27853C01E1DD5A54
          1612DDF8AACEE636578D5D526914AA4570376D68492CA41A00E57FE1CB5FB2FF
          00FD124D1FFF0003EF7FF8F51FF0E5AFD97FFE89268FFF0081F7BFFC7ABDEB5D
          F8DFE0BF0B69BA6DEEA7E30F0B69D67ACC524FA7CF75AAC10C57D1C69E648F13
          330122AA02C4AE405193C572DFB547ED63E1DFD947F679BDF895AAC577AD6816
          66D76FF659495EE16E2548E3742582B2FEF14E73D3A500735F047FE0999F02FF
          00670F89165E2EF04FC3DD3B40F11E9E92476F7B15DDCC8F12C8851C00F232F2
          AC4723BD77DE0EFD9BFC11E00F88FE21F1768FA04165E23F15865D5AF566959A
          F0336E3952C54648CFCA05747E26F1CE8DE08F0BC9AD6BBAAE9BA1E930A2BCD7
          9A8DD25B5BC01B18DD2390A3920726B1F5BF8FBE04F0D7836C7C47A8F8DBC23A
          7F87B54E2CB54B9D62DE2B2BCEA7F77333847E87EE93D2B5A75EA53528C24D29
          68ECF75E7DCC2B6168D59467560A4E2EF16D2767B5D7676D3421F827FB3DF837
          F672F0EDD693E0AD0E0D074FBDB93773C314B2482494A852D97663D140EB8E2B
          B2650EA41E8460D73BE26F8C3E11F05687A7EA7ACF8ABC37A469BABBAC763777
          BA9C30417ACC32AB13BB057247202939AF06FD973FE0A383F6A2D17E186A7A7F
          83FF00B374DF88936B50C92DC6B96C25D33FB3E49230C2224497024F2F39881D
          80E5B8A55AB54AB3752AC9CA4F76DDDBF9861B0D470F4950C3C1420B6492497A
          25A23DA3E107ECF1E0CF80767AADBF84741B7D1A1D72E4DDDFA2492482E65390
          58EF66F53C0C0E6BC7BE327FC126FE0E7C63F15B6B4749D47C337F2E4CE741BA
          1671DC31E77326D6507FDD033DF35ED5E17F8F1E06F1C6B76DA668BE34F09EB1
          A95EC325C5BDA58EAF6F713DC471B147744472CCAAC0A920601041A8E0FDA13C
          0375E2D3A045E39F0749AEADDFD80E9A9ACDB1BB173827C8F2B7EFF3300FC98C
          F078AEEC3E718EA159E22956929BDDDDDDFAF7F99E5E3386B29C561E384C461A
          12A71DA3CAACBAE9DBE470DFB39FFC13FF00E177ECBD7C350F0E681F68D70647
          F6BEA529BBBD00F6573C271C7CAA0FAD77177F00FC217FF196D3E20CDA2C2FE3
          1B1B46B18353F364DF1C2C0829B776CE8C7AAE79AC1FDA07F6A7D13F674F187C
          38D1B56B2D4AEEE3E2678893C37A73DAAA94B79DA37903CB92309843D327DABA
          CF883F17BC27F0961B593C57E29F0E78623BE731DB36ADA943642E18632A8646
          5DC464703D47AD655B32C5D6A8EB55AB27292B377776BB7A796C6F85C932EC35
          18E1A850846116A4928AB292DA4B4F8BCF7F33C7BC47F19FE17FED3DF1C7C49F
          03BC6BE1AF3B53D0D56E22875885162BF04021ED5C36EDDB581C8C1C13E86B90
          D27FE08B7F04F4DF10ADDBDB78A2F6CD25F3469771AB31B3EB9DA42A87DBFF00
          02CFBD6D7ED9BFB2FF00C1CFDA87509354F10F8C34FF000B78A3C21A7477D36B
          165AC416F71A759396314D7019B0212431476DBD1B6B75AE160FD847C77E3049
          3C34BFB57F89F51B116514F258C11C6D726CE4C88DD8ACFBBCB70AC15FA36D38
          CE2BEAB058EA14E84560F1B2C3DD2E78B536AFD65171BEFBEB66BB9F019A6558
          BAB8A9BCCB2B8632CDBA7513A717CBBA8CD4DAF876BAE64F7B1E7DFB41E91A07
          C63FF8287FC1DF861F0EB4DB21A0FC33905DEA89A644A2D74FC48B248095F941
          0A88093C97700F35F703FECF3E0C93E352FC443A141FF09A2DB7D8C6A7E6C9BC
          45B76EDDBBB674E3EEE6BE51FD94F56F087EC8FF001CBC7BF0A7E1A7C34F1E78
          DFC4DE193A7378A7C44F73669BC5D23490E0C9221D806F25557B1CE4F35F45FC
          38FDAA34CF114FE2FF00F849FF00B0BC196DE1DF16CDE14B19EF3C41672AEAD2
          2EDF2D86D7FDD4B264E207C4831C8AF3B3BCE635650A18294BD9D38B8DDE8E7C
          CEF26F5DA4FA3BE9B9ED70B70CCE842AE2F33A70F6D566AA72A49C69F2A51A71
          8BB6F18AF8925AB76D0F56AE2B54FD9DBC17AD7C68D3FE225D68504BE33D2EDC
          DADAEA665903C319575DA1436C3F2C8E395FE2A8EF7F69EF869A6D8C77371F11
          3C0B6F6D2DBC7769349AFDAAA3C32398E394317C14670543742C081CD6BE8DF1
          7BC27E22D6B54D374FF147876FB51D12259F51B4B7D4A1967D3E361B83CC8AC5
          A35239058018AF9EA55AA52BBA726AE9A7676BA7BAF47D51F655F0B46BA8AAD0
          52E56A4AE93B35B357D9AE8F74794FED33FF0004E4F867FB55F8B61F107886CF
          54B0D763511CB7FA55DFD9A6BA4002AAC990C1B00601C03DB38E2BD6BE187C37
          D27E0FFC3ED27C31A1C3241A4E896EB6B6A9248647083D58F24924927DE99F0F
          BE2E7853E2DDA5D4FE14F13F877C4F0594822B99349D4A1BD4B773C85731B305
          3EC6BA1AE8AD9962AB508E1AAD46E11D937A2F438B0D926030D8AA98EA14631A
          B53E2924937EAFF3EFD428A28AE23D40A28A2800A28A2800A28A2800AF847FE0
          A3DFB28F8B3E3BFC61B6D7FE19FC36F117867E30E853D9A787BE26E9BAEDA5A5
          83DB0756993508FCD134B122EF5F25A272DC6D6C715F7751401F9AFF001C3FE0
          9C5F157C5577F19FC2D6BE13D0B5FBBF8AFE3AD33C55A67C479F538219BC3B6F
          0BDB3BA3C47FD20490881D22584142AE3711F303EBDE06FD86BC51FF000B9BF6
          C2BED4F46D220B2F8C1A7D8D8F85F529DE190DDB2E932DB4F248A9978879ECA5
          B206EEA01C57D9545007E627897FE09E5F19F55FD96FE00D8681E0BD3FC33E39
          F05D95DFC3EF17C2DABD998EEB41BE8923BABE49237C498F2F72467F79BA4395
          E2BACF803FB05FC6BFD9F7E14FC69B0D1B4EF0CDCEAFE1ED0A4F03FC214D5A68
          6EEDAEF45FB54F759B9424AA3379C91EC930BFB84DC36D7E87D1401F939AE7FC
          134FE3B7893E0FFED23A2DE7841EFAF7E305AF856FB4F92F359D2E377B9B1908
          BC8265B729146D872CAC83695403796AF67FDB6FFE09A5ACF8AFE35780F5CF04
          F867ED3F0FF4EF08EA3E14D5BC2DE1C974DD36E2D1AED91DEEE05BB5FB331755
          31B9CACB8C10C7915F7E51401F3E7897F66FD45BFE0979AC7C28D1F4BD425D5D
          FE1D5D78734DD3F5ABF82E6EBED06C5E18239EE01F299C3EC064076E4673819A
          F0D9BF61EF1EF80EC3F657F1145E06D2BC689F08BC2D71A47893C166F6D20C5E
          DC58C309BC81A522DE5911D1958B372A72A49AFBD68A00FCDAF84FFF0004AFF1
          BE9B75FB31D8F8CFC33E1DD77C39E0AF1678ABC43E24D224B986EB4FF0E5AEA3
          6F29B3B28D24FF008F84495932154A862DD5466BE92FF82A7FECE5E26FDA1BF6
          0FF11F817E1EE8B6B7FADCD2581B0D396E21B28BCB82E62728ACE56340110E06
          40E00AFA4E8A00F887F6E0F829F177F6D3F871E086D3FC05AEF83AF3E1AF8AEC
          35F7D1EF35DD2DDBC4B0A2488EB0BA49342B345B83AFDA1421C9EF5C26ADFB0E
          7C59F07FC0AF087827E1EF85B55D3BC2BA86BDADDF789EDB5DBFD12F35DB3379
          0FEEDADE521ED61B66999FCC4841936B1C0E715FA3345007E627C0FF00D847E3
          97C1AF0EFECC7A86A3F0D341F1D4BF0ABC33AAF84359F0D6A7E20B5582CA69E6
          3E5EAB0C8DBE37468F6AB2E3CD0831B735ABFB157FC13BBE2CFC1FD4BF65D97C
          45E19D3AC07C341E32FF00848443A9DBCABA7FF6899CDA08F6B66456DEA3E4FB
          A3EF62BF49A8A00FCCDFD95FFE0969E39F83771FB31EA8FE09D1344F11F82BC4
          FE27BFF1A6A76B776AD771DADE09C5A1322B1338F9A3C2296098E40C578AFC00
          F01EB7E11F8D7FB2A7C28B9F0E780F52F117C3AF887A9EA1A9788BC3FAF5BEAF
          7FAE403CF796F6E23894CB6CA37287FB4B062C1401C57ECE567E97E0BD1F40D4
          6E6F6C749D32CAF2EFFD7DC5BDAA472CFCE7E660016FC6803E6CFF008290FC11
          F1D7C50F187C09F117823C2EFE2D3F0E3C751F88754B18B51B6B299AD96DE543
          E5B4EE885B730E335E6DFB797C2BFDA07F6C9B0D334AD1FC011F85BC2DA8E85A
          C699A9DADDDEE8F3EAB15DCB1816CCD3B34CAB64F81BD603E6E54640C035F765
          1401F98BE29FF8261FC55F895E19F805A4DE6816BA6E91AA7C3EB1F86BF182D6
          4D52DE4963B1B09A19A1951D5CF9FBDA29554216216E0EEC735F46FF00C12AFF
          00664F889F013C03E24BEF8B115A2F8CAF66B4D02D5E0B98EE3CDD1B4B83ECD6
          323321203C80CB2B2E78327201AFAB68A00F90FE197EC31AD5CFFC1483E32FC4
          CF122EB7A6787B5CFEC393C393E99E207B74D41ADA1759C5C411382CAADB4012
          8C104E3A9AF12F1C7FC1353E23F8DB4FF13E9F7DE11D2EFF004CD77F69D83E22
          4B6F36A16C63BAF0E8913CD9D86EEA5436623F39F4AFD29A2803F3E3F6B0FF00
          82626A9F157F684F8C1AAE8FF0EBC2977E19D4BE0F0F0AF8363616714369AA89
          9DC470C2702DF01B224DAA064E0F26AAFC34FF008265EB3E06F8896F2DCFC39B
          01E15D53F67D5F03F89AD349D4ADACEEB59D658C7E740640C099187998B96257
          27EF57E88D1401F297FC12EBE02FC50FD9DF43F17787FC6303D9F81ACE5B4B7F
          055AEA874F975FB6B58E26124779358FEE644562A222497DA0EE3935F56D1450
          0145145007FFD9}
        mmHeight = 19579
        mmLeft = 207698
        mmTop = 4233
        mmWidth = 72496
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Caption = 'Region1'
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        mmHeight = 69321
        mmLeft = 0
        mmTop = 26723
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          Border.mmPadding = 0
          Caption = 'General Information'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsItalic, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5027
          mmLeft = 6350
          mmTop = 29898
          mmWidth = 37306
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          Border.mmPadding = 0
          Caption = 'Code:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 23019
          mmTop = 36248
          mmWidth = 8996
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText12'
          Border.mmPadding = 0
          DataField = 'CODE'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 33338
          mmTop = 36248
          mmWidth = 8996
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          AutoSize = True
          Border.mmPadding = 0
          DataField = 'NAME'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 44186
          mmTop = 36248
          mmWidth = 793
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText15'
          AutoSize = True
          Border.mmPadding = 0
          DataField = 'BANK_NAME'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 44186
          mmTop = 42333
          mmWidth = 793
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText14'
          Border.mmPadding = 0
          DataField = 'DEFAULT_BANK'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 33338
          mmTop = 42334
          mmWidth = 8996
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          Border.mmPadding = 0
          Caption = 'Bank:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 24077
          mmTop = 42334
          mmWidth = 7938
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          Border.mmPadding = 0
          Caption = 'Business No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 12435
          mmTop = 48419
          mmWidth = 19579
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText16'
          Border.mmPadding = 0
          DataField = 'ABN'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 33338
          mmTop = 48419
          mmWidth = 31485
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'CLIENTLENGTH'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 88098
          mmTop = 77259
          mmWidth = 17463
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'CLIENTPAD'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 58208
          mmTop = 77258
          mmWidth = 12435
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          Border.mmPadding = 0
          Caption = 'Coding Information'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsItalic, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5027
          mmLeft = 6350
          mmTop = 62177
          mmWidth = 35983
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          Border.mmPadding = 0
          Caption = 'Client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsItalic]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 7408
          mmTop = 77259
          mmWidth = 8731
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Code:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 18256
          mmTop = 71438
          mmWidth = 8996
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'CLIENTCODE'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4233
          mmLeft = 18256
          mmTop = 77259
          mmWidth = 39423
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = 'Padding'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 58208
          mmTop = 71437
          mmWidth = 12435
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label19'
          Border.mmPadding = 0
          Caption = 'Separator'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 71438
          mmTop = 71437
          mmWidth = 14817
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label20'
          Border.mmPadding = 0
          Caption = 'No of chars'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 88098
          mmTop = 71438
          mmWidth = 17463
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label21'
          Border.mmPadding = 0
          Caption = 'Create acronym?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 106619
          mmTop = 71438
          mmWidth = 26194
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label22'
          Border.mmPadding = 0
          Caption = 'Use name value?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 135723
          mmTop = 71438
          mmWidth = 26194
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label23'
          Border.mmPadding = 0
          Caption = 'Use Entity code as prefix?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 165092
          mmTop = 71438
          mmWidth = 40481
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label24'
          Border.mmPadding = 0
          Caption = 'Entity separator'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 207955
          mmTop = 71438
          mmWidth = 24342
          BandType = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 2381
          mmLeft = 88098
          mmTop = 69586
          mmWidth = 73819
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 88098
          mmTop = 64559
          mmWidth = 73819
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label26'
          Border.mmPadding = 0
          Caption = 'No of chars'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 233892
          mmTop = 71437
          mmWidth = 17463
          BandType = 0
          LayerName = Foreground
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 165092
          mmTop = 69586
          mmWidth = 86254
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label27'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Entity'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 165092
          mmTop = 64559
          mmWidth = 86254
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label28'
          Border.mmPadding = 0
          Caption = 'Matter:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsItalic]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 5556
          mmTop = 83344
          mmWidth = 10583
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label29'
          Border.mmPadding = 0
          Caption = 'Creditor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsItalic]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 3175
          mmTop = 89165
          mmWidth = 12965
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'MATTERCODE'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 18256
          mmTop = 83344
          mmWidth = 39423
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          Border.mmPadding = 0
          DataField = 'CREDITORCODE'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 18256
          mmTop = 89165
          mmWidth = 39423
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'CLIENTSEPARATOR'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 71438
          mmTop = 77258
          mmWidth = 14817
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText18: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          Border.mmPadding = 0
          DataField = 'CLIENTACRONYM'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 106619
          mmTop = 77259
          mmWidth = 25929
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText19: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText18'
          Border.mmPadding = 0
          DataField = 'USE_PHONEBOOK_NAME'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 135723
          mmTop = 77259
          mmWidth = 26194
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText20: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText19'
          Border.mmPadding = 0
          DataField = 'USE_ENTITY_CODE'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 165092
          mmTop = 77259
          mmWidth = 40481
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText21: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText20'
          Border.mmPadding = 0
          DataField = 'USE_ENTITY_SEPERATOR'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 207955
          mmTop = 77259
          mmWidth = 24342
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText21'
          Border.mmPadding = 0
          DataField = 'USE_ENTITY_LENGTH'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 233884
          mmTop = 77259
          mmWidth = 17463
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText23: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText22'
          Border.mmPadding = 0
          DataField = 'MATTERPAD'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 58208
          mmTop = 83344
          mmWidth = 12435
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText24: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText23'
          Border.mmPadding = 0
          DataField = 'CREDITORPAD'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 58208
          mmTop = 89165
          mmWidth = 12435
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText25: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText24'
          Border.mmPadding = 0
          DataField = 'CLIENTSEPARATOR'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 71438
          mmTop = 89165
          mmWidth = 14817
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText26: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText25'
          Border.mmPadding = 0
          DataField = 'MATTERSEPERATOR'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 71438
          mmTop = 83344
          mmWidth = 14817
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText27: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText26'
          Border.mmPadding = 0
          DataField = 'MATTERLENGTH'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 88098
          mmTop = 83344
          mmWidth = 17463
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText28: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText27'
          Border.mmPadding = 0
          DataField = 'CREDITORLENGTH'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 88098
          mmTop = 89165
          mmWidth = 17463
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText29: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText28'
          Border.mmPadding = 0
          DataField = 'MATTERACRONYM'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 106619
          mmTop = 83344
          mmWidth = 25929
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText30: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText29'
          Border.mmPadding = 0
          DataField = 'CREDITORACRONYM'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 106619
          mmTop = 89165
          mmWidth = 25929
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label30'
          Border.mmPadding = 0
          Caption = 'Fee tax basis:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 145257
          mmTop = 36248
          mmWidth = 21960
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label31'
          Border.mmPadding = 0
          Caption = 'Control Account'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4234
          mmLeft = 253471
          mmTop = 71437
          mmWidth = 24607
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText31: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText30'
          Border.mmPadding = 0
          DataField = 'CREDITORS'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 253471
          mmTop = 88900
          mmWidth = 24606
          BandType = 0
          LayerName = Foreground
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 18256
          mmTop = 75935
          mmWidth = 259821
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText32: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText31'
          Border.mmPadding = 0
          DataField = 'FEE_TAX_BASIS'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 169863
          mmTop = 36248
          mmWidth = 26988
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel32: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label32'
          Border.mmPadding = 0
          Caption = 'Last Rollover:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 146579
          mmTop = 42334
          mmWidth = 20638
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label33'
          Border.mmPadding = 0
          Caption = 'Financial year ending:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 133615
          mmTop = 48419
          mmWidth = 33602
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel34: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label34'
          Border.mmPadding = 0
          Caption = 'Lock date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 151077
          mmTop = 53976
          mmWidth = 16140
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText33: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText32'
          Border.mmPadding = 0
          DataField = 'LAST_ROLLOVER'
          DataPipeline = peEntityPrintBase
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 169863
          mmTop = 42334
          mmWidth = 26988
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText34: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText33'
          Border.mmPadding = 0
          DataField = 'FINYEAREND'
          DataPipeline = peEntityPrintBase
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 169863
          mmTop = 48419
          mmWidth = 26988
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText35: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText34'
          Border.mmPadding = 0
          DataField = 'LOCKDATE'
          DataPipeline = peEntityPrintBase
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 169863
          mmTop = 53976
          mmWidth = 27252
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel35: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label35'
          Border.mmPadding = 0
          Caption = 'Next matter:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 207963
          mmTop = 36248
          mmWidth = 19050
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel36: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label36'
          Border.mmPadding = 0
          Caption = 'Next archive:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 207169
          mmTop = 42069
          mmWidth = 19844
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel37: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label37'
          Border.mmPadding = 0
          Caption = 'LEI / Company No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 3175
          mmTop = 53976
          mmWidth = 28840
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText36: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText35'
          Border.mmPadding = 0
          DataField = 'ACN'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 33338
          mmTop = 53976
          mmWidth = 31485
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText37: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText36'
          Border.mmPadding = 0
          DataField = 'NEXTMATTER'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 228600
          mmTop = 36248
          mmWidth = 27252
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText38: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText37'
          Border.mmPadding = 0
          DataField = 'NEXTARCHIVE'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 228600
          mmTop = 42334
          mmWidth = 27252
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel38: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label38'
          Border.mmPadding = 0
          Caption = 'Journal No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 209286
          mmTop = 48419
          mmWidth = 17727
          BandType = 0
          LayerName = Foreground
        end
        object ppDBText39: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText38'
          Border.mmPadding = 0
          DataField = 'NJOURNAL'
          DataPipeline = peEntityPrintBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'peEntityPrintBase'
          mmHeight = 4498
          mmLeft = 228600
          mmTop = 48419
          mmWidth = 27252
          BandType = 0
          LayerName = Foreground
        end
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Caption = 'Region2'
        ParentWidth = True
        Pen.Style = psClear
        ShiftRelativeTo = ppSubReport2
        mmHeight = 16404
        mmLeft = 0
        mmTop = 103452
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          Border.mmPadding = 0
          Caption = 'Posting Information'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsItalic, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5027
          mmLeft = 7408
          mmTop = 105833
          mmWidth = 36513
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.mmPadding = 0
          Caption = 'Posting Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4498
          mmLeft = 7408
          mmTop = 110860
          mmWidth = 19844
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          Border.mmPadding = 0
          Caption = 'GL Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4498
          mmLeft = 71438
          mmTop = 110860
          mmWidth = 13229
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Border.mmPadding = 0
          Caption = 'Tax Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4498
          mmLeft = 88106
          mmTop = 110860
          mmWidth = 14552
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          Border.mmPadding = 0
          Caption = 'Chart Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4498
          mmLeft = 106627
          mmTop = 110860
          mmWidth = 16669
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label17'
          Border.mmPadding = 0
          Caption = 'Chart Type Description'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4498
          mmLeft = 135732
          mmTop = 110860
          mmWidth = 35190
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          Border.mmPadding = 0
          Caption = 'GL Description'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4498
          mmLeft = 174361
          mmTop = 110860
          mmWidth = 22490
          BandType = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 7408
          mmTop = 115887
          mmWidth = 271463
          BandType = 0
          LayerName = Foreground
        end
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppRegion1
        TraverseAllData = False
        DataPipelineName = 'peEntityGroup'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 97631
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = peEntityGroup
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '20.0'
          mmColumnWidth = 0
          DataPipelineName = 'peEntityGroup'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 16933
            mmPrintPosition = 0
            object ppLabel52: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label52'
              Border.mmPadding = 0
              Caption = 'Company Groups'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsItalic]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5027
              mmLeft = 6085
              mmTop = 2117
              mmWidth = 33338
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line7'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 6085
              mmTop = 15610
              mmWidth = 273844
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel53: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label53'
              Border.mmPadding = 0
              Caption = 'Code'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4498
              mmLeft = 6085
              mmTop = 10583
              mmWidth = 8202
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel54: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label54'
              Border.mmPadding = 0
              Caption = 'Description'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4498
              mmLeft = 24606
              mmTop = 10583
              mmWidth = 17463
              BandType = 1
              LayerName = Foreground2
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBText51: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText51'
              Border.mmPadding = 0
              DataField = 'CODE'
              DataPipeline = peEntityGroup
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'peEntityGroup'
              mmHeight = 4498
              mmLeft = 6085
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText52: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText52'
              Border.mmPadding = 0
              DataField = 'DESCRIPTION'
              DataPipeline = peEntityGroup
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'peEntityGroup'
              mmHeight = 4498
              mmLeft = 24606
              mmTop = 0
              mmWidth = 120915
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'C_TYPE'
        DataPipeline = peEntityPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'peEntityPrint'
        mmHeight = 4498
        mmLeft = 6350
        mmTop = 1058
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'GL_CODE'
        DataPipeline = peEntityPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'peEntityPrint'
        mmHeight = 4498
        mmLeft = 71438
        mmTop = 1058
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'GL_TAXCODE'
        DataPipeline = peEntityPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'peEntityPrint'
        mmHeight = 4498
        mmLeft = 88106
        mmTop = 1058
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'GL_CHARTTYPE'
        DataPipeline = peEntityPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'peEntityPrint'
        mmHeight = 4498
        mmLeft = 106627
        mmTop = 1058
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'GL_CHRTTYPE_DESC'
        DataPipeline = peEntityPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'peEntityPrint'
        mmHeight = 4498
        mmLeft = 135732
        mmTop = 1058
        mmWidth = 35190
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'CHART_DESC'
        DataPipeline = peEntityPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'peEntityPrint'
        mmHeight = 4498
        mmLeft = 174361
        mmTop = 1058
        mmWidth = 103717
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 5556
        mmTop = 2117
        mmWidth = 10848
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 2117
        mmWidth = 34660
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265378
        mmTop = 2117
        mmWidth = 9525
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        PrintBehavior = pbSection
        ResetPageNo = False
        TraverseAllData = False
        DataPipelineName = 'peTax'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 529
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = peTax
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '20.0'
          mmColumnWidth = 0
          DataPipelineName = 'peTax'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 34660
            mmPrintPosition = 0
            object ppLabel39: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label39'
              Border.mmPadding = 0
              Caption = 'Code'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 6350
              mmTop = 26723
              mmWidth = 14817
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line6'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 6350
              mmTop = 31221
              mmWidth = 273844
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel40: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label40'
              Border.mmPadding = 0
              Caption = 'Description'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 24871
              mmTop = 26723
              mmWidth = 39952
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel41: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label41'
              Border.mmPadding = 0
              Caption = 'Default Tax'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 66675
              mmTop = 26723
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel42: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label42'
              Border.mmPadding = 0
              Caption = 'Withholding'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 85461
              mmTop = 26723
              mmWidth = 18521
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel43: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label43'
              Border.mmPadding = 0
              Caption = 'Tax Type'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 105304
              mmTop = 26723
              mmWidth = 17463
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel44: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label44'
              Border.mmPadding = 0
              Caption = 'Input GL Ledger'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 124619
              mmTop = 26723
              mmWidth = 24606
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel45: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label45'
              Border.mmPadding = 0
              Caption = 'Output GL Ledger'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 151607
              mmTop = 26723
              mmWidth = 27517
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel46: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label46'
              Border.mmPadding = 0
              Caption = 'Adjust GL Ledger'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 181769
              mmTop = 26723
              mmWidth = 26458
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel47: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label47'
              Border.mmPadding = 0
              Caption = 'Tax Rate (%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 210080
              mmTop = 26723
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel48: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label48'
              Border.mmPadding = 0
              Caption = 'Commenced'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 230717
              mmTop = 26723
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel49: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label49'
              Border.mmPadding = 0
              Caption = 'Ended'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 252148
              mmTop = 26723
              mmWidth = 19844
              BandType = 1
              LayerName = Foreground1
            end
            object ppImage2: TppImage
              DesignLayer = ppDesignLayer2
              UserName = 'Image2'
              AlignHorizontal = ahCenter
              AlignVertical = avCenter
              AutoSize = True
              MaintainAspectRatio = False
              Border.mmPadding = 0
              Picture.Data = {
                0A544A504547496D61676578260000FFD8FFE000104A46494600010101007800
                780000FFDB004300020101020101020202020202020203050303030303060404
                0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
                0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
                0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
                0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108004A011203012200021101031101
                FFC4001F0000010501010101010100000000000000000102030405060708090A
                0BFFC400B5100002010303020403050504040000017D01020300041105122131
                410613516107227114328191A1082342B1C11552D1F02433627282090A161718
                191A25262728292A3435363738393A434445464748494A535455565758595A63
                6465666768696A737475767778797A838485868788898A92939495969798999A
                A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
                D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
                01010101010101010000000000000102030405060708090A0BFFC400B5110002
                0102040403040705040400010277000102031104052131061241510761711322
                328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
                292A35363738393A434445464748494A535455565758595A636465666768696A
                737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
                A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
                E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDF2
                BDD420D32DCCB733436F10EAF2B8451F89AA1FF09D687FF419D27FF0323FF1AF
                953FE0B8CECBFB036BBB5DD375C052518A9C18A41D453BC29FF0453FD9AF52F0
                BE9B7137C3EB979AE2D229646FF848F541B9990127FE3E3D4D007D53FF0009D6
                87FF00419D27FF000323FF001A3FE13AD0FF00E833A4FF00E0647FE35F30FF00
                C394BF6601FF003213FF00E14FA9FF00F24D03FE08A5FB3013FF002213FF00E1
                4FA9FF00F24D3B317323E9EFF84EB43FFA0CE93FF8191FF8D3A1F1A68D7132C7
                1EAFA5BBB9DAAAB77192C7D00CD7CC327FC1137F66387EFF00C3F9933D37789B
                5419FF00C99AD0F07FFC11FBF66FF0178B34CD734AF04B5B6A7A3DD47796931F
                126A2FE54B1B0656DAD7054E081C1047B52B30BA3EA1A29B1CCB30CAB2B7BA9C
                D324BC8617DAF2C4ADE8CE01A064B4543FDA36FF00F3DE0FFBF829F0DC47704F
                97223E3AED6071400FA28A64B731C18DF22267A6E6033400FA29B14C93AE51D5
                C74CA9CD3A800A2A217F033604F0939C6378A7C92AC49B999557D58E05003A8A
                8E2BA8E73F2491BE3AED607152500145151A5CC72CAC8B246CEBF79430257EA2
                80B925145140051451400514530DC4626F2F7A7998CECDC377E5400FA28A2800
                A28A67DA23F3BCBDE9E6633B370DDF95003E8A28A0028A28A0028A28A00F8FBF
                E0B8FF00F260FAE7FD7CAFFE8B92BEA8F089FF008B7DA67FD8362FFD142BE57F
                F82E3FFC983EB9FF005F2BFF00A2E4AFAA3C23CFC3ED33FEC1B17FE8A14D6E27
                B1F805E3AF1B6B51F8E35A55D6356005FDC0005E49C7EF1BDEAC7C2EF1AEB52F
                C4EF0DAB6B1AAB2B6AB6A083792608F393DEA4F1C7C25F15CFE37D65D3C2FE23
                656BF9C8234C98823CC6FF0066AC7C30F84FE2AB6F899E1C77F0C788911355B5
                2CCDA6CC028132724EDAFEBC94F0FF00577AC76F2EC7F9C94E9E37EBAB495B9B
                CFB9F727FC17CB5DBED1B58F865F63BDBCB4F322D4377913347BB0D6F8CE08CD
                7E797FC273ADFF00D06756FF00C0C93FF8AAFD14FF0082F3783F57F156AFF0D3
                FB2F4AD4F52F262D43CC3696AF3797930633B41C6707AFA57E7C7FC2A0F16FFD
                0ADE24FF00C164FF00FC4D7CC7014A82C8A873B57F7BB7F348FB9F1729E2DF16
                E2DD252B7B9B5EDFC381FA7BFF000428D5EEF57FD9EBC58F77757376EBAF6034
                D2B4840F253804935F9D1FF05EAF18EAFA37FC14D7C5F0DA6B1AB5A5BA693A51
                1141792C68B9B55CE15580AFD1CFF8219F86B52F0C7ECFBE2C8B52D3AFF4E95F
                5DDCA9756EF0B30F25390180C8AFCD1FF82FF2EEFF00829EF8C47AE91A4FFE92
                AD7E23C68E2F3BC472EDCDFA23FA9FC31535C2D8353DF97AFF0089997E13FF00
                8257FED5FE38F0B69BAD699E1FF105C69BABDAC57B692FFC248ABE6C3220746C
                197232A41E7D6B8EF8CDFB3C7ED29FB0CC969AFF008A2DFE20783E0F39238357
                B6D5E47B6F34F2A8648E420371D1BAFBD7EA3FECFBFF0005DAFD9DFE1E7C05F0
                4E81A9EBDE208F51D1341B1B0BA44D166655962B74470081823729E6BC0BFE0A
                EDFF00059EF865FB52FECBB77F0E3E1DDB6AFABDC6BD750C97B7F7F646D60B18
                627127C818EE6919801D00032727A57CB9F787BD7FC106BFE0A35E2DFDAF7C23
                E27F0578FEF8EB3E25F07470DDDAEAD200B3EA169212844B8C02F1B81F36390E
                33C8AF16FF00839BFC47A8E85E36F8462C751D42C44967A89716D72F0EFC3C38
                CED2335AFF00F06D57ECB3E23F09FF00C269F15359D36F34DD1F5FB18749D0DE
                7429FDA2824324D3203C940C88A1BA13BB1D2B9CFF0083A13FE477F841FF005E
                5A8FFE870D007D01FF0006E26B179ADFEC35ADCB7B79777B28F165D2892E2669
                580F22DF8CB12715F7BEB071A3DDFF00D717FF00D04D7E2F7FC1203FE0AE3F0B
                3F612FD99752F0878D6D3C5D3EAB77AF4FA923697A7C7710F94F1C4A32CD2A9D
                D943C63D2BEA6D43FE0E3EFD9FAEB4F9E25D3BE246E9236419D1A1EA411FF3DE
                803F26BF674F1D6BB37EDC7E0989F5DD6DE26F1F59A3235FCC5597FB454608DD
                8C63B57ED57FC177352B9D27FE09A1E379ED2E6E2D275BBD3B6CB04AD1BAE6F6
                2070CA41AFC3AFD97EF9354FDB67E1F5D47BBCABAF1D584E9B873B5F504619F7
                C1AFDBEFF82F5FFCA31BC73FF5F7A6FF00E96C3401F177FC1B3DE27D4F5DFDA5
                3E2525F6A7A95F22786ADD956E6EA49829FB4F50189C1AFD97AFC5AFF83627FE
                4E67E26FFD8B36FF00FA555FB4B40057807C02FD8B6FFE0BFED5FF0010BE244F
                E2A6D52D3C6ED3345A61819458EF98483E62E41C018E00AF7FAF8CFF0064EF8F
                3E31F1A7FC1417E3D786755F10EA17DA0786E29DB4CB195818AC889D546C18C8
                C0E2BDDCA2962A786C53A124A2A0B9935BAE64ACB4D35B763E5388ABE069E370
                2B174DCA6EA3F66D3B72CB924EEF557564D753ECCC518AFCC0FD867F691F8FBF
                B5EE857FE00D1FC51796D20BD37DADF8CAF02CD3E9564C8AA96D02E00F31DD5C
                83D793D0026BDB7E237FC13FFE297C2BF08EA1E24F01FC79F88FAB789F4C85AE
                A2B1D5EEFCEB6BF283718F69254120606411DB8EB5E962F856183C4BC2633150
                84FA2B49EFB36D2F753F3D6DAB563C3CB7C40AB9960966396606A54A56D5DE11
                7A6EA29BBCDAF2D2FA26DDCFB4A8C57C67F077FE0A6D7BE26FF827B78A7E256B
                165667C5FE0F91B4DB8B64431C17374DB042FB7AAA9F301619EAAC0573DF00FF
                00658F8B3FB64FC31D3FE20F8FBE35F8DFC373F8890DDD8697E1E9BEC905B404
                9D848520648E40C64023249AE7FF00562A5155278FA8A94612E4BEB26E56BE89
                2D55B5BE8762E3BA38A951A594519579D587B4B2718A8C2F6BC9C9E8F9AEACAE
                EE99F76F4AF0FD63F645BDD53F6E7D2BE300F12B4763A7694DA7368BE4B62463
                1BA6FDFBB1FC79FBBDABC0354F883F12FF00E09A7F1F3C23A778CFC797BE3EF8
                49E33BA161FDA3AC0CDDE9331EECF92DC6431C92A5777008AF41F14FC68F14DA
                7FC15BFC31E0A875DBE5F095E78626BC9B4B561F67965114A43918CE72A0F5ED
                5D14726C5E19CEA616AC5C274A72E649DA515F146CD5D4BA797739313C4B80C7
                2A74B30A138D5A788A51706D5E1396B09DE32B4A1D53D6FDB43EAEA315F157ED
                89FB52FC4FF8A3FB4BA7C11F81F2C363AAD8C0B71E20D6F0A4D806C12BB98108
                AAACA4900B12C157915B3A67FC135BC7DA3DA8BF83F68EF89DFF0009205DE659
                2632D9349E861673F267B13D2B916414E951855C7622349D4578C6D293B3D9BE
                55EEA7D3AF91E8BE2EAD5F15568657849D78D27CB29A708C7996F18B935CCD6C
                F649F53EBCAF87AF6FE7FF0087E6DBDBF9F3791FF08C67CAF30ECCFD98F3B7A5
                795FC56FDB6BE33785FE39FC39F871E29D46E7C3FE2CD13C431D9EB33E9C025A
                7892C65787C89F18C723782063A9E01E04BFB5F7C58F117C1DFF0082BA7F68F8
                47454F1078A6FF0042B7D2F4AB391888DAE278B62BB63AAAF2C791D392057D3E
                4DC3389C2CEA42728B75A854E5B3D2D7493BBD2CF74FB6E7C1F1371CE0B1D4A8
                D5A709C561B15439D35EF5DA9371E5577CC9A716BBED75A9FA618A315F2127FC
                13B3E24F8FAC9357F16FED07F10AD7C5370A259A2D167FB369D6721E76471A91
                951D33C6715C6FC03F8DBF156C7E38F8B3F66CF1FF008AE75D7A5B0964F0E78C
                2DE21F6C0A00911B0787CC61882DC82AC093D6BE6A3C3D4AAD39CB0B898CDD35
                792B495A3D64AEBDE4BADB5B743EE27C635F0F569C330C14E92AAF969B7283BC
                DABC612B4BDC94B657BABEED1EA9F06BF6B4F15F8EFF00E0A23F107E185F0D37
                FE11AF0D58FDA2CFCB836DC6EFDD7DE7CF23E73DBD2BE9BAFCB4F829FB3BF8D7
                5FFF0082937C46F0B59FC59F11697AFE99A7F9975E248ADA3375A8AFEE7E4753
                F281F30E9FDD15FA63F0E7C357DE0EF02E95A5EA7AC5CF88350B0B6586E352B8
                50B2DEB8EB2301C027DAB7E2BCBB0B859D2FAB4E3AC2174935BC7E2D525AFDFD
                D1C7E1EE738FC752C42C6D397BB56AA5294A2ED69D94346DFBBB6D6ECCDAA28A
                2BE48FD14F8FBFE0B8FF00F260FAE7FD7CAFFE8B92BEAAF06BF95E02D29BFBBA
                7C27F28857CA9FF05CA709FB036B849007DA5793FF005CE4AFAA7C227FE2DEE9
                9FF60D8BFF00450A6B713D8FCC7F12FF00C174BE2668BE24D42CD3C35E0D64B4
                BA96052D15C648572A33FBCEBC54BE0CFF0082E5FC4BF1278C748D3A5F0D7839
                22BFBD86DA4658E7DCAAF22A923F79D706BE21F1EFFC8F7ADFFD842E3FF46B55
                9F855FF2547C35FF00616B5FFD1C95FD3CF83324F61CDF578DEDE7DBD4FE0F87
                89BC50F16A9BC6CEDCD6E9DFD0FD6DFF00829D7EDF3E29FD89AFFC1F178734BD
                13515F10A5D35C1D41643E5F94620BB7632F5DE739F415F2AFFC3F97E27FFD0B
                1E0BFF00BF571FFC72BB6FF83813FE431F0C3FEB96A3FF00A15BD7E73D7CFF00
                05F0BE558BC9A8E2313414A6F9AEDDFF0099AEE7D8F89DC7BC41977136270782
                C54A14E3CB64AD657845BE9DD9FB65FF0004D6FDB13C41FB66FC2BD735DF1169
                FA569F73A66A7F62892C15C232796AD93B998E726BF20FFE0BFADB3FE0A7BE31
                3E9A4693FF00A4AB5FA43FF0417FF9375F177FD87FFF0068257E6F7FC17F577F
                FC14FBC623D748D27FF4956BF22E2CC2D1C366F5E8508F2C62F45DB447F47787
                B986231DC3B85C5E2E6E75251BB6F77AB3ECDF81BFF06ED7C1AF89BF053C1FE2
                4BEF12FC448AF7C41A259EA57090DF5B88D249A04918283092141638C93C5793
                7FC149FF00E082FE17FD97BF665D6FE227C3EF13F886F9FC2CA973A8E9FACBC5
                28B8B62C119A37444C3A960704104679AD8F83FF00F0726E9BF0B3E12F85FC30
                DF08750BD6F0EE936BA61B85F10A209CC30AC7BC2F90719DB9C64E335E4DFF00
                050BFF0082F0EB3FB687C08BEF87BA178297C15A46B4F18D56E66D4C5ECF770A
                307F25711A0452C17279242E38C9AF9D3EC8EB3FE0DD3FDB0BC51A2FED2537C2
                3D4757BCD43C29E23D36E2F34EB3B894C8BA75D40A24262C9F915A30E0A8E321
                4F6AEAFF00E0E84FF91DFE107FD796A3FF00A1C35CE7FC1B89FB21EBDE21F8F5
                7FF18EFAC66B4F0BF87EC27D374BB9950A8D42EE6011FCACFDE448F70661C658
                0F5C747FF07427FC8EFF00083FEBCB51FF00D0E1A00E53FE0903FF00048DF85B
                FB76FECCDA978BFC6B79E2E8355B4D7A7D35174BD423821F292389812AD131DD
                973CE7D2BEA5D43FE0DBFF00D9FED74F9E55D4FE246E8E36719D621EA013FF00
                3C299FF06D8FFC9896B9FF006375DFFE88B7AFD00D67FE40F77FF5C1FF00F413
                401FCC27ECBD629A5FEDB1F0F6D63DC63B5F1D584085BA954D411467DF02BF6F
                BFE0BD7FF28C6F1CFF00D7DE9BFF00A5B0D7E23FECE1FF0027D7E07FFB28167F
                FA725AFDB8FF0082F5FF00CA31BC73FF005F7A6FFE96C3401F107FC1B13FF273
                3F137FEC59B7FF00D2AAFDA5AFE717FE0981FF0005134FF82717C4EF13F889FC
                23278C0788F4C8F4E16E9A90B1FB3EC97CCDFB8C6FBB3D3181F5AFB57FE228FB
                7FFA22375FF8552FFF0022D007EB2D7C0DFB13FF00CA4FFF00695FFAE171FF00
                A52B553F60CFF82EE43FB6FF00ED3DA1FC374F85F3F869B5A82EA6FED06D7D6E
                C43E442D2E3CB1026776DC7DE18CD5BFD89FFE527FFB4AFF00D70B8FFD295AFA
                CE1CFF0073C77FD7B5FF00A5C4FCF78D3FE465957FD7E97FE9A997FF00E082BA
                6C507ECEFE33BA083CFB8F11F96EF8E4AADBC4547D0166FCCD7DCD7633692FFB
                8DFCABE20FF820DFFC9B378B3FEC667FFD2682BEDFBAFF008F597FDC6FE553C6
                8DBCF7117FE6FD115E17A4B84F0497F23FFD299F9B9FF04EBF80569FB4DFECBB
                F1F7C13733FD8FFB5FC4456DEE00C8B79977346E4770194647A66B6BE12FC46F
                DA7FF607D02D7C27AE7C373F123C1DA3E22B3BBD2899678A0CE76A3460B1001E
                1648F23A6702BCEFF64DF18F8F7E1DFEC6BF1DBC41F0E67F235FD13C5D1DE4A4
                5BACECD6ABBBCE01181CE14EEE9D14D7DDBFB207ED91E17FDA83E0D68DAD41AC
                E970EB86D91355D3DAE1526B5B950049F2120ED27953D30457D7F10D7C4E1EAE
                2273A51AD8773578BBDE32E48EB75671BAD2FE47E73C1B84C162F0F83A54B113
                C363234A4E338F2F2CE1ED67EEDA5753E57AB564D5EFE9C17C26FF008289FC26
                FDA63C516DE11F14E8D73E19F129947D9F48F15E9CA034BD004760577FA67693
                D073C5717E2F511FFC1707C1E00C01E0F9C003B7EE67AE6FFE0B61E27F0678DF
                E1CF86BC39A49D3F5BF89973ABC434D8B4F0B3DEC30E183A929960198A614F53
                C8E953787AC350D27FE0AE9F0B2DB562CDAADB7C3B48AF4B1C9332DA4824C9EE
                77035C783C050861658DA1194154A3597249DED64BDE8BD1F2BBF55BADD9E9E6
                39B62EA63E9E578B946ABA388C33F6B05CB7E694BDD9ABB4A51B747B3D91D07F
                C12BA04F107C77FDA2FC4374BBB569FC58D6AD21FBCB17993305FA67F957DA75
                F03F873E22DA7FC13AFF00E0A2BE3C83C62D2697E02F8B6E354D3B54D8C6DADE
                E4B9660F81C619DD5BFBA361E86BED993E2BF85E2D03FB55BC49A08D336799F6
                B37F1793B7AE77EEC57CF71561EAD4C5C7174E2DD3A91838B5B69149AF54D59A
                3EC780319428E5D3CBEB4946B509D4534DA4F59CA4A4FCA49A69ECCF87FF00E0
                AC9E18B5B7FDAFBE00EB08A82F6EB524B3948EAC91DCC4CB9FA176AD2D6F4D83
                51FF0082ED5819A3590DB78704D1647DC716AC011EF863F9D7857ED8FF00B4C5
                B7ED47FB7A7C39D53C3EB7171E0BF0FEB56DA3E9DA9142B06A370B708F3BC79E
                A06E403D803DEBDF2F7FE53B16FF00F62BFF00EDB1AFB4586AD86C053A55B492
                C356D3AABC93B7C93D8FCC1E3B0D8ECE2BE230B67078EC2D9F47684936BBA6D5
                D3EBB9F7357C25F15C6CFF0082EAFC3BC71BBC38D9C77FF45BEAFBB6BE13F8B3
                FF0029D4F873FF0062E3FF00E935F57C4F09FF001313FF005E2AFF00E927EA3E
                217F0703FF0061543FF4B1DFB347FCA66BE30FFD827FF91EBEEAAF833F67FD6A
                D3C3FF00F05A0F8B097D73059B5E695B6013B84F34EDB76C0CF5E39FA57DDF69
                7915FDBACD04B1CD138CABC6C195BE84714F8B53F6F41F4F634BFF0049178752
                8FD53151BEBF58AFFF00A5B24A28A2BE50FD0486F6C20D4A0315C430DC447AA4
                A81D4FE06A478834253A295DB81D853A8A00F8F754FF0082227C1CD5F54B9BB9
                6F3C6BE6DD4AF33EDD4A3C6E662C71FBAF534FD0BFE0897F07BC3DAE596A105E
                78D3CFB0B88EE630DA94654B2306191E574C8AFAFE8AFA2FF5BB39B72FD6656F
                53E33FE21DF0D2973AC153BEFB1E2FFB5AFEC25E0AFDB3AEB4397C5D36BB0B78
                7D665B5FECFBA584112942DBB28D9FB831F8D78F7FC38CFE0C7FCFEF8DFF00F0
                671FFF001AAFB268AC309C499A61692A187AF28C16C93D3B9D598704E438FC44
                B178CC2C27525BC9AD5D9597E091E5BFB2A7EC89E15FD8EFC1FA8689E1497579
                6CF53BBFB6CC750B8599C3ED0BC10AB81803B5739F1C7FE09A1F033F693F8917
                5E2EF1C7C3ED3BC41E23BE8A2827BD9AEEE63691225D8830922AF0BC74AF75AF
                02F137EDE36E9FB4D7887E177853C0DE27F1BEB5E0AB7B0BAF12CDA7CF6B0269
                31DE1FDC9549E5479CED05DBCA07681D7240AF2F138AAB88AAEBD793949EEDEE
                CF7B0381C3E0A8470B84828423B25B239AFF00872D7ECBFF00F449347FFC0FBD
                FF00E3D5AFE10FF8248FECDDE06D4E3BBB0F845E1633C4DB94DD896F141FF766
                775FD2BDA355F8C3E11D0BC716BE19BDF15786ECFC497C01B6D267D4E18EFAE0
                1E9B212C1DB3EC2BC07FE1E8DE129FF6A4F885E018D345B7D13E145B2DC78A75
                FBEF105B5BFD9C79066736F6BCC93AC58092118D8EC17193581D67D31A468F69
                E1ED2E0B2B0B5B6B1B2B6411C36F6F108E2894740AAA0003E95E65FB487EC3FF
                000ABF6BBBCD2AE3E23F83ECFC513688924762D3DC4F17D9D6420B81E5BAE73B
                475CF4AD2F84BFB5AFC34F8E7E10B0D73C2FE39F0C6A961A8E9F26AB0ECD4625
                945AC67124CF196DE8A8480E580DA7838AE8AD3E2F784F50B0B6BA83C51E1C9E
                D6F74E6D62DE68F5285A3B8B15C6EBB460D86806E5CC83E5191CF34018BFB3DF
                ECCBE05FD94FC1537877E1F787ADFC35A2DC5D35EC96B0CD2CAAD3305567CC8C
                C790ABDF1C5775344B710B238CABA9561EA0F5AE474DFDA17C01ACF83AEBC456
                7E39F075D787EC65105CEA90EB56CF676F2120047983EC56248182739229BAA7
                ED15F0FB43D022D56F7C79E0CB3D2E7BA7B18AF27D6EDA3B792E10E1E1572E14
                C8A7AA8391E9401E45E1FF00F82467ECE5E15F1AD9F88B4FF85FA55B6B5A7DF2
                6A76F74B7B765A2B949048B20065C6438070463DABD8FE377C0CF0A7ED1FF0E6
                F7C25E36D1A1D7FC3BA83C6F71652C9246B298DC3A125195B8650783DA8F8D9F
                19F43F807F05BC4BE3CD7AE523D07C2FA5CDAB5CC8B228F3638E32E1509214BB
                E02A8CFCCCCA075AF33FD987F6ECD0FE38FECEF69F12FC4F27853C01E1DD5A54
                1612DDF8AACEE636578D5D526914AA4570376D68492CA41A00E57FE1CB5FB2FF
                00FD124D1FFF0003EF7FF8F51FF0E5AFD97FFE89268FFF0081F7BFFC7ABDEB5D
                F8DFE0BF0B69BA6DEEA7E30F0B69D67ACC524FA7CF75AAC10C57D1C69E648F13
                330122AA02C4AE405193C572DFB547ED63E1DFD947F679BDF895AAC577AD6816
                66D76FF659495EE16E2548E3742582B2FEF14E73D3A500735F047FE0999F02FF
                00670F89165E2EF04FC3DD3B40F11E9E92476F7B15DDCC8F12C8851C00F232F2
                AC4723BD77DE0EFD9BFC11E00F88FE21F1768FA04165E23F15865D5AF566959A
                F0336E3952C54648CFCA05747E26F1CE8DE08F0BC9AD6BBAAE9BA1E930A2BCD7
                9A8DD25B5BC01B18DD2390A3920726B1F5BF8FBE04F0D7836C7C47A8F8DBC23A
                7F87B54E2CB54B9D62DE2B2BCEA7F77333847E87EE93D2B5A75EA53528C24D29
                68ECF75E7DCC2B6168D59467560A4E2EF16D2767B5D7676D3421F827FB3DF837
                F672F0EDD693E0AD0E0D074FBDB93773C314B2482494A852D97663D140EB8E2B
                B2650EA41E8460D73BE26F8C3E11F05687A7EA7ACF8ABC37A469BABBAC763777
                BA9C30417ACC32AB13BB057247202939AF06FD973FE0A383F6A2D17E186A7A7F
                83FF00B374DF88936B50C92DC6B96C25D33FB3E49230C2224497024F2F39881D
                80E5B8A55AB54AB3752AC9CA4F76DDDBF9861B0D470F4950C3C1420B6492497A
                25A23DA3E107ECF1E0CF80767AADBF84741B7D1A1D72E4DDDFA2492482E65390
                58EF66F53C0C0E6BC7BE327FC126FE0E7C63F15B6B4749D47C337F2E4CE741BA
                1671DC31E77326D6507FDD033DF35ED5E17F8F1E06F1C6B76DA668BE34F09EB1
                A95EC325C5BDA58EAF6F713DC471B147744472CCAAC0A920601041A8E0FDA13C
                0375E2D3A045E39F0749AEADDFD80E9A9ACDB1BB173827C8F2B7EFF3300FC98C
                F078AEEC3E718EA159E22956929BDDDDDDFAF7F99E5E3386B29C561E384C461A
                12A71DA3CAACBAE9DBE470DFB39FFC13FF00E177ECBD7C350F0E681F68D70647
                F6BEA529BBBD00F6573C271C7CAA0FAD77177F00FC217FF196D3E20CDA2C2FE3
                1B1B46B18353F364DF1C2C0829B776CE8C7AAE79AC1FDA07F6A7D13F674F187C
                38D1B56B2D4AEEE3E2678893C37A73DAAA94B79DA37903CB92309843D327DABA
                CF883F17BC27F0961B593C57E29F0E78623BE731DB36ADA943642E18632A8646
                5DC464703D47AD655B32C5D6A8EB55AB27292B377776BB7A796C6F85C932EC35
                18E1A850846116A4928AB292DA4B4F8BCF7F33C7BC47F19FE17FED3DF1C7C49F
                03BC6BE1AF3B53D0D56E22875885162BF04021ED5C36EDDB581C8C1C13E86B90
                D27FE08B7F04F4DF10ADDBDB78A2F6CD25F3469771AB31B3EB9DA42A87DBFF00
                02CFBD6D7ED9BFB2FF00C1CFDA87509354F10F8C34FF000B78A3C21A7477D36B
                165AC416F71A759396314D7019B0212431476DBD1B6B75AE160FD847C77E3049
                3C34BFB57F89F51B116514F258C11C6D726CE4C88DD8ACFBBCB70AC15FA36D38
                CE2BEAB058EA14E84560F1B2C3DD2E78B536AFD65171BEFBEB66BB9F019A6558
                BAB8A9BCCB2B8632CDBA7513A717CBBA8CD4DAF876BAE64F7B1E7DFB41E91A07
                C63FF8287FC1DF861F0EB4DB21A0FC33905DEA89A644A2D74FC48B248095F941
                0A88093C97700F35F703FECF3E0C93E352FC443A141FF09A2DB7D8C6A7E6C9BC
                45B76EDDBBB674E3EEE6BE51FD94F56F087EC8FF001CBC7BF0A7E1A7C34F1E78
                DFC4DE193A7378A7C44F73669BC5D23490E0C9221D806F25557B1CE4F35F45FC
                38FDAA34CF114FE2FF00F849FF00B0BC196DE1DF16CDE14B19EF3C41672AEAD2
                2EDF2D86D7FDD4B264E207C4831C8AF3B3BCE635650A18294BD9D38B8DDE8E7C
                CEF26F5DA4FA3BE9B9ED70B70CCE842AE2F33A70F6D566AA72A49C69F2A51A71
                8BB6F18AF8925AB76D0F56AE2B54FD9DBC17AD7C68D3FE225D68504BE33D2EDC
                DADAEA665903C319575DA1436C3F2C8E395FE2A8EF7F69EF869A6D8C77371F11
                3C0B6F6D2DBC7769349AFDAAA3C32398E394317C14670543742C081CD6BE8DF1
                7BC27E22D6B54D374FF147876FB51D12259F51B4B7D4A1967D3E361B83CC8AC5
                A35239058018AF9EA55AA52BBA726AE9A7676BA7BAF47D51F655F0B46BA8AAD0
                52E56A4AE93B35B357D9AE8F74794FED33FF0004E4F867FB55F8B61F107886CF
                54B0D763511CB7FA55DFD9A6BA4002AAC990C1B00601C03DB38E2BD6BE187C37
                D27E0FFC3ED27C31A1C3241A4E896EB6B6A9248647083D58F24924927DE99F0F
                BE2E7853E2DDA5D4FE14F13F877C4F0594822B99349D4A1BD4B773C85731B305
                3EC6BA1AE8AD9962AB508E1AAD46E11D937A2F438B0D926030D8AA98EA14631A
                B53E2924937EAFF3EFD428A28AE23D40A28A2800A28A2800A28A2800AF847FE0
                A3DFB28F8B3E3BFC61B6D7FE19FC36F117867E30E853D9A787BE26E9BAEDA5A5
                83DB0756993508FCD134B122EF5F25A272DC6D6C715F7751401F9AFF001C3FE0
                9C5F157C5577F19FC2D6BE13D0B5FBBF8AFE3AD33C55A67C479F538219BC3B6F
                0BDB3BA3C47FD20490881D22584142AE3711F303EBDE06FD86BC51FF000B9BF6
                C2BED4F46D220B2F8C1A7D8D8F85F529DE190DDB2E932DB4F248A9978879ECA5
                B206EEA01C57D9545007E627897FE09E5F19F55FD96FE00D8681E0BD3FC33E39
                F05D95DFC3EF17C2DABD998EEB41BE8923BABE49237C498F2F72467F79BA4395
                E2BACF803FB05FC6BFD9F7E14FC69B0D1B4EF0CDCEAFE1ED0A4F03FC214D5A68
                6EEDAEF45FB54F759B9424AA3379C91EC930BFB84DC36D7E87D1401F939AE7FC
                134FE3B7893E0FFED23A2DE7841EFAF7E305AF856FB4F92F359D2E377B9B1908
                BC8265B729146D872CAC83695403796AF67FDB6FFE09A5ACF8AFE35780F5CF04
                F867ED3F0FF4EF08EA3E14D5BC2DE1C974DD36E2D1AED91DEEE05BB5FB331755
                31B9CACB8C10C7915F7E51401F3E7897F66FD45BFE0979AC7C28D1F4BD425D5D
                FE1D5D78734DD3F5ABF82E6EBED06C5E18239EE01F299C3EC064076E4673819A
                F0D9BF61EF1EF80EC3F657F1145E06D2BC689F08BC2D71A47893C166F6D20C5E
                DC58C309BC81A522DE5911D1958B372A72A49AFBD68A00FCDAF84FFF0004AFF1
                BE9B75FB31D8F8CFC33E1DD77C39E0AF1678ABC43E24D224B986EB4FF0E5AEA3
                6F29B3B28D24FF008F84495932154A862DD5466BE92FF82A7FECE5E26FDA1BF6
                0FF11F817E1EE8B6B7FADCD2581B0D396E21B28BCB82E62728ACE56340110E06
                40E00AFA4E8A00F887F6E0F829F177F6D3F871E086D3FC05AEF83AF3E1AF8AEC
                35F7D1EF35DD2DDBC4B0A2488EB0BA49342B345B83AFDA1421C9EF5C26ADFB0E
                7C59F07FC0AF087827E1EF85B55D3BC2BA86BDADDF789EDB5DBFD12F35DB3379
                0FEEDADE521ED61B66999FCC4841936B1C0E715FA3345007E627C0FF00D847E3
                97C1AF0EFECC7A86A3F0D341F1D4BF0ABC33AAF84359F0D6A7E20B5582CA69E6
                3E5EAB0C8DBE37468F6AB2E3CD0831B735ABFB157FC13BBE2CFC1FD4BF65D97C
                45E19D3AC07C341E32FF00848443A9DBCABA7FF6899CDA08F6B66456DEA3E4FB
                A3EF62BF49A8A00FCCDFD95FFE0969E39F83771FB31EA8FE09D1344F11F82BC4
                FE27BFF1A6A76B776AD771DADE09C5A1322B1338F9A3C2296098E40C578AFC00
                F01EB7E11F8D7FB2A7C28B9F0E780F52F117C3AF887A9EA1A9788BC3FAF5BEAF
                7FAE403CF796F6E23894CB6CA37287FB4B062C1401C57ECE567E97E0BD1F40D4
                6E6F6C749D32CAF2EFFD7DC5BDAA472CFCE7E660016FC6803E6CFF008290FC11
                F1D7C50F187C09F117823C2EFE2D3F0E3C751F88754B18B51B6B299AD96DE543
                E5B4EE885B730E335E6DFB797C2BFDA07F6C9B0D334AD1FC011F85BC2DA8E85A
                C699A9DADDDEE8F3EAB15DCB1816CCD3B34CAB64F81BD603E6E54640C035F765
                1401F98BE29FF8261FC55F895E19F805A4DE6816BA6E91AA7C3EB1F86BF182D6
                4D52DE4963B1B09A19A1951D5CF9FBDA29554216216E0EEC735F46FF00C12AFF
                00664F889F013C03E24BEF8B115A2F8CAF66B4D02D5E0B98EE3CDD1B4B83ECD6
                323321203C80CB2B2E78327201AFAB68A00F90FE197EC31AD5CFFC1483E32FC4
                CF122EB7A6787B5CFEC393C393E99E207B74D41ADA1759C5C411382CAADB4012
                8C104E3A9AF12F1C7FC1353E23F8DB4FF13E9F7DE11D2EFF004CD77F69D83E22
                4B6F36A16C63BAF0E8913CD9D86EEA5436623F39F4AFD29A2803F3E3F6B0FF00
                82626A9F157F684F8C1AAE8FF0EBC2977E19D4BE0F0F0AF8363616714369AA89
                9DC470C2702DF01B224DAA064E0F26AAFC34FF008265EB3E06F8896F2DCFC39B
                01E15D53F67D5F03F89AD349D4ADACEEB59D658C7E740640C099187998B96257
                27EF57E88D1401F297FC12EBE02FC50FD9DF43F17787FC6303D9F81ACE5B4B7F
                055AEA874F975FB6B58E26124779358FEE644562A222497DA0EE3935F56D1450
                0145145007FFD9}
              mmHeight = 19579
              mmLeft = 207699
              mmTop = 4233
              mmWidth = 72496
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel50: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label50'
              Border.mmPadding = 0
              Caption = 'Entity Information'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 18
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 7673
              mmLeft = 6350
              mmTop = 4233
              mmWidth = 54769
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel51: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label51'
              Border.mmPadding = 0
              Caption = 'Tax Information'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsItalic, fsUnderline]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5027
              mmLeft = 6350
              mmTop = 16669
              mmWidth = 29369
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8467
            mmPrintPosition = 0
            object ppDBText40: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText40'
              Border.mmPadding = 0
              DataField = 'CODE'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 6350
              mmTop = 1852
              mmWidth = 14817
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText41: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText41'
              Border.mmPadding = 0
              DataField = 'DESCR'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 24871
              mmTop = 1852
              mmWidth = 39952
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText42: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText42'
              Border.mmPadding = 0
              DataField = 'DEFAULTTAX'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 66675
              mmTop = 1852
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText43: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText43'
              Border.mmPadding = 0
              DataField = 'WITHHOLDING'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 85461
              mmTop = 1852
              mmWidth = 18521
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText44: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText44'
              Border.mmPadding = 0
              DataField = 'TAXTYPE'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 105304
              mmTop = 1852
              mmWidth = 17463
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText45: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText45'
              Border.mmPadding = 0
              DataField = 'LEDGER'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 124619
              mmTop = 1852
              mmWidth = 24606
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText46: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText46'
              Border.mmPadding = 0
              DataField = 'OUTPUTLEDGER'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 151607
              mmTop = 1852
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText47: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText47'
              Border.mmPadding = 0
              DataField = 'ADJUSTLEDGER'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 181769
              mmTop = 1852
              mmWidth = 26458
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText48: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText48'
              Border.mmPadding = 0
              DataField = 'RATE'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 210080
              mmTop = 1852
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText49: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText49'
              Border.mmPadding = 0
              DataField = 'COMMENCE'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 230717
              mmTop = 1852
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText50: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText50'
              Border.mmPadding = 0
              DataField = 'END_PERIOD'
              DataPipeline = peTax
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'peTax'
              mmHeight = 4498
              mmLeft = 252678
              mmTop = 1852
              mmWidth = 20373
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppFooterBand2: TppFooterBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label7'
              Border.mmPadding = 0
              Caption = 'Printed'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4498
              mmLeft = 6350
              mmTop = 2117
              mmWidth = 10848
              BandType = 8
              LayerName = Foreground1
            end
            object ppSystemVariable3: TppSystemVariable
              DesignLayer = ppDesignLayer2
              UserName = 'SystemVariable3'
              Border.mmPadding = 0
              VarType = vtPrintDateTime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 18256
              mmTop = 2117
              mmWidth = 34660
              BandType = 8
              LayerName = Foreground1
            end
            object ppSystemVariable4: TppSystemVariable
              DesignLayer = ppDesignLayer2
              UserName = 'SystemVariable4'
              Border.mmPadding = 0
              VarType = vtPageNoDesc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 270669
              mmTop = 2117
              mmWidth = 9525
              BandType = 8
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'HeaderBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure HeaderBeforePrint;'#13#10'begin'#13#10'  if Report.AbsolutePageNo ' +
          '> 1 then'#13#10'  begin'#13#10'      Region1.visible := False;'#13#10'      SubRep' +
          'ort2.visible := False;'#13#10'  end'#13#10'  else'#13#10'  begin'#13#10'      Region1.vi' +
          'sible := True;'#13#10'      SubReport2.visible := True;'#13#10'  end;'#13#10'end;'#13 +
          #10
        raProgram.ComponentName = 'Header'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
        raProgram.CaretPos = (
          33
          11)
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryTax: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select tt.code, tt.descr, tt.defaulttax, tt.withholding, tt.taxt' +
        'ype, ttl.ledger, ttl.outputledger, ttl.adjustledger, tr.rate, tr' +
        '.commence, tr.end_period'
      'from taxtype tt'
      
        'left outer join taxtype_ledger ttl on tt.code = ttl.code and ttl' +
        '.entity = :ENTITY'
      'left outer join taxrate tr on tt.code = TR.TAXCODE')
    Left = 240
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object dsTax: TUniDataSource
    DataSet = qryTax
    Left = 240
    Top = 424
  end
  object peTax: TppDBPipeline
    DataSource = dsTax
    UserName = 'peTax'
    Left = 240
    Top = 472
    object peTaxppField1: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object peTaxppField2: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object peTaxppField3: TppField
      FieldAlias = 'DEFAULTTAX'
      FieldName = 'DEFAULTTAX'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object peTaxppField4: TppField
      FieldAlias = 'WITHHOLDING'
      FieldName = 'WITHHOLDING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object peTaxppField5: TppField
      FieldAlias = 'TAXTYPE'
      FieldName = 'TAXTYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 4
    end
    object peTaxppField6: TppField
      FieldAlias = 'LEDGER'
      FieldName = 'LEDGER'
      FieldLength = 12
      DisplayWidth = 12
      Position = 5
    end
    object peTaxppField7: TppField
      FieldAlias = 'OUTPUTLEDGER'
      FieldName = 'OUTPUTLEDGER'
      FieldLength = 12
      DisplayWidth = 12
      Position = 6
    end
    object peTaxppField8: TppField
      FieldAlias = 'ADJUSTLEDGER'
      FieldName = 'ADJUSTLEDGER'
      FieldLength = 12
      DisplayWidth = 12
      Position = 7
    end
    object peTaxppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'RATE'
      FieldName = 'RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object peTaxppField10: TppField
      FieldAlias = 'COMMENCE'
      FieldName = 'COMMENCE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object peTaxppField11: TppField
      FieldAlias = 'END_PERIOD'
      FieldName = 'END_PERIOD'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
  end
  object qryEntityGroup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select EG.CODE, eg.description from entity_group_link egl, entit' +
        'y_groups eg where EG.CODE = egl.ENTITY_GROUP_CODE and egl.entity' +
        '_code = :entity')
    Left = 460
    Top = 402
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsEntityGroup: TUniDataSource
    DataSet = qryEntityGroup
    Left = 464
    Top = 424
  end
  object peEntityGroup: TppDBPipeline
    DataSource = dsEntityGroup
    UserName = 'peEntityGroup'
    Left = 464
    Top = 472
    object peEntityGroupppField1: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object peEntityGroupppField2: TppField
      FieldAlias = 'DESCRIPTION'
      FieldName = 'DESCRIPTION'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
  end
end
