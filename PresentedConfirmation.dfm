object frmPresentedConf: TfrmPresentedConf
  Left = 340
  Top = 295
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Presented Confirmation Form'
  ClientHeight = 132
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    333
    132)
  PixelsPerInch = 96
  TextHeight = 13
  object btnSave: TBitBtn
    Left = 177
    Top = 98
    Width = 70
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
    TabOrder = 0
    ExplicitTop = 95
  end
  object btnCancel: TBitBtn
    Left = 252
    Top = 98
    Width = 69
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    ExplicitTop = 95
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 6
    Width = 315
    Height = 89
    Caption = ' Accounting details: '
    TabOrder = 2
    object lblAmount: TLabel
      Left = 225
      Top = 16
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'lblAmount'
    end
    object Label1: TLabel
      Left = 7
      Top = 64
      Width = 194
      Height = 13
      Caption = 'Bank Statement shows Presented on..'
    end
    object lblTransDate: TLabel
      Left = 7
      Top = 38
      Width = 176
      Height = 13
      Caption = 'Records show transaction date as:'
    end
    object label3: TLabel
      Left = 7
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Amount:'
    end
    object dtpPresentedDate: TDateTimePicker
      Left = 207
      Top = 60
      Width = 103
      Height = 22
      Date = 36654.518493819400000000
      Time = 36654.518493819400000000
      TabOrder = 0
    end
    object dtpDepositDate: TDateTimePicker
      Left = 207
      Top = 33
      Width = 103
      Height = 22
      Date = 36654.518493819400000000
      Time = 36654.518493819400000000
      Enabled = False
      TabOrder = 1
      OnChange = dtpDepositDateChange
    end
  end
end
