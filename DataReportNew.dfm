object frmDataReportNew: TfrmDataReportNew
  Left = 726
  Top = 421
  Caption = 'New DataForm Report'
  ClientHeight = 277
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    312
    277)
  PixelsPerInch = 96
  TextHeight = 14
  object lblName: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 14
    Caption = 'Name'
  end
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 62
    Height = 14
    Caption = 'Description'
  end
  object tbName: TEdit
    Left = 80
    Top = 8
    Width = 220
    Height = 22
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object btnSave: TBitBtn
    Left = 147
    Top = 242
    Width = 75
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
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 3
    OnClick = btnSaveClick
  end
  object btnCancel: TBitBtn
    Left = 225
    Top = 242
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object mmoDescr: TMemo
    Left = 80
    Top = 32
    Width = 220
    Height = 199
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
  end
  object qryDataReportInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO DATAREPORT '
      '    (NAME, DESCR) '
      '  VALUES '
      '    (:NAME, :DESCR)')
    Left = 380
    Top = 53
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end>
  end
end
