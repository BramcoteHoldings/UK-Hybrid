object fmWorkFlowTCPCommunication: TfmWorkFlowTCPCommunication
  Left = 339
  Top = 326
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Axiomation Communication'
  ClientHeight = 147
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 67
    Width = 253
    Height = 24
    AutoSize = False
    Caption = 
      'Please wait while Axiomation sends data to Precedents and waits ' +
      'for a response.'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 10
    Top = 97
    Width = 35
    Height = 13
    Caption = 'Status:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lStatus: TLabel
    Left = 51
    Top = 97
    Width = 41
    Height = 13
    Caption = 'Waiting'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Animate: TAnimate
    Left = 9
    Top = 4
    Width = 272
    Height = 60
    CommonAVI = aviCopyFiles
    StopFrame = 34
  end
  object bnCancel: TButton
    Left = 102
    Top = 117
    Width = 70
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = bnCancelClick
  end
  object ClientSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnecting = ClientSocketConnecting
    OnConnect = ClientSocketConnect
    OnDisconnect = ClientSocketDisconnect
    OnRead = ClientSocketRead
    OnWrite = ClientSocketWrite
    OnError = ClientSocketError
    Left = 87
    Top = 38
  end
end
