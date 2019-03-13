object fmEditContactNoteDialog: TfmEditContactNoteDialog
  Left = 593
  Top = 348
  BorderStyle = bsDialog
  Caption = 'Contact Note'
  ClientHeight = 312
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 17
  object Label1: TLabel
    Left = 12
    Top = 13
    Width = 62
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Date Time:'
  end
  object Label3: TLabel
    Left = 12
    Top = 62
    Width = 32
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Note:'
  end
  object btnEmail: TSpeedButton
    Left = 374
    Top = 270
    Width = 56
    Height = 30
    Hint = 'Send Email'
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A60033000000000033003300330033330000161616001C1C1C00222222002929
      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
      CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
      00000033330000336600003399000033CC000033FF0000660000006633000066
      6600006699000066CC000066FF00009900000099330000996600009999000099
      CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
      660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
      FF00FF3300003333330033336600333399003333CC003333FF00336600003366
      330033666600336699003366CC003366FF003399000033993300339966003399
      99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
      FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
      6600660099006600CC006600FF00663300006633330066336600663399006633
      CC006633FF00666600006666330066666600666699006666CC00669900006699
      330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
      CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
      000099339900990099009900CC009900000099333300990066009933CC009900
      FF00996600009966330099336600996699009966CC009933FF00999933009999
      6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
      CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
      000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
      9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
      FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
      3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
      9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
      6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
      CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
      0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
      9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
      A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
      DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDAEAEAEAEAE
      AEAEAEAEFDFDFDFDFDFDFDAE1909DCDCDCDCDCAEFDFDFDFDFDFDFDB419DD09DC
      DCDCDCAEFDFDFDFDFDFDFDB4F419DD09DCDCDCAEFDFDFDFDFDFDFDB4FFF319DD
      09DCDCAEAEAEAEAEAEAEFDB4FFF4F319DD09DCAEB409090909AEFDB4FFF5F419
      19DDDCAEB4B4B40919AEFDB4FFFFF5F419DDEFAEB4DCDC09F4AEFDB4FFFFFFFF
      19AECFAEB4B4B4DDFFAEFDB4FFFFFFFFF3AEB4B4F3FFF40909AEFDB4B4B4B4B4
      B4AE09F4FFFFDDCFCFAEFDFDFDFDFDAE19F1F5FFFFFFF4EDEDAEFDFDFDFDFDAE
      F4FFFFFFFFFFF4FFF4AEFDFDFDFDFDFDAEDDFFFFFFFFFFF1AEFDFDFDFDFDFDFD
      FDAEAEF4FFF4AEAEFDFDFDFDFDFDFDFDFDFDFDAEAEAEFDFDFDFD}
    ParentShowHint = False
    ShowHint = True
    OnClick = btnEmailClick
  end
  object bnOk: TButton
    Left = 158
    Top = 271
    Width = 91
    Height = 30
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
    OnClick = bnOkClick
  end
  object bnCancel: TButton
    Left = 255
    Top = 271
    Width = 91
    Height = 30
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object eContactNote: TMemo
    Left = 12
    Top = 84
    Width = 418
    Height = 178
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object dtDate: TDateTimePicker
    Left = 86
    Top = 9
    Width = 110
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Date = 37700.401958807900000000
    Time = 37700.401958807900000000
    TabOrder = 0
  end
  object dtTime: TDateTimePicker
    Left = 203
    Top = 9
    Width = 109
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Date = 37700.401388888890000000
    Format = 'hh:mm'
    Time = 37700.401388888890000000
    Kind = dtkTime
    TabOrder = 1
  end
  object cbReminder: TcxCheckBox
    Left = 73
    Top = 43
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Set Reminder'
    Properties.Alignment = taLeftJustify
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 5
  end
  object qryPhonebook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from phonebook'
      'where nname = :nname')
    Left = 305
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 350
    Top = 78
  end
  object FormMgr: TRwMAPIFormManager
    MAPISession = dmAxiom.MapiSession
    Left = 22
    Top = 104
  end
end
