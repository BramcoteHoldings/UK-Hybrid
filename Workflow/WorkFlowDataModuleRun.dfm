object dmWorkFlowDataModuleRun: TdmWorkFlowDataModuleRun
  OldCreateOrder = False
  Height = 402
  Width = 522
  object dsWorkflowTaskNotes: TDataSource
    DataSet = qWorkflowTaskNotes
    Left = 312
    Top = 157
  end
  object qCheckWorkflowTasks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT distinct w.workflowtypecode, m.workflow, f1.DESCR as work' +
        'flowdescr, f2.descr as matterdescr '
      
        'FROM workflowtasks w, matter m, workflowtype f1, workflowtype f2' +
        ' '
      'WHERE m.nmatter = :nmatter'
      'AND w.nmatter = m.nmatter'
      'AND f1.code = w.workflowtypecode'
      'AND f2.code = m.workflow'
      '')
    Left = 299
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qCheckWorkflowTasksWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      Required = True
      Size = 11
    end
    object qCheckWorkflowTasksWORKFLOW: TStringField
      FieldName = 'WORKFLOW'
      Size = 11
    end
    object qCheckWorkflowTasksWORKFLOWDESCR: TStringField
      FieldName = 'WORKFLOWDESCR'
      Required = True
      Size = 60
    end
    object qCheckWorkflowTasksMATTERDESCR: TStringField
      FieldName = 'MATTERDESCR'
      Required = True
      Size = 60
    end
  end
  object qCreateCustomTask: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO workflowtasks ('
      '  nmatter,             templatelineid,   '
      '  workflowtypecode,    seqno,'
      '  parentlineid,        taskdescription,  '
      '  startwhen,           datetocomplete,'
      '  completewhen,        skipwhen,'
      '  assignto,            assignedto,'
      '  completedays,        started,'
      '  startedby,           custom,'
      '  repetition,          repetitionbase,'
      '  linkdateto,'
      '  scalecostcode,       showfee,'
      '  emailoverdue,        emailoverduename,'
      '  watcher,             watchfor,'
      '  watchername,         skipwhenrelated,'
      '  linkdatetorelated,   linkdatedaysfrom,'
      '  completewhenrelated,'
      '  daysfrom,            startwhenrelated,'
      '  critical_alert,      critical_date,'
      '  sameday_due, assignedtoteam'
      ') VALUES ('
      
        '  :nmatter,            NVL(:templatelineid,(SELECT CASE WHEN MAX' +
        '(templatelineid) + 1 < 1000000 THEN 1000000'
      '                        '#9'ELSE MAX(templatelineid) + 1'
      
        '                        END FROM workflowtasks WHERE nmatter = :' +
        'nmatter)),'
      '  :workflowtypecode,   :seqno,'
      '  :parentlineid,       :taskdescription,'
      '  :startwhen,          :datetocomplete,'
      '  :completewhen,       :skipwhen,'
      '  :assignto,           :assignedto,'
      '  :completedays,       :started,'
      '  :startedby,          '#39'Y'#39','
      '  :repetition,         :repetitionbase,'
      '  :linkdateto,'
      '  :scalecostcode,      :showfee,'
      '  :emailoverdue,       :emailoverduename,'
      '  :watcher,            :watchfor,'
      '  :watchername,        :skipwhenrelated,'
      '  :linkdatetorelated,  :linkdatedaysfrom,'
      '  :completewhenrelated,'
      '  :daysfrom,           :startwhenrelated,'
      '  :critical_alert,     :critical_date,'
      '  :sameday_due,        :assignedtoteam'
      ')'
      ''
      ''
      '/*'
      'INSERT INTO workflowtasks ('
      '  nmatter,             templatelineid,   '
      '  workflowtypecode,    seqno,'
      '  parentlineid,        taskdescription,  '
      '  startwhen,           datetocomplete,'
      '  completewhen,        skipwhen,'
      '  assignto,            assignedto,'
      '  completedays,        started,'
      '  startedby,           custom,'
      '  repetition,          repetitionbase,'
      '  linkdateto,'
      '  scalecostcode,       showfee,'
      '  emailoverdue,        emailoverduename,'
      '  watcher,             watchfor,'
      '  watchername'
      ') VALUES ('
      
        '  :nmatter,            NVL(:templatelineid,(SELECT CASE WHEN MAX' +
        '(templatelineid) + 1 < 1000000 THEN 1000000'
      '                        '#9'ELSE MAX(templatelineid) + 1'
      
        '                        END FROM workflowtasks WHERE nmatter = :' +
        'nmatter)),'
      '  :workflowtypecode,   :seqno,'
      '  :parentlineid,       :taskdescription,'
      '  '#39'DEF'#39',               :datetocomplete,'
      '  '#39'DEF'#39',               '#39'DEF'#39','
      '  :assignto,           :assignedto,'
      '  :completedays,       :started,'
      '  :startedby,          '#39'Y'#39','
      '  :repetition,         :repetitionbase,'
      '  '#39'DEF'#39','
      '  :scalecostcode,      :showfee,'
      '  :emailoverdue,       :emailoverduename,'
      '  :watcher,            :watchfor,'
      '  :watchername'
      ')'
      ''
      '*/')
    Left = 62
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'templatelineid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'seqno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'parentlineid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'taskdescription'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'startwhen'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datetocomplete'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'completewhen'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'skipwhen'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'assignto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'assignedto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'completedays'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'started'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'startedby'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'repetition'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'repetitionbase'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'linkdateto'
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
        Name = 'emailoverdue'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emailoverduename'
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
        Name = 'watchername'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'skipwhenrelated'
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
        Name = 'completewhenrelated'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'daysfrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'startwhenrelated'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'critical_alert'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'critical_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sameday_due'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'assignedtoteam'
        Value = nil
      end>
  end
  object qCreateWorkflowTasks: TUniQuery
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
      '  skipwhen,'
      '  skipwhenrelated,'
      '  linkdateto,'
      '  linkdatetorelated,'
      '  linkdatedaysfrom,'
      '  assignto,'
      '  emailoverdue,'
      '  watcher,'
      '  watchfor,'
      '  emailoverduename,'
      '  watchername,'
      '  scalecostcode,'
      '  showfee,'
      '  critical_date,'
      '  critical_alert,'
      '  sameday_due,'
      '  assignedtoteam'
      ')'
      '(SELECT'
      '  m.nmatter as nmatter,'
      '  t.lineid as templatelineid,'
      '  DECODE (t.assignto,'
      '    '#39'P'#39',m.partner,'
      '    '#39'C'#39',m.controller,'
      '    '#39'O'#39',m.operator,'
      '    '#39'A'#39',m.author,'
      '    '#39'L'#39',m.paralegal,'
      '    '#39'1'#39',M.WKFLOW_PER_LEVEL_1,'
      '    '#39'2'#39',M.WKFLOW_PER_LEVEL_2,'
      '    '#39'3'#39',M.WKFLOW_PER_LEVEL_3,'
      '    '#39'4'#39',M.WKFLOW_PER_LEVEL_4,'
      '    '#39'5'#39',M.WKFLOW_PER_LEVEL_5,'
      '    '#39'6'#39',M.WKFLOW_PER_LEVEL_6,'
      '    '#39'7'#39',M.WKFLOW_PER_LEVEL_7,'
      '    '#39'8'#39',M.WKFLOW_PER_LEVEL_8,'
      '    '#39'9'#39',M.WKFLOW_PER_LEVEL_9,'
      '    '#39'10'#39',M.WKFLOW_PER_LEVEL_10'
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
      '  skipwhen,'
      '  skipwhenrelated,'
      '  linkdateto,'
      '  linkdatetorelated,'
      '  linkdatedaysfrom,'
      '  assignto,'
      '  emailoverdue,'
      '  watcher,'
      '  watchfor,'
      '  DECODE (t.emailoverdue,'
      '    '#39'P'#39',m.partner,'
      '    '#39'C'#39',m.controller,'
      '    '#39'O'#39',m.operator,'
      '    '#39'A'#39',m.author,'
      '    '#39'L'#39',m.paralegal,'
      '    '#39'1'#39',M.WKFLOW_PER_LEVEL_1,'
      '    '#39'2'#39',M.WKFLOW_PER_LEVEL_2,'
      '    '#39'3'#39',M.WKFLOW_PER_LEVEL_3,'
      '    '#39'4'#39',M.WKFLOW_PER_LEVEL_4,'
      '    '#39'5'#39',M.WKFLOW_PER_LEVEL_5,'
      '    '#39'6'#39',M.WKFLOW_PER_LEVEL_6,'
      '    '#39'7'#39',M.WKFLOW_PER_LEVEL_7,'
      '    '#39'8'#39',M.WKFLOW_PER_LEVEL_8,'
      '    '#39'9'#39',M.WKFLOW_PER_LEVEL_9,'
      '    '#39'10'#39',M.WKFLOW_PER_LEVEL_10'
      '  ) as emailoverduename,'
      '  DECODE (t.watcher,'
      '    '#39'P'#39',m.partner,'
      '    '#39'C'#39',m.controller,'
      '    '#39'O'#39',m.operator,'
      '    '#39'A'#39',m.author,'
      '    '#39'L'#39',m.paralegal,'
      '    '#39'1'#39',M.WKFLOW_PER_LEVEL_1,'
      '    '#39'2'#39',M.WKFLOW_PER_LEVEL_2,'
      '    '#39'3'#39',M.WKFLOW_PER_LEVEL_3,'
      '    '#39'4'#39',M.WKFLOW_PER_LEVEL_4,'
      '    '#39'5'#39',M.WKFLOW_PER_LEVEL_5,'
      '    '#39'6'#39',M.WKFLOW_PER_LEVEL_6,'
      '    '#39'7'#39',M.WKFLOW_PER_LEVEL_7,'
      '    '#39'8'#39',M.WKFLOW_PER_LEVEL_8,'
      '    '#39'9'#39',M.WKFLOW_PER_LEVEL_9,'
      '    '#39'10'#39',M.WKFLOW_PER_LEVEL_10'
      '  ) as watchername,'
      '  scalecostcode,'
      '  showfee,'
      '  critical_date,'
      '  critical_alert,'
      '  sameday_due,'
      '  t.assignedtoteam'
      'FROM workflowtasktemplates t, matter m'
      'WHERE t.workflowtypecode = m.workflow'
      'AND m.nmatter = :nmatter)')
    Left = 184
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qDeleteCustomTask: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM workflowtasks WHERE workflowtask = :workflowtask')
    Left = 184
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtask'
        Value = nil
      end>
  end
  object qLatestTaskNote: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT n.noteid, n.note, n.created, n.createdby, e.name AS creat' +
        'edbyname '
      'FROM '
      '  workflowtasknotes n,'
      '  employee e '
      'WHERE noteid = ('
      'SELECT max(noteid) FROM workflowtasknotes  '
      'WHERE workflowtask = :workflowtask'
      'GROUP BY workflowtask)'
      'AND e.code = n.createdby')
    Left = 186
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtask'
        Value = nil
      end>
    object qLatestTaskNoteNOTE: TStringField
      FieldName = 'NOTE'
      Size = 2000
    end
    object qLatestTaskNoteCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qLatestTaskNoteCREATEDBY: TStringField
      FieldName = 'CREATEDBY'
      Size = 3
    end
    object qLatestTaskNoteCREATEDBYNAME: TStringField
      FieldName = 'CREATEDBYNAME'
      Size = 40
    end
    object qLatestTaskNoteNOTEID: TFloatField
      FieldName = 'NOTEID'
      Required = True
    end
  end
  object qMatterDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT m.fileid, m.nmatter, m.shortdescr, c.search clientname, w' +
        '.descr as workflowtype, m.workflow as workflowtypecode'
      'FROM matter m, client c, workflowtype w'
      'WHERE c.nclient = m.nclient AND w.code = m.workflow'
      'AND m.nmatter = :nmatter ')
    Left = 184
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qMatterDetailsFILEID: TStringField
      FieldName = 'FILEID'
      Required = True
    end
    object qMatterDetailsNMATTER: TLargeintField
      FieldName = 'NMATTER'
      Required = True
    end
    object qMatterDetailsSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qMatterDetailsCLIENTNAME: TStringField
      FieldName = 'CLIENTNAME'
      ReadOnly = True
      Required = True
      Size = 85
    end
    object qMatterDetailsWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qMatterDetailsWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      Size = 11
    end
  end
  object qToDoMatterOrder: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  m.fileid,'
      '  w.nmatter,'
      '  MAX('
      '  CAST(DECODE('
      '    w.datetocomplete,'
      
        '    NULL,NULL, (TO_DATE(:startdate) - w.datetocomplete)) AS INTE' +
        'GER))'
      '    AS daysoverdue'
      'FROM workflowtasks w'
      'JOIN matter m ON w.nmatter = m.nmatter'
      
        'LEFT OUTER JOIN TEAM_EMPLOYEE e ON (e.team_code = w.ASSIGNEDTOTE' +
        'AM AND w.assignedto is null)'
      'WHERE w.started IS NOT NULL'
      '  AND (w.completed IS NULL AND w.skipped IS NULL)'
      '  AND (w.assignedto = :emp OR e.emp_code = :emp)'
      '  AND m.nmatter = w.nmatter'
      '--  AND (m.archivenum IS NULL OR m.closed != 1)'
      '--  AND (w.completedays IS NOT NULL AND w.completedays <> 0)'
      '  AND (w.datetocomplete between :startdate AND :enddate'
      '    OR w.datetocomplete < :startdate)'
      'GROUP BY m.fileid, w.nmatter'
      'ORDER BY daysoverdue DESC')
    Left = 60
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'startdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'enddate'
        Value = nil
      end>
    object qToDoMatterOrderFILEID: TStringField
      FieldName = 'FILEID'
      ReadOnly = True
      Required = True
    end
    object qToDoMatterOrderNMATTER: TLargeintField
      FieldName = 'NMATTER'
      Required = True
    end
    object qToDoMatterOrderDAYSOVERDUE: TFloatField
      FieldName = 'DAYSOVERDUE'
      ReadOnly = True
    end
  end
  object qToDoTasks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  w.workflowtask, '
      
        '  DECODE(w.repetition,0,WORKFLOWTASKFUNCTIONS.GETTASKSEQUENCEMAT' +
        'TER(w.templatelineid, w.nmatter),WORKFLOWTASKFUNCTIONS.GETTASKSE' +
        'QUENCEMATTER(w.templatelineid, w.nmatter) || '#39' ('#39' || w.repetitio' +
        'n || '#39')'#39') AS fullsequence,'
      ''
      
        '  WORKFLOWTASKFUNCTIONS.GETTASKSEQUENCEORDERMATTER(w.templatelin' +
        'eid, w.nmatter) || w.repetition AS taskorder, '
      '  w.nmatter, '
      '  w.templatelineid, '
      '  w.repetition, '
      '  w.repetitionbase, '
      '  w.custom, '
      '  w.started, '
      '  w.startedby, '
      '  es.name startedbyname, '
      '  w.workflowtypecode, '
      '  w.seqno, '
      '  w.parentlineid, '
      '  w.taskdescription, '
      '  w.tasknote, '
      '  w.completedays, '
      '  w.critical_Date,'
      '  w.critical_Alert,'
      '  w.completed,'
      '  w.skipped,'
      '  TRUNC(w.datetocomplete) AS completebydate, '
      '  CAST(DECODE( '
      '    w.datetocomplete, '
      
        '    NULL,NULL, (TO_DATE(:startdate) - TRUNC(w.datetocomplete))) ' +
        'AS INTEGER) AS daysoverdue, '
      '  m.shortdescr, '
      '  m.fileid, '
      '  wt.descr as workflowtype, '
      
        '  (SELECT COUNT(*) FROM workflowtaskdoclink WHERE tasklineid = w' +
        '.templatelineid) AS hasdocuments, '
      
        '  (SELECT COUNT(*) FROM workflowtasknotes WHERE workflowtask = w' +
        '.workflowtask) AS hasnotes, '
      '  c.name AS clientname,'
      '  w.assignedto,'
      '  w.assignedtoteam '
      ' FROM workflowtasks w'
      '    JOIN matter m ON w.nmatter = m.nmatter'
      '    JOIN workflowtype wt ON wt.code = m.workflow'
      '    JOIN client c  ON c.nclient = m.nclient'
      '    LEFT OUTER JOIN employee es  on es.code = w.startedby'
      
        '    LEFT OUTER JOIN TEAM_EMPLOYEE e ON (e.team_code = w.ASSIGNED' +
        'TOTEAM AND w.assignedto is null)'
      'WHERE w.started IS NOT NULL'
      '  AND (w.completed IS NULL AND w.skipped IS NULL) '
      '  AND (w.assignedto = :emp OR e.emp_code = :emp)'
      '  AND (TRUNC(w.datetocomplete) between :startdate AND :enddate '
      '    OR TRUNC(w.datetocomplete) < :startdate)'
      '  AND w.critical_Date = nvl(:critical_date, w.critical_date) '
      'ORDER BY nmatter, w.datetocomplete desc')
    Left = 316
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'startdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'enddate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'critical_date'
        Value = nil
      end>
    object qToDoTasksWORKFLOWTASK: TFloatField
      FieldName = 'WORKFLOWTASK'
      Required = True
    end
    object qToDoTasksFULLSEQUENCE: TStringField
      FieldName = 'FULLSEQUENCE'
      ReadOnly = True
      Size = 4000
    end
    object qToDoTasksTASKORDER: TStringField
      FieldName = 'TASKORDER'
      ReadOnly = True
      Size = 80
    end
    object qToDoTasksNMATTER: TLargeintField
      FieldName = 'NMATTER'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksTEMPLATELINEID: TFloatField
      FieldName = 'TEMPLATELINEID'
      ReadOnly = True
    end
    object qToDoTasksREPETITION: TFloatField
      FieldName = 'REPETITION'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksREPETITIONBASE: TStringField
      FieldName = 'REPETITIONBASE'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qToDoTasksCUSTOM: TStringField
      FieldName = 'CUSTOM'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qToDoTasksSTARTED: TDateTimeField
      FieldName = 'STARTED'
      ReadOnly = True
    end
    object qToDoTasksSTARTEDBY: TStringField
      FieldName = 'STARTEDBY'
      ReadOnly = True
      Size = 3
    end
    object qToDoTasksSTARTEDBYNAME: TStringField
      FieldName = 'STARTEDBYNAME'
      ReadOnly = True
      Size = 40
    end
    object qToDoTasksWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      ReadOnly = True
      Required = True
      Size = 11
    end
    object qToDoTasksSEQNO: TFloatField
      FieldName = 'SEQNO'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksPARENTLINEID: TFloatField
      FieldName = 'PARENTLINEID'
      ReadOnly = True
    end
    object qToDoTasksTASKDESCRIPTION: TStringField
      FieldName = 'TASKDESCRIPTION'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qToDoTasksTASKNOTE: TStringField
      FieldName = 'TASKNOTE'
      ReadOnly = True
      Size = 200
    end
    object qToDoTasksCOMPLETEDAYS: TFloatField
      FieldName = 'COMPLETEDAYS'
      ReadOnly = True
    end
    object qToDoTasksCRITICAL_DATE: TStringField
      FieldName = 'CRITICAL_DATE'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qToDoTasksCRITICAL_ALERT: TStringField
      FieldName = 'CRITICAL_ALERT'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qToDoTasksCOMPLETED: TDateTimeField
      FieldName = 'COMPLETED'
      ReadOnly = True
    end
    object qToDoTasksSKIPPED: TDateTimeField
      FieldName = 'SKIPPED'
      ReadOnly = True
    end
    object qToDoTasksCOMPLETEBYDATE: TDateTimeField
      FieldName = 'COMPLETEBYDATE'
      ReadOnly = True
    end
    object qToDoTasksDAYSOVERDUE: TFloatField
      FieldName = 'DAYSOVERDUE'
      ReadOnly = True
    end
    object qToDoTasksSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      ReadOnly = True
      Size = 60
    end
    object qToDoTasksFILEID: TStringField
      FieldName = 'FILEID'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qToDoTasksHASDOCUMENTS: TFloatField
      FieldName = 'HASDOCUMENTS'
      ReadOnly = True
    end
    object qToDoTasksHASNOTES: TFloatField
      FieldName = 'HASNOTES'
      ReadOnly = True
    end
    object qToDoTasksCLIENTNAME: TStringField
      FieldName = 'CLIENTNAME'
      ReadOnly = True
      Size = 85
    end
    object qToDoTasksASSIGNEDTO: TStringField
      FieldName = 'ASSIGNEDTO'
      Size = 3
    end
    object qToDoTasksASSIGNEDTOTEAM: TStringField
      FieldName = 'ASSIGNEDTOTEAM'
    end
  end
  object qToDoTasksDate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '/*create nested table so we can filter on result*/'
      'SELECT a.* FROM '
      '(SELECT'
      '  w.workflowtask,'
      
        '  DECODE(w.repetition,0,Workflowtaskfunctions.GETTASKSEQUENCEMAT' +
        'TER(w.templatelineid, w.nmatter),Workflowtaskfunctions.GETTASKSE' +
        'QUENCEMATTER(w.templatelineid, w.nmatter) || '#39' ('#39' || w.repetitio' +
        'n || '#39')'#39') AS fullsequence,'
      
        '  Workflowtaskfunctions.GETTASKSEQUENCEORDERMATTER(w.templatelin' +
        'eid, w.nmatter) || w.repetition AS taskorder,'
      '  w.nmatter,'
      '  w.templatelineid,'
      '  w.repetition,'
      '  w.repetitionbase,'
      '  w.custom,'
      '  w.started,'
      '  w.startedby,'
      '  es.name startedbyname,'
      '  w.workflowtypecode,'
      '  w.seqno,'
      '  w.parentlineid,'
      '  w.taskdescription,'
      '  w.tasknote,'
      '  w.completedays,'
      '  w.datetocomplete,'
      '  w.critical_Date,'
      '  w.critical_Alert,'
      '  w.completed,'
      '  w.skipped,'
      '  TRUNC(w.datetocomplete) AS completebydate,'
      '  CAST(DECODE('
      '    TRUNC(w.datetocomplete),'
      
        '    NULL,NULL, (TO_DATE(:startdate) - TRUNC(w.datetocomplete))) ' +
        'AS INTEGER) AS daysoverdue,'
      '  m.shortdescr,'
      '  m.fileid,'
      '  wt.descr AS WORKFLOWTYPE,'
      
        '  (SELECT COUNT(*) FROM WORKFLOWTASKDOCLINK WHERE tasklineid = w' +
        '.templatelineid) AS hasdocuments,'
      
        '  (SELECT COUNT(*) FROM WORKFLOWTASKNOTES WHERE workflowtask = w' +
        '.workflowtask) AS hasnotes,'
      '  c.name AS clientname,'
      '  w.assignedto,'
      '  w.assignedtoteam'
      '  FROM workflowtasks w'
      '    JOIN matter m ON w.nmatter = m.nmatter'
      '    JOIN workflowtype wt ON wt.code = m.workflow'
      '    JOIN client c  ON c.nclient = m.nclient'
      '    LEFT OUTER JOIN employee es  on es.code = w.startedby'
      
        '    LEFT OUTER JOIN TEAM_EMPLOYEE e ON (e.team_code = w.ASSIGNED' +
        'TOTEAM AND w.assignedto is null)'
      'WHERE w.started IS NOT NULL'
      '  AND (w.completed IS NULL AND w.skipped IS NULL)'
      '  AND (w.assignedto = :emp OR e.emp_code = :emp)'
      '  AND w.critical_Date = nvl(:critical_date, w.critical_date) '
      '  AND (TRUNC(w.datetocomplete) BETWEEN :startdate AND :enddate'
      '    OR TRUNC(w.datetocomplete) < :startdate)) a'
      
        '  WHERE :seqno IS NULL OR  trim(SUBSTR(fullsequence,0,DECODE(INS' +
        'TR(fullsequence,'#39'.'#39'),0,999999,INSTR(fullsequence,'#39'.'#39')-1)))  = :s' +
        'eqno'
      'ORDER BY datetocomplete ASC')
    Left = 184
    Top = 279
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'startdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'critical_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'enddate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'seqno'
        Value = nil
      end>
    object qToDoTasksDateWORKFLOWTASK: TFloatField
      FieldName = 'WORKFLOWTASK'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksDateFULLSEQUENCE: TStringField
      FieldName = 'FULLSEQUENCE'
      ReadOnly = True
      Size = 4000
    end
    object qToDoTasksDateTASKORDER: TStringField
      FieldName = 'TASKORDER'
      ReadOnly = True
      Size = 80
    end
    object qToDoTasksDateNMATTER: TLargeintField
      FieldName = 'NMATTER'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksDateTEMPLATELINEID: TFloatField
      FieldName = 'TEMPLATELINEID'
      ReadOnly = True
    end
    object qToDoTasksDateREPETITION: TFloatField
      FieldName = 'REPETITION'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksDateREPETITIONBASE: TStringField
      FieldName = 'REPETITIONBASE'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qToDoTasksDateCUSTOM: TStringField
      FieldName = 'CUSTOM'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qToDoTasksDateSTARTED: TDateTimeField
      FieldName = 'STARTED'
      ReadOnly = True
    end
    object qToDoTasksDateSTARTEDBY: TStringField
      FieldName = 'STARTEDBY'
      ReadOnly = True
      Size = 3
    end
    object qToDoTasksDateSTARTEDBYNAME: TStringField
      FieldName = 'STARTEDBYNAME'
      ReadOnly = True
      Size = 40
    end
    object qToDoTasksDateWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      ReadOnly = True
      Required = True
      Size = 11
    end
    object qToDoTasksDateSEQNO: TFloatField
      FieldName = 'SEQNO'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksDatePARENTLINEID: TFloatField
      FieldName = 'PARENTLINEID'
      ReadOnly = True
    end
    object qToDoTasksDateTASKDESCRIPTION: TStringField
      FieldName = 'TASKDESCRIPTION'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qToDoTasksDateTASKNOTE: TStringField
      FieldName = 'TASKNOTE'
      ReadOnly = True
      Size = 200
    end
    object qToDoTasksDateCOMPLETEDAYS: TFloatField
      FieldName = 'COMPLETEDAYS'
      ReadOnly = True
    end
    object qToDoTasksDateDATETOCOMPLETE: TDateTimeField
      FieldName = 'DATETOCOMPLETE'
      ReadOnly = True
    end
    object qToDoTasksDateCRITICAL_DATE: TStringField
      FieldName = 'CRITICAL_DATE'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qToDoTasksDateCRITICAL_ALERT: TStringField
      FieldName = 'CRITICAL_ALERT'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qToDoTasksDateCOMPLETED: TDateTimeField
      FieldName = 'COMPLETED'
      ReadOnly = True
    end
    object qToDoTasksDateSKIPPED: TDateTimeField
      FieldName = 'SKIPPED'
      ReadOnly = True
    end
    object qToDoTasksDateCOMPLETEBYDATE: TDateTimeField
      FieldName = 'COMPLETEBYDATE'
      ReadOnly = True
    end
    object qToDoTasksDateDAYSOVERDUE: TFloatField
      FieldName = 'DAYSOVERDUE'
      ReadOnly = True
    end
    object qToDoTasksDateSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      ReadOnly = True
      Size = 60
    end
    object qToDoTasksDateFILEID: TStringField
      FieldName = 'FILEID'
      ReadOnly = True
      Required = True
    end
    object qToDoTasksDateWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qToDoTasksDateHASDOCUMENTS: TFloatField
      FieldName = 'HASDOCUMENTS'
      ReadOnly = True
    end
    object qToDoTasksDateHASNOTES: TFloatField
      FieldName = 'HASNOTES'
      ReadOnly = True
    end
    object qToDoTasksDateCLIENTNAME: TStringField
      FieldName = 'CLIENTNAME'
      ReadOnly = True
      Size = 85
    end
    object qToDoTasksDateASSIGNEDTO: TStringField
      FieldName = 'ASSIGNEDTO'
      ReadOnly = True
      Size = 3
    end
    object qToDoTasksDateASSIGNEDTOTEAM: TStringField
      FieldName = 'ASSIGNEDTOTEAM'
      ReadOnly = True
    end
  end
  object qWorkflowTasks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  w.workflowtask,'
      '  w.nmatter,'
      '  w.templatelineid,'
      '  w.repetition,'
      '  w.repetitionbase,'
      '  NVL(p.repetition,0) as parentrepetition,'
      '  NVL(p.seqno,0)      as parentseqno,'
      '  w.assignedto,'
      '  w.assignedtoteam,'
      '  e.name assignedtoname,'
      '  w.started,'
      '  w.completed,'
      '  w.startedby,'
      '  es.name startedbyname,'
      '  w.completedby,'
      '  ec.name completedbyname,'
      '  w.skipped,'
      '  w.skippedby,'
      '  en.name skippedbyname,'
      '  w.workflowtypecode,'
      '  w.seqno,'
      '  w.parentlineid,'
      '  w.taskdescription,'
      '  w.tasknote,'
      '  w.startwhen,'
      '  w.daysfrom,'
      '  w.startwhenrelated,'
      '  nvl(w.completedays,0) completedays,'
      '  w.completewhen,'
      '  w.completewhenrelated,'
      '  w.skipwhen,'
      '  w.skipwhenrelated,'
      '  w.linkdateto,'
      '  w.linkdatetorelated,'
      '  w.linkdatedaysfrom,'
      '  w.emailoverdue,'
      '  w.watcher,'
      '  w.watchfor,'
      '  w.emailoverduename AS emailoverduecode,'
      '  w.watchername AS watchernamecode,'
      '  eeo.name AS emailoverduename,'
      '  ew.name AS watchername,'
      '  w.datetocomplete,'
      '  w.assignedtochangedby,'
      '  w.assignedtoteamchangedby,'
      '  w.duedatechangedby,'
      '  w.undoby,'
      
        '  (SELECT COUNT(*) FROM workflowtaskdoclink WHERE tasklineid = w' +
        '.templatelineid) AS hasdocuments,'
      
        '  (SELECT COUNT(*) FROM workflowtasknotes WHERE workflowtask = w' +
        '.workflowtask) AS hasnotes,'
      '  w.custom,'
      '  w.assignto,'
      '  w.scalecostcode,'
      '  w.showfee,'
      '  w.critical_date,'
      '  w.critical_alert,'
      
        '  (SELECT COUNT(*) FROM WORKFLOW_DATAFORMFIELD WHERE WKFLOW_LINE' +
        'ID= w.templatelineid) AS hasdataform,'
      '  w.sameday_due'
      'FROM'
      '  workflowtasks w,'
      '  workflowtasks p,'
      '  employee e,'
      '  employee es,'
      '  employee ec,'
      '  employee en,'
      '  employee eeo,'
      '  employee ew'
      'WHERE w.nmatter = :nmatter'
      '  AND e.code(+) = w.assignedto'
      '  AND es.code(+) = w.startedby'
      '  AND ec.code(+) = w.completedby'
      '  AND en.code(+) = w.skippedby'
      '  AND eeo.code(+) = w.emailoverduename'
      '  AND ew.code(+) = w.watchername'
      '  AND p.templatelineid(+) = w.parentlineid'
      '  AND p.nmatter(+)        = w.nmatter'
      'ORDER BY w.parentlineid,p.repetition, w.seqno, w.repetition')
    Left = 60
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qWorkFlowTasks2: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  w.workflowtask,'
      '  w.nmatter,'
      '  w.templatelineid,'
      '  w.repetition,'
      '  w.repetitionbase,'
      '  p.repetition as parentrepetition,'
      '  p.seqno      as parentseqno,'
      '  w.assignedto,'
      '  e.name assignedtoname,'
      '  w.started,'
      '  w.completed,'
      '  w.startedby,'
      '  es.name startedbyname,'
      '  w.completedby,'
      '  ec.name completedbyname,'
      '  w.skipped,'
      '  w.skippedby,'
      '  en.name skippedbyname,'
      '  w.workflowtypecode,'
      '  w.seqno,'
      '  w.parentlineid,'
      '  w.taskdescription,'
      '  w.tasknote,'
      '  w.startwhen,'
      '  w.daysfrom,'
      '  w.startwhenrelated,'
      '  w.completedays,'
      '  w.completewhen,'
      '  w.completewhenrelated,'
      '  w.skipwhen,'
      '  w.skipwhenrelated,'
      '  w.linkdateto,'
      '  w.linkdatetorelated,'
      '  w.linkdatedaysfrom,'
      '  w.emailoverdue,'
      '  w.watcher,'
      '  w.watchfor,'
      '  w.emailoverduename AS emailoverduecode,'
      '  w.watchername AS watchernamecode,'
      '  eeo.name AS emailoverduename,'
      '  ew.name AS watchername,'
      '  w.datetocomplete,'
      '  w.assignedtochangedby,'
      '  w.duedatechangedby,'
      '  w.undoby,'
      
        '  (SELECT COUNT(*) FROM workflowtaskdoclink WHERE tasklineid = w' +
        '.templatelineid) AS hasdocuments,'
      
        '  (SELECT COUNT(*) FROM workflowtasknotes WHERE workflowtask = w' +
        '.workflowtask) AS hasnotes,'
      '  w.custom,'
      '  w.assignto,'
      '  w.scalecostcode,'
      '  w.showfee,'
      '  w.critical_date,'
      '  w.critical_alert,'
      '  w.sameday_due,'
      '  w.assignedtoteam,'
      '  w.assignedtoteamchangedby'
      'FROM'
      '  workflowtasks w,'
      '  workflowtasks p,'
      '  employee e,'
      '  employee es,'
      '  employee ec,'
      '  employee en,'
      '  employee eeo,'
      '  employee ew'
      'WHERE w.nmatter = :nmatter'
      '  AND e.code(+) = w.assignedto'
      '  AND es.code(+) = w.startedby'
      '  AND ec.code(+) = w.completedby'
      '  AND en.code(+) = w.skippedby'
      '  AND eeo.code(+) = w.emailoverduename'
      '  AND ew.code(+) = w.watchername'
      '  AND p.templatelineid(+) = w.parentlineid'
      '  AND w.parentlineid      = :parentlineid'
      '  AND p.repetition(+)     = :parentrepetition'
      '  AND p.nmatter(+)        = :nmatter'
      'ORDER BY w.parentlineid,w.seqno, w.repetition')
    Left = 60
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'parentlineid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'parentrepetition'
        Value = nil
      end>
  end
  object vtWorkFlowTasksReport: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    Active = True
    FieldDefs = <
      item
        Name = 'FULLSEQUENCE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TASKDESCRIPTION'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'TaskNote'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'StartedBy'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CompletedBy'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SkippedBy'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'AssignedToName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'AssignedToTeam'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OverDueDays'
        DataType = ftInteger
      end
      item
        Name = 'Started'
        DataType = ftDateTime
      end
      item
        Name = 'Completed'
        DataType = ftDateTime
      end
      item
        Name = 'Skipped'
        DataType = ftDateTime
      end
      item
        Name = 'CompleteBy'
        DataType = ftDateTime
      end>
    Left = 60
    Top = 279
    Data = {
      03000D000C0046554C4C53455155454E434501006400000000000F005441534B
      4445534352495054494F4E0100C8000000000008005461736B4E6F74650100C8
      0000000000090053746172746564427901003200000000000B00436F6D706C65
      746564427901003200000000000900536B697070656442790100320000000000
      0E0041737369676E6564546F4E616D6501003200000000000E0041737369676E
      6564546F5465616D01003200000000000B004F76657244756544617973030000
      00000000000700537461727465640B000000000000000900436F6D706C657465
      640B000000000000000700536B69707065640B000000000000000A00436F6D70
      6C65746542790B00000000000000000001000000050000007465657374000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000}
    object vtWorkFlowTasksReportFULLSEQUENCE: TStringField
      FieldName = 'FULLSEQUENCE'
      Size = 100
    end
    object vtWorkFlowTasksReportTASKDESCRIPTION: TStringField
      FieldName = 'TASKDESCRIPTION'
      Size = 200
    end
    object vtWorkFlowTasksReportTaskNote: TStringField
      FieldName = 'TaskNote'
      Size = 200
    end
    object vtWorkFlowTasksReportStartedBy: TStringField
      FieldName = 'StartedBy'
      Size = 50
    end
    object vtWorkFlowTasksReportCompletedBy: TStringField
      FieldName = 'CompletedBy'
      Size = 50
    end
    object vtWorkFlowTasksReportSkippedBy: TStringField
      FieldName = 'SkippedBy'
      Size = 50
    end
    object vtWorkFlowTasksReportAssignedToName: TStringField
      FieldName = 'AssignedToName'
      Size = 50
    end
    object vtWorkFlowTasksReportAssignedToTeam: TStringField
      FieldName = 'AssignedToTeam'
      Size = 50
    end
    object vtWorkFlowTasksReportOverDueDays: TIntegerField
      FieldName = 'OverDueDays'
    end
    object vtWorkFlowTasksReportStarted: TDateTimeField
      FieldName = 'Started'
    end
    object vtWorkFlowTasksReportCompleted: TDateTimeField
      FieldName = 'Completed'
    end
    object vtWorkFlowTasksReportSkipped: TDateTimeField
      FieldName = 'Skipped'
    end
    object vtWorkFlowTasksReportCompleteBy: TDateTimeField
      FieldName = 'CompleteBy'
    end
  end
  object qDeleteWorkFlowTasks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM workflowtasks WHERE nmatter = :nmatter')
    Left = 313
    Top = 279
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsToDoTasks: TUniDataSource
    DataSet = qToDoTasks
    Left = 310
    Top = 59
  end
  object qToDoTasksSequence: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  w.workflowtask,'
      
        '  DECODE(w.repetition,0,WORKFLOWTASKFUNCTIONS.GETTASKSEQUENCEMAT' +
        'TER(w.templatelineid, w.nmatter),WORKFLOWTASKFUNCTIONS.GETTASKSE' +
        'QUENCEMATTER(w.templatelineid, w.nmatter) || '#39' ('#39' || w.repetitio' +
        'n || '#39')'#39') AS fullsequence,'
      
        '  WORKFLOWTASKFUNCTIONS.GETTASKSEQUENCEORDERMATTER(w.templatelin' +
        'eid, w.nmatter) || w.repetition AS taskorder,'
      '  w.nmatter,'
      '  w.templatelineid,'
      '  w.repetition,'
      '  w.repetitionbase,'
      '  w.custom,'
      '  w.started,'
      '  w.startedby,'
      '  es.name startedbyname,'
      '  w.workflowtypecode,'
      '  w.seqno,'
      '  w.parentlineid,'
      '  w.taskdescription,'
      '  w.tasknote,'
      '  w.completedays,'
      '  w.critical_Date,'
      '  w.critical_Alert,'
      '  w.completed,'
      '  w.skipped,'
      '  TRUNC(w.datetocomplete) AS completebydate,'
      '  CAST(DECODE('
      '    w.datetocomplete,'
      
        '    NULL,NULL, (TO_DATE(:startdate) - TRUNC(w.datetocomplete))) ' +
        'AS INTEGER) AS daysoverdue,'
      '  m.shortdescr,'
      '  m.fileid,'
      '  wt.descr as workflowtype,'
      
        '  (SELECT COUNT(*) FROM workflowtaskdoclink WHERE tasklineid = w' +
        '.templatelineid) AS hasdocuments,'
      
        '  (SELECT COUNT(*) FROM workflowtasknotes WHERE workflowtask = w' +
        '.workflowtask) AS hasnotes,'
      '  c.name AS clientname,'
      '  w.assignedto,'
      '  w.assignedtoteam'
      'FROM workflowtasks w'
      '    JOIN matter m ON w.nmatter = m.nmatter'
      '    JOIN workflowtype wt ON wt.code = m.workflow'
      '    JOIN client c  ON c.nclient = m.nclient'
      '    LEFT OUTER JOIN employee es  on es.code = w.startedby'
      
        '    LEFT OUTER JOIN TEAM_EMPLOYEE e ON (e.team_code = w.ASSIGNED' +
        'TOTEAM AND w.assignedto is null)'
      'WHERE w.started IS NOT NULL'
      '  AND (w.completed IS NULL AND w.skipped IS NULL)'
      '  AND (w.assignedto = :emp OR e.emp_code = :emp)'
      '  AND w.critical_Date = nvl(:critical_date, w.critical_date) '
      '  AND (TRUNC(w.datetocomplete) between :startdate AND :enddate'
      '    OR TRUNC(w.datetocomplete) < :startdate)'
      
        'ORDER BY DECODE(w.repetition,0,WORKFLOWTASKFUNCTIONS.GETTASKSEQU' +
        'ENCEMATTER(w.templatelineid, w.nmatter),WORKFLOWTASKFUNCTIONS.GE' +
        'TTASKSEQUENCEMATTER(w.templatelineid, w.nmatter) || '#39' ('#39' || w.re' +
        'petition || '#39')'#39'),'
      'nmatter, w.datetocomplete desc')
    Left = 425
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'startdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'critical_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'enddate'
        Value = nil
      end>
    object qToDoTasksSequenceWORKFLOWTASK: TFloatField
      FieldName = 'WORKFLOWTASK'
      Required = True
    end
    object qToDoTasksSequenceFULLSEQUENCE: TStringField
      FieldName = 'FULLSEQUENCE'
      Size = 4000
    end
    object qToDoTasksSequenceTASKORDER: TStringField
      FieldName = 'TASKORDER'
      Size = 80
    end
    object qToDoTasksSequenceNMATTER: TFloatField
      FieldName = 'NMATTER'
      Required = True
    end
    object qToDoTasksSequenceTEMPLATELINEID: TFloatField
      FieldName = 'TEMPLATELINEID'
      Required = True
    end
    object qToDoTasksSequenceREPETITION: TFloatField
      FieldName = 'REPETITION'
      Required = True
    end
    object qToDoTasksSequenceREPETITIONBASE: TStringField
      FieldName = 'REPETITIONBASE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qToDoTasksSequenceCUSTOM: TStringField
      FieldName = 'CUSTOM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qToDoTasksSequenceSTARTED: TDateTimeField
      FieldName = 'STARTED'
    end
    object qToDoTasksSequenceSTARTEDBY: TStringField
      FieldName = 'STARTEDBY'
      Size = 3
    end
    object qToDoTasksSequenceSTARTEDBYNAME: TStringField
      FieldName = 'STARTEDBYNAME'
      Size = 40
    end
    object qToDoTasksSequenceWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      Required = True
      Size = 11
    end
    object qToDoTasksSequencePARENTLINEID: TFloatField
      FieldName = 'PARENTLINEID'
    end
    object qToDoTasksSequenceTASKDESCRIPTION: TStringField
      FieldName = 'TASKDESCRIPTION'
      Required = True
      Size = 200
    end
    object qToDoTasksSequenceTASKNOTE: TStringField
      FieldName = 'TASKNOTE'
      Size = 200
    end
    object qToDoTasksSequenceCOMPLETEDAYS: TFloatField
      FieldName = 'COMPLETEDAYS'
    end
    object qToDoTasksSequenceCOMPLETEBYDATE: TDateTimeField
      FieldName = 'COMPLETEBYDATE'
    end
    object qToDoTasksSequenceDAYSOVERDUE: TFloatField
      FieldName = 'DAYSOVERDUE'
    end
    object qToDoTasksSequenceSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qToDoTasksSequenceFILEID: TStringField
      FieldName = 'FILEID'
      Required = True
    end
    object qToDoTasksSequenceWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      Required = True
      Size = 60
    end
    object qToDoTasksSequenceHASDOCUMENTS: TFloatField
      FieldName = 'HASDOCUMENTS'
    end
    object qToDoTasksSequenceHASNOTES: TFloatField
      FieldName = 'HASNOTES'
    end
    object qToDoTasksSequenceCLIENTNAME: TStringField
      FieldName = 'CLIENTNAME'
      Size = 40
    end
    object qToDoTasksSequenceCRITICAL_DATE: TStringField
      FieldName = 'CRITICAL_DATE'
      Required = True
      Size = 1
    end
    object qToDoTasksSequenceCRITICAL_ALERT: TStringField
      FieldName = 'CRITICAL_ALERT'
      Required = True
      Size = 1
    end
    object qToDoTasksSequenceCOMPLETED: TDateTimeField
      FieldName = 'COMPLETED'
    end
    object qToDoTasksSequenceSEQNO: TFloatField
      FieldName = 'SEQNO'
      Required = True
    end
    object qToDoTasksSequenceSKIPPED: TDateTimeField
      FieldName = 'SKIPPED'
    end
    object qToDoTasksSequenceASSIGNEDTO: TStringField
      FieldName = 'ASSIGNEDTO'
      Size = 3
    end
    object qToDoTasksSequenceASSIGNEDTOTEAM: TStringField
      FieldName = 'ASSIGNEDTOTEAM'
    end
  end
  object qCreateCriticalDates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'insert into critical_dates(nmatter,templatelineid,descr,finished' +
        ')'
      
        'select nmatter,templatelineid,taskdescription,'#39'N'#39' from workflowt' +
        'asks'
      'where nmatter = :nmatter'
      'and critical_date = '#39'Y'#39
      '')
    Left = 406
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qHasMatterCriticalDates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from critical_dates'
      'where nmatter = :nmatter'
      'and critical_date is not null'
      ''
      '/*'
      'select '#39'x'#39' '
      'from workflowtasks'
      'where nmatter = :nmatter'
      'and critical_date = '#39'Y'#39
      '*/')
    Left = 404
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qDeleteCriticalDates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM critical_dates WHERE nmatter = :nmatter')
    Left = 411
    Top = 309
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qUpdateCriticalDates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'update workflowtasks set datetocomplete = :critical_date, starte' +
        'd = :started, startedby = :started_by'
      'where nmatter = :nmatter'
      'and templatelineid = :templatelineid'
      'and critical_date = '#39'Y'#39)
    Left = 406
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'critical_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'started'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'started_by'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'templatelineid'
        Value = nil
      end>
  end
  object procStartTask: TUniStoredProc
    StoredProcName = 'WORKFLOWTASKFUNCTIONS.STARTONE'
    SQL.Strings = (
      'begin'
      
        '  WORKFLOWTASKFUNCTIONS.STARTONE(:ANMATTER, :APARENTLINEID, :ALI' +
        'NEID, :ADATE, :ASTARTBY);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 80
    Top = 333
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ANMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'APARENTLINEID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ALINEID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ADATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ASTARTBY'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'WORKFLOWTASKFUNCTIONS.STARTONE'
  end
  object qGetParentLineID: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select parentlineid from workflowtasks'
      'where nmatter = :nmatter'
      'and templatelineid = :templatelineid'
      'and critical_date = '#39'Y'#39
      '')
    Left = 203
    Top = 334
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'templatelineid'
        Value = nil
      end>
  end
  object qGetCriticalDateCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nvl(count(*),0) as criticalcount'
      'FROM WORKFLOWTASKS w'
      'WHERE w.critical_date = '#39'Y'#39
      'and w.nmatter = :nmatter'
      'and W.DATETOCOMPLETE is null')
    Left = 303
    Top = 337
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qWorkflowTaskNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT  '
      '  n.noteid,'
      '  n.created,'
      '  n.createdby,'
      '  n.note,'
      '  e.name as createdbyname'
      'FROM workflowtasknotes n, employee e'
      'WHERE workflowtask = :workflowtask'
      'AND e.code = n.createdby'
      'ORDER BY N.created DESC')
    Left = 316
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtask'
        Value = nil
      end>
    object qWorkflowTaskNotesCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qWorkflowTaskNotesCREATEDBY: TStringField
      FieldName = 'CREATEDBY'
      Size = 3
    end
    object qWorkflowTaskNotesCREATEDBYNAME: TStringField
      FieldName = 'CREATEDBYNAME'
      Size = 40
    end
    object qWorkflowTaskNotesNOTE: TStringField
      FieldName = 'NOTE'
      Size = 2000
    end
    object qWorkflowTaskNotesNOTEID: TFloatField
      FieldName = 'NOTEID'
      Required = True
    end
  end
end
