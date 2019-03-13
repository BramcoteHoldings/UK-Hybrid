object frmCopyEventParticipants: TfrmCopyEventParticipants
  Left = 0
  Top = 0
  Caption = 'Copy Event Participants'
  ClientHeight = 108
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    377
    108)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 64
    Height = 13
    Caption = 'Select Event:'
  end
  object cmbEvents: TcxLookupComboBox
    Left = 96
    Top = 29
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'EVENT_ID'
    Properties.ListColumns = <
      item
        FieldName = 'EVENT'
      end
      item
        FieldName = 'DESCRIPTION'
      end>
    Properties.ListSource = dmMarketEventDataModule.dstbEvent
    TabOrder = 0
    Width = 217
  end
  object BitBtn1: TBitBtn
    Left = 197
    Top = 68
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Copy'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 293
    Top = 68
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object qryCopyList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'INSERT INTO event_participant (event_part_id, nname, alt_name, n' +
        'otes, search,'
      '          alt_search)'
      
        '   SELECT e.event_part_id, e.nname, e.alt_name, e.notes, e.searc' +
        'h,'
      '          e.alt_search'
      '     FROM event_participant e'
      '    WHERE e.event_id = :oldeventid')
    Left = 72
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'oldeventid'
      end>
  end
end
