object frmTaskTempNew: TfrmTaskTempNew
  Left = 528
  Top = 308
  Caption = 'Task Template Creation'
  ClientHeight = 300
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 8
    Top = 56
    Width = 53
    Height = 13
    Caption = '&Description'
    FocusControl = mmoDesc
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 52
    Height = 13
    Caption = '&Task Code'
    FocusControl = tbCode
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 72
    Height = 13
    Caption = 'Workflow T&ype'
  end
  object btnCancel: TBitBtn
    Left = 208
    Top = 256
    Width = 75
    Height = 25
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 7
    OnClick = btnCancelClick
  end
  object btnSave: TBitBtn
    Left = 128
    Top = 256
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 6
    OnClick = btnSaveClick
  end
  object tbCode: TEdit
    Left = 96
    Top = 8
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object mmoDesc: TMemo
    Left = 96
    Top = 56
    Width = 185
    Height = 89
    TabOrder = 3
  end
  object chkMaster: TCheckBox
    Left = 8
    Top = 152
    Width = 100
    Height = 17
    Alignment = taLeftJustify
    Caption = '&Master'
    TabOrder = 4
  end
  object tbWorkflowType: TEdit
    Left = 96
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object btnWorkflowType: TBitBtn
    Left = 194
    Top = 32
    Width = 24
    Height = 21
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 2
    OnClick = btnWorkflowTypeClick
  end
  object gbSchedule: TGroupBox
    Left = 8
    Top = 176
    Width = 273
    Height = 73
    Caption = 'Scheduling'
    TabOrder = 5
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 63
      Height = 13
      Caption = 'D&ays to Task'
      FocusControl = neDays
    end
    object Label4: TLabel
      Left = 8
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Relative to'
    end
    object neDays: TNumberEdit
      Left = 88
      Top = 16
      Width = 33
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 0
      DisplayFormat = dfInteger
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 0
    end
    object cbDateField: TComboBox
      Left = 88
      Top = 40
      Width = 177
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbDateFieldChange
      OnDropDown = cbDateFieldDropDown
      OnExit = cbDateFieldExit
    end
  end
  object qryTask: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT T.ROWID, T.* FROM TASKTEMP T WHERE T.CODE = :P_Code')
    Left = 8
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qryTaskItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT T.ROWID, T.* FROM TASKITEM T WHERE T.CODE = :P_Code')
    Left = 40
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT T.ROWID, T.* FROM TASKTEMP T WHERE T.CODE = :P_Code')
    Left = 72
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
end
