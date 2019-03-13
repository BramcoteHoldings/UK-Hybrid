object frmPettyCash: TfrmPettyCash
  Left = 364
  Top = 224
  Caption = 'Petty Cash Sundry Expense Entry'
  ClientHeight = 331
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    661
    331)
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 22
    Height = 14
    Caption = 'Date'
  end
  object Label8: TLabel
    Left = 272
    Top = 8
    Width = 74
    Height = 14
    Caption = 'Default Reason'
  end
  object Label3: TLabel
    Left = 8
    Top = 32
    Width = 89
    Height = 14
    Caption = 'Petty Cash Ledger'
  end
  object lblPettyCashDescr: TLabel
    Left = 264
    Top = 32
    Width = 3
    Height = 14
  end
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 116
    Height = 14
    Caption = 'Default Expense Ledger'
  end
  object lblDefaultDescr: TLabel
    Left = 264
    Top = 56
    Width = 3
    Height = 14
  end
  object lblAmountMsg: TLabel
    Left = 432
    Top = 286
    Width = 31
    Height = 16
    Anchors = [akRight, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 640
    Top = 286
    Width = 4
    Height = 16
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTax: TLabel
    Left = 640
    Top = 262
    Width = 4
    Height = 16
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblBalance: TLabel
    Left = 540
    Top = 262
    Width = 4
    Height = 16
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dtpDate: TDateTimeAccount
    Left = 152
    Top = 8
    Width = 105
    Height = 22
    Date = 42438.783468368060000000
    Time = 42438.783468368060000000
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
  end
  object btnOK: TBitBtn
    Left = 507
    Top = 303
    Width = 71
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 7
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 585
    Top = 303
    Width = 73
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 8
    OnClick = btnCancelClick
  end
  object dbgrLedger: TDBGrid
    Left = 8
    Top = 80
    Width = 657
    Height = 179
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsLedger
    PopupMenu = popGrid
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColExit = dbgrLedgerColExit
    OnEditButtonClick = dbgrLedgerEditButtonClick
    OnEnter = dbgrLedgerEnter
    OnExit = dbgrLedgerExit
    OnKeyPress = dbgrLedgerKeyPress
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'REFNO'
        Title.Caption = 'Ledger'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LONGDESC'
        Title.Caption = 'Ledger Description'
        Width = 103
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'TYPE'
        Title.Caption = 'Matter'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REASON'
        Width = 202
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMOUNT'
        Title.Alignment = taRightJustify
        Title.Caption = 'Amount'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXCODE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX'
        Title.Alignment = taRightJustify
        Width = 45
        Visible = True
      end>
  end
  object tbDesc: TEdit
    Left = 360
    Top = 8
    Width = 257
    Height = 22
    TabOrder = 1
  end
  object tbPettyCash: TEdit
    Left = 152
    Top = 32
    Width = 78
    Height = 22
    CharCase = ecUpperCase
    TabOrder = 2
    OnExit = tbPettyCashExit
  end
  object btnLedger: TBitBtn
    Left = 232
    Top = 32
    Width = 25
    Height = 21
    Hint = 'Find Ledger'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 3
    OnClick = btnLedgerClick
  end
  object tbDefault: TEdit
    Left = 152
    Top = 56
    Width = 78
    Height = 22
    CharCase = ecUpperCase
    TabOrder = 4
    OnExit = tbDefaultExit
  end
  object btnDefault: TBitBtn
    Left = 232
    Top = 56
    Width = 25
    Height = 21
    Hint = 'Find Ledger'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 5
    OnClick = btnDefaultClick
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 520
    Top = 32
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT L.*, L.ROWID FROM LGRALLOC L WHERE L.REFNO = '#39#39)
    CachedUpdates = True
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    Left = 520
    Top = 65535
    object qryLedgerTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qryLedgerREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object qryLedgerLONGDESC: TStringField
      FieldName = 'LONGDESC'
      Size = 120
    end
    object qryLedgerREASON: TStringField
      FieldName = 'REASON'
      Size = 400
    end
    object qryLedgerAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object qryLedgerDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object qryLedgerCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object qryLedgerUNIQUEID: TFloatField
      FieldName = 'UNIQUEID'
    end
    object qryLedgerCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryLedgerUNITS: TIntegerField
      FieldName = 'UNITS'
    end
    object qryLedgerRATE: TFloatField
      FieldName = 'RATE'
    end
    object qryLedgerAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qryLedgerBILLED: TStringField
      FieldName = 'BILLED'
      Size = 1
    end
    object qryLedgerTAXCODE: TStringField
      FieldName = 'TAXCODE'
      Size = 8
    end
    object qryLedgerTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryLedgerTAXRATE: TFloatField
      FieldName = 'TAXRATE'
    end
    object qryLedgerWITHHOLD: TStringField
      FieldName = 'WITHHOLD'
      Size = 1
    end
    object qryLedgerSUNDRYTYPE: TStringField
      FieldName = 'SUNDRYTYPE'
      Size = 5
    end
    object qryLedgerRCPTNO: TStringField
      FieldName = 'RCPTNO'
      Size = 12
    end
    object qryLedgerROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object popGrid: TPopupMenu
    Left = 488
    object popDelete: TMenuItem
      Caption = '&Delete'
      Default = True
      OnClick = popDeleteClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
    object popGridDateStamp: TMenuItem
      Caption = 'Date &Stamp'
      OnClick = popGridDateStampClick
    end
  end
  object qryJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT J.*, J.ROWID FROM JOURNAL J WHERE J.NJOURNAL = -1')
    CachedUpdates = True
    Left = 552
  end
  object qrySundry: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT S.*, S.ROWID FROM SUNDRY S WHERE S.NSUNDRY = -1')
    CachedUpdates = True
    Left = 584
  end
end
