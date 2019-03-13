object frmDocs: TfrmDocs
  Left = 248
  Top = 149
  Width = 396
  Height = 260
  Caption = 'Documents'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Name'
  end
  object Label3: TLabel
    Left = 8
    Top = 32
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object Label4: TLabel
    Left = 8
    Top = 56
    Width = 52
    Height = 13
    Caption = 'Jurisdiction'
  end
  object Label5: TLabel
    Left = 8
    Top = 80
    Width = 67
    Height = 13
    Caption = 'Filename Path'
  end
  object Label6: TLabel
    Left = 8
    Top = 104
    Width = 30
    Height = 13
    Caption = 'Matter'
  end
  object Label7: TLabel
    Left = 8
    Top = 128
    Width = 56
    Height = 13
    Caption = 'PhoneBook'
  end
  object dbtbName: TDBEdit
    Left = 80
    Top = 8
    Width = 297
    Height = 21
    DataField = 'DOC_NAME'
    DataSource = dsDocs
    TabOrder = 0
  end
  object dbtbNotes: TDBEdit
    Left = 80
    Top = 32
    Width = 297
    Height = 21
    DataField = 'DESCR'
    DataSource = dsDocs
    TabOrder = 1
  end
  object dbtbJuris: TDBEdit
    Left = 80
    Top = 56
    Width = 297
    Height = 21
    DataField = 'SEARCH'
    DataSource = dsDocs
    TabOrder = 2
  end
  object dbtbPath: TDBEdit
    Left = 80
    Top = 80
    Width = 297
    Height = 21
    DataField = 'PATH'
    DataSource = dsDocs
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 80
    Top = 160
    Width = 240
    Height = 25
    DataSource = dsDocs
    TabOrder = 4
  end
  object btnEdit: TBitBtn
    Left = 304
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Edit'
    TabOrder = 5
    OnClick = btnEditClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object dbtbFileID: TDBEdit
    Left = 80
    Top = 104
    Width = 97
    Height = 21
    DataField = 'FILEID'
    DataSource = dsDocs
    TabOrder = 6
  end
  object dbtbSearch: TDBEdit
    Left = 80
    Top = 128
    Width = 169
    Height = 21
    DataField = 'SEARCH'
    DataSource = dsDocs
    TabOrder = 7
  end
    object qryDocs: TUniQuery
    SQL.Strings = (
            'SELECT D.*, D.ROWID FROM DOC D')
    Left = 65534
    Top = 192
  end
  object dsDocs: TUniDataSource
    DataSet = qryDocs
    Left = 32
    Top = 192
  end
end
