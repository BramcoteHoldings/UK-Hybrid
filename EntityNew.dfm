object frmEntityNew: TfrmEntityNew
  Left = 728
  Top = 229
  BorderStyle = bsDialog
  Caption = 'New Entity Creation'
  ClientHeight = 224
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    334
    224)
  PixelsPerInch = 96
  TextHeight = 15
  object Label31: TLabel
    Left = 9
    Top = 12
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label33: TLabel
    Left = 9
    Top = 37
    Width = 32
    Height = 15
    Caption = 'Name'
  end
  object lblACN: TLabel
    Left = 9
    Top = 63
    Width = 34
    Height = 15
    Caption = 'A.C.N.'
  end
  object lblABN: TLabel
    Left = 9
    Top = 89
    Width = 33
    Height = 15
    Caption = 'A.B.N.'
  end
  object rgAccounting: TRadioGroup
    Left = 9
    Top = 150
    Width = 309
    Height = 35
    Caption = 'Accounting by'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Accrual'
      'Cash')
    TabOrder = 6
    Visible = False
  end
  object btnOK: TBitBtn
    Left = 154
    Top = 192
    Width = 79
    Height = 27
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 240
    Top = 192
    Width = 78
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object tbCode: TEdit
    Left = 77
    Top = 9
    Width = 44
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object tbName: TEdit
    Left = 77
    Top = 34
    Width = 241
    Height = 23
    TabOrder = 1
  end
  object tbACN: TEdit
    Left = 77
    Top = 60
    Width = 241
    Height = 23
    TabOrder = 2
  end
  object rgType: TRadioGroup
    Left = 9
    Top = 111
    Width = 309
    Height = 36
    Caption = 'Type'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'General (Matters)'
      'Company (GL only)')
    TabOrder = 3
  end
  object tbABN: TEdit
    Left = 77
    Top = 86
    Width = 241
    Height = 23
    TabOrder = 7
  end
  object qryEntityInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO ENTITY'
      '    (CODE, NAME, ACN, TYPE, CASH_OR_ACCRUAL, ACTIVE, STARTED,'
      '     CLIENTCODE, CLIENTPAD, CLIENTLENGTH, CLIENTACRONYM, '
      '      MATTERCODE, MATTERPAD, ABN)'
      'VALUES'
      '    (:CODE, :NAME, :ACN, :TYPE, :CASH_OR_ACCRUAL, '#39'Y'#39', SysDate,'
      '     '#39'N'#39', 0, 3, '#39'Y'#39', '#39'N'#39', 0, :ABN)')
    CachedUpdates = True
    Left = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACN'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CASH_OR_ACCRUAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ABN'
        Value = nil
      end>
  end
end
