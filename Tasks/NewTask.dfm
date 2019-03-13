inherited frmNewTask: TfrmNewTask
  Left = 678
  Top = 192
  ActiveControl = cmbMatterFind
  BorderStyle = bsDialog
  Caption = 'New Task'
  ClientHeight = 651
  ClientWidth = 500
  Constraints.MinHeight = 405
  Constraints.MinWidth = 490
  Font.Name = 'Segoe UI'
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 506
  ExplicitHeight = 680
  PixelsPerInch = 106
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 32
    Width = 37
    Height = 13
    Caption = 'Matter:'
  end
  object Label14: TLabel [1]
    Left = 224
    Top = 15
    Width = 47
    Height = 13
    Caption = 'Fee Basis'
    Visible = False
  end
  object Label9: TLabel [2]
    Left = 393
    Top = 14
    Width = 37
    Height = 12
    Hint = 'The actual number of minutes this task took.'
    Caption = 'Minutes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Visible = False
  end
  object Label4: TLabel [3]
    Left = 5
    Top = 53
    Width = 62
    Height = 13
    Caption = 'Description:'
  end
  inherited lcMain: TdxLayoutControl
    Top = 68
    Width = 500
    Height = 583
    ExplicitTop = 68
    ExplicitWidth = 500
    ExplicitHeight = 583
    inherited cxGroupBox1: TcxGroupBox
      Left = 10000
      Top = 10000
      Enabled = False
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 338
      Width = 338
    end
    inherited btnFindTime: TcxButton
      Left = 10000
      Top = 10000
      Enabled = False
      OptionsImage.Spacing = 5
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited teSubject: TcxTextEdit
      Top = 75
      ExplicitTop = 75
      ExplicitWidth = 395
      Width = 395
    end
    inherited teLocation: TcxTextEdit
      Top = 102
      ExplicitTop = 102
      ExplicitWidth = 217
      Width = 217
    end
    inherited icbLabel: TcxImageComboBox
      Left = 352
      Top = 102
      ExplicitLeft = 352
      ExplicitTop = 102
      ExplicitWidth = 136
      Width = 136
    end
    inherited deStart: TcxDateEdit
      Top = 141
      Enabled = False
      Properties.ReadOnly = True
      ExplicitTop = 141
    end
    inherited teStart: TcxTimeEdit
      Left = 220
      Top = 141
      Properties.Use24HourFormat = False
      Properties.OnChange = nil
      ExplicitLeft = 220
      ExplicitTop = 141
    end
    inherited cbAllDayEvent: TcxCheckBox
      Left = 347
      Top = 141
      Enabled = False
      Properties.ReadOnly = True
      ExplicitLeft = 347
      ExplicitTop = 141
      ExplicitWidth = 85
    end
    inherited deEnd: TcxDateEdit
      Top = 168
      Enabled = False
      Properties.ReadOnly = True
      ExplicitTop = 168
    end
    inherited teEnd: TcxTimeEdit
      Left = 220
      Top = 168
      AutoSize = False
      Properties.Use24HourFormat = False
      Properties.OnChange = nil
      ExplicitLeft = 220
      ExplicitTop = 168
      ExplicitHeight = 23
      Height = 23
    end
    inherited seTaskComplete: TcxSpinEdit
      Top = 209
      ExplicitTop = 209
    end
    inherited cbxTaskStatus: TcxComboBox
      Left = 285
      Top = 209
      ExplicitLeft = 285
      ExplicitTop = 209
    end
    inherited lbRecurrencePattern: TcxLabel
      Left = 10000
      Top = 10000
      Enabled = False
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 388
      Width = 388
    end
    inherited cbResources: TcxCheckComboBox
      Left = 10000
      Top = 10000
      Enabled = False
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 388
      Width = 388
    end
    inherited cbReminder: TcxCheckBox
      Left = 12
      Top = 270
      Properties.ReadOnly = True
      ExplicitLeft = 12
      ExplicitTop = 270
      ExplicitWidth = 76
    end
    inherited cbReminderMinutesBeforeStart: TcxComboBox
      Left = 94
      Top = 270
      Properties.ReadOnly = True
      ExplicitLeft = 94
      ExplicitTop = 270
    end
    inherited icbShowTimeAs: TcxImageComboBox
      Left = 253
      Top = 270
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
      ExplicitLeft = 253
      ExplicitTop = 270
      ExplicitWidth = 235
      Width = 235
    end
    inherited meMessage: TcxMemo
      Left = 12
      Top = 309
      Anchors = [akLeft, akTop, akRight]
      Properties.HideSelection = False
      Properties.OnChange = nil
      OnEnter = meMessageEnter
      OnExit = meMessageExit
      OnKeyPress = meMessageKeyPress
      ExplicitLeft = 12
      ExplicitTop = 309
      ExplicitWidth = 476
      ExplicitHeight = 226
      Height = 226
      Width = 476
    end
    inherited btnOk: TcxButton
      Left = 170
      Top = 541
      Height = 30
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
      OptionsImage.Spacing = 5
      ExplicitLeft = 170
      ExplicitTop = 541
      ExplicitHeight = 30
    end
    inherited btnCancel: TcxButton
      Left = 251
      Top = 541
      Height = 30
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
      OptionsImage.Spacing = 5
      ExplicitLeft = 251
      ExplicitTop = 541
      ExplicitHeight = 30
    end
    inherited btnDelete: TcxButton
      Left = 332
      Top = 541
      Height = 30
      OptionsImage.Spacing = 5
      ExplicitLeft = 332
      ExplicitTop = 541
      ExplicitHeight = 30
    end
    inherited btnRecurrence: TcxButton
      Left = 413
      Top = 541
      OptionsImage.Spacing = 5
      ExplicitLeft = 413
      ExplicitTop = 541
    end
    inherited pnlInformation: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Enabled = False
      Expanded = False
      Index = 1
    end
    inherited dxLayoutItem2: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Enabled = False
    end
    inherited dxLayoutItem1: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Enabled = False
    end
    inherited pnlCaption: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Index = 2
    end
    inherited lbSubject: TdxLayoutItem
      Visible = False
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Left = 1
      Top = 55
    end
    inherited lbLocation: TdxLayoutItem
      Visible = False
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Left = 222
      Top = 95
    end
    inherited lbLabel: TdxLayoutItem
      Visible = False
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      ControlOptions.OriginalWidth = 136
      Left = 40
      Top = 83
    end
    inherited pnlTime: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Top = 363
      Index = 3
    end
    inherited lbStartTime: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Enabled = False
      Left = 7
      Top = 33
    end
    inherited liStart: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
    end
    inherited dxLayoutItem4: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      ControlOptions.OriginalWidth = 85
      Enabled = False
    end
    inherited lbEndTime: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Enabled = False
      Left = 165
      Top = 33
    end
    inherited liFinish: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      ControlOptions.OriginalHeight = 23
    end
    inherited pnlTaskComplete: TdxLayoutGroup
      Visible = False
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Top = 283
      Index = 4
    end
    inherited lbTaskComplete: TdxLayoutItem
      Visible = False
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
    end
    inherited lbTaskStatus: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
    end
    inherited pnlRecurrenceInfo: TdxLayoutGroup
      Visible = False
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Enabled = False
      Expanded = False
      Top = 323
      Index = 5
    end
    inherited lbRecurrence: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Enabled = False
    end
    inherited pnlResource: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Enabled = False
      Expanded = False
      Top = 414
      Index = 6
    end
    inherited lbResource: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Enabled = False
    end
    inherited pnlPlaceHolder: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Top = 415
      Index = 7
    end
    inherited pnlReminder: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Left = 281
    end
    inherited dxLayoutItem6: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      ControlOptions.OriginalWidth = 76
    end
    inherited dxLayoutItem7: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
    end
    inherited pnlShowTimeAs: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
    end
    inherited lbShowTimeAs: TdxLayoutItem
      CaptionOptions.Text = 'Type:'
      Visible = False
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Left = 222
      Top = 56
    end
    inherited pnlMessage: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Top = 118
      Index = 8
    end
    inherited dxLayoutItem8: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
    end
    inherited pnlThreeButtons: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Left = 2
    end
    inherited dxLayoutItem11: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      ControlOptions.OriginalHeight = 30
    end
    inherited dxLayoutItem9: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
    end
    inherited dxLayoutItem10: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
    end
    inherited pnlRecurrence: TdxLayoutItem
      ControlOptions.MinHeight = 25
      ControlOptions.MinWidth = 25
      Left = 376
    end
    inherited pnlButtons: TdxLayoutGroup
      ButtonOptions.DefaultHeight = 20
      ButtonOptions.DefaultWidth = 20
      Top = 337
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  object pnlNotes: TPanel [5]
    Left = 0
    Top = 0
    Width = 500
    Height = 68
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object dxBevel1: TdxBevel
      Left = 0
      Top = 0
      Width = 500
      Height = 2
      LookAndFeel.NativeStyle = True
      Shape = dxbsLineCenteredVert
    end
    object Label2: TLabel
      Left = 5
      Top = 7
      Width = 33
      Height = 13
      Caption = 'Notes:'
    end
    object meNotes: TcxMemo
      Left = 83
      Top = 7
      TabOrder = 0
      Height = 59
      Width = 404
    end
  end
  object btnPrint: TcxButton [6]
    Left = 331
    Top = 8
    Width = 30
    Height = 30
    Anchors = [akTop, akRight]
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360800000000000036000000280000002000000010000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0080800000808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFBFBF
      BFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBF
      BFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FFBFBFBFFFFFFF
      FFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFF
      FFFFBFBFBFFFFFFFFFFF0000FFFFFFFFFFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FFFFFFFFFFBFBF
      BFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBF
      BFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFFFFFFFFFF7F7F7FFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF00808000008080000080
      8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF00808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF00808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080
      8000FFFFFFFF7F7F7FFFFFFFFFFF008080000080800000808000008080000080
      8000000000FFFFFFFFFF000000FF000000FF000000FF000000FFFFFFFFFF0000
      00FFFFFFFFFF000000FF00808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080007F7F
      7FFF008080007F7F7FFFFFFFFFFF008080000080800000808000008080000080
      8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF00808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF00808000FFFFFFFFFFFFFFFF00808000FFFFFFFFFFFF
      FFFFFFFFFFFF7F7F7FFFFFFFFFFF008080000080800000808000008080000080
      8000000000FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF00808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF008080007F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF00808000008080000080800000808000008080000080
      8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
      FFFF000000FF0080800000808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF00808000FFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFF0080
      80007F7F7FFF0080800000808000008080000080800000808000008080000080
      8000000000FFFFFFFFFF000000FFBFBFBFFFFFFFFFFF000000FFFFFFFFFF0000
      00FF008080000080800000808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF008080007F7F7FFFFFFFFFFF7F7F
      7FFF008080000080800000808000008080000080800000808000008080000080
      8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000FF000000FF000000FF000000FF000000FF000000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    OptionsImage.Spacing = 5
    TabOrder = 2
    OnClick = btnPrintClick
  end
  object cmbMatterFind: TcxLookupComboBox [7]
    Left = 83
    Top = 31
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsEditList
    Properties.DropDownRows = 20
    Properties.DropDownWidth = 577
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'FILEID'
    Properties.ListColumns = <
      item
        Caption = 'Matter'
        MinWidth = 85
        Sorting = False
        Width = 85
        FieldName = 'FILEID'
      end
      item
        Caption = 'Client'
        Sorting = False
        Width = 160
        FieldName = 'SEARCH'
      end
      item
        Caption = 'Matter Description'
        Sorting = False
        FieldName = 'SHORTDESCR'
      end>
    Properties.ListOptions.GridLines = glVertical
    Properties.ListSource = dsMRUList
    Properties.OnCloseUp = cmbMatterFindPropertiesCloseUp
    Properties.OnInitPopup = cmbMatterFindPropertiesInitPopup
    Properties.OnValidate = cmbMatterFindPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    OnExit = cmbMatterFindExit
    Width = 102
  end
  object lblMatterDesc: TcxLabel [8]
    Left = 188
    Top = 31
    AutoSize = False
    ParentFont = False
    Style.BorderStyle = ebsFlat
    Style.LookAndFeel.NativeStyle = False
    Style.StyleController = dmAxiom.LabelStyle
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.BorderStyle = ebsFlat
    StyleHot.LookAndFeel.NativeStyle = False
    Properties.WordWrap = True
    Height = 32
    Width = 302
  end
  object lblClient: TcxLabel [9]
    Left = 83
    Top = 67
    AutoSize = False
    ParentFont = False
    Style.BorderStyle = ebsFlat
    Style.LookAndFeel.NativeStyle = False
    Style.StyleController = dmAxiom.LabelStyle
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.BorderStyle = ebsFlat
    StyleHot.LookAndFeel.NativeStyle = False
    Height = 17
    Width = 407
  end
  object cmbEmployee: TcxLookupComboBox [10]
    Left = 83
    Top = 2
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsFeeEarners
    TabOrder = 6
    Width = 253
  end
  object lblEmployee: TcxLabel [11]
    Left = 8
    Top = 3
    Caption = 'Employee:'
    Transparent = True
  end
  object lblDate: TcxLabel [12]
    Left = 268
    Top = 8
    ParentFont = False
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Properties.LabelStyle = cxlsLowered
    Transparent = True
    Visible = False
  end
  object dtDate: TcxDateEdit [13]
    Left = 83
    Top = 6
    Properties.ShowTime = False
    TabOrder = 9
    Width = 179
  end
  object cxLabel3: TcxLabel [14]
    Left = 8
    Top = 8
    Caption = 'Date:'
    Transparent = True
  end
  object cbFeeBasis: TcxLookupComboBox [15]
    Left = 293
    Top = 10
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
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Visible = False
    OnClick = cbFeeBasisClick
    Width = 179
  end
  object cxLabel1: TcxLabel [16]
    Left = 0
    Top = 28
    Hint = 
      'If a matter is selected, the type is always '#39'Matter'#39', otherwise ' +
      'the fee type is '#39'Overhead'#39' or '#39'Held'#39'.'
    Caption = 'Type:'
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object icmbType: TcxImageComboBox [17]
    Left = 57
    Top = 10
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
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 13
    Width = 130
  end
  object pbLinktoTask: TcxButton [18]
    Left = 322
    Top = 13
    Width = 151
    Height = 25
    Caption = 'Link to another task'
    Enabled = False
    OptionsImage.Spacing = 5
    TabOrder = 14
    OnClick = pbLinktoTaskClick
  end
  object neMinutes: TcxTextEdit [19]
    Left = 449
    Top = 9
    AutoSize = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 15
    Text = '0'
    Visible = False
    Height = 23
    Width = 41
  end
  object cmbTemplate: TcxLookupComboBox [20]
    Left = 83
    Top = 8
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
    Properties.OnInitPopup = cmbTemplatePropertiesInitPopup
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 16
    Width = 253
  end
  object cxLabel2: TcxLabel [21]
    Left = 33
    Top = 9
    Caption = 'Task:'
    Transparent = True
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      Offsets.RootItemsAreaOffsetHorz = 8
      Offsets.RootItemsAreaOffsetVert = 8
      PixelsPerInch = 96
    end
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT M.FILEID,P.SEARCH, M.SHORTDESCR, idx'
      'FROM MATTER M, PHONEBOOK P,OPENLIST O'
      'WHERE O.AUTHOR = :P_Author'
      'AND O.TYPE = :P_Type'
      'AND O.CODE = M.FILEID'
      'AND M.NCLIENT = P.NCLIENT'
      'union'
      'SELECT '#39'Search...'#39','#39#39','#39#39',999'
      'FROM dual'
      'ORDER BY 3')
    Left = 171
    Top = 82
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
    Left = 271
    Top = 81
  end
  object qryTaxType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code,descr from taxtype')
    Left = 185
    Top = 209
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
    Left = 383
    Top = 91
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
    Left = 438
    Top = 98
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
    Left = 32
    Top = 149
  end
  object ImageList1: TImageList
    Left = 469
    Top = 34
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
    Left = 82
    Top = 187
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
    Left = 335
    Top = 79
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
    Left = 13
    Top = 195
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
    PrinterSetup.PaperName = 'A4'
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
        mmWidth = 197909
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
