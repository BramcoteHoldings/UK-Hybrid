object frmCopyTemplate: TfrmCopyTemplate
  Left = 668
  Top = 367
  BorderStyle = bsDialog
  Caption = 'Copy Workflow Template'
  ClientHeight = 116
  ClientWidth = 370
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 4
    Width = 303
    Height = 27
    AutoSize = False
    Caption = 
      'This utility will copy an existing Workflow Template to a new em' +
      'pty Workflow Template.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 7
    Top = 39
    Width = 114
    Height = 13
    Caption = 'Target Template Name:'
  end
  object cmbWorkflowType: TcxLookupComboBox
    Left = 125
    Top = 36
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        FieldName = 'DESCR'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsWorkflowType
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 229
  end
  object BitBtn1: TBitBtn
    Left = 196
    Top = 85
    Width = 70
    Height = 24
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object BitBtn2: TBitBtn
    Left = 73
    Top = 85
    Width = 70
    Height = 24
    Caption = 'Copy'
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object chkCopyDocuments: TCheckBox
    Left = 7
    Top = 64
    Width = 98
    Height = 16
    Caption = 'Copy Documents'
    TabOrder = 3
  end
  object qryMaxCode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT MAX(LINEID) FROM WORKFLOWTASKTEMPLATES')
    Left = 366
    Top = 70
  end
  object qryCopyTemplateToTemp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'INSERT INTO WORKFLOWTASKTEMPLATES_TEMP (CRITICAL_DATE,CRITICAL_A' +
        'LERT,LINEID,SEQNO,'
      
        '  PARENTLINEID,TASKDESCRIPTION,TASKNOTE,STARTWHEN,DAYSFROM,START' +
        'WHENRELATED,COMPLETEDAYS,'
      
        '  COMPLETEWHEN,COMPLETEWHENRELATED,SKIPWHEN,SKIPWHENRELATED,ASSI' +
        'GNTO,EMAILSTATUSCHANGE,'
      
        '  WORKFLOWTYPECODE,LINKDATETO,LINKDATETORELATED,LINKDATEDAYSFROM' +
        ',SCALECOSTCODE,SHOWFEE,'
      
        '  EMAILOVERDUE,WATCHER,EMAILOVERDUENAME,WATCHERNAME,WATCHFOR,ORI' +
        'G_LINEID,ORIG_PARENTLINEID,'
      '  SAMEDAY_DUE )'
      'SELECT'
      '  WTT.CRITICAL_DATE,'
      '  WTT.CRITICAL_ALERT,'
      '  WTT.LINEID,'
      '  WTT.SEQNO,'
      '  WTT.PARENTLINEID,'
      '  WTT.TASKDESCRIPTION,'
      '  WTT.TASKNOTE,'
      '  WTT.STARTWHEN,'
      '  WTT.DAYSFROM,'
      '  WTT.STARTWHENRELATED,'
      '  WTT.COMPLETEDAYS,'
      '  WTT.COMPLETEWHEN,'
      '  WTT.COMPLETEWHENRELATED,'
      '  WTT.SKIPWHEN,'
      '  WTT.SKIPWHENRELATED,'
      '  WTT.ASSIGNTO,'
      '  WTT.EMAILSTATUSCHANGE,'
      '  :new_WORKFLOWTYPECODE ,'
      '  WTT.LINKDATETO,'
      '  WTT.LINKDATETORELATED,'
      '  WTT.LINKDATEDAYSFROM,'
      '  WTT.SCALECOSTCODE,'
      '  WTT.SHOWFEE,'
      '  WTT.EMAILOVERDUE,'
      '  WTT.WATCHER,'
      '  WTT.EMAILOVERDUENAME,'
      '  WTT.WATCHERNAME,'
      '  WTT.WATCHFOR,'
      '  WTT.LINEID,'
      '  WTT.PARENTLINEID,'
      '  WTT.SAMEDAY_DUE '
      'FROM'
      '  WORKFLOWTASKTEMPLATES WTT'
      'WHERE'
      ' WORKFLOWTYPECODE = :WORKFLOWTYPECODE ')
    Left = 236
    Top = 118
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'new_WORKFLOWTYPECODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WORKFLOWTYPECODE'
        Value = nil
      end>
  end
  object qryMinCode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT MIN(LINEID) FROM WORKFLOWTASKTEMPLATES'
      'WHERE'
      'WORKFLOWTYPECODE = :WORKFLOWTYPECODE')
    Left = 333
    Top = 123
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'WORKFLOWTYPECODE'
        Value = nil
      end>
  end
  object qryUpdateValuesInTemp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'UPDATE WORKFLOWTASKTEMPLATES_TEMP SET LINEID = LINEID + :LINEID_' +
        'DIFF,'
      
        'PARENTLINEID = DECODE(PARENTLINEID, 0, 0, PARENTLINEID + :LINEID' +
        '_DIFF)')
    Left = 444
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LINEID_DIFF'
        Value = nil
      end>
  end
  object qryCopyFromTemp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'INSERT INTO WORKFLOWTASKTEMPLATES (CRITICAL_DATE,CRITICAL_ALERT,' +
        'LINEID,SEQNO,'
      
        '  PARENTLINEID,TASKDESCRIPTION,TASKNOTE,STARTWHEN,DAYSFROM,START' +
        'WHENRELATED,COMPLETEDAYS,'
      
        '  COMPLETEWHEN,COMPLETEWHENRELATED,SKIPWHEN,SKIPWHENRELATED,ASSI' +
        'GNTO,EMAILSTATUSCHANGE,'
      
        '  WORKFLOWTYPECODE,LINKDATETO,LINKDATETORELATED,LINKDATEDAYSFROM' +
        ',SCALECOSTCODE,SHOWFEE,'
      
        '  EMAILOVERDUE,WATCHER,EMAILOVERDUENAME,WATCHERNAME,WATCHFOR, SA' +
        'MEDAY_DUE)'
      'SELECT'
      '  WTT.CRITICAL_DATE,'
      '  WTT.CRITICAL_ALERT,'
      '  WTT.LINEID,'
      '  WTT.SEQNO,'
      '  WTT.PARENTLINEID,'
      '  WTT.TASKDESCRIPTION,'
      '  WTT.TASKNOTE,'
      '  WTT.STARTWHEN,'
      '  WTT.DAYSFROM,'
      '  WTT.STARTWHENRELATED,'
      '  WTT.COMPLETEDAYS,'
      '  WTT.COMPLETEWHEN,'
      '  WTT.COMPLETEWHENRELATED,'
      '  WTT.SKIPWHEN,'
      '  WTT.SKIPWHENRELATED,'
      '  WTT.ASSIGNTO,'
      '  WTT.EMAILSTATUSCHANGE,'
      '  WTT.WORKFLOWTYPECODE,'
      '  WTT.LINKDATETO,'
      '  WTT.LINKDATETORELATED,'
      '  WTT.LINKDATEDAYSFROM,'
      '  WTT.SCALECOSTCODE,'
      '  WTT.SHOWFEE,'
      '  WTT.EMAILOVERDUE,'
      '  WTT.WATCHER,'
      '  WTT.EMAILOVERDUENAME,'
      '  WTT.WATCHERNAME,'
      '  WTT.WATCHFOR,'
      '  WTT.SAMEDAY_DUE '
      'FROM'
      '  WORKFLOWTASKTEMPLATES_TEMP WTT')
    Left = 111
    Top = 123
  end
  object procResetWkflowSEQ: TUniStoredProc
    StoredProcName = 'CHANGEWKFLOWTASKSEQ'
    Connection = dmAxiom.uniInsight
    Options.AutoPrepare = True
    Left = 313
    Top = 53
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NEWSEQ'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'CHANGEWKFLOWTASKSEQ'
  end
  object tbWorkflowType: TUniTable
    TableName = 'WORKFLOWTYPE'
    OrderFields = 'DESCR'
    Connection = dmAxiom.uniInsight
    KeyFields = 'CODE'
    Left = 126
    Top = 227
    object tbWorkflowTypeCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 11
    end
    object tbWorkflowTypeDESCR: TStringField
      DisplayLabel = 'Workflow Type'
      FieldName = 'DESCR'
      Required = True
      Size = 60
    end
  end
  object dsWorkflowType: TDataSource
    DataSet = qryWorkflowType
    Left = 126
    Top = 278
  end
  object qryWorkflowType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from workflowtype wf'
      
        'where not exists (select 1 from workflowtasktemplates wft where ' +
        'wf.CODE = wft.WORKFLOWTYPECODE)')
    Left = 224
    Top = 229
  end
  object qryUpdateRelatedStart: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE WORKFLOWTASKTEMPLATES_TEMP SET STARTWHENRELATED = :LINEID'
      'WHERE STARTWHENRELATED = :olineid'
      ' ')
    Left = 468
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LINEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'olineid'
        Value = nil
      end>
  end
  object qryUpdateRelatedComplete: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'UPDATE WORKFLOWTASKTEMPLATES_TEMP SET COMPLETEWHENRELATED = :LIN' +
        'EID'
      'WHERE  COMPLETEWHENRELATED = :olineid')
    Left = 475
    Top = 291
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LINEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'olineid'
        Value = nil
      end>
  end
  object qryUpdateRelatedSkip: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE WORKFLOWTASKTEMPLATES_TEMP SET SKIPWHENRELATED = :LINEID'
      'WHERE SKIPWHENRELATED = :olineid')
    Left = 474
    Top = 346
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LINEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'olineid'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 227
    Top = 342
  end
  object qryUpdateRelatedLink: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'UPDATE WORKFLOWTASKTEMPLATES_TEMP SET LINKDATETORELATED = :LINEI' +
        'D'
      'WHERE LINKDATETORELATED = :olineid')
    Left = 471
    Top = 403
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LINEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'olineid'
        Value = nil
      end>
  end
  object qryTmp1: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 255
    Top = 411
  end
  object qryTaskDatafields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO WORKFLOW_DATAFORMFIELD ('
      '   DATAFORM, FIELDNAME, SEQ, '
      '   WORKFLOWTYPECODE, WKFLOW_LINEID, CAPTION) '
      'VALUES (:DATAFORM, :FIELDNAME, :SEQ, '
      '   :WORKFLOWTYPECODE, :WKFLOW_LINEID, :CAPTION )')
    Left = 464
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATAFORM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FIELDNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WORKFLOWTYPECODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WKFLOW_LINEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CAPTION'
        Value = nil
      end>
  end
end
