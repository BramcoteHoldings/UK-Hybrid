object frmWindows: TfrmWindows
  Left = 237
  Top = 170
  BorderIcons = [biSystemMenu]
  Caption = 'Select Desired Window'
  ClientHeight = 291
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbarWindows: TStatusBar
    Left = 0
    Top = 266
    Width = 383
    Height = 25
    Panels = <
      item
        Width = 50
      end>
  end
  object clbWindows: TCheckListBox
    Left = 0
    Top = 0
    Width = 383
    Height = 266
    Align = alClient
    Color = clInfoBk
    ItemHeight = 13
    PopupMenu = popList
    TabOrder = 1
    OnDblClick = clbWindowsDblClick
  end
  object popList: TPopupMenu
    Left = 216
    Top = 64
    object popOpen: TMenuItem
      Caption = '&Bring To Front'
      OnClick = popOpenClick
    end
    object popCloseAll: TMenuItem
      Caption = '&Close All'
      OnClick = popCloseAllClick
    end
    object popCloseSel: TMenuItem
      Caption = 'Close &Selected'
      OnClick = popCloseSelClick
    end
    object popLine1: TMenuItem
      Caption = '-'
    end
    object popSelectAll: TMenuItem
      Caption = 'Select &All'
      OnClick = popSelectAllClick
    end
    object popUnselectAll: TMenuItem
      Caption = '&Unselect All'
      OnClick = popUnselectAllClick
    end
    object popReverse: TMenuItem
      Caption = '&Reverse Selection'
      OnClick = popReverseClick
    end
  end
end
