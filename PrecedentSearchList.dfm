object frmPrecedentSearch: TfrmPrecedentSearch
  Left = 0
  Top = 0
  Caption = 'Document Template Search'
  ClientHeight = 579
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 106
  TextHeight = 17
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 695
    Height = 537
    Align = alClient
    TabOrder = 0
    object tvPrecedentList: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvPrecedentListCellDblClick
      DataController.DataSource = dmAxiom.dsPrecedentList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NavigatorOffset = 56
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 13
      Preview.LeftIndent = 22
      Preview.RightIndent = 6
      object tvPrecedentListNPREC: TcxGridDBColumn
        DataBinding.FieldName = 'NPREC'
        Visible = False
        VisibleForCustomization = False
      end
      object tvPrecedentListFILENAME: TcxGridDBColumn
        Caption = 'Document Template'
        DataBinding.FieldName = 'FILENAME'
        Width = 823
      end
      object tvPrecedentListCODE: TcxGridDBColumn
        DataBinding.FieldName = 'CODE'
        Visible = False
        VisibleForCustomization = False
        Width = 165
      end
      object tvPrecedentListDOCTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'DOCTYPE'
        Visible = False
        VisibleForCustomization = False
      end
      object tvPrecedentListPATH: TcxGridDBColumn
        DataBinding.FieldName = 'PATH'
        Visible = False
        VisibleForCustomization = False
      end
      object tvPrecedentListPREC: TcxGridDBColumn
        DataBinding.FieldName = 'PREC'
        Visible = False
        VisibleForCustomization = False
      end
      object tvPrecedentListDOCID: TcxGridDBColumn
        DataBinding.FieldName = 'DOCID'
        Visible = False
        VisibleForCustomization = False
      end
      object tvPrecedentListNPRECCATEGORY: TcxGridDBColumn
        DataBinding.FieldName = 'NPRECCATEGORY'
        Visible = False
        VisibleForCustomization = False
      end
      object tvPrecedentListNPRECCLASSIFICATION: TcxGridDBColumn
        DataBinding.FieldName = 'NPRECCLASSIFICATION'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvPrecedentList
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 537
    Width = 695
    Height = 42
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      695
      42)
    object Label79: TLabel
      Left = 7
      Top = 11
      Width = 155
      Height = 17
      AutoSize = False
      Caption = 'Document Template Name'
    end
    object edSearchFileName: TcxTextEdit
      Left = 174
      Top = 8
      AutoSize = False
      ParentFont = False
      Properties.OnChange = edSearchFileNamePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfStandard
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 0
      Height = 24
      Width = 221
    end
    object btnSelect: TcxButton
      Left = 479
      Top = 6
      Width = 84
      Height = 28
      Anchors = [akRight, akBottom]
      Caption = 'Select'
      ModalResult = 1
      OptionsImage.Spacing = 5
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 592
      Top = 6
      Width = 82
      Height = 28
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      ModalResult = 2
      OptionsImage.Spacing = 5
      TabOrder = 2
      OnClick = cxButton2Click
    end
  end
  object tmrSearch: TTimer
    Enabled = False
    OnTimer = tmrSearchTimer
    Left = 185
    Top = 405
  end
end
