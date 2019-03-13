object frmLedgersDlg: TfrmLedgersDlg
  Left = 395
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'General Ledger Report Criteria'
  ClientHeight = 93
  ClientWidth = 275
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 188
    Top = 16
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 188
    Top = 46
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = CancelBtnClick
  end
  object grpReportOn: TGroupBox
    Left = 8
    Top = 8
    Width = 161
    Height = 73
    Caption = 'Report On '
    TabOrder = 2
    object rbtnCreated: TRadioButton
      Left = 24
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Created Date'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbtnSystemDate: TRadioButton
      Left = 24
      Top = 44
      Width = 113
      Height = 17
      Caption = 'System Date'
      TabOrder = 1
    end
  end
end
