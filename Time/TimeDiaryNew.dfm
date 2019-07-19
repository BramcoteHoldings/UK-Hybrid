inherited frmTimeDiaryNew: TfrmTimeDiaryNew
  Left = 678
  Top = 192
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'frmTimeDiaryNew'
  ClientHeight = 495
  ClientWidth = 513
  Constraints.MinHeight = 351
  Constraints.MinWidth = 426
  Font.Name = 'Segoe UI'
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 519
  ExplicitHeight = 524
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel [0]
    Left = 194
    Top = 13
    Width = 47
    Height = 13
    Caption = 'Fee Basis'
    Visible = False
  end
  inherited lcMain: TdxLayoutControl
    Width = 513
    Height = 495
    ParentBackground = True
    Transparent = True
    AutoSize = True
    ExplicitWidth = 513
    ExplicitHeight = 495
    inherited cxGroupBox1: TcxGroupBox
      Left = 10000
      Top = 10000
      Enabled = False
      TabOrder = 15
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 347
      Width = 347
    end
    inherited btnFindTime: TcxButton
      Left = 10000
      Top = 10000
      Enabled = False
      OptionsImage.Spacing = 3
      TabOrder = 16
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited teSubject: TcxTextEdit
      Left = 10000
      Top = 10000
      Enabled = False
      TabOrder = 18
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 382
      Width = 382
    end
    inherited teLocation: TcxTextEdit
      Left = 10000
      Top = 10000
      Enabled = False
      TabOrder = 19
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 226
      Width = 226
    end
    inherited icbLabel: TcxImageComboBox
      Left = 10000
      Top = 10000
      Enabled = False
      TabOrder = 20
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 118
      Width = 118
    end
    inherited deStart: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.Kind = ckDateTime
      Properties.ReadOnly = True
      TabOrder = 24
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 374
      Width = 374
    end
    inherited teStart: TcxTimeEdit
      Left = 130
      Top = 466
      Properties.Use24HourFormat = False
      Properties.OnChange = teStartPropertiesChange
      Properties.OnEditValueChanged = teEndPropertiesEditValueChanged
      TabOrder = 22
      ExplicitLeft = 130
      ExplicitTop = 466
    end
    inherited cbAllDayEvent: TcxCheckBox
      Left = 10000
      Top = 10000
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 17
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 121
      ExplicitHeight = 17
    end
    inherited deEnd: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      TabOrder = 25
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 374
      Width = 374
    end
    inherited teEnd: TcxTimeEdit
      Left = 322
      Top = 466
      AutoSize = False
      Properties.Use24HourFormat = False
      Properties.OnChange = teStartPropertiesChange
      Properties.OnEditValueChanged = teEndPropertiesEditValueChanged
      TabOrder = 23
      ExplicitLeft = 322
      ExplicitTop = 466
    end
    inherited seTaskComplete: TcxSpinEdit
      Left = 130
      Top = 381
      TabOrder = 13
      ExplicitLeft = 130
      ExplicitTop = 381
    end
    inherited cbxTaskStatus: TcxComboBox
      Left = 322
      Top = 381
      TabOrder = 14
      ExplicitLeft = 322
      ExplicitTop = 381
    end
    inherited lbRecurrencePattern: TcxLabel
      Left = 10000
      Top = 10000
      Enabled = False
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 382
      Width = 382
    end
    inherited cbResources: TcxCheckComboBox
      Left = 10000
      Top = 10000
      Enabled = False
      TabOrder = 29
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 382
      Width = 382
    end
    inherited cbReminder: TcxCheckBox
      Left = 10000
      Top = 10000
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 30
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 76
    end
    inherited cbReminderMinutesBeforeStart: TcxComboBox
      Left = 10000
      Top = 10000
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 31
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited icbShowTimeAs: TcxImageComboBox
      Left = 10000
      Top = 10000
      Enabled = False
      Properties.Images = ImageList1
      Properties.Items = <
        item
          Description = 'Matter'
          ImageIndex = 0
          Value = 'M'
        end
        item
          Description = 'Overhead'
          ImageIndex = 1
          Tag = 1
          Value = 'O'
        end
        item
          Description = 'Held'
          ImageIndex = 2
          Tag = 2
          Value = 'H'
        end>
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = icbShowTimeAsPropertiesEditValueChanged
      Properties.OnInitPopup = icbShowTimeAsPropertiesInitPopup
      TabOrder = 32
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 242
      Width = 242
    end
    inherited meMessage: TcxMemo
      Left = 130
      Top = 136
      Anchors = [akLeft, akTop, akRight]
      Properties.HideSelection = False
      Properties.OnChange = meMessagePropertiesChange
      TabOrder = 7
      OnEnter = meMessageEnter
      OnExit = meMessageExit
      OnKeyPress = meMessageKeyPress
      ExplicitLeft = 130
      ExplicitTop = 136
      ExplicitWidth = 374
      ExplicitHeight = 101
      Height = 101
      Width = 374
    end
    inherited btnOk: TcxButton
      Left = 186
      Top = 564
      Height = 24
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
      OptionsImage.Spacing = 3
      TabOrder = 34
      ExplicitLeft = 186
      ExplicitTop = 564
      ExplicitHeight = 24
    end
    inherited btnCancel: TcxButton
      Left = 267
      Top = 564
      Height = 24
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
      OptionsImage.Spacing = 3
      TabOrder = 35
      ExplicitLeft = 267
      ExplicitTop = 564
      ExplicitHeight = 24
    end
    inherited btnDelete: TcxButton
      Left = 348
      Top = 564
      Height = 24
      OptionsImage.Spacing = 3
      TabOrder = 36
      ExplicitLeft = 348
      ExplicitTop = 564
      ExplicitHeight = 24
    end
    inherited btnRecurrence: TcxButton
      Left = 429
      Top = 564
      OptionsImage.Spacing = 3
      TabOrder = 37
      ExplicitLeft = 429
      ExplicitTop = 564
    end
    object cmbMatterFind: TcxLookupComboBox [22]
      Left = 130
      Top = 13
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.KeyFieldNames = 'FILEID'
      Properties.ListColumns = <
        item
          Caption = 'Matter'
          FieldName = 'FILEID'
        end
        item
          Caption = 'Client'
          FieldName = 'SEARCH'
        end
        item
          Caption = 'Short Descr'
          FieldName = 'SHORTDESCR'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsMRUList
      Properties.OnCloseUp = cmbMatterFindPropertiesCloseUp
      Properties.OnEditValueChanged = cmbMatterFindPropertiesEditValueChanged
      Properties.OnInitPopup = cmbMatterFindPropertiesInitPopup
      Properties.OnValidate = cmbMatterFindPropertiesValidate
      Style.HotTrack = False
      TabOrder = 0
      OnExit = cmbMatterFindExit
      OnKeyPress = cmbMatterFindKeyPress
      Width = 126
    end
    object lblMatterDesc: TcxLabel [23]
      Left = 262
      Top = 13
      AutoSize = False
      ParentFont = False
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.StyleController = dmAxiom.LabelStyle
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.BorderStyle = ebsFlat
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.WordWrap = True
      Height = 29
      Width = 242
    end
    object lblClient: TcxLabel [24]
      Left = 13
      Top = 48
      AutoSize = False
      ParentFont = False
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.StyleController = dmAxiom.LabelStyle
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.BorderStyle = ebsFlat
      StyleHot.LookAndFeel.NativeStyle = False
      Height = 16
      Width = 491
    end
    object meNotes: TcxMemo [25]
      Left = 130
      Top = 282
      Anchors = [akLeft, akTop, akRight]
      Properties.MaxLength = 4000
      Properties.ScrollBars = ssVertical
      Properties.OnChange = meNotesPropertiesChange
      Style.HotTrack = False
      TabOrder = 12
      OnKeyUp = meNotesKeyUp
      Height = 81
      Width = 374
    end
    object neRate: TcxCurrencyEdit [26]
      Left = 322
      Top = 243
      AutoSize = False
      EditValue = 0c
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '$,0.00;-$,0.00'
      Properties.OnChange = neRatePropertiesChange
      Properties.OnValidate = neRatePropertiesValidate
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 10
      Height = 20
      Width = 52
    end
    object neAmount: TcxCurrencyEdit [27]
      Left = 430
      Top = 243
      AutoSize = False
      EditValue = 0c
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '$,0.00;-$,0.00'
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
      Height = 20
      Width = 63
    end
    object neMinutes: TcxTextEdit [28]
      Left = 405
      Top = 97
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Text = '0'
      Height = 20
      Width = 36
    end
    object cbTaxType: TcxLookupComboBox [29]
      Left = 130
      Top = 70
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = 'Description'
          FieldName = 'DESCR'
        end
        item
          Caption = 'Code'
          Width = 80
          FieldName = 'CODE'
        end>
      Properties.ListSource = dsTaxType
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 153
    end
    object neTax: TcxCurrencyEdit [30]
      Left = 314
      Top = 70
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Height = 19
      Width = 65
    end
    object cmbTemplate: TcxLookupComboBox [31]
      Left = 130
      Top = 97
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'CODE'
        end
        item
          Width = 200
          FieldName = 'DESCR'
        end
        item
          Width = 65
          FieldName = 'BILLTYPE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsScaleCostsList
      Properties.OnCloseUp = cmbTemplatePropertiesCloseUp
      Properties.OnEditValueChanged = cmbTemplatePropertiesEditValueChanged
      Properties.OnInitPopup = cmbTemplatePropertiesInitPopup
      Properties.OnValidate = cmbTemplatePropertiesValidate
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 218
    end
    object dfItems: TcxTextEdit [32]
      Left = 130
      Top = 243
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = dfItemsPropertiesChange
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Text = '0'
      Width = 31
    end
    object lblDate: TcxLabel [33]
      Left = 13
      Top = 442
      ParentFont = False
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = False
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.LabelStyle = cxlsLowered
      Transparent = True
    end
    object icmbType: TcxImageComboBox [34]
      Left = 130
      Top = 504
      Properties.Images = ImageList1
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Overhead'
          ImageIndex = 1
          Tag = 1
          Value = 'O'
        end
        item
          Description = 'Held'
          ImageIndex = 2
          Tag = 2
          Value = 'H'
        end>
      Properties.OnInitPopup = icmbTypePropertiesInitPopup
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 26
      Width = 112
    end
    object cbFeeBasis: TcxLookupComboBox [35]
      Left = 302
      Top = 504
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsFeeBasisList
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 27
      OnClick = cbFeeBasisClick
      Width = 153
    end
    object btnPrint: TcxButton [36]
      Left = 13
      Top = 564
      Width = 72
      Height = 24
      Caption = 'Print'
      OptionsImage.ImageIndex = 29
      OptionsImage.Images = dmAxiom.ilstToolbar
      OptionsImage.Spacing = 3
      TabOrder = 33
      OnClick = btnPrintClick
    end
    object neUnits: TcxSpinEdit [37]
      Left = 203
      Top = 243
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = neRatePropertiesChange
      Properties.OnValidate = neRatePropertiesValidate
      Style.HotTrack = False
      TabOrder = 9
      Value = 1
      Height = 20
      Width = 48
    end
    inherited lcMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited pnlInformation: TdxLayoutGroup
      Visible = False
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Enabled = False
      Expanded = False
      Hidden = True
      ItemIndex = 2
      Index = 4
    end
    inherited dxLayoutItem2: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Enabled = False
    end
    inherited dxLayoutItem1: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Enabled = False
    end
    inherited pnlCaption: TdxLayoutGroup
      Visible = False
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Enabled = False
      Expanded = False
      Hidden = True
      ItemIndex = 1
      Index = 5
    end
    inherited lbSubject: TdxLayoutItem
      Visible = False
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Enabled = False
      Top = 68
    end
    inherited lbLocation: TdxLayoutItem
      Visible = False
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Enabled = False
      Left = 256
      Top = 109
    end
    inherited lbLabel: TdxLayoutItem
      Visible = False
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalWidth = 118
      Enabled = False
      Left = 48
      Top = 95
    end
    inherited pnlTime: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Top = 451
      Index = 6
    end
    inherited dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = nil
      Index = -1
      Special = True
    end
    inherited lbStartTime: TdxLayoutItem
      Parent = dxLayoutGroup8
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalWidth = 374
      Left = 9
      Top = 34
    end
    inherited liStart: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Start Time:'
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Index = 0
    end
    inherited dxLayoutItem4: TdxLayoutItem
      Parent = pnlInformation
      Visible = False
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 76
      Enabled = False
    end
    inherited dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = nil
      Index = -1
      Special = True
    end
    inherited lbEndTime: TdxLayoutItem
      Parent = dxLayoutGroup8
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalWidth = 374
      Left = 191
      Top = 34
      Index = 1
    end
    inherited liFinish: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'End Time:'
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
    end
    inherited pnlTaskComplete: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Top = 371
    end
    inherited lbTaskComplete: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
    end
    inherited lbTaskStatus: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
    end
    inherited pnlRecurrenceInfo: TdxLayoutGroup
      Visible = False
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Enabled = False
      Expanded = False
      Hidden = True
      Top = 411
      Index = 8
    end
    inherited lbRecurrence: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Enabled = False
    end
    inherited pnlResource: TdxLayoutGroup
      Visible = False
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Enabled = False
      Expanded = False
      Hidden = True
      Top = 510
      Index = 9
    end
    inherited lbResource: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Enabled = False
    end
    inherited pnlPlaceHolder: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Enabled = False
      Expanded = False
      Top = 511
      Index = 10
    end
    inherited pnlReminder: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Left = 281
    end
    inherited dxLayoutItem6: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalWidth = 76
      Enabled = False
    end
    inherited dxLayoutItem7: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Enabled = False
    end
    inherited pnlShowTimeAs: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
    end
    inherited lbShowTimeAs: TdxLayoutItem
      CaptionOptions.Text = 'Type:'
      Visible = False
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Enabled = False
      Left = 256
      Top = 64
    end
    inherited pnlMessage: TdxLayoutGroup
      Parent = pnlTax
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ItemIndex = 1
      Top = 104
      Index = 2
    end
    inherited dxLayoutSeparatorItem6: TdxLayoutSeparatorItem
      Visible = False
    end
    inherited dxLayoutItem8: TdxLayoutItem
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description:'
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
    end
    inherited pnlThreeButtons: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Left = 2
      Index = 1
    end
    inherited dxLayoutItem11: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 24
    end
    inherited dxLayoutItem9: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
    end
    inherited dxLayoutItem10: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
    end
    inherited pnlRecurrence: TdxLayoutItem
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      Left = 436
      Index = 2
    end
    inherited pnlButtons: TdxLayoutGroup
      Parent = lcMainGroup_Root
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Top = 557
      Index = 11
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Matter:'
      Control = cmbMatterFind
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Visible = False
      Control = lblMatterDesc
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblClient
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 491
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object pnlMatter: TdxLayoutGroup
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = pnlMatter
      CaptionOptions.ShowAccelChar = False
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = pnlMatter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Tax Rate:'
      Control = cbTaxType
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object pnlTax: TdxLayoutGroup
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ItemIndex = 3
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = pnlTax
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Tax:'
      Control = neTax
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = pnlTax
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Minutes:'
      Control = neMinutes
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 36
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Task:'
      Control = cmbTemplate
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 218
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = pnlTax
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Amount:'
      Control = neAmount
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Rate:'
      Control = neRate
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liUnits: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Hint = 
        'The number of units. This is used for charging and productivity ' +
        'reporting.'
      CaptionOptions.Text = 'Units:'
      Control = neUnits
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 48
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liItems: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Hint = 
        'Use Items with Fee Template for multiple items. eg. a 2 page let' +
        'ter.'
      CaptionOptions.Text = 'Items:'
      Control = dfItems
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object pnlNotes: TdxLayoutGroup
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object liNotes: TdxLayoutItem
      Parent = pnlNotes
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Notes:'#13#10'(Max 4000 Characters)'#13#10'0/4000'
      Control = meNotes
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 81
      ControlOptions.OriginalWidth = 396
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem7: TdxLayoutSeparatorItem
      Parent = pnlNotes
      CaptionOptions.Text = 'Separator'
      Index = 0
    end
    object pnlTasks: TdxLayoutGroup
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = pnlTasks
      CaptionOptions.Text = 'Type'
      Control = icmbType
      ControlOptions.AlignHorz = ahLeft
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = pnlTime
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblDate
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = pnlTime
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = pnlTime
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      Expanded = False
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = pnlTasks
      CaptionOptions.Text = 'New Item'
      Visible = False
      Control = cbFeeBasis
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = pnlButtons
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnPrint
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      GroupOptions.CaptionOptions.Font.Height = -12
      GroupOptions.CaptionOptions.Font.Name = 'Segoe UI'
      GroupOptions.CaptionOptions.UseDefaultFont = False
      Offsets.RootItemsAreaOffsetHorz = 8
      Offsets.RootItemsAreaOffsetVert = 8
      PixelsPerInch = 96
    end
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   TRIM (m.fileid) AS fileid, TRIM (p.search) AS search,'
      '         TRIM (m.shortdescr) AS shortdescr, idx'
      '    FROM matter m, phonebook p, openlist o'
      '   WHERE o.author = :p_author'
      '     AND o.TYPE = :p_type'
      '     AND o.code = m.fileid'
      '     AND m.nclient = p.nclient'
      '     AND m.closed = 0'
      'UNION'
      'SELECT   '#39'Search...'#39', '#39#39', '#39#39', 999'
      '    FROM DUAL'
      'ORDER BY 3')
    Left = 96
    Top = 413
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Type'
        Value = nil
      end>
  end
  object dsMRUList: TUniDataSource
    DataSet = qryMRUList
    Left = 302
    Top = 521
  end
  object qryTaxType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code,descr from taxtype')
    Left = 145
    Top = 207
  end
  object dsTaxType: TUniDataSource
    DataSet = qryTaxType
    Left = 227
    Top = 208
  end
  object qFeeEarners: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME, DEPT FROM EMPLOYEE WHERE'
      'ACTIVE = '#39'Y'#39' AND ISFEEEARNER = '#39'Y'#39
      'ORDER BY NAME')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 144
    Top = 552
    object qFeeEarnersCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qFeeEarnersNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qFeeEarnersDEPT: TStringField
      FieldName = 'DEPT'
      Size = 3
    end
  end
  object dsFeeEarners: TDataSource
    DataSet = qFeeEarners
    Left = 400
    Top = 204
  end
  object strFeeEarners: TStringz
    Strings.Strings = (
      'SELECT DISTINCT CODE, NAME, DEPT'
      ''
      'FROM'
      ''
      '(SELECT '
      ''
      'CODE, '
      'NAME,'
      'DEPT '
      ''
      'FROM EMPLOYEE '
      ''
      'WHERE'
      ''
      'ACTIVE = '#39'Y'#39' AND '
      'ISFEEEARNER = '#39'Y'#39
      ''
      'UNION ALL'
      ''
      'SELECT'
      ''
      'CODE,'
      'NAME,'
      'DEPT'
      ''
      'FROM EMPLOYEE'
      ''
      'WHERE'
      ''
      'CODE = :CODE)'
      ''
      'ORDER BY CODE')
    Left = 79
    Top = 430
  end
  object ImageList1: TImageList
    Left = 335
    Top = 530
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000C0C0C00000000000C0C0C000000000008080800000FF00008080
      800000000000C0C0C00000000000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000800000008000000000000000
      0000000000000000000000000000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000C0C0C00000000000C0C0
      C00000000000C0C0C00000000000000000000000000000008000000080000000
      0000000000000000000000000000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000000000000000000080808000808080008080
      8000808080008080800000000000000000000000000000008000000080000000
      0000000000000000000000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000C0C0C0000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000000000000000000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000008080800000000000000000000000
      000000000000000000000000000080808000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000808080008080800080808000808080000000000000000000000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000800000008000000080000000
      0000000000000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFE000FFFF0000FFFFEFFEFFFF0000
      FFFFE802FFFF0000E007EA8A7FF80000C007E0023F780000C007E02A9F7F0000
      C007C0029CF80000C0079E1ECCF80000C0072E1EC1F80000C0073F80E3F80000
      C00F589FC3F80000E07F3B9F19F80000E07F2A9FFCFF0000FFFF9F3FFE7F0000
      FFFF007FFFFF0000FFFFA0FFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object qryFeeBasisList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from feebasis')
    Left = 326
    Top = 195
  end
  object dsFeeBasisList: TUniDataSource
    DataSet = qryFeeBasisList
    Left = 364
    Top = 194
  end
  object qryScaleCost: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(AMOUNT,0) as amount, nvl(RATE,0) as rate, DESCR, UNIT' +
        ', ZERO_FEE FROM SCALECOST WHERE CODE = :P_Code')
    Left = 122
    Top = 163
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qryScaleCostsList: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM SCALECOST WHERE CODE = :CODE')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM SCALECOST '
      'WHERE ACTIVE = '#39'Y'#39
      'ORDER BY CODE')
    Left = 275
    Top = 190
  end
  object dsScaleCostsList: TUniDataSource
    AutoEdit = False
    DataSet = qryScaleCostsList
    Left = 427
    Top = 192
  end
  object qryBillType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT f.billtype as BillType FROM FeeBasis f, Matter m'
      'WHERE f.code = m.feebasis'
      'AND m.nmatter = :p_nmatter')
    Left = 391
    Top = 523
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nmatter'
        Value = nil
      end>
  end
  object qryFeeTmp: TUniQuery
    UpdatingTable = 'FEETMP'
    KeyFields = 'UNIQUEID'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FT.ROWID, FT.CREATED, FT.FILEID, FT.AUTHOR, FT.REASON, FT' +
        '.UNITS, FT.RATE, FT.AMOUNT,'
      
        'FT.TAXCODE, FT.TAX, FT.TAXRATE, FT.ELAPSED, FT.EMPCODE,FT.UNIQUE' +
        'ID,FT.NFEE,FT.BILLTYPE,'
      
        'decode(FT.TIME_TYPE, '#39'M'#39',P.SEARCH || '#39' '#39' || M.SHORTDESCR,'#39'O'#39', '#39'O' +
        'verhead Time'#39','#39'H'#39', P.SEARCH || '#39' '#39' || M.SHORTDESCR ) AS MATLOCAT' +
        'E, FT.NMATTER,'
      
        'FT.TIME_TYPE, FT.FEE_TEMPLATE, FT.ITEMS, FT.UNIT, FT.TASK_AMOUNT' +
        ', FT.LABELCOLOUR, FT.FEEBASIS, FT.EMP_TYPE, FT.VERSION, FT.MINS'
      'FROM FEETMP FT, MATTER M, PHONEBOOK P'
      'WHERE FT.AUTHOR=:AUTHOR'
      'AND FT.FILEID = M.FILEID (+)'
      'AND M.NCLIENT = P.NCLIENT (+)'
      'AND FT.NFEE IS NULL'
      'order by FT.uniqueid desc'
      '')
    Left = 14
    Top = 211
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end>
  end
  object ppFileNoteRpt: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 60350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppFileNoteRptBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 218
    Top = 464
    Version = '19.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object pplblTransTitle: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblTransTitle'
        Border.mmPadding = 0
        Caption = 'lblTransTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 89451
        mmTop = 2910
        mmWidth = 18923
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Matter Filenote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 86403
        mmTop = 8202
        mmWidth = 25104
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 51329
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Matter #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 17727
        mmTop = 3440
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Matter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 9525
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 20638
        mmTop = 15610
        mmWidth = 10847
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Units:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 21696
        mmWidth = 9261
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Minutes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 17198
        mmTop = 27781
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Details:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 18785
        mmTop = 34660
        mmWidth = 12436
        BandType = 4
        LayerName = Foreground
      end
      object pplblMatter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMatter'
        Border.mmPadding = 0
        Caption = 'lblMatter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 34661
        mmTop = 3440
        mmWidth = 13420
        BandType = 4
        LayerName = Foreground
      end
      object pplblMatterDesc: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMatterDesc'
        Border.mmPadding = 0
        Caption = 'lblMatterDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 34660
        mmTop = 9525
        mmWidth = 21463
        BandType = 4
        LayerName = Foreground
      end
      object pplblClient: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblClient'
        Border.mmPadding = 0
        Caption = 'lblClient'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 34660
        mmTop = 15610
        mmWidth = 12404
        BandType = 4
        LayerName = Foreground
      end
      object pplblUnits: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblUnits'
        Border.mmPadding = 0
        Caption = 'lblUnits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 34660
        mmTop = 21696
        mmWidth = 11472
        BandType = 4
        LayerName = Foreground
      end
      object pplblMinutes: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMinutes'
        Border.mmPadding = 0
        Caption = 'lblMinutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 34660
        mmTop = 27781
        mmWidth = 15748
        BandType = 4
        LayerName = Foreground
      end
      object ppMemoDetails: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'MemoDetails'
        Border.mmPadding = 0
        Caption = 'MemoDetails'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        mmHeight = 6085
        mmLeft = 33867
        mmTop = 34660
        mmWidth = 142611
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Pen.Style = psClear
        ShiftRelativeTo = ppMemoDetails
        Stretch = True
        mmHeight = 7144
        mmLeft = 0
        mmTop = 42335
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Notes:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 20902
          mmTop = 43921
          mmWidth = 10319
          BandType = 4
          LayerName = Foreground
        end
        object ppMemoNotes: TppMemo
          DesignLayer = ppDesignLayer1
          UserName = 'MemoNotes'
          Border.mmPadding = 0
          Caption = 'MemoNotes'
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          mmHeight = 3969
          mmLeft = 33602
          mmTop = 43881
          mmWidth = 142611
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object pplblFooter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblFooter'
        Border.mmPadding = 0
        Caption = 'lblFooter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 89429
        mmTop = 2119
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 524
        mmLeft = 0
        mmTop = 1058
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
