object fmWaitForAppStop: TfmWaitForAppStop
  Left = 365
  Top = 244
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Waiting'
  ClientHeight = 116
  ClientWidth = 313
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    313
    116)
  PixelsPerInch = 96
  TextHeight = 13
  object lCaption: TLabel
    Left = 47
    Top = 10
    Width = 256
    Height = 67
    AutoSize = False
    Caption = 'Axiomation will wait until '#39'WHATHERE'#39' has finished.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Image1: TImage
    Left = 10
    Top = 11
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      055449636F6E0000010002002020100000000000E80200002600000010101000
      00000000280100000E0300002800000020000000400000000100040000000000
      8002000000000000000000000000000000000000000000000000800000800000
      0080800080000000800080008080000080808000C0C0C0000000FF0000FF0000
      00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000888888
      880000000000088888888888888888888880000088888888888888888888887C
      C8800000888888888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFF
      FF7780000CCCCCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC
      77FFF7800000F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8
      FF77FFF70000000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF
      770000000000000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77
      000000000000000000CCCCC8FFFFFFF700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03F
      F800001F0000001F0000000F000000078000000380000001F0000000F0000000
      FE000007FE00003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000
      0100040000000000C00000000000000000000000000000000000000000000000
      00008000008000000080800080000000800080008080000080808000C0C0C000
      0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
      000000000008888888800000888888888888000088888887CC880000CCCCCCCC
      CC878000CCCC8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFF
      FF77FFF7FFFF7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7
      FF700000CCCCCCC7700000008FFFFFFF700000000000000000000000FFFF0000
      E01F0000000F0000000F00000007000000030000000100000000000000000000
      0000000000030000001F0000001F0000007F0000007F0000FFFF0000}
  end
  object bnCancel: TButton
    Left = 119
    Top = 82
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 0
    OnClick = bnCancelClick
  end
end
