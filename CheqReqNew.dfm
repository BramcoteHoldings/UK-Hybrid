object frmCheqReqNew: TfrmCheqReqNew
  Left = 1067
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Payment Request'
  ClientHeight = 650
  ClientWidth = 851
  Color = clBtnFace
  Constraints.MinHeight = 551
  Constraints.MinWidth = 418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    851
    650)
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 9
    Top = 10
    Width = 77
    Height = 15
    Caption = '&Date Required:'
  end
  object Label3: TLabel
    Left = 9
    Top = 35
    Width = 77
    Height = 15
    Caption = 'Bank Account:'
  end
  object lblTypeDesc: TLabel
    Left = 229
    Top = 522
    Width = 3
    Height = 15
  end
  object lblAuthorName: TLabel
    Left = 92
    Top = 321
    Width = 3
    Height = 15
  end
  object lblLgrDesc: TLabel
    Left = 35
    Top = 672
    Width = 169
    Height = 15
    AutoSize = False
    ShowAccelChar = False
  end
  object lblInvoiceMsg: TLabel
    Left = 239
    Top = 11
    Width = 16
    Height = 15
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Bill'
    Visible = False
  end
  object lblInvoice: TLabel
    Left = 256
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
  object Label7: TLabel
    Left = 3
    Top = 640
    Width = 73
    Height = 15
    Caption = 'Expense Type:'
  end
  object lblNmemo: TLabel
    Left = 408
    Top = 537
    Width = 3
    Height = 15
  end
  object Label10: TLabel
    Left = 536
    Top = 636
    Width = 101
    Height = 18
    AutoSize = False
    Caption = 'Creditor Inv No:'
    WordWrap = True
  end
  object lblAutorised: TLabel
    Left = 106
    Top = 593
    Width = 77
    Height = 15
    Caption = 'Authorised By:'
    Visible = False
  end
  object gbDetails: TcxGroupBox
    Left = 8
    Top = 184
    Caption = 'Details'
    TabOrder = 4
    DesignSize = (
      485
      311)
    Height = 311
    Width = 485
    object lblPaymentType: TLabel
      Left = 14
      Top = 22
      Width = 78
      Height = 15
      Caption = 'Payment Type:'
    end
    object Label5: TLabel
      Left = 14
      Top = 51
      Width = 34
      Height = 15
      Caption = 'Pa&yee:'
    end
    object lblReason: TLabel
      Left = 14
      Top = 81
      Width = 41
      Height = 15
      Caption = 'Reason:'
    end
    object lblTaxType: TLabel
      Left = 14
      Top = 140
      Width = 46
      Height = 15
      Caption = 'Tax type:'
    end
    object lblAmount: TLabel
      Left = 14
      Top = 169
      Width = 47
      Height = 15
      Caption = '&Amount:'
    end
    object lblTotal: TLabel
      Left = 313
      Top = 170
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRequestedBy: TLabel
      Left = 14
      Top = 225
      Width = 74
      Height = 15
      Caption = 'Requested By:'
    end
    object lblNotes: TLabel
      Left = 14
      Top = 250
      Width = 34
      Height = 15
      Caption = '&Notes:'
    end
    object lblDocument: TLabel
      Left = 13
      Top = 110
      Width = 59
      Height = 15
      Caption = 'Document:'
    end
    object cbType: TcxLookupComboBox
      Tag = 1
      Left = 98
      Top = 19
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'Code'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIPTION'
        end
        item
          FieldName = 'CLEARANCE_DAYS'
        end
        item
          FieldName = 'Code'
        end
        item
          FieldName = 'BANK_DEPOSIT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsPaymentType
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 139
    end
    object tbPayee: TcxButtonEdit
      Left = 98
      Top = 48
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF000000FF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000C0C0C000000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C0000000
            00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
            00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000000000FFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000000000FFFFFF
            FFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
            00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = tbPayeePropertiesButtonClick
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 380
    end
    object tbDesc: TcxTextEdit
      Left = 98
      Top = 78
      Anchors = [akLeft, akTop, akRight]
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 380
    end
    object cbTaxType: TcxComboBox
      Left = 98
      Top = 137
      Properties.OnChange = cbTaxTypeChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      OnClick = cbTaxTypeClick
      Width = 81
    end
    object neAmount: TcxCurrencyEdit
      Left = 98
      Top = 166
      EditValue = 0c
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnChange = neAmountChange
      Style.LookAndFeel.NativeStyle = True
      Style.TransparentBorder = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      OnExit = neAmountExit
      Width = 81
    end
    object neTax: TcxCurrencyEdit
      Left = 213
      Top = 166
      Anchors = [akLeft, akTop, akRight]
      EditValue = 0c
      Enabled = False
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Properties.OnChange = neTaxChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 88
    end
    object lblTax: TcxLabel
      Left = 179
      Top = 167
      Caption = 'Tax'
    end
    object lblChequeNo: TcxLabel
      Left = 11
      Top = 195
      Caption = 'Cheque No:'
      Transparent = True
    end
    object teChequeNo: TcxTextEdit
      Left = 98
      Top = 194
      Anchors = [akLeft, akTop, akRight]
      Properties.OnValidate = teChequeNoPropertiesValidate
      TabOrder = 9
      Width = 380
    end
    object cmbAuthor: TcxLookupComboBox
      Left = 98
      Top = 222
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
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dmAxiom.dsEmplyeeList
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 10
      Width = 380
    end
    object mmoNotes: TcxMemo
      Left = 98
      Top = 251
      Lines.Strings = (
        '')
      Properties.MaxLength = 400
      Properties.ScrollBars = ssVertical
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Height = 46
      Width = 380
    end
    object tbDocument: TcxTextEdit
      Left = 98
      Top = 107
      Anchors = [akLeft, akTop, akRight]
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 380
    end
  end
  object tbLedger: TcxButtonEdit
    Left = 138
    Top = 642
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000C0C0C000000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
          00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000000000FFFFFF
          FFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
          00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = tbLedgerPropertiesButtonClick
    Properties.OnChange = tbLedgerPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 9
    OnExit = tbLedgerExit
    Width = 108
  end
  object cmbInvoice: TcxLookupComboBox
    Left = 138
    Top = 631
    Anchors = [akLeft, akTop, akRight]
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 12
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'NINVOICE'
    Properties.ListColumns = <
      item
        Width = 60
        FieldName = 'REFNO'
      end
      item
        Width = 125
        FieldName = 'CREDITOR'
      end
      item
        Width = 200
        FieldName = 'DESCR'
      end
      item
        RepositoryItem = cxEditRepository1CurrencyItem1
        Width = 65
        FieldName = 'OWING'
      end>
    Properties.ListOptions.ColumnSorting = False
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBillInv
    Properties.OnCloseUp = cmbInvoicePropertiesCloseUp
    Properties.OnInitPopup = cmbInvoicePropertiesInitPopup
    EditValue = ''
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 10
    Visible = False
    Width = 350
  end
  object cxCBAccountType: TcxLookupComboBox
    Left = 143
    Top = 677
    Anchors = [akLeft, akTop, akRight]
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'NDEPOSITACCOUNT'
    Properties.ListColumns = <
      item
        FieldName = 'ACCOUNT_NUMBER'
      end
      item
        FieldName = 'ACCOUNT_NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsAccountType
    Properties.OnInitPopup = cxCBAccountTypePropertiesInitPopup
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Width = 350
  end
  object cmbBank: TcxLookupComboBox
    Left = 114
    Top = 32
    Anchors = [akLeft, akTop, akRight]
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 10
    Properties.DropDownWidth = 200
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'ACCT'
    Properties.ListColumns = <
      item
        Width = 150
        FieldName = 'NAME'
      end
      item
        Width = 50
        FieldName = 'ACCT'
      end
      item
        FieldName = 'TRUST'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dmAxiom.dsDefaultBankList
    Properties.OnChange = cmbBankPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 379
  end
  object dfSlipNo: TcxTextEdit
    Left = 660
    Top = 631
    Anchors = [akLeft, akTop, akRight]
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Width = 350
  end
  object chkFunds: TcxCheckBox
    Left = 8
    Top = 501
    Caption = '&Wait until Funds Received? '
    ParentBackground = False
    ParentColor = False
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = clWindow
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Transparent = True
    OnClick = chkFundsClick
  end
  object chkInvoiceSupplied: TcxCheckBox
    Left = 8
    Top = 522
    AutoSize = False
    Caption = '&Supplier Invoice Received'
    ParentBackground = False
    ParentColor = False
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = clWindow
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 13
    Transparent = True
    Height = 23
    Width = 185
  end
  object chkPrint: TcxCheckBox
    Left = 8
    Top = 544
    AutoSize = False
    Caption = '&Print'
    ParentBackground = False
    ParentColor = False
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = clWindow
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 14
    Transparent = True
    Height = 23
    Width = 60
  end
  object chkNoExit: TcxCheckBox
    Left = 8
    Top = 564
    AutoSize = False
    Caption = '&Keep form open after posting?'
    ParentBackground = False
    ParentColor = False
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = clWindow
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 15
    Transparent = True
    Height = 23
    Width = 185
  end
  object chkBill: TcxCheckBox
    Left = 694
    Top = 543
    Anchors = [akTop, akRight]
    Caption = 'Must bill before paying '
    ParentBackground = False
    ParentColor = False
    Properties.Alignment = taRightJustify
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = clDefault
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 17
    Transparent = True
    Visible = False
    OnClick = chkBillClick
  end
  object chkUrgent: TcxCheckBox
    Left = 775
    Top = 565
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'Urgent'
    ParentBackground = False
    ParentColor = False
    Properties.Alignment = taRightJustify
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = clDefault
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 18
    Transparent = True
    Height = 23
    Width = 68
  end
  object chkHeld: TcxCheckBox
    Left = 751
    Top = 522
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'To be Held?'
    ParentBackground = False
    ParentColor = False
    Properties.Alignment = taRightJustify
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = 10930928
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 16
    Transparent = True
    Height = 23
    Width = 92
  end
  object btnSave: TcxButton
    Left = 666
    Top = 593
    Width = 81
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Ok'
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
    OptionsImage.Spacing = 5
    TabOrder = 19
    OnClick = btnSaveClick
  end
  object btnCancel: TcxButton
    Left = 756
    Top = 593
    Width = 81
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
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
    OptionsImage.Spacing = 5
    TabOrder = 20
    OnClick = btnCancelClick
  end
  object dtpReqDate: TEnforceCustomDateEdit
    Left = 114
    Top = 5
    Anchors = [akLeft, akTop, akRight]
    EditValue = 43553.7614915625d
    Properties.ShowTime = False
    Properties.OnCloseUp = dtpReqDatePropertiesCloseUp
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    AllowForwardDating = True
    Width = 119
  end
  object chkDeposit: TcxCheckBox
    Left = 8
    Top = 644
    AutoSize = False
    Caption = 'Deposit'
    Properties.Alignment = taRightJustify
    Properties.DisplayChecked = 'Y'
    Properties.DisplayUnchecked = 'N'
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = 'Y'
    Properties.ValueUnchecked = 'N'
    State = cbsGrayed
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = clDefault
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Visible = False
    OnClick = chkDepositClick
    Height = 22
    Width = 75
  end
  object cmbOld: TcxLookupComboBox
    Left = 378
    Top = 642
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 12
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'REFNO'
    Properties.ListColumns = <
      item
        Caption = 'Bill'
        Width = 45
        FieldName = 'REFNO'
      end
      item
        Caption = 'Total'
        RepositoryItem = cxEditRepository1CurrencyItem1
        FieldName = 'TOTAL'
      end
      item
        Caption = 'Owing'
        RepositoryItem = cxEditRepository1CurrencyItem1
        FieldName = 'OWING'
      end
      item
        Caption = 'Client'
        Width = 160
        FieldName = 'TITLE'
      end
      item
        Caption = 'Description'
        Width = 160
        FieldName = 'SHORTDESCR'
      end
      item
        FieldName = 'NMEMO'
      end>
    Properties.ListOptions.ColumnSorting = False
    Properties.ListSource = dsMatterBills
    Properties.OnCloseUp = cmbBillsPropertiesCloseUp
    Properties.OnEditValueChanged = cmbBillsPropertiesEditValueChanged
    Properties.OnInitPopup = cmbBillsPropertiesInitPopup
    EditValue = ''
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 8
    Visible = False
    Width = 106
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 628
    Width = 851
    Height = 22
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 180
        Width = 180
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 130
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object cbAuthorise: TcxCheckBox
    Left = 10
    Top = 589
    AutoSize = False
    Caption = 'Authorise'
    Enabled = False
    ParentBackground = False
    ParentColor = False
    Properties.ImmediatePost = True
    Properties.OnEditValueChanged = cbAuthorisePropertiesEditValueChanged
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.Color = clWindow
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 21
    Transparent = True
    Height = 23
    Width = 90
  end
  object rgChequeType: TcxRadioGroup
    Left = 8
    Top = 55
    Caption = 'Payment Type'
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = 'Client Payment'
      end
      item
        Caption = 'Bill Transfer'
      end
      item
        Caption = 'Disb Transfer'
      end>
    Properties.OnChange = rgChequeTypePropertiesChange
    TabOrder = 2
    Height = 42
    Width = 485
  end
  object gbMajorMinor: TcxGroupBox
    Left = 8
    Top = 103
    Caption = 'Key Selection'
    TabOrder = 3
    DesignSize = (
      485
      84)
    Height = 84
    Width = 485
    object lblMajorDescription: TLabel
      Left = 274
      Top = 25
      Width = 260
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object lblMajorSelection: TLabel
      Left = 13
      Top = 24
      Width = 34
      Height = 15
      Caption = 'Major:'
    end
    object lblMinorDescription: TLabel
      Left = 214
      Top = 55
      Width = 260
      Height = 14
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object lblMinorSelection: TLabel
      Left = 13
      Top = 54
      Width = 35
      Height = 15
      Caption = 'Minor:'
    end
    object tbMajor: TcxButtonEdit
      Left = 96
      Top = 21
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
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
            FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.OnButtonClick = tbFilePropertiesButtonClick
      Properties.OnValidate = tbFilePropertiesValidate
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnExit = tbMajorExit
      Width = 155
    end
    object tbMinor: TcxButtonEdit
      Left = 96
      Top = 51
      BeepOnEnter = False
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
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
            FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = tbMinorPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 155
    end
    object cmbExpenseType: TcxLookupComboBox
      Left = 274
      Top = 52
      Anchors = [akLeft, akTop, akRight]
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 10
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end
        item
          FieldName = 'CODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSundryType
      Properties.OnChange = cbExpenseTypeChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      OnExit = cmbExpenseTypeExit
      Width = 108
    end
  end
  object gbBankDetails: TcxGroupBox
    Left = 499
    Top = 184
    Caption = 'Destination Bank Details'
    TabOrder = 5
    DesignSize = (
      338
      189)
    Height = 189
    Width = 338
    object lblSortCode: TLabel
      Left = 10
      Top = 59
      Width = 55
      Height = 15
      Caption = 'Sort Code:'
    end
    object lblAccountNo: TLabel
      Left = 11
      Top = 86
      Width = 67
      Height = 15
      Caption = 'Account No:'
    end
    object lblReference: TLabel
      Left = 10
      Top = 117
      Width = 55
      Height = 15
      Caption = 'Reference:'
    end
    object tbSortCode: TcxTextEdit
      Left = 94
      Top = 54
      Anchors = [akLeft, akTop, akRight]
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 227
    end
    object tbAccountNo: TcxTextEdit
      Left = 94
      Top = 83
      Anchors = [akLeft, akTop, akRight]
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 227
    end
    object tbBankReference: TcxTextEdit
      Left = 94
      Top = 112
      Anchors = [akLeft, akTop, akRight]
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 227
    end
    object chkForeignBank: TcxCheckBox
      Left = 11
      Top = 22
      AutoSize = False
      Caption = 'Foreign Bank'
      ParentBackground = False
      ParentColor = False
      Properties.OnChange = chkForeignBankPropertiesChange
      Style.Color = clWindow
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.Color = clWindow
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Transparent = True
      Height = 23
      Width = 94
    end
  end
  object dsCheqReq: TUniDataSource
    DataSet = qryCheqReq
    Left = 62
    Top = 170
  end
  object qryCheqReq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT C.*, CR.CODE, CR.NAME, C.ROWID, I.OWING, I.DESCR As INVOI' +
        'CEDESCR '
      'FROM CHEQREQ C '
      'Left Outer Join Invoice I On I.NINVOICE = C.NINVOICE'
      'Left Outer Join Creditor CR On I.NCREDITOR = CR.NCREDITOR'
      'WHERE C.NCHEQREQ = :NCHEQREQ')
    CachedUpdates = True
    Left = 331
    Top = 99
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
      'where entity = :entity'
      'and active = '#39'Y'#39
      'and code not in ('#39'ia'#39','#39'wo'#39')'
      'order by descr')
    Left = 70
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsSundryType: TUniDataSource
    DataSet = qrySundryType
    Left = 106
    Top = 38
  end
  object qryDepositAccount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from deposit_account'
      'where nmatter = :nmatter'
      '')
    Left = 351
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsAccountType: TUniDataSource
    DataSet = qryDepositAccount
    Left = 411
    Top = 2
  end
  object qryInvestmentTrans: TUniQuery
    KeyFields = 'NINVTRAN'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      'NINVTRAN, NMATTER, NDEPOSITACCOUNT, '
      '   TYPE, CREATED,'
      '   DESCR, AMOUNT,Reference,PayeePayor,REV_NINVTRAN'
      'FROM INVESTMENT_TRANS')
    Left = 246
    Top = 387
  end
  object qryMatterBills: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NMEMO.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, FEES, ' +
        'DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, '
      
        'DISB_PAID, ANTD_PAID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE,NME' +
        'MO.TOTAL , NMEMO.OWING,UPCRED, UPCRED_PAID, '
      
        'MATTER.ACCT, MATTER.TITLE, MATTER.SHORTDESCR, NMEMO.PARTNER, NME' +
        'MO.AUTHOR, MATTER.TYPE, MATTER.FILEID '
      'FROM NMEMO, MATTER  '
      
        'WHERE NMEMO.NMATTER = MATTER.NMATTER AND NMEMO.DISPATCHED IS NOT' +
        ' NULL  '
      'AND MATTER.NMATTER = :NMATTER'
      'AND nvl(NMEMO.OWING, 0) > 0  AND REFNO not like ('#39'%CN'#39')'
      'order by refno')
    Left = 437
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end>
  end
  object dsMatterBills: TUniDataSource
    DataSet = qryMatterBills
    Left = 438
    Top = 120
  end
  object cxEditRepository1: TcxEditRepository
    Left = 347
    Top = 401
    PixelsPerInch = 96
    object cxEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '$,0.00;-$,0.00'
    end
  end
  object qryGetTrust: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      ' getClearedTrust(:P_File ) AS cl_trust_bal,'
      ' getTrustBalAmount(:P_File ) AS trust_bal,'
      ' getReceiptReqAmountToDate(:P_File, :P_DateTo) AS req_amount'
      'from'
      'dual')
    Options.ReturnParams = True
    Left = 178
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object qryBillInv: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'Select  i.refno, creditor,  a.descr,  i.owing, i.ninvoice '
      'from '
      'alloc a,  invoice i,  nmemo n  '
      'where '
      'a.nmatter = :nmatter and '
      'a.nmemo = :nmemo and '
      'a.ninvoice is not null and '
      'i.owing > 0 and '
      'a.ninvoice = i.ninvoice and '
      'a.nmemo = n.nmemo and '
      '(n.upcred - n.upcred_paid - n.upcred_woff) <> 0 ')
    Left = 41
    Top = 26
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object dsBillInv: TUniDataSource
    DataSet = qryBillInv
    Left = 35
    Top = 185
  end
  object qryBillPayment: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '   sum(AMOUNT) as payment'
      'FROM'
      '   CHEQREQ'
      'WHERE'
      '   NMEMO= :nmemo'
      'AND'
      '   TRUST = '#39'T'#39
      'AND'
      '   CONVERTED = '#39'N'#39)
    Left = 173
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryPrinter: TUniQuery
    UpdatingTable = 'PRINTER'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT PRINTER.NUM_LAST, PRINTER.ROWID'
      'FROM PRINTER'
      'WHERE CODE = :CODE'
      'and bank_acct = :acct')
    CachedUpdates = True
    Left = 192
    Top = 377
    ParamData = <
      item
        DataType = ftString
        Name = 'CODE'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'acct'
        Value = nil
      end>
  end
  object qryCheckCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CHQNO FROM CHEQUE WHERE ACCT = :P_Acct AND CHQNO = :P_Chq' +
        'no')
    CachedUpdates = True
    Left = 58
    Top = 355
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Chqno'
        Value = nil
      end>
  end
  object qryChequeRange: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 1 '
      'FROM '
      'PRINTER '
      'WHERE '
      'code = :P_Printer '
      
        'and to_number(:NUM_LAST) BETWEEN to_number(NUM_FROM) AND to_numb' +
        'er(NUM_TO)')
    CachedUpdates = True
    Left = 108
    Top = 371
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Printer'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NUM_LAST'
        Value = nil
      end>
  end
  object CheqReqActManager: TActionManager
    Left = 341
    Top = 284
    StyleName = 'Platform Default'
  end
  object qryPaymentType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from BANK_CLEARANCE_DAYS'
      'Where RECEIPT_OR_PAYMENT = '#39'P'#39' And ACTIVE = '#39'Y'#39
      'order by code')
    Left = 177
    Top = 483
  end
  object dsPaymentType: TUniDataSource
    DataSet = qryPaymentType
    Left = 249
    Top = 483
  end
end
