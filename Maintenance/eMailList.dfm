object frmEmailList: TfrmEmailList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Contacts Email List'
  ClientHeight = 420
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 387
    Width = 394
    Height = 33
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 338
    ExplicitWidth = 353
    object BitBtn1: TBitBtn
      Left = 91
      Top = 4
      Width = 103
      Height = 23
      Caption = 'Select'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 201
      Top = 4
      Width = 103
      Height = 23
      Caption = 'Don'#39't Select'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object grdEmailList: TcxGrid
    Left = 0
    Top = 0
    Width = 394
    Height = 387
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 353
    ExplicitHeight = 338
    object tvEmailList: TcxGridTableView
      OnDblClick = tvEmailListDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvEmailListNAME: TcxGridColumn
        Caption = 'Name'
        Width = 137
      end
      object tvEmailListEMAIL: TcxGridColumn
        Caption = 'email'
        Width = 202
      end
      object tvEmailListTYPE: TcxGridColumn
        Visible = False
        VisibleForCustomization = False
      end
    end
    object grdEmailListLevel1: TcxGridLevel
      GridView = tvEmailList
    end
  end
end
