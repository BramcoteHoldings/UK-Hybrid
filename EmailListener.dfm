object frmEmailMsgListener: TfrmEmailMsgListener
  Left = 625
  Top = 401
  Caption = 'EMail Messages Listener'
  ClientHeight = 91
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qryCheckEmail: TUniQuery
    SQL.Strings = (
      'select 1 as rec_found'
      'from '
      'doc'
      'where'
      'trim(descr)= trim(:descr)'
      'and'
      
        'To_date(TO_CHAR(d_create, '#39'DD/MM/YYYY HH:MI'#39'),'#39'DD/MM/YYYY HH:MI'#39 +
        ')  = To_date(TO_CHAR(:d_create, '#39'DD/MM/YYYY HH:MI'#39'),'#39'DD/MM/YYYY ' +
        'HH:MI'#39')'
      'and fileid = :fileid')
    Left = 104
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descr'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'd_create'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end>
  end
  object MsgStoreEvents: TRwMAPIMsgStoreEvents
    OnNewMessage = MsgStoreEventsNewMessage
    OnObjectCreated = MsgStoreEventsObjectCreated
    OnObjectMoved = MsgStoreEventsObjectMoved
    Left = 25
    Top = 18
  end
end
