object frmTaskNew: TfrmTaskNew
  Left = 380
  Top = 363
  ActiveControl = mmoDesc
  Caption = 'Task Creation'
  ClientHeight = 240
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    312
    240)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 30
    Height = 13
    Caption = 'Matter'
  end
  object Label2: TLabel
    Left = 8
    Top = 99
    Width = 20
    Height = 13
    Caption = 'Due'
  end
  object Label3: TLabel
    Left = 8
    Top = 51
    Width = 31
    Height = 13
    Caption = 'Author'
  end
  object Label4: TLabel
    Left = 8
    Top = 147
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object lblMatter: TLabel
    Left = 75
    Top = 8
    Width = 3
    Height = 13
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShowAccelChar = False
  end
  object lblClient: TLabel
    Left = 152
    Top = 8
    Width = 153
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblMatterDesc: TLabel
    Left = 75
    Top = 24
    Width = 230
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblAuthor: TLabel
    Left = 147
    Top = 51
    Width = 3
    Height = 13
  end
  object btnMatterFind: TSpeedButton
    Left = 48
    Top = 8
    Width = 21
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
    OnClick = btnMatterFindClick
  end
  object Label5: TLabel
    Left = 8
    Top = 77
    Width = 53
    Height = 13
    Caption = 'Commence'
  end
  object Label6: TLabel
    Left = 8
    Top = 125
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object dtpDue: TDateTimePicker
    Left = 72
    Top = 96
    Width = 105
    Height = 21
    Date = 0.538159236108185900
    Time = 0.538159236108185900
    ShowCheckbox = True
    TabOrder = 0
  end
  object mmoDesc: TMemo
    Left = 72
    Top = 147
    Width = 233
    Height = 57
    TabOrder = 1
  end
  object cbAuthor: TComboBox
    Left = 72
    Top = 48
    Width = 65
    Height = 21
    Style = csDropDownList
    Sorted = True
    TabOrder = 2
    OnClick = cbAuthorClick
  end
  object btnCancel: TBitBtn
    Left = 230
    Top = 209
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object btnOK: TBitBtn
    Left = 152
    Top = 209
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnTaskTemp: TBitBtn
    Left = 8
    Top = 179
    Width = 57
    Height = 25
    Hint = 'Scale Costs'
    Caption = '&Task'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555000000000
      555555550EEEEEE055555555000000005555555550BFBFB0555555550BFBFBFB
      055555550FBFBF0F055555550BFBFB0B055555550F0F0F00555555550B0B0B05
      55555555500F0F055CC5555555500B05C55C5555CCCCCCCC555C555C555C0B05
      CCC5555C55C5C05C55555555CC5C5555C5555555555C55555C55}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnTaskTempClick
  end
  object dtpCommence: TDateTimePicker
    Left = 72
    Top = 72
    Width = 105
    Height = 21
    Date = 0.538159236108185900
    Time = 0.538159236108185900
    TabOrder = 6
  end
  object cbStatus: TComboBox
    Left = 72
    Top = 122
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    OnClick = cbAuthorClick
    Items.Strings = (
      'Not Started'
      'Completed'
      'Waiting'
      'In Progress'
      'Deferred')
  end
  object qryTaskInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO TASK '
      
        '    (CODE, FILEID, DESCR, AUTHOR, COMMENCE, DUE, NMATTER, STATUS' +
        ') '
      '  VALUES'
      
        '    (:CODE, :FILEID, :DESCR, :AUTHOR, :COMMENCE, :DUE, :NMATTER,' +
        ' :STATUS)')
    CachedUpdates = True
    Left = 204
    Top = 50
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
      end
      item
        DataType = ftUnknown
        Name = 'COMMENCE'
      end
      item
        DataType = ftUnknown
        Name = 'DUE'
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
      end>
  end
  object qryTask: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT TASK.*, TASK.ROWID '
      'FROM TASK '
      'WHERE TASK.NTASK = :NTASK')
    CachedUpdates = True
    Left = 265
    Top = 50
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NTASK'
      end>
  end
end
