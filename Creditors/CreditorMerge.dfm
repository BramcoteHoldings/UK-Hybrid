object frmCreditorMerge: TfrmCreditorMerge
  Left = 222
  Top = 285
  BorderStyle = bsDialog
  Caption = 'Merge this Creditor into another Creditor'
  ClientHeight = 275
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 15
  object lblText: TLabel
    Left = 18
    Top = 20
    Width = 326
    Height = 36
    AutoSize = False
    Caption = 'lblText'
    WordWrap = True
  end
  object Label1: TLabel
    Left = 18
    Top = 70
    Width = 326
    Height = 31
    AutoSize = False
    Caption = 
      'All Invoices, Credit Notes and Transactions for this Creditor wi' +
      'll be merged into the Creditor you select below.'
    WordWrap = True
  end
  object btnOK: TBitBtn
    Left = 189
    Top = 245
    Width = 75
    Height = 25
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
  end
  object btnCancel: TBitBtn
    Left = 269
    Top = 245
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
  end
  object gbMergeInto: TGroupBox
    Left = 18
    Top = 125
    Width = 326
    Height = 101
    Caption = 'Merge Into'
    TabOrder = 2
    object lblMergingCreditor: TLabel
      Left = 18
      Top = 20
      Width = 291
      Height = 36
      AutoSize = False
      Caption = 'Not yet set'
      WordWrap = True
    end
    object btnFind: TBitBtn
      Left = 240
      Top = 70
      Width = 75
      Height = 25
      Caption = '&Find...'
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
      OnClick = btnFindClick
    end
  end
  object qryCreditor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NAME FROM CREDITOR WHERE NCREDITOR = :NCREDITOR')
    Left = 230
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCREDITOR'
        Value = nil
      end>
  end
  object qryMergingCreditor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NCREDITOR, NAME FROM CREDITOR WHERE NCREDITOR = :NCREDITO' +
        'R')
    Left = 190
    Top = 170
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCREDITOR'
        Value = nil
      end>
  end
end
