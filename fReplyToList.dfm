object FrmReplyToList: TFrmReplyToList
  Left = 482
  Top = 428
  Width = 527
  Height = 351
  Caption = 'List of "Reply To" recipients'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object bvTop: TBevel
    Left = 0
    Top = 41
    Width = 519
    Height = 5
    Align = alTop
    Shape = bsTopLine
  end
  object sbSelectRecipient: TSpeedButton
    Left = 488
    Top = 240
    Width = 23
    Height = 22
    Anchors = [akRight, akBottom]
    Flat = True
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000000000
      000000000000000000FD00FFFFFFFFFF000000FFFFFFFFFF00FD00FF00000000
      FF00FF000000000000FD00FF00FFFFFF0000FFFFFFFF00FE00FD00FF00FF0000
      FF00FFFFFFFF000000FD00FF00FFFFFFFF0000FFFFFF00FB00FD00FF00FFFFFF
      0000FF0000FF000000FD00FF00FF0000FF0000FFFFFF00FF00FD00FF00FFFFFF
      0000FF0000FF000000FD00FF00FF0000FF00FFFFFFFF00F900FD000000FFFFFF
      00FD00FFFFFF000000FDFDFD00000000FDFDFD00000000FDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
    OnClick = sbSelectRecipientClick
  end
  object sbAddRecip: TSpeedButton
    Left = 444
    Top = 240
    Width = 37
    Height = 22
    Caption = 'Add'
    Flat = True
    OnClick = sbAddRecipClick
  end
  object panTop: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object lblFunction: TLabel
      Left = 9
      Top = 6
      Width = 49
      Height = 13
      Caption = 'Reply To'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescription: TLabel
      Left = 21
      Top = 24
      Width = 241
      Height = 13
      Caption = 'Select a recipient and press add to add it to the list.'
    end
  end
  object panFooter: TPanel
    Left = 0
    Top = 272
    Width = 519
    Height = 45
    Align = alBottom
    TabOrder = 1
    object bvFooterLine: TBevel
      Left = 92
      Top = 5
      Width = 420
      Height = 10
      Anchors = [akLeft, akTop, akRight, akBottom]
      Shape = bsTopLine
    end
    object lblApplicationGroup: TLabel
      Left = 2
      Top = 0
      Width = 90
      Height = 13
      Caption = 'RwMAPI Examples'
      Enabled = False
    end
    object btnCancel: TButton
      Left = 437
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnOK: TButton
      Left = 357
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&OK'
      ModalResult = 1
      TabOrder = 1
    end
  end
  object edtRecipient: TEdit
    Left = 4
    Top = 240
    Width = 437
    Height = 19
    Anchors = [akLeft, akRight, akBottom]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnChange = edtRecipientChange
  end
  object lbRecipients: TListBox
    Left = 4
    Top = 48
    Width = 509
    Height = 185
    Anchors = [akLeft, akTop, akRight, akBottom]
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 3
  end
end
