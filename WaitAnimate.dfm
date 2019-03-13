object frmWaitAnimate: TfrmWaitAnimate
  Left = 416
  Top = 283
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Progress...'
  ClientHeight = 86
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pmMain: TPanel
    Left = 0
    Top = 0
    Width = 260
    Height = 86
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 260
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblMessage: TLabel
        Left = 4
        Top = 14
        Width = 210
        Height = 13
        Caption = 'Retrieving Information, please wait...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnClient: TPanel
      Left = 0
      Top = 41
      Width = 260
      Height = 45
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnClient'
      TabOrder = 1
      object aniMain: TAnimate
        Left = 1
        Top = 1
        Width = 258
        Height = 40
        StopFrame = 96
      end
    end
  end
end
