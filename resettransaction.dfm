object frmResetTransaction: TfrmResetTransaction
  Left = 317
  Top = 192
  ActiveControl = cbEntityName
  BorderIcons = [biSystemMenu]
  Caption = 'Reset Transaction'
  ClientHeight = 184
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cbResetTransaction: TGroupBox
    Left = 15
    Top = 5
    Width = 329
    Height = 167
    Caption = 'Reset Transaction'
    TabOrder = 0
    object lblReference: TLabel
      Left = 10
      Top = 24
      Width = 55
      Height = 13
      Caption = 'NCheque #'
    end
    object Label19: TLabel
      Left = 10
      Top = 106
      Width = 25
      Height = 13
      Caption = 'Bank'
    end
    object Label20: TLabel
      Left = 10
      Top = 86
      Width = 26
      Height = 13
      Caption = 'Entity'
    end
    object lblBank: TLabel
      Left = 62
      Top = 106
      Width = 45
      Height = 13
      Caption = '               '
    end
    object lblNReference: TLabel
      Left = 116
      Top = 25
      Width = 45
      Height = 13
      Caption = '               '
    end
    object Label1: TLabel
      Left = 10
      Top = 45
      Width = 32
      Height = 13
      Caption = 'Details'
    end
    object lblDetails: TLabel
      Left = 116
      Top = 42
      Width = 63
      Height = 13
      Caption = '                     '
    end
    object Label2: TLabel
      Left = 10
      Top = 65
      Width = 36
      Height = 13
      Caption = 'Amount'
    end
    object lblAmount: TLabel
      Left = 116
      Top = 60
      Width = 45
      Height = 13
      Caption = '               '
    end
    object cbBank: TComboBox
      Left = 116
      Top = 102
      Width = 58
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object btnChange: TButton
      Left = 128
      Top = 131
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 3
      OnClick = btnChangeClick
    end
    object cbEntityName: TComboBox
      Left = 116
      Top = 77
      Width = 185
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbEntityNameChange
    end
    object cbEntity: TComboBox
      Left = 204
      Top = 100
      Width = 97
      Height = 21
      TabOrder = 2
      Visible = False
    end
  end
  object orscrResetCheque1: TUniScript
    SQL.Strings = (
      'UPDATE CHEQUE'
      'SET ACCT =:BANK_ACCT WHERE NCHEQUE =:NCHEQUE;'
      ''
      'UPDATE ALLOC'
      'SET BANK =:BANK_ACCT, ACCT =:ENTITY'
      'WHERE NCHEQUE =:NCHEQUE;'
      ''
      'UPDATE TRANSITEM'
      'SET ACCT =:ENTITY'
      'WHERE NCHEQUE =:NCHEQUE;')
    Connection = dmAxiom.uniInsight
    Left = 257
    Top = 23
  end
  object orscrResetReceipt: TUniScript
    SQL.Strings = (
      'UPDATE RECEIPT'
      'SET ACCT =:BANK_ACCT WHERE NCHEQUE =:NCHEQUE;'
      ''
      'UPDATE ALLOC'
      'SET BANK =:BANK_ACCT, ACCT =:ENTITY'
      'WHERE NCHEQUE =:NCHEQUE;'
      ''
      'UPDATE TRANSITEM'
      'SET ACCT =:ENTITY'
      'WHERE NCHEQUE =:NCHEQUE;')
    Connection = dmAxiom.uniInsight
    Left = 289
    Top = 23
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 223
    Top = 24
  end
  object qryResetTransaction: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 223
    Top = 56
  end
end
