object frmTaskItemNew: TfrmTaskItemNew
  Left = 413
  Top = 226
  Caption = 'Task Item Creation'
  ClientHeight = 419
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    343
    419)
  PixelsPerInch = 106
  TextHeight = 15
  object lblTypeDesc: TLabel
    Left = 175
    Top = 65
    Width = 149
    Height = 15
    AutoSize = False
  end
  object Label5: TLabel
    Left = 9
    Top = 92
    Width = 38
    Height = 15
    Caption = '&Reason'
    FocusControl = mmoDesc
  end
  object Label1: TLabel
    Left = 9
    Top = 9
    Width = 81
    Height = 15
    Caption = '&Task Item Code'
    FocusControl = tbCode
  end
  object Label2: TLabel
    Left = 9
    Top = 65
    Width = 63
    Height = 15
    Caption = '&Matter Type'
    FocusControl = cbMatterType
  end
  object Label4: TLabel
    Left = 9
    Top = 37
    Width = 25
    Height = 15
    Caption = 'T&ype'
    FocusControl = cbType
  end
  object Label6: TLabel
    Left = 9
    Top = 203
    Width = 44
    Height = 15
    Caption = '&Amount'
    FocusControl = neAmount
  end
  object Label7: TLabel
    Left = 9
    Top = 261
    Width = 31
    Height = 15
    Caption = '&Payee'
    FocusControl = tbPayee
  end
  object lblSundryTypeDesc: TLabel
    Left = 188
    Top = 288
    Width = 136
    Height = 15
    AutoSize = False
  end
  object Label9: TLabel
    Left = 9
    Top = 288
    Width = 65
    Height = 15
    Caption = '&Sundry Type'
    FocusControl = cbSundryType
  end
  object Label8: TLabel
    Left = 9
    Top = 231
    Width = 53
    Height = 15
    Caption = 'Pr&ecedent'
    FocusControl = tbPrecedent
  end
  object Label11: TLabel
    Left = 9
    Top = 344
    Width = 52
    Height = 15
    Caption = 'Data&Form'
    FocusControl = cbDataForm
    Visible = False
  end
  object btnSelPrecedent: TSpeedButton
    Left = 295
    Top = 312
    Width = 27
    Height = 25
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555555555555555555555555555555555555555555555555555555555555
      555555555555555555555555555555555555555FFFFFFFFFF555550000000000
      55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
      B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
      000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
      555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
      55555575FFF75555555555700007555555555557777555555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
    Visible = False
    OnClick = btnSelPrecedentClick
  end
  object btnCancel: TBitBtn
    Left = 238
    Top = 383
    Width = 86
    Height = 29
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 10
    OnClick = btnCancelClick
  end
  object btnSave: TBitBtn
    Left = 145
    Top = 383
    Width = 87
    Height = 29
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
    TabOrder = 11
    OnClick = btnSaveClick
  end
  object tbCode: TEdit
    Left = 111
    Top = 9
    Width = 93
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object mmoDesc: TMemo
    Left = 111
    Top = 92
    Width = 213
    Height = 103
    TabOrder = 3
  end
  object cbMatterType: TComboBox
    Left = 111
    Top = 65
    Width = 56
    Height = 23
    Style = csDropDownList
    TabOrder = 2
    OnClick = cbMatterTypeClick
  end
  object cbType: TComboBox
    Left = 111
    Top = 37
    Width = 112
    Height = 23
    Style = csDropDownList
    TabOrder = 1
    OnClick = cbMatterTypeClick
    Items.Strings = (
      'Fee'
      'Sundry'
      'DataForm'
      'CheqReq'
      'Precedent')
  end
  object neAmount: TNumberEdit
    Left = 111
    Top = 203
    Width = 84
    Height = 23
    Alignment = taLeftJustify
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
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
    TabOrder = 4
  end
  object tbPayee: TEdit
    Left = 111
    Top = 261
    Width = 213
    Height = 23
    TabOrder = 6
  end
  object cbSundryType: TComboBox
    Left = 111
    Top = 288
    Width = 75
    Height = 23
    Style = csDropDownList
    TabOrder = 7
    OnClick = cbSundryTypeClick
  end
  object chkConfirm: TCheckBox
    Left = 9
    Top = 318
    Width = 117
    Height = 20
    Alignment = taLeftJustify
    Caption = 'Con&firm creation?   '
    TabOrder = 8
  end
  object tbPrecedent: TEdit
    Left = 111
    Top = 231
    Width = 186
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnMouseMove = tbPrecedentMouseMove
  end
  object cbDataForm: TComboBox
    Left = 111
    Top = 344
    Width = 213
    Height = 23
    Style = csDropDownList
    TabOrder = 9
    Visible = False
  end
  object cbExtSave: TCheckBox
    Left = 215
    Top = 205
    Width = 112
    Height = 20
    Caption = 'External save'
    TabOrder = 12
  end
  object btnPrecSearch: TBitBtn
    Left = 298
    Top = 231
    Width = 27
    Height = 26
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 13
    OnClick = btnPrecSearchClick
  end
  object qryTaskItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT T.*, T.ROWID FROM TASKITEM T WHERE T.CODE = :P_Code')
    Left = 32
    Top = 322
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object odlgPrecedent: TOpenDialog
    Options = [ofReadOnly, ofHideReadOnly, ofEnableSizing]
    Title = 'Select Precendent template to associate with this Task'
    Left = 250
    Top = 4
  end
end
