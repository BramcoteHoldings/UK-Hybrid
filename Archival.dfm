object frmArchival: TfrmArchival
  Left = 263
  Top = 198
  BorderStyle = bsDialog
  Caption = 'Archive Matter'
  ClientHeight = 567
  ClientWidth = 1165
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1165
    567)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 12
    Top = 8
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object Label2: TLabel
    Left = 118
    Top = 75
    Width = 47
    Height = 15
    Caption = 'Debtors :'
  end
  object Label3: TLabel
    Left = 70
    Top = 94
    Width = 95
    Height = 15
    Caption = 'Work in progress :'
  end
  object Label4: TLabel
    Left = 67
    Top = 114
    Width = 98
    Height = 15
    Caption = 'Unbilled Sundries :'
  end
  object Label5: TLabel
    Left = 34
    Top = 133
    Width = 131
    Height = 15
    Caption = 'Unbilled Disbursements :'
  end
  object Label6: TLabel
    Left = 17
    Top = 152
    Width = 148
    Height = 15
    Caption = 'Anticipated Disbursements :'
  end
  object Label7: TLabel
    Left = 91
    Top = 171
    Width = 74
    Height = 15
    Caption = 'Trust Monies :'
  end
  object Label10: TLabel
    Left = 889
    Top = 506
    Width = 73
    Height = 15
    Anchors = [akRight, akBottom]
    Caption = 'Matter Status '
  end
  object Label15: TLabel
    Left = 70
    Top = 231
    Width = 95
    Height = 15
    Caption = 'Archive Reference'
  end
  object lblArchiveRef: TLabel
    Left = 174
    Top = 231
    Width = 70
    Height = 15
    Caption = 'lblArchiveRef'
  end
  object Label16: TLabel
    Left = 111
    Top = 191
    Width = 54
    Height = 15
    Caption = 'Creditors :'
  end
  object Label17: TLabel
    Left = 61
    Top = 210
    Width = 104
    Height = 15
    Caption = 'Controlled Monies :'
  end
  object Label9: TLabel
    Left = 267
    Top = 6
    Width = 36
    Height = 15
    Caption = 'Closed'
  end
  object lblDebtors: TcxLabel
    Left = 174
    Top = 73
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 85
    AnchorX = 259
  end
  object lblWIP: TcxLabel
    Left = 174
    Top = 92
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 85
    AnchorX = 259
  end
  object lblSundries: TcxLabel
    Left = 174
    Top = 111
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 85
    AnchorX = 259
  end
  object lblDisbursements: TcxLabel
    Left = 174
    Top = 131
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 85
    AnchorX = 259
  end
  object lblAnticipated: TcxLabel
    Left = 174
    Top = 150
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 85
    AnchorX = 259
  end
  object lblTrust: TcxLabel
    Left = 174
    Top = 169
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 85
    AnchorX = 259
  end
  object chkNewNumber: TcxCheckBox
    Left = 861
    Top = 446
    Anchors = [akRight, akBottom]
    Caption = 'Create new number for this re-opened matter'
    Properties.Alignment = taLeftJustify
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Visible = False
  end
  object btnOk: TcxButton
    Left = 976
    Top = 533
    Width = 81
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = '&Ok'
    Enabled = False
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000FFFFFFFF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000800000FF800000FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000800000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FF008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000800000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000800000FF0080
      00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
      00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
      FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000080800000FF00FF0080800000808000008080000080
      80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000FF00FF008000FF0080
      00FF008000FF800000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000080800000FF
      00FF008000FF008000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000FF00FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 3
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton
    Left = 1072
    Top = 533
    Width = 82
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000000FFFF808080FF008080000080800000808000008080000080
      8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000FFFFFFFF00808000008080000080
      8000008080000080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
      80FF008080000080800000808000008080000080800000808000808080FFFFFF
      FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
      80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
      FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
      80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000000
      FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
      8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
      800000808000008080000080800000808000000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
      80FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      800000808000008080000000FFFF000080FF0080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
      8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF0000FFFF0080800000808000008080000080800000808000008080000080
      8000808080FF808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object cmbMatterStatus: TcxDBLookupComboBox
    Left = 978
    Top = 503
    Anchors = [akRight, akBottom]
    DataBinding.DataField = 'STATUS'
    DataBinding.DataSource = dsMatter
    Enabled = False
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMatterStatus
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Width = 176
  end
  object lblClient: TcxLabel
    Left = 12
    Top = 33
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 18
    Width = 247
  end
  object lblMatterDesc: TcxLabel
    Left = 12
    Top = 53
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 18
    Width = 247
  end
  object lblError: TcxLabel
    Left = 12
    Top = 259
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clRed
    Properties.WordWrap = True
    Height = 186
    Width = 247
  end
  object cxGroupBox1: TcxGroupBox
    Left = 267
    Top = 23
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 1
    DesignSize = (
      884
      422)
    Height = 422
    Width = 884
    object Label12: TLabel
      Left = 5
      Top = 351
      Width = 64
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = 'Review Date'
    end
    object Label13: TLabel
      Left = 433
      Top = 351
      Width = 88
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = 'Destroy(ed) Date'
    end
    object Label14: TLabel
      Left = 5
      Top = 376
      Width = 31
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = 'Notes'
    end
    object chkDocs: TcxCheckBox
      Left = 11
      Top = 8
      Caption = 'Delete Documents'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cbDiary: TcxCheckBox
      Left = 137
      Top = 8
      Caption = 'Delete Diary'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object dtpReview: TcxDateEdit
      Left = 111
      Top = 348
      Anchors = [akLeft, akBottom]
      Properties.ClearKey = 46
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 157
    end
    object dtpDestroy: TcxDateEdit
      Left = 538
      Top = 348
      Anchors = [akLeft, akBottom]
      Properties.ClearKey = 46
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 158
    end
    object grdArchiveLocation: TcxGrid
      Left = 4
      Top = 30
      Width = 874
      Height = 308
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      OnEnter = grdArchiveLocationEnter
      LookAndFeel.NativeStyle = True
      object tvArchiveLocation: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsArchiveLocation
        DataController.KeyFieldNames = 'NARCH_LOC'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 10
        object tvArchiveLocationCREATED: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'CREATED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ClearKey = 46
          Properties.ShowTime = False
          Width = 44
        end
        object tvArchiveLocationBARCODE: TcxGridDBColumn
          Caption = 'Barcode'
          DataBinding.FieldName = 'BARCODE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ClearKey = 46
          Width = 73
        end
        object tvArchiveLocationFOLDER_DTLS: TcxGridDBColumn
          Caption = 'Folder Details'
          DataBinding.FieldName = 'FOLDER_DTLS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ClearKey = 46
          Width = 141
        end
        object tvArchiveLocationARCHIVEBOX: TcxGridDBColumn
          Caption = 'Box No'
          DataBinding.FieldName = 'ARCHIVEBOX'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ClearKey = 46
          Width = 50
        end
        object tvArchiveLocationBOX_DESTROY_DATE: TcxGridDBColumn
          Caption = 'Destroyed Date'
          DataBinding.FieldName = 'BOX_DESTROY_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ClearKey = 46
          Width = 82
        end
        object tvArchiveLocationAUTHORISED_BY: TcxGridDBColumn
          Caption = 'Authorised By'
          DataBinding.FieldName = 'AUTHORISED_BY'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 10
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end
            item
              Width = 50
              FieldName = 'CODE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmployee
          Width = 73
        end
        object tvArchiveLocationCHECKED_BY_1: TcxGridDBColumn
          Caption = 'Checked by 1'
          DataBinding.FieldName = 'CHECKED_BY_1'
        end
        object tvArchiveLocationCHECKED_BY_2: TcxGridDBColumn
          Caption = 'Checked by 2'
          DataBinding.FieldName = 'CHECKED_BY_2'
        end
        object tvArchiveLocationARCHVLOCN: TcxGridDBColumn
          Caption = 'Location'
          DataBinding.FieldName = 'ARCHVLOCN'
          Width = 54
        end
        object tvArchiveLocationNMATTER: TcxGridDBColumn
          DataBinding.FieldName = 'NMATTER'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object lvArchiveLocation: TcxGridLevel
        GridView = tvArchiveLocation
      end
    end
    object edNotes: TcxRichEdit
      Left = 111
      Top = 376
      Anchors = [akLeft, akRight, akBottom]
      Properties.PlainText = True
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Height = 39
      Width = 767
    end
  end
  object btnMatterFind: TcxButtonEdit
    Left = 56
    Top = 3
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000C0C0C000000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
          00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000000000FFFFFF
          FFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
          00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        Kind = bkGlyph
      end>
    Properties.CharCase = ecUpperCase
    Properties.OnButtonClick = btnMatterFindPropertiesButtonClick
    Properties.OnValidate = btnMatterFindPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 139
  end
  object lblCreditors: TcxLabel
    Left = 174
    Top = 189
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 85
    AnchorX = 259
  end
  object lblControlled: TcxLabel
    Left = 174
    Top = 208
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 85
    AnchorX = 259
  end
  object chkPrint: TcxCheckBox
    Left = 880
    Top = 536
    Anchors = [akRight, akBottom]
    Caption = 'Print Label?'
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 17
  end
  object pnlArchiveType: TPanel
    Left = 885
    Top = 469
    Width = 271
    Height = 31
    Anchors = [akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 18
    DesignSize = (
      271
      31)
    object Label8: TLabel
      Left = 4
      Top = 11
      Width = 76
      Height = 15
      Anchors = [akRight, akBottom]
      Caption = 'Archive Type:*'
    end
    object cbCode: TcxLookupComboBox
      Left = 94
      Top = 6
      Anchors = [akRight, akBottom]
      Enabled = False
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsArchiveType
      Properties.OnChange = cxLookupComboBox1PropertiesChange
      EditValue = ''
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 175
    end
  end
  object lblClosed: TcxLabel
    Left = 312
    Top = 5
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 140
    AnchorX = 452
  end
  object qryMatter: TUniQuery
    LocalUpdate = True
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' getDebtorsAmount(:P_File) as CAL_DEBTORS,'
      ' getWipAmount(:P_File) as CAL_UNBILL_FEES,'
      ' getSundriesAmount(:P_File) as CAL_UNBILL_SUND,'
      ' getUnbillDisbAmount(:P_File) as CAL_UNBILL_DISB,'
      ' getAntDisbAmount(:P_File) as CAL_UNBILL_ANTD,'
      ' getTrustBalAmount(:P_File) as CAL_TRUST_BAL,'
      ' getCreditors(:P_File) as CAL_CREDITORS,'
      ' GetInvestments(:P_File) as CAL_CONTROLLED,'
      ' (select sum(c.amount) from alloc a, cheque c where  '
      
        '   a.nmatter = :P_File and a.ncheque is not null and a.ncheque =' +
        ' c.ncheque '
      '   and c.presented is null ) as UNPRESENTED_CHQ,'
      ' M.*'
      'FROM '
      ' MATTER M, (SELECT CODE,DESCR FROM BRANCH) BRAN'
      'WHERE M.NMATTER = :P_File '
      ' AND M.BRANCH = BRAN.CODE (+)')
    Left = 422
    Top = 119
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object qryArchiveType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NEXTARCHIVE FROM ARCHIVETYPE WHERE CODE = '#39'OH'#39)
    Left = 456
    Top = 119
  end
  object qryMatterDelete: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM MATTER WHERE FILEID = :FILEID')
    Left = 311
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryUnpresentedCheques: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select alloc.created, alloc.refno, abs(alloc.amount) as amount'
      'from alloc, cheque'
      'where alloc.fileid = :FILEID and nvl(alloc.ncheque,0) > 0'
      'and alloc.ncheque = cheque.ncheque and cheque.presented is null')
    Left = 344
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryCheqreq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(amount) as Total'
      'from cheqreq'
      'where fileid = :FILEID '
      'and converted = '#39'N'#39)
    Left = 375
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryBills: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM NMEMO'
      'WHERE FILEID = :FILEID'
      '  AND REFNO = '#39'DRAFT'#39)
    Left = 406
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryArchiveMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE MATTER'
      'SET'
      'archived = trunc(sysdate),'
      'ARCHIVENUM = :ARCHIVENUM,'
      'ARCHIVETYPECODE = :CODE,'
      'CLOSED = 1,'
      'STATUS = :P_STATUS,'
      'COMPLETED = trunc(sysdate),'
      'ARCHIVEBOX = :ARCHIVEBOX,'
      'ARCHVLOCN = :ARCHVLOCN,'
      'ARCHIVEREVIEW = :ARCHIVEREVIEW,'
      'ARCHIVEDEST = :ARCHIVEDEST,'
      'ARCHIVENOTES =:ARCHIVENOTES'
      'WHERE FILEID = :FILEID')
    Left = 431
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ARCHIVENUM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_STATUS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARCHIVEBOX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARCHVLOCN'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARCHIVEREVIEW'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARCHIVEDEST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARCHIVENOTES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryMatterTotals: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT UBD.AMOUNT CAL_UNBILL_DISB'
      ' ,UBAD.AMOUNT CAL_UNBILL_ANTD'
      ' ,WIP.AMOUNT CAL_UNBILL_FEES'
      ' ,BFEE.AMOUNT CAL_BILL_FEES'
      ' ,TBAL.AMOUNT CAL_TRUST_BAL'
      ' ,CTBAL.AMOUNT CAL_CL_TRUST_BAL'
      ' ,DEB.Amount CAL_DEBTORS'
      ' ,SUNDRY.Amount CAL_UNBILL_SUND'
      'FROM '
      
        '(select nvl(sum(nvl((amount + tax) ,0)),0) amount from cheqreq w' +
        'here nmatter = :NMATTER and billed = '#39'N'#39') UBAD,'
      
        '(select nvl(sum(nvl((amount + tax) * -1,0)),0) as AMOUNT from al' +
        'loc where nmatter = :NMATTER and nvl(billed,'#39'N'#39') = '#39'N'#39' AND nvl(T' +
        'RUST,'#39'G'#39') <> '#39'T'#39' and (nvl(ncheque,0) > 0 or (nvl(njournal,0) > 0' +
        'and type = '#39'J2'#39'))) UBD,'
      
        '(select nvl(sum(nvl(amount + tax,0)),0) as AMOUNT from fee where' +
        ' nmatter = :NMATTER and billed = '#39'N'#39') WIP,'
      
        '(select nvl(sum(amount),0) as AMOUNT from fee where nmatter = :N' +
        'MATTER and billed = '#39'Y'#39') BFEE,'
      
        '(select nvl(sum(amount),0) as amount from alloc where nmatter = ' +
        ':NMATTER and  trust = '#39'T'#39') TBAL,'
      
        '(select nvl(sum(amount),0) as amount from alloc where nmatter = ' +
        ':NMATTER and  trust = '#39'T'#39' and cleared = '#39'Y'#39') CTBAL,'
      
        '(select nvl(sum(nvl((amount + tax) ,0)),0) amount from sundry wh' +
        'ere nmatter = :NMATTER and billed = '#39'N'#39') SUND')
    Left = 455
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end>
  end
  object dsMatterStatus: TUniDataSource
    DataSet = qryMatterStatus
    Left = 345
    Top = 150
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 424
    Top = 149
  end
  object qryArchiveTypeDesc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT DESCRIPTION FROM ARCHIVETYPE WHERE trim(CODE) = :P_Code')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    FilterOptions = [foCaseInsensitive]
    Left = 388
    Top = 119
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qryMatterStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    ParamCheck = False
    SQL.Strings = (
      'SELECT * FROM MATTERSTATUS')
    Options.TrimFixedChar = False
    Options.RequiredFields = False
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 345
    Top = 119
    object qryMatterStatusCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 5
    end
    object qryMatterStatusDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
  end
  object tblArchiveType: TUniTable
    TableName = 'ARCHIVETYPE'
    Connection = dmAxiom.uniInsight
    KeyFields = 'CODE'
    FilterSQL = 'ACTIVE = '#39'Y'#39
    Left = 297
    Top = 174
  end
  object dsArchiveType: TUniDataSource
    DataSet = tblArchiveType
    Left = 363
    Top = 179
  end
  object qryArchiveLocation: TUniQuery
    UpdatingTable = 'ARCHIVE_LOCATION'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select archive_location.*, archive_location.rowid '
      'from archive_location'
      'where nmatter = :nmatter'
      'order by created desc')
    CachedUpdates = True
    AfterInsert = qryArchiveLocationAfterInsert
    AfterEdit = qryArchiveLocationAfterEdit
    BeforePost = qryArchiveLocationBeforePost
    Left = 558
    Top = 1
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsArchiveLocation: TUniDataSource
    DataSet = qryArchiveLocation
    Left = 639
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code, name'
      'from'
      'employee'
      'order by name')
    Left = 505
    Top = 199
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 567
    Top = 201
  end
  object qryMatterWorkflowTasks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from workflowtasks'
      'where nmatter = :nmatter'
      'and completed is null'
      ''
      ''
      '/*'
      'and critical_date = '#39'Y'#39
      '*/')
    Left = 322
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
end
