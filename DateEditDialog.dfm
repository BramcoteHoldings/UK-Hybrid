object fmDateEditDialog: TfmDateEditDialog
  Left = 395
  Top = 191
  BorderStyle = bsDialog
  Caption = 'Date Edit'
  ClientHeight = 208
  ClientWidth = 228
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  DesignSize = (
    228
    208)
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 22
    Top = 174
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 102
    Top = 174
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 14
    Top = 10
    Width = 199
    Height = 155
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 2
    object MonthCalendar: TMonthCalendar
      Left = 1
      Top = 1
      Width = 197
      Height = 153
      Date = 37609.6029806944
      TabOrder = 0
    end
  end
end
