object frmMarketEventExportFile: TfrmMarketEventExportFile
  Left = 710
  Top = 210
  Caption = 'Export events to file'
  ClientHeight = 387
  ClientWidth = 423
  Color = clBtnFace
  Constraints.MinHeight = 416
  Constraints.MinWidth = 439
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 9
    Top = 357
    Width = 70
    Height = 13
    Caption = 'File Delimiter:'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 407
    Height = 333
    Caption = 'Selection Criteria'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Select By:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEvent: TLabel
      Left = 40
      Top = 72
      Width = 31
      Height = 13
      Caption = 'Event:'
    end
    object lblEventType: TLabel
      Left = 35
      Top = 125
      Width = 56
      Height = 13
      Caption = 'Event Type:'
    end
    object lblCoordinator: TLabel
      Left = 35
      Top = 150
      Width = 70
      Height = 13
      Caption = 'Co-ordinator:'
    end
    object lblDateFrom: TLabel
      Left = 35
      Top = 175
      Width = 56
      Height = 13
      Caption = 'Date From:'
    end
    object lblDateTo: TLabel
      Left = 35
      Top = 200
      Width = 41
      Height = 13
      Caption = 'Date To:'
    end
    object lblParticipant: TLabel
      Left = 35
      Top = 225
      Width = 58
      Height = 13
      Caption = 'Participant:'
    end
    object lblStatus: TLabel
      Left = 35
      Top = 250
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object cmbEvent: TcxLookupComboBox
      Left = 112
      Top = 67
      Enabled = False
      Properties.KeyFieldNames = 'EVENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Event'
          FieldName = 'EVENT'
        end
        item
          Caption = 'ID'
          FieldName = 'EVENT_ID'
        end>
      Properties.ListSource = dsEvent
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 191
    end
    object radioProperties: TRadioButton
      Left = 15
      Top = 100
      Width = 106
      Height = 17
      Caption = 'Event Properties:'
      TabOrder = 1
      OnClick = radioPropertiesClick
    end
    object cmbEventType: TcxLookupComboBox
      Left = 112
      Top = 120
      Enabled = False
      Properties.KeyFieldNames = 'EVENT_TYPE_ID'
      Properties.ListColumns = <
        item
          Caption = 'Event Type'
          FieldName = 'EVENT_TYPE_DESCR'
        end
        item
          Caption = 'ID'
          FieldName = 'EVENT_TYPE_ID'
        end>
      Properties.ListSource = dsEventType
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 191
    end
    object cmbCoordinator: TcxLookupComboBox
      Left = 112
      Top = 145
      Enabled = False
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = 'Name'
          Width = 180
          FieldName = 'NAME'
        end
        item
          Caption = 'Code'
          Width = 50
          FieldName = 'CODE'
        end>
      Properties.ListSource = dsCoordinator
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 191
    end
    object cbParticipant: TcxButtonEdit
      Left = 112
      Top = 221
      Enabled = False
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
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 191
    end
    object deFrom: TDateTimePicker
      Left = 112
      Top = 171
      Width = 116
      Height = 21
      Date = 41485.497974687500000000
      Time = 41485.497974687500000000
      Enabled = False
      TabOrder = 5
    end
    object deTo: TDateTimePicker
      Left = 112
      Top = 196
      Width = 116
      Height = 21
      Date = 41485.498163472220000000
      Time = 41485.498163472220000000
      Enabled = False
      TabOrder = 6
    end
    object btnClear: TBitBtn
      Left = 327
      Top = 305
      Width = 75
      Height = 25
      Caption = 'Clear'
      Glyph.Data = {
        76080000424DB608000000000000B60000002800000020000000100000000100
        2000000000000008000000000000000000001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00800080000000
        0000000000000000000000000000800080000000000000000000000000008000
        8000800080008000800080008000800080008000800080008000800080007F7F
        7F007F7F7F007F7F7F007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F008000
        80008000800080008000FFFFFF00800080008000800080008000000000000000
        0000000000000000000000000000000000000000000000000000800080008000
        80008000800000000000800080008000800080008000800080007F7F7F007F7F
        7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00800080008000
        8000FFFFFF007F7F7F0080008000800080008000800080008000000000000000
        0000800080008000800000000000000000000000000080008000800080000000
        00008000800080008000800080008000800080008000800080007F7F7F007F7F
        7F00FFFFFF00800080007F7F7F007F7F7F007F7F7F00FFFFFF00800080007F7F
        7F00800080008000800080008000800080008000800080008000000000000000
        0000800080008000800080008000000000000000000080008000800080008000
        80008000800080008000800080008000800080008000800080007F7F7F007F7F
        7F00FFFFFF00FFFFFF00800080007F7F7F007F7F7F00FFFFFF0080008000FFFF
        FF00FFFFFF008000800080008000800080008000800080008000800080000000
        0000000000008000800080008000000000000000000080008000000000000000
        0000800080008000800080008000800080008000800080008000800080007F7F
        7F007F7F7F00FFFFFF00FFFFFF007F7F7F007F7F7F00800080007F7F7F007F7F
        7F00FFFFFF00FFFFFF0080008000800080008000800080008000800080008000
        8000000000000000000080008000000000008000800000000000000080000000
        8000000000008000800080008000800080008000800080008000800080008000
        80007F7F7F007F7F7F00FFFFFF007F7F7F00800080007F7F7F007F7F7F007F7F
        7F007F7F7F00FFFFFF00FFFFFF00800080008000800080008000800080008000
        800080008000800080000000000080008000000000000000FF000000FF000000
        FF00000080000000000080008000800080008000800080008000800080008000
        8000FFFFFF00FFFFFF007F7F7F00800080007F7F7F007F7F7F007F7F7F007F7F
        7F007F7F7F007F7F7F00FFFFFF00FFFFFF008000800080008000800080000000
        000000000000800080008000800080008000000000000000FF000000FF000000
        FF000000FF000000800000000000800080008000800080008000800080007F7F
        7F007F7F7F00FFFFFF0080008000FFFFFF007F7F7F007F7F7F007F7F7F007F7F
        7F007F7F7F007F7F7F007F7F7F0080008000FFFFFF0080008000800080000000
        00000000000080008000000000008000800080008000000000000000FF000000
        FF000000FF000000000000808000000000008000800080008000800080007F7F
        7F007F7F7F00FFFFFF007F7F7F0080008000FFFFFF007F7F7F007F7F7F007F7F
        7F007F7F7F007F7F7F00800080007F7F7F0080008000FFFFFF00800080008000
        8000000000000000000080008000000000008000800080008000000000000000
        FF000000000000FFFF0000000000008080000000000080008000800080008000
        80007F7F7F007F7F7F00800080007F7F7F0080008000800080007F7F7F007F7F
        7F007F7F7F00800080007F7F7F00800080007F7F7F0080008000800080008000
        8000800080008000800080008000800080008000800080008000800080000000
        000000FFFF000000000000FFFF00000000000080800000000000800080008000
        8000800080008000800080008000FFFFFF008000800080008000800080007F7F
        7F00800080007F7F7F00800080007F7F7F00800080007F7F7F00800080008000
        8000800080008000800000000000800080008000800080008000800080008000
        80000000000000FFFF000000000000FFFF000080800000808000800080008000
        800080008000800080007F7F7F00800080008000800080008000800080008000
        80007F7F7F00800080007F7F7F00800080008000800080008000800080008000
        8000800080008000800080008000800080008000800080008000800080008000
        8000800080000000000000FFFF0000FFFF0000FFFF0000808000800080008000
        80008000800080008000FFFFFF00800080008000800080008000800080008000
        8000800080007F7F7F0080008000FFFFFF008000800080008000800080008000
        8000800080000000000080008000800080008000800080008000800080008000
        800080008000800080000000000000FFFF0000FFFF0000FFFF00800080008000
        8000800080007F7F7F0080008000800080008000800080008000800080008000
        800080008000800080007F7F7F0080008000FFFFFF0080008000800080008000
        8000800080008000800080008000800080008000800080008000800080008000
        80008000800080008000800080000000000000FFFF0000FFFF00800080008000
        8000800080008000800080008000800080008000800080008000800080008000
        80008000800080008000800080007F7F7F0080008000FFFFFF00800080008000
        8000800080008000800080008000800080008000800080008000800080008000
        8000800080008000800080008000800080000000000000FFFF00800080008000
        8000800080008000800080008000800080008000800080008000800080008000
        8000800080008000800080008000800080007F7F7F0080008000}
      NumGlyphs = 2
      TabOrder = 7
      OnClick = btnClearClick
    end
    object radioEvent: TRadioButton
      Left = 15
      Top = 43
      Width = 95
      Height = 17
      Caption = 'Specific Event:'
      TabOrder = 8
      OnClick = radioEventClick
    end
    object chkAttended: TCheckBox
      Left = 112
      Top = 252
      Width = 97
      Height = 17
      Caption = 'Attended'
      Enabled = False
      TabOrder = 9
    end
    object chkAccepted: TCheckBox
      Left = 112
      Top = 272
      Width = 97
      Height = 17
      Caption = 'Accepted'
      Enabled = False
      TabOrder = 10
    end
    object chkDeclined: TCheckBox
      Left = 112
      Top = 292
      Width = 97
      Height = 17
      Caption = 'Declined'
      Enabled = False
      TabOrder = 11
    end
    object chkPrinted: TCheckBox
      Left = 112
      Top = 312
      Width = 97
      Height = 17
      Caption = 'Printed'
      Enabled = False
      TabOrder = 12
    end
  end
  object cmbFileDelimiter: TComboBox
    Left = 85
    Top = 353
    Width = 77
    Height = 21
    TabOrder = 1
    Items.Strings = (
      '~'
      '"'
      ';'
      ':'
      '|'
      '^'
      #39
      '<')
  end
  object btnCancel: TBitBtn
    Left = 340
    Top = 349
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnOK: TBitBtn
    Left = 257
    Top = 349
    Width = 75
    Height = 25
    Caption = 'Export'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = btnOKClick
  end
  object qryEvent: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT event_id, event, event_type, coordinator, event_location,'
      '       event_date, event_time, description'
      'FROM Event'
      'ORDER BY event')
    Left = 472
    Top = 16
  end
  object dsEvent: TUniDataSource
    DataSet = qryEvent
    Left = 552
    Top = 16
  end
  object qryEventType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT event_type_id, event_type_descr'
      'FROM Event_Types'
      'ORDER BY event_type_descr')
    Left = 472
    Top = 72
  end
  object dsEventType: TUniDataSource
    DataSet = qryEventType
    Left = 552
    Top = 72
  end
  object qryCoordinator: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name'
      'FROM Employee'
      'ORDER BY name')
    Left = 472
    Top = 136
  end
  object dsCoordinator: TUniDataSource
    DataSet = qryCoordinator
    Left = 552
    Top = 136
  end
  object qryParticipant: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nname, search'
      'FROM PhoneBook'
      'ORDER BY search')
    Left = 472
    Top = 200
  end
  object dsParticipant: TUniDataSource
    DataSet = qryParticipant
    Left = 552
    Top = 200
  end
  object qryExport: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 472
    Top = 264
  end
  object saveDialog: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 6
    Top = 288
  end
end
