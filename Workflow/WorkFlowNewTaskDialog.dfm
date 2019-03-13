object fmWorkFlowNewTaskDialog: TfmWorkFlowNewTaskDialog
  Left = 436
  Top = 277
  BorderStyle = bsDialog
  Caption = 'New Task'
  ClientHeight = 307
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    442
    307)
  PixelsPerInch = 106
  TextHeight = 15
  object lNewSeqNoLabel: TLabel
    Left = 36
    Top = 50
    Width = 157
    Height = 15
    Alignment = taRightJustify
    Caption = 'New Task Sequence Number: '
  end
  object lNewSeqNo: TLabel
    Left = 197
    Top = 50
    Width = 62
    Height = 15
    Caption = 'lNewSeqNo'
  end
  object Label2: TLabel
    Left = 44
    Top = 73
    Width = 89
    Height = 15
    Alignment = taRightJustify
    Caption = 'Task Description:'
  end
  object Label1: TLabel
    Left = 57
    Top = 12
    Width = 76
    Height = 15
    Alignment = taRightJustify
    Caption = 'Selected Task: '
  end
  object lSelectedTask: TLabel
    Left = 137
    Top = 12
    Width = 297
    Height = 30
    AutoSize = False
    Caption = 'lSelectedTask'
    WordWrap = True
  end
  object Label6: TLabel
    Left = 24
    Top = 150
    Width = 109
    Height = 15
    Alignment = taRightJustify
    Caption = 'Assign To Employee:'
  end
  object lCompleteByDate: TLabel
    Left = 35
    Top = 180
    Width = 98
    Height = 15
    Alignment = taRightJustify
    Caption = 'Complete By Date:'
  end
  object lCompleteDays1: TLabel
    Left = 81
    Top = 212
    Width = 52
    Height = 15
    Alignment = taRightJustify
    Caption = 'Complete'
  end
  object lCompleteDays2: TLabel
    Left = 204
    Top = 212
    Width = 123
    Height = 15
    Caption = 'days from task starting.'
  end
  object Label3: TLabel
    Left = 47
    Top = 118
    Width = 86
    Height = 15
    Alignment = taRightJustify
    Caption = 'Assign To Team:'
  end
  object OKBtn: TButton
    Left = 147
    Top = 275
    Width = 79
    Height = 26
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 9
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 232
    Top = 275
    Width = 78
    Height = 26
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 10
  end
  object eTaskDescription: TEdit
    Left = 139
    Top = 72
    Width = 295
    Height = 23
    TabOrder = 0
    Text = 'eTaskDescription'
  end
  object dtCompleteBy: TDateTimePicker
    Left = 139
    Top = 177
    Width = 106
    Height = 23
    Date = 37628.502085173600000000
    Time = 37628.502085173600000000
    TabOrder = 4
  end
  object ckNoCompleteDate: TCheckBox
    Left = 251
    Top = 181
    Width = 158
    Height = 18
    Caption = 'No Completion Date'
    TabOrder = 5
  end
  object ckStartTask: TCheckBox
    Left = 70
    Top = 99
    Width = 83
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Start Task:'
    TabOrder = 1
    OnClick = ckStartTaskClick
  end
  object dblAssignTo: TcxLookupComboBox
    Left = 139
    Top = 147
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end
      item
        Caption = 'Type'
        FieldName = 'TYPE'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dmWorkFlowDataModule.dsListCarriage
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 3
    Width = 295
  end
  object seCompleteDays: TcxSpinEdit
    Left = 139
    Top = 207
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 6
    Width = 58
  end
  object ckCriticalDate: TCheckBox
    Left = 137
    Top = 247
    Width = 95
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Critical Date'
    TabOrder = 7
  end
  object ckCriticalAlert: TCheckBox
    Left = 261
    Top = 246
    Width = 95
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = 'Critical Alert'
    TabOrder = 8
  end
  object lbTeams: TcxLookupComboBox
    Left = 139
    Top = 118
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTeam
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Width = 295
  end
  object tbTeam: TUniTable
    TableName = 'TEAM'
    OrderFields = 'CODE'
    Connection = dmAxiom.uniInsight
    ReadOnly = True
    KeyFields = 'CODE'
    Filter = 'active=true'
    FilterOptions = [foCaseInsensitive]
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 4
    Top = 87
    object StringField1: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object tbTeamDESCR: TStringField
      FieldName = 'DESCR'
      Size = 50
    end
  end
  object dsTeam: TDataSource
    AutoEdit = False
    DataSet = tbTeam
    Left = 5
    Top = 111
  end
end
