object frmDiaryEventEditor: TfrmDiaryEventEditor
  Left = 182
  Top = 185
  BorderStyle = bsDialog
  Caption = 'frmDiaryEventEditor'
  ClientHeight = 375
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMatter: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 450
    Height = 40
    Align = alTop
    Bevel.BorderSides = [fsBottom, fsRight]
    Bevel.Mode = bmEdge
    TabOrder = 0
    DesignSize = (
      450
      40)
    object beMatter: TcxButtonEdit
      Left = 72
      Top = 8
      Width = 369
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = beMatterPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxLabel1: TcxLabel
      Left = 12
      Top = 9
      Width = 37
      Height = 17
      Caption = 'Matter:'
    end
  end
  object pnlCaption: TLMDSimplePanel
    Left = 0
    Top = 40
    Width = 450
    Height = 62
    Align = alTop
    Bevel.BorderSides = [fsBottom]
    Bevel.Mode = bmEdge
    TabOrder = 1
    DesignSize = (
      450
      62)
    object lbSubject: TLabel
      Left = 16
      Top = 13
      Width = 39
      Height = 13
      Caption = 'Subject:'
      FocusControl = teSubject
    end
    object lbLocation: TLabel
      Left = 16
      Top = 38
      Width = 44
      Height = 13
      Caption = 'Location:'
      FocusControl = teLocation
    end
    object lbLabel: TLabel
      Left = 239
      Top = 38
      Width = 29
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'La&bel:'
      FocusControl = icbLabel
    end
    object teSubject: TcxTextEdit
      Left = 72
      Top = 9
      Width = 369
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object teLocation: TcxTextEdit
      Left = 72
      Top = 34
      Width = 145
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object icbLabel: TcxImageComboBox
      Left = 272
      Top = 34
      Width = 169
      Height = 21
      Anchors = [akTop, akRight]
      Properties.Items = <>
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 2
    end
  end
  object pnlTime: TLMDSimplePanel
    Left = 0
    Top = 102
    Width = 450
    Height = 66
    Align = alTop
    Bevel.BorderSides = [fsBottom]
    Bevel.Mode = bmEdge
    TabOrder = 2
    object lbStartTime: TLabel
      Left = 16
      Top = 15
      Width = 47
      Height = 13
      Caption = 'Start time:'
      FocusControl = deStart
    end
    object lbEndTime: TLabel
      Left = 16
      Top = 40
      Width = 44
      Height = 13
      Caption = 'End time:'
      FocusControl = deEnd
    end
    object deStart: TcxDateEdit
      Left = 96
      Top = 11
      Width = 121
      Height = 21
      Properties.DateButtons = [btnToday]
      Properties.InputKind = ikStandard
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object deEnd: TcxDateEdit
      Left = 96
      Top = 36
      Width = 121
      Height = 21
      Properties.DateButtons = [btnToday]
      Properties.InputKind = ikStandard
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object teStart: TcxTimeEdit
      Left = 224
      Top = 11
      Width = 81
      Height = 21
      EditValue = 0
      Properties.AssignedValues.MinValue = True
      Properties.TimeFormat = tfHourMin
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 2
    end
    object teEnd: TcxTimeEdit
      Left = 224
      Top = 36
      Width = 81
      Height = 21
      EditValue = 0
      Properties.AssignedValues.MinValue = True
      Properties.TimeFormat = tfHourMin
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
    object cbAllDayEvent: TcxCheckBox
      Left = 320
      Top = 12
      Width = 87
      Height = 21
      Caption = 'All day event'
      Properties.OnChange = cbAllDayEventPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 4
    end
  end
  object pnlReminder: TLMDSimplePanel
    Left = 0
    Top = 168
    Width = 450
    Height = 47
    Align = alTop
    Bevel.BorderSides = [fsBottom]
    Bevel.Mode = bmEdge
    TabOrder = 3
    object lbShowTimeAs: TLabel
      Left = 16
      Top = 16
      Width = 66
      Height = 13
      Caption = 'Show time as:'
      FocusControl = icbShowTimeAs
    end
    object icbShowTimeAs: TcxImageComboBox
      Left = 96
      Top = 12
      Width = 121
      Height = 21
      Properties.Items = <>
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cbReminder: TcxCheckBox
      Left = 230
      Top = 13
      Width = 81
      Height = 21
      Caption = 'Reminder:'
      Properties.OnChange = cbReminderPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object cbAdvanceTime: TcxComboBox
      Left = 316
      Top = 12
      Width = 121
      Height = 21
      Properties.DropDownListStyle = lsFixedList
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Visible = False
    end
  end
  object pnlMessage: TLMDSimplePanel
    Left = 0
    Top = 215
    Width = 450
    Height = 121
    Align = alTop
    Bevel.BorderSides = [fsBottom]
    Bevel.Mode = bmEdge
    TabOrder = 4
    DesignSize = (
      450
      121)
    object meMessage: TcxMemo
      Left = 8
      Top = 8
      Width = 436
      Height = 102
      Anchors = [akLeft, akTop, akRight, akBottom]
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
  end
  object pnlThreeButtons: TPanel
    Left = 0
    Top = 336
    Width = 340
    Height = 39
    Align = alClient
    BevelOuter = bvNone
    FullRepaint = False
    ParentColor = True
    TabOrder = 5
    DesignSize = (
      340
      39)
    object btnOk: TcxButton
      Left = 14
      Top = 9
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      LookAndFeel.NativeStyle = True
    end
    object btnCancel: TcxButton
      Left = 124
      Top = 9
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      LookAndFeel.NativeStyle = True
    end
    object btnDelete: TcxButton
      Left = 234
      Top = 9
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Delete'
      TabOrder = 2
      LookAndFeel.NativeStyle = True
    end
  end
  object pnlRecurrence: TPanel
    Left = 340
    Top = 336
    Width = 110
    Height = 39
    Align = alRight
    BevelOuter = bvNone
    FullRepaint = False
    ParentColor = True
    TabOrder = 6
    object btnRecurrence: TcxButton
      Left = 3
      Top = 9
      Width = 95
      Height = 25
      Caption = '&Recurrence'
      TabOrder = 0
      LookAndFeel.NativeStyle = True
    end
  end
end
