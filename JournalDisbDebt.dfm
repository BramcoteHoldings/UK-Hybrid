object frmJournalDisbDebt: TfrmJournalDisbDebt
  Left = 398
  Top = 326
  Caption = 'Disbursement-Debtors Journal'
  ClientHeight = 148
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 24
    Top = 47
    Width = 24
    Height = 13
    Caption = 'Date'
  end
  object Label6: TLabel
    Left = 10
    Top = 93
    Width = 38
    Height = 13
    Caption = 'Reason'
  end
  object Label3: TLabel
    Left = 14
    Top = 9
    Width = 34
    Height = 13
    Caption = 'Matter'
  end
  object lblFile: TLabel
    Left = 82
    Top = 7
    Width = 2
    Height = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblClient: TLabel
    Left = 149
    Top = 7
    Width = 2
    Height = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblDesc: TLabel
    Left = 82
    Top = 22
    Width = 2
    Height = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object Label1: TLabel
    Left = 7
    Top = 71
    Width = 41
    Height = 13
    Caption = 'Amount'
  end
  object edReason: TEdit
    Left = 52
    Top = 90
    Width = 224
    Height = 21
    TabOrder = 3
  end
  object btnOK: TBitBtn
    Left = 134
    Top = 119
    Width = 69
    Height = 23
    Caption = '&OK'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 208
    Top = 119
    Width = 70
    Height = 23
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
    OnClick = btnCancelClick
  end
  object dtpDate: TDateTimeAccount
    Left = 52
    Top = 45
    Width = 98
    Height = 22
    Date = 42543.567640532400000000
    Time = 42543.567640532400000000
    TabOrder = 1
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
  end
  object btnMatter: TBitBtn
    Left = 52
    Top = 7
    Width = 20
    Height = 20
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 0
    OnClick = btnMatterClick
  end
  object neAmount: TNumberEdit
    Left = 52
    Top = 68
    Width = 83
    Height = 21
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    EditText = '0'
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -11
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -11
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -11
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    TabOrder = 2
    Text = '$0.00'
  end
  object qryMatter: TUniQuery
    SQL.Strings = (
      
        'SELECT FILEID, NCLIENT, TITLE, SHORTDESCR, NMATTER, AUTHOR, UNBI' +
        'LL_DISB FROM MATTER  WHERE FILEID = :P_File')
    Left = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
    object qryMatterFILEID: TStringField
      FieldName = 'FILEID'
    end
    object qryMatterNCLIENT: TFloatField
      FieldName = 'NCLIENT'
    end
    object qryMatterTITLE: TStringField
      FieldName = 'TITLE'
      Required = True
      Size = 85
    end
    object qryMatterSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qryMatterNMATTER: TFloatField
      FieldName = 'NMATTER'
      Required = True
    end
    object qryMatterAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Required = True
      Size = 3
    end
    object qryMatterUNBILL_DISB: TFloatField
      FieldName = 'UNBILL_DISB'
    end
  end
  object qryJournal: TUniQuery
    SQL.Strings = (
      'SELECT J.ROWID, J.* FROM JOURNAL J WHERE J.NJOURNAL = -1')
    CachedUpdates = True
    Left = 200
  end
  object qryAllocInsert: TUniQuery
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (AMOUNT, DESCR, CREATED, ACCT, NMATTER, REFNO,'
      '   TYPE, NCLIENT, NJOURNAL, PAYER, TRUST, BILLED, FILEID,'
      '   NALLOC, NMEMO, CLIENT_NAME, SYSTEM_DATE, MATTER_DESC,'
      '   PRIVATE, TAXCODE, TAX,CLEARED)'
      'VALUES'
      '  (:AMOUNT, :DESCR, :CREATED, :ACCT, :NMATTER, :REFNO,'
      '   :TYPE, :NCLIENT, :NJOURNAL, :PAYER, '#39'G'#39', '#39'N'#39', :FILEID,'
      '   :NALLOC, 0, :CLIENT_NAME, SysDate, :MATTER_DESC,'
      '   '#39'N'#39', '#39'NOTAX'#39', 0,'#39'Y'#39')')
    Left = 232
    ParamData = <
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
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLIENT_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATTER_DESC'
        Value = nil
      end>
  end
end
