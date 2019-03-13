object dmWorkFlowDataModuleTasks: TdmWorkFlowDataModuleTasks
  OldCreateOrder = False
  Height = 395
  Width = 498
  object qUWFTAdd: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO workflowtasks ('
      '  nmatter,'
      '  templatelineid,'
      '  assignedto,'
      '  workflowtypecode,'
      '  seqno,'
      '  parentlineid,'
      '  taskdescription,'
      '  tasknote,'
      '  startwhen,'
      '  daysfrom,'
      '  startwhenrelated,'
      '  completedays,'
      '  completewhen,'
      '  completewhenrelated,'
      '  linkdateto,'
      '  linkdatetorelated,'
      '  linkdatedaysfrom,'
      '  skipwhen,'
      '  skipwhenrelated,'
      '  assignto,'
      '  emailoverdue,'
      '  watcher,'
      '  watchfor,'
      '  emailoverduename,'
      '  watchername,'
      '  scalecostcode,'
      '  showfee,'
      '  sameday_due,'
      '  critical_date,'
      '  critical_alert'
      ')'
      '(SELECT'
      '  m.nmatter as nmatter,'
      '  t.lineid as templatelineid,'
      '  DECODE (t.assignto,'
      '    '#39'P'#39',m.partner,'
      '    '#39'C'#39',m.controller,'
      '    '#39'O'#39',m.operator,'
      '    '#39'A'#39',m.author'
      '  ) as assignedto,'
      '  workflowtypecode,'
      '  seqno,'
      '  parentlineid,'
      '  taskdescription,'
      '  tasknote,'
      '  startwhen,'
      '  daysfrom,'
      '  startwhenrelated,'
      '  completedays,'
      '  completewhen,'
      '  completewhenrelated,'
      '  linkdateto,'
      '  linkdatetorelated,'
      '  linkdatedaysfrom,'
      '  skipwhen,'
      '  skipwhenrelated,'
      '  assignto,'
      '  emailoverdue,'
      '  watcher,'
      '  watchfor,'
      '  DECODE (t.emailoverdue,'
      '    '#39'P'#39',m.partner,'
      '    '#39'C'#39',m.controller,'
      '    '#39'O'#39',m.operator,'
      '    '#39'A'#39',m.author'
      '  ) as emailoverduename,'
      '  DECODE (t.watcher,'
      '    '#39'P'#39',m.partner,'
      '    '#39'C'#39',m.controller,'
      '    '#39'O'#39',m.operator,'
      '    '#39'A'#39',m.author'
      '  ) as watchername,'
      '  scalecostcode,'
      '  showfee,'
      '  sameday_due,'
      '  critical_date,'
      '  critical_alert'
      'FROM workflowtasktemplates t, matter m,'
      
        '  (select distinct nmatter from workflowtasks where workflowtype' +
        'code = :workflowtypecode) w'
      'WHERE t.workflowtypecode = m.workflow'
      'AND m.nmatter = w.nmatter'
      'AND t.lineid = :templatelineid)'
      '')
    Left = 49
    Top = 303
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'templatelineid'
        Value = nil
      end>
  end
  object qUWFTSequence: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE workflowtasks SET seqno = :seqno WHERE'
      '  templatelineid = :templatelineid'
      '')
    Left = 137
    Top = 303
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'seqno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'templatelineid'
        Value = nil
      end>
  end
  object qUWFTDelete: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM workflowtasks WHERE'
      '  templatelineid = :templatelineid'
      '')
    Left = 229
    Top = 303
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'templatelineid'
        Value = nil
      end>
  end
  object qUWFTUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE workflowtasks SET'
      '  taskdescription     = :taskdescription,'
      '  tasknote            = :tasknote,'
      '  daysfrom            = :daysfrom,'
      '  startwhen           = :startwhen,'
      '  startwhenrelated    = :startwhenrelated,'
      '  completedays        = :completedays,'
      '  completewhen        = :completewhen,'
      '  completewhenrelated = :completewhenrelated,'
      '  skipwhen            = :skipwhen,'
      '  skipwhenrelated     = :skipwhenrelated,'
      '  assignto            = :assignto,'
      '  emailoverdue        = :emailoverdue,'
      '  watcher             = :watcher,'
      '  watchfor            = :watchfor,'
      '  linkdateto          = :linkdateto,'
      '  linkdatetorelated   = :linkdatetorelated,'
      '  linkdatedaysfrom    = :linkdatedaysfrom,'
      '  scalecostcode       = :scalecostcode,'
      '  showfee             = :showfee,'
      '  sameday_due         = :sameday_due,'
      '  critical_date       = :critical_date,'
      '  critical_alert      = :critical_alert'
      'WHERE templatelineid = :templatelineid')
    Left = 327
    Top = 303
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'taskdescription'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tasknote'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'daysfrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'startwhen'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'startwhenrelated'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'completedays'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'completewhen'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'completewhenrelated'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'skipwhen'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'skipwhenrelated'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'assignto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emailoverdue'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'watcher'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'watchfor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'linkdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'linkdatetorelated'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'linkdatedaysfrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'scalecostcode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'showfee'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sameday_due'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'critical_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'critical_alert'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'templatelineid'
        Value = nil
      end>
  end
  object qTaskTemplate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   w.*, dn.VALUE,'
      '         (SELECT COUNT (*)'
      '            FROM workflowtasktemplates t'
      '           WHERE t.workflowtypecode = :workflowtypecode'
      '             AND t.parentlineid = w.lineid) AS childcount,'
      '         (SELECT COUNT (*)'
      '            FROM workflowtaskdoclink l'
      '           WHERE l.tasklineid = w.lineid) AS doccount,'
      '         (SELECT COUNT (*)'
      '            FROM workflow_dataformfield d'
      '           WHERE d.wkflow_lineid = w.lineid) AS dataformcount'
      '    FROM workflowtasktemplates w, display_name dn'
      '   WHERE w.workflowtypecode = :workflowtypecode'
      '     AND w.parentlineid = :parentlineid'
      '     AND w.assignto = dn.code(+)'
      '     AND dn.acct = :entity'
      'ORDER BY w.seqno'
      ''
      ''
      '/*'
      'SELECT w.*,dn.value, ('
      '  SELECT count(*)'
      '  FROM workflowtasktemplates t'
      '  WHERE t.workflowtypecode = :workflowtypecode'
      '  AND t.parentlineid = w.lineid) as childcount,'
      '  (SELECT count(*)'
      '  FROM workflowtaskdoclink l'
      '  WHERE l.tasklineid = w.lineid) as doccount'
      'FROM workflowtasktemplates w, display_name dn'
      'WHERE w.workflowtypecode = :workflowtypecode'
      'AND w.parentlineid = :parentlineid'
      'and w.assignto = dn.code(+)'
      'ORDER BY w.seqno'
      '*/')
    Left = 137
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'parentlineid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
    object qTaskTemplateLINEID: TFloatField
      FieldName = 'LINEID'
      Required = True
    end
    object qTaskTemplateWORKFLOWTYPECODE: TStringField
      DisplayLabel = 'Workflow Type Code'
      FieldName = 'WORKFLOWTYPECODE'
      Required = True
      Size = 11
    end
    object qTaskTemplateSEQNO: TFloatField
      DisplayLabel = 'Seq Number'
      FieldName = 'SEQNO'
      Required = True
    end
    object qTaskTemplatePARENTLINEID: TFloatField
      FieldName = 'PARENTLINEID'
    end
    object qTaskTemplateTASKDESCRIPTION: TStringField
      DisplayLabel = 'Task'
      FieldName = 'TASKDESCRIPTION'
      Required = True
      Size = 200
    end
    object qTaskTemplateTASKNOTE: TStringField
      DisplayLabel = 'Note'
      FieldName = 'TASKNOTE'
      Size = 200
    end
    object qTaskTemplateCHILDCOUNT: TFloatField
      FieldName = 'CHILDCOUNT'
    end
    object qTaskTemplateSTARTWHEN: TStringField
      DisplayWidth = 20
      FieldName = 'STARTWHEN'
      Required = True
      OnGetText = qTaskTemplateSTARTWHENGetText
      OnSetText = qTaskTemplateSTARTWHENSetText
      FixedChar = True
      Size = 3
    end
    object qTaskTemplateDAYSFROM: TFloatField
      FieldName = 'DAYSFROM'
    end
    object qTaskTemplateCOMPLETEDAYS: TFloatField
      FieldName = 'COMPLETEDAYS'
    end
    object qTaskTemplateDOCCOUNT: TFloatField
      FieldName = 'DOCCOUNT'
    end
    object qTaskTemplateASSIGNTO: TStringField
      FieldName = 'ASSIGNTO'
      FixedChar = True
      Size = 1
    end
    object qTaskTemplateSTARTWHENRELATED: TFloatField
      FieldName = 'STARTWHENRELATED'
    end
    object qTaskTemplateCOMPLETEWHEN: TStringField
      FieldName = 'COMPLETEWHEN'
      OnGetText = qTaskTemplateCOMPLETEWHENGetText
      OnSetText = qTaskTemplateCOMPLETEWHENSetText
      FixedChar = True
      Size = 3
    end
    object qTaskTemplateCOMPLETEWHENRELATED: TFloatField
      FieldName = 'COMPLETEWHENRELATED'
    end
    object qTaskTemplateSKIPWHEN: TStringField
      FieldName = 'SKIPWHEN'
      OnGetText = qTaskTemplateSKIPWHENGetText
      OnSetText = qTaskTemplateSKIPWHENSetText
      FixedChar = True
      Size = 3
    end
    object qTaskTemplateSKIPWHENRELATED: TFloatField
      FieldName = 'SKIPWHENRELATED'
    end
    object qTaskTemplateLINKDATETO: TStringField
      FieldName = 'LINKDATETO'
      Required = True
      OnGetText = qTaskTemplateLINKDATETOGetText
      OnSetText = qTaskTemplateLINKDATETOSetText
      Size = 3
    end
    object qTaskTemplateLINKDATETORELATED: TFloatField
      FieldName = 'LINKDATETORELATED'
    end
    object qTaskTemplateLINKDATEDAYSFROM: TFloatField
      FieldName = 'LINKDATEDAYSFROM'
    end
    object qTaskTemplateSCALECOSTCODE: TStringField
      FieldName = 'SCALECOSTCODE'
    end
    object qTaskTemplateSHOWFEE: TStringField
      FieldName = 'SHOWFEE'
      Required = True
      Size = 1
    end
    object qTaskTemplateEMAILOVERDUE: TStringField
      FieldName = 'EMAILOVERDUE'
      FixedChar = True
      Size = 1
    end
    object qTaskTemplateWATCHER: TStringField
      FieldName = 'WATCHER'
      FixedChar = True
      Size = 1
    end
    object qTaskTemplateWATCHFOR: TStringField
      FieldName = 'WATCHFOR'
      Required = True
      FixedChar = True
      Size = 7
    end
    object qTaskTemplateVALUE: TStringField
      FieldName = 'VALUE'
      Size = 60
    end
    object qTaskTemplateCRITICAL_DATE: TStringField
      FieldName = 'CRITICAL_DATE'
      Size = 1
    end
    object qTaskTemplateCRITICAL_ALERT: TStringField
      FieldName = 'CRITICAL_ALERT'
      Size = 1
    end
    object qTaskTemplateSAMEDAY_DUE: TStringField
      FieldName = 'SAMEDAY_DUE'
      Size = 1
    end
    object qTaskTemplateREPORTABLE: TStringField
      FieldName = 'REPORTABLE'
      Size = 1
    end
    object qTaskTemplateDATAFORMCOUNT: TFloatField
      FieldName = 'DATAFORMCOUNT'
    end
  end
  object qTaskChildCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT count(*) as childcount'
      'FROM workflowtasktemplates t '
      'WHERE t.workflowtypecode = :workflowtypecode '
      'AND t.parentlineid = :parentlineid')
    Left = 139
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'parentlineid'
        Value = nil
      end>
    object qTaskChildCountCHILDCOUNT: TFloatField
      FieldName = 'CHILDCOUNT'
    end
  end
  object qDeleteTask: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM workflowtasktemplates '
      'WHERE lineid = :lineid'
      '')
    Left = 233
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lineid'
        Value = nil
      end>
  end
  object qGetNextSeqNo: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NVL(MAX(seqno) + 1,1) AS nextseqno'
      'FROM workflowtasktemplates w'
      'WHERE w.workflowtypecode = :workflowtypecode'
      'AND w.parentlineid = :parentlineid')
    Left = 233
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'parentlineid'
        Value = nil
      end>
    object qGetNextSeqNoNEXTSEQNO: TFloatField
      FieldName = 'NEXTSEQNO'
    end
  end
  object qTaskDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  docid,          '
      '  workflowtypecode, '
      
        '  DECODE(doctype,'#39'P'#39','#39'Party'#39','#39'O'#39','#39'Other'#39', '#39'A'#39', '#39'Admin'#39') as docty' +
        'pe,'
      '  partytype,      '
      '  documentname,   '
      '  documentpath,'
      '  templatepath,'
      '  datafilepath, '
      '  groupid,'
      '  referredoptional'
      'FROM '
      '  workflowdoctemplates'
      'where '
      '   workflowtypecode is not null'
      '')
    Left = 49
    Top = 184
    object qTaskDocsDOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
    object qTaskDocsWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      Required = True
      Size = 11
    end
    object qTaskDocsDOCUMENTNAME: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 50
      FieldName = 'DOCUMENTNAME'
      Size = 100
    end
    object qTaskDocsDOCUMENTPATH: TStringField
      DisplayLabel = 'File Name'
      FieldName = 'DOCUMENTPATH'
      Size = 2000
    end
    object qTaskDocsPARTYTYPE: TStringField
      DisplayLabel = 'Party Type'
      FieldName = 'PARTYTYPE'
      Size = 5
    end
    object qTaskDocsDOCTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'DOCTYPE'
      Size = 5
    end
    object qTaskDocsTEMPLATEPATH: TStringField
      FieldName = 'TEMPLATEPATH'
      Size = 2000
    end
    object qTaskDocsDATAFILEPATH: TStringField
      FieldName = 'DATAFILEPATH'
      Size = 2000
    end
    object qTaskDocsGROUPID: TFloatField
      FieldName = 'GROUPID'
    end
    object qTaskDocsREFERREDOPTIONAL: TStringField
      FieldName = 'REFERREDOPTIONAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsTaskDocs: TDataSource
    DataSet = qTaskDocs
    Left = 49
    Top = 235
  end
  object tbTaskDocLink: TUniTable
    TableName = 'WORKFLOWTASKDOCLINK'
    Connection = dmAxiom.uniInsight
    CachedUpdates = True
    Filtered = True
    Left = 137
    Top = 185
    object tbTaskDocLinkDOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
    object tbTaskDocLinkTASKLINEID: TFloatField
      FieldName = 'TASKLINEID'
      Required = True
    end
    object tbTaskDocLinkROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object dsTaskDocLink: TDataSource
    DataSet = tbTaskDocLink
    Left = 137
    Top = 235
  end
  object tbTaskTemplates: TUniTable
    TableName = 'WORKFLOWTASKTEMPLATES'
    Connection = dmAxiom.uniInsight
    KeyFields = 'LINEID'
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    SpecificOptions.Strings = (
      'Oracle.KeySequence=AXIOM.SEQ_WORKFLOWTASKTEMPLATES'
      'Oracle.FetchAll=True')
    Left = 243
    Top = 177
    object tbTaskTemplatesLINEID: TFloatField
      FieldName = 'LINEID'
    end
    object tbTaskTemplatesWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      Required = True
      Size = 11
    end
    object tbTaskTemplatesSEQNO: TFloatField
      FieldName = 'SEQNO'
      Required = True
    end
    object tbTaskTemplatesPARENTLINEID: TFloatField
      FieldName = 'PARENTLINEID'
    end
    object tbTaskTemplatesTASKDESCRIPTION: TStringField
      FieldName = 'TASKDESCRIPTION'
      Required = True
      Size = 200
    end
    object tbTaskTemplatesTASKNOTE: TStringField
      FieldName = 'TASKNOTE'
      Size = 200
    end
    object tbTaskTemplatesSTARTWHEN: TStringField
      FieldName = 'STARTWHEN'
      Required = True
      OnGetText = qTaskTemplateSTARTWHENGetText
      OnSetText = qTaskTemplateSTARTWHENSetText
      FixedChar = True
      Size = 3
    end
    object tbTaskTemplatesDAYSFROM: TFloatField
      FieldName = 'DAYSFROM'
    end
    object tbTaskTemplatesCOMPLETEDAYS: TFloatField
      FieldName = 'COMPLETEDAYS'
    end
    object tbTaskTemplatesASSIGNTO: TStringField
      FieldName = 'ASSIGNTO'
      FixedChar = True
      Size = 1
    end
    object tbTaskTemplatesSTARTWHENRELATED: TFloatField
      FieldName = 'STARTWHENRELATED'
    end
    object tbTaskTemplatesCOMPLETEWHEN: TStringField
      FieldName = 'COMPLETEWHEN'
      OnGetText = qTaskTemplateCOMPLETEWHENGetText
      OnSetText = qTaskTemplateCOMPLETEWHENSetText
      FixedChar = True
      Size = 3
    end
    object tbTaskTemplatesCOMPLETEWHENRELATED: TFloatField
      FieldName = 'COMPLETEWHENRELATED'
    end
    object tbTaskTemplatesSKIPWHEN: TStringField
      FieldName = 'SKIPWHEN'
      OnGetText = qTaskTemplateSKIPWHENGetText
      OnSetText = qTaskTemplateSKIPWHENSetText
      FixedChar = True
      Size = 3
    end
    object tbTaskTemplatesSKIPWHENRELATED: TFloatField
      FieldName = 'SKIPWHENRELATED'
    end
    object tbTaskTemplatesLINKDATETO: TStringField
      FieldName = 'LINKDATETO'
      Required = True
      OnGetText = qTaskTemplateLINKDATETOGetText
      OnSetText = qTaskTemplateLINKDATETOSetText
      Size = 3
    end
    object tbTaskTemplatesLINKDATETORELATED: TFloatField
      FieldName = 'LINKDATETORELATED'
    end
    object tbTaskTemplatesLINKDATEDAYSFROM: TFloatField
      FieldName = 'LINKDATEDAYSFROM'
    end
    object tbTaskTemplatesSCALECOSTCODE: TStringField
      FieldName = 'SCALECOSTCODE'
    end
    object tbTaskTemplatesSHOWFEE: TStringField
      FieldName = 'SHOWFEE'
      Required = True
      Size = 1
    end
    object tbTaskTemplatesEMAILOVERDUE: TStringField
      FieldName = 'EMAILOVERDUE'
      FixedChar = True
      Size = 1
    end
    object tbTaskTemplatesWATCHER: TStringField
      FieldName = 'WATCHER'
      FixedChar = True
      Size = 1
    end
    object tbTaskTemplatesWATCHFOR: TStringField
      FieldName = 'WATCHFOR'
      Required = True
      FixedChar = True
      Size = 7
    end
    object tbTaskTemplatesCRITICAL_DATE: TStringField
      FieldName = 'CRITICAL_DATE'
      Size = 1
    end
    object tbTaskTemplatesCRITICAL_ALERT: TStringField
      FieldName = 'CRITICAL_ALERT'
      Size = 1
    end
    object tbTaskTemplatesSAMEDAY_DUE: TStringField
      FieldName = 'SAMEDAY_DUE'
      Size = 1
    end
    object tbTaskTemplatesREPORTABLE: TStringField
      FieldName = 'REPORTABLE'
      Size = 1
    end
    object tbTaskTemplatesEMAILSTATUSCHANGE: TStringField
      FieldName = 'EMAILSTATUSCHANGE'
      Size = 60
    end
    object tbTaskTemplatesEMAILOVERDUENAME: TStringField
      FieldName = 'EMAILOVERDUENAME'
      Size = 3
    end
    object tbTaskTemplatesWATCHERNAME: TStringField
      FieldName = 'WATCHERNAME'
      Size = 3
    end
    object tbTaskTemplatesASSIGNEDTOTEAM: TStringField
      FieldName = 'ASSIGNEDTOTEAM'
    end
    object tbTaskTemplatesASSIGNEDTOTEAMCHANGEDBY: TStringField
      FieldName = 'ASSIGNEDTOTEAMCHANGEDBY'
      Size = 3
    end
  end
  object dsTaskTemplates: TDataSource
    DataSet = tbTaskTemplates
    Left = 241
    Top = 234
  end
  object qFeeTemplates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code, descr from scalecost')
    Left = 327
    Top = 65
    object qFeeTemplatesCODE: TStringField
      FieldName = 'CODE'
    end
    object qFeeTemplatesDESCR: TStringField
      FieldName = 'DESCR'
      Size = 400
    end
  end
  object dsFeeTemplates: TDataSource
    AutoEdit = False
    DataSet = qFeeTemplates
    Left = 327
    Top = 14
  end
  object vtTaskTemplateReport: TVirtualTable
    Options = []
    Active = True
    FieldDefs = <
      item
        Name = 'FullSequence'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'TaskDescription'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'TaskNote'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'StartsWhen'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'CompleteDays'
        DataType = ftInteger
      end
      item
        Name = 'CompleteWhen'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'SkipWhen'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'DueDateLink'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'DocumentName'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'DocumentRefersTo'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'AssignTo'
        DataType = ftString
        Size = 401
      end
      item
        Name = 'DocumentAddressee'
        DataType = ftString
        Size = 401
      end>
    Left = 49
    Top = 127
    object vtTaskTemplateReportFullSequence: TStringField
      DisplayWidth = 420
      FieldName = 'FullSequence'
      Size = 401
    end
    object vtTaskTemplateReportTaskDescription: TStringField
      FieldName = 'TaskDescription'
      Size = 401
    end
    object vtTaskTemplateReportTaskNote: TStringField
      FieldName = 'TaskNote'
      Size = 401
    end
    object vtTaskTemplateReportStartsWhen: TStringField
      FieldName = 'StartsWhen'
      Size = 401
    end
    object vtTaskTemplateReportCompleteDays: TIntegerField
      FieldName = 'CompleteDays'
    end
    object vtTaskTemplateReportCompleteWhen: TStringField
      FieldName = 'CompleteWhen'
      Size = 401
    end
    object vtTaskTemplateReportSkipWhen: TStringField
      FieldName = 'SkipWhen'
      Size = 401
    end
    object vtTaskTemplateReportDueDateLink: TStringField
      FieldName = 'DueDateLink'
      Size = 401
    end
    object vtTaskTemplateReportDocumentName: TStringField
      FieldName = 'DocumentName'
      Size = 401
    end
    object vtTaskTemplateReportDocumentRefersTo: TStringField
      FieldName = 'DocumentRefersTo'
      Size = 401
    end
    object vtTaskTemplateReportAssignTo: TStringField
      FieldName = 'AssignTo'
      Size = 401
    end
    object vtTaskTemplateReportDocumentAddressee: TStringField
      FieldName = 'DocumentAddressee'
      Size = 401
    end
  end
  object qRptTaskDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select d.* from workflowdoctemplates d, workflowtaskdoclink l'
      'where l.tasklineid = :tasklineid'
      'and d.docid = l.docid')
    Left = 49
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tasklineid'
        Value = nil
      end>
    object qRptTaskDocsDOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
    object qRptTaskDocsDOCTYPE: TStringField
      FieldName = 'DOCTYPE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qRptTaskDocsPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      Size = 25
    end
    object qRptTaskDocsDOCUMENTNAME: TStringField
      FieldName = 'DOCUMENTNAME'
      Size = 200
    end
    object qRptTaskDocsDOCUMENTPATH: TStringField
      FieldName = 'DOCUMENTPATH'
      Size = 2000
    end
    object qRptTaskDocsTEMPLATEPATH: TStringField
      FieldName = 'TEMPLATEPATH'
      Size = 2000
    end
    object qRptTaskDocsDATAFILEPATH: TStringField
      FieldName = 'DATAFILEPATH'
      Size = 2000
    end
    object qRptTaskDocsWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      Size = 11
    end
    object qRptTaskDocsReferred: TStringField
      FieldKind = fkCalculated
      FieldName = 'Referred'
      Size = 100
      Calculated = True
    end
  end
  object qRptTaskDocsRef: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from WORKFLOWDTOTHERPARTIES where docid = :docid'
      'order by listorder')
    OnCalcFields = qRptTaskDocsRefCalcFields
    Left = 49
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
    object qRptTaskDocsRefID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object qRptTaskDocsRefDOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
    object qRptTaskDocsRefPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      Required = True
      Size = 25
    end
    object qRptTaskDocsRefLISTORDER: TFloatField
      FieldName = 'LISTORDER'
      Required = True
    end
  end
  object qCopyDocTemplates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'insert into workflowtaskdoclink (docid, tasklineid)'
      'select docid, :newlineid'
      'from workflowtaskdoclink '
      'where tasklineid = :lineid')
    Left = 383
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'newlineid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lineid'
        Value = nil
      end>
  end
  object qCopyDataform: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO workflow_dataformfield'
      
        '            (dataform, fieldname, seq, workflowtypecode, wkflow_' +
        'lineid,'
      '             caption)'
      
        '   SELECT dataform, fieldname, seq, workflowtypecode, :newlineid' +
        ', caption'
      '     FROM workflow_dataformfield'
      '    WHERE wkflow_lineid = :lineid')
    Left = 374
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'newlineid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lineid'
        Value = nil
      end>
  end
end
