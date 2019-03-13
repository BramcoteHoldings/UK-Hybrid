object frmPhoneMessage: TfrmPhoneMessage
  Left = 423
  Top = 245
  Caption = 'New Phone Message'
  ClientHeight = 228
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    385
    228)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 3
    Top = 10
    Width = 64
    Height = 15
    Caption = 'Message for'
  end
  object Label2: TLabel
    Left = 3
    Top = 36
    Width = 46
    Height = 15
    Caption = 'Message'
  end
  object btnSave: TBitBtn
    Left = 238
    Top = 199
    Width = 70
    Height = 26
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
    TabOrder = 0
    OnClick = btnSaveClick
    ExplicitLeft = 178
    ExplicitTop = 159
  end
  object btnCancel: TBitBtn
    Left = 311
    Top = 199
    Width = 69
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnCancelClick
    ExplicitLeft = 251
    ExplicitTop = 159
  end
  object btnEmployees: TBitBtn
    Left = 138
    Top = 7
    Width = 22
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
    TabOrder = 2
    OnClick = btnEmployeesClick
  end
  object dbmMessage: TDBMemo
    Left = 3
    Top = 53
    Width = 377
    Height = 143
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'MESSAGE'
    DataSource = dsPhoneMessage
    TabOrder = 3
    OnChange = dbmMessageChange
    ExplicitWidth = 317
    ExplicitHeight = 103
  end
  object cbEmployee: TComboBox
    Left = 72
    Top = 7
    Width = 64
    Height = 23
    TabOrder = 4
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME FROM EMPLOYEE')
    Left = 282
    Top = 4
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 250
    Top = 4
  end
  object qryPhoneMessage: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT PM.*, PM.ROWID'
      'FROM PHONEMESSAGE PM')
    Left = 282
    Top = 36
    object qryPhoneMessageEMPCODEFOR: TStringField
      FieldName = 'EMPCODEFOR'
      Size = 3
    end
    object qryPhoneMessageCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryPhoneMessageMESSAGE: TStringField
      FieldName = 'MESSAGE'
      Size = 2000
    end
    object qryPhoneMessageEMPCODEBY: TStringField
      FieldName = 'EMPCODEBY'
      Size = 3
    end
    object qryPhoneMessageROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object dsPhoneMessage: TUniDataSource
    DataSet = qryPhoneMessage
    Left = 250
    Top = 36
  end
  object tmQuickCode: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = tmQuickCodeTimer
    Left = 218
    Top = 4
  end
end
