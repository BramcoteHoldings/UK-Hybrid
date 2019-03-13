object fmDateEditDialog: TfmDateEditDialog
  Left = 395
  Top = 191
  BorderStyle = bsDialog
  Caption = 'Date Edit'
  ClientHeight = 193
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  DesignSize = (
    228
    193)
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 39
    Top = 164
    Width = 70
    Height = 24
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 113
    Top = 164
    Width = 70
    Height = 24
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 7
    Top = 9
    Width = 211
    Height = 151
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 2
    object MonthCalendar: TMonthCalendar
      Left = 1
      Top = 1
      Width = 209
      Height = 149
      Align = alClient
      Date = 41748.651866365740000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
end
