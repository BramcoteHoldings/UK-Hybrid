object dmWorkFlowDataModule: TdmWorkFlowDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 421
  Width = 319
  object tbWorkflowType: TUniTable
    TableName = 'WORKFLOWTYPE'
    OrderFields = 'DESCR'
    Connection = dmAxiom.uniInsight
    KeyFields = 'CODE'
    Left = 42
    Top = 14
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
    DataSet = tbWorkflowType
    Left = 42
    Top = 65
  end
  object qListCarriage: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  m.employee AS ID,'
      '  m.type,'
      '  e.name,'
      '  m.code'
      'FROM'
      '  employee e,'
      '  ('
      '    SELECT'
      '      author AS employee,'
      
        '      NVL((SELECT value FROM display_name WHERE name = '#39'AUTHOR'#39' ' +
        'AND class = '#39'MATTER'#39' AND acct = entity),'#39'Author'#39') AS type,'
      
        '      NVL((SELECT code FROM display_name WHERE name = '#39'AUTHOR'#39' A' +
        'ND class = '#39'MATTER'#39' AND acct = entity),'#39'Author'#39') AS code'
      '    FROM'
      '      matter'
      '    WHERE'
      '      nmatter = :nmatter'
      '    UNION'
      '    SELECT'
      '      partner AS employee,'
      
        '      NVL((SELECT value FROM display_name WHERE name = '#39'PARTNER'#39 +
        ' AND class = '#39'MATTER'#39' AND acct = entity),'#39'Partner'#39') AS type,'
      
        '      NVL((SELECT code FROM display_name WHERE name = '#39'PARTNER'#39' ' +
        'AND class = '#39'MATTER'#39' AND acct = entity),'#39'Partner'#39') AS code'
      '    FROM'
      '      matter'
      '    WHERE'
      '      nmatter = :nmatter'
      '    UNION'
      '    SELECT'
      '      controller AS employee,'
      
        '      NVL((SELECT value FROM display_name WHERE name = '#39'CONTROLL' +
        'ER'#39' AND class = '#39'MATTER'#39' AND acct = entity),'#39'Controller'#39') AS typ' +
        'e,'
      
        '      NVL((SELECT code FROM display_name WHERE name = '#39'CONTROLLE' +
        'R'#39' AND class = '#39'MATTER'#39' AND acct = entity),'#39'Controller'#39') AS code'
      '    FROM'
      '      matter'
      '    WHERE'
      '      nmatter = :nmatter'
      '    UNION'
      '    SELECT'
      '      operator AS employee,'
      
        '      NVL((SELECT value FROM display_name WHERE name = '#39'OPERATOR' +
        #39' AND class = '#39'MATTER'#39' AND acct = entity),'#39'Operator'#39') AS type,'
      
        '      NVL((SELECT code FROM display_name WHERE name = '#39'OPERATOR'#39 +
        ' AND class = '#39'MATTER'#39' AND acct = entity),'#39'Operator'#39') AS code'
      '    FROM'
      '      matter'
      '    WHERE'
      '      nmatter = :nmatter'
      '    UNION'
      '    SELECT'
      '      paralegal AS employee,'
      
        '      NVL((SELECT value FROM display_name WHERE name = '#39'PARA LEG' +
        'AL'#39' AND class = '#39'MATTER'#39' AND acct = entity),'#39'Para Legal'#39') AS typ' +
        'e,'
      
        #9'   NVL((SELECT code FROM display_name WHERE name = '#39'PARA LEGAL'#39 +
        ' AND class = '#39'MATTER'#39' AND acct = entity),'#39'Para Legal'#39') AS code'
      '    FROM'
      '      matter'
      '    WHERE'
      '      nmatter = :nmatter'
      '  ) m'
      'WHERE'
      '  e.code = m.employee '
      '-- ORDER BY type')
    Left = 141
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qListCarriageID: TStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 3
    end
    object qListCarriageTYPE: TStringField
      FieldName = 'TYPE'
      ReadOnly = True
      Size = 60
    end
    object qListCarriageNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qListCarriageCODE: TStringField
      FieldName = 'CODE'
      ReadOnly = True
      Size = 10
    end
  end
  object qAnyQuery: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '')
    CachedUpdates = True
    Left = 228
    Top = 14
  end
  object dsListCarriage: TDataSource
    AutoEdit = False
    DataSet = qListCarriage
    Left = 141
    Top = 65
  end
  object qGenDocuments: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.*,'
      '  t.documentname AS documentname,'
      '  e.name AS employeename,'
      
        '  WORKFLOWTASKFUNCTIONS.GETTASKSEQUENCEMATTER(d.templatelineid, ' +
        'd.nmatter) as tasksequence,'
      '  w.taskdescription,'
      
        '  (SELECT COUNT(*) FROM workflowgendocumentparties WHERE workflo' +
        'wgendocument = d.workflowgendocument) AS partytypecount'
      'FROM'
      '  workflowgendocuments d,'
      '  workflowdoctemplates t,'
      '  workflowtasktemplates w,'
      '  employee e'
      'WHERE'
      '  d.nmatter = :nmatter AND'
      '  t.docid(+) = d.docid AND'
      '  w.lineid(+) = d.templatelineid AND'
      '  e.code  = d.who AND'
      '  t.active = '#39'Y'#39'  '
      'ORDER BY'
      '  d.whengenerated desc')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 42
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qGenDocumentsWORKFLOWGENDOCUMENT: TFloatField
      FieldName = 'WORKFLOWGENDOCUMENT'
      Required = True
    end
    object qGenDocumentsNMATTER: TLargeintField
      FieldName = 'NMATTER'
      Required = True
    end
    object qGenDocumentsTEMPLATELINEID: TFloatField
      FieldName = 'TEMPLATELINEID'
    end
    object qGenDocumentsFILEPATH: TStringField
      FieldName = 'FILEPATH'
      Required = True
      Size = 2000
    end
    object qGenDocumentsTEMPLATEPATH: TStringField
      FieldName = 'TEMPLATEPATH'
      Required = True
      Size = 2000
    end
    object qGenDocumentsDATAFILEPATH: TStringField
      FieldName = 'DATAFILEPATH'
      Size = 2000
    end
    object qGenDocumentsWHENGENERATED: TDateTimeField
      FieldName = 'WHENGENERATED'
    end
    object qGenDocumentsWHO: TStringField
      FieldName = 'WHO'
      Required = True
      Size = 3
    end
    object qGenDocumentsDATAFORM: TStringField
      FieldName = 'DATAFORM'
      Size = 100
    end
    object qGenDocumentsINDEX_PATH: TStringField
      FieldName = 'INDEX_PATH'
      Size = 255
    end
    object qGenDocumentsNPRECCATEGORY: TLargeintField
      FieldName = 'NPRECCATEGORY'
    end
    object qGenDocumentsNPRECCLASSIFICATION: TLargeintField
      FieldName = 'NPRECCLASSIFICATION'
    end
    object qGenDocumentsDOCFILEPATH: TStringField
      FieldName = 'DOCFILEPATH'
      Size = 2000
    end
    object qGenDocumentsDESCR: TStringField
      FieldName = 'DESCR'
      Size = 400
    end
    object qGenDocumentsDOC_DOCID: TFloatField
      FieldName = 'DOC_DOCID'
    end
    object qGenDocumentsDOCUMENTNAME: TStringField
      FieldName = 'DOCUMENTNAME'
      ReadOnly = True
      Size = 200
    end
    object qGenDocumentsEMPLOYEENAME: TStringField
      FieldName = 'EMPLOYEENAME'
      ReadOnly = True
      Size = 40
    end
    object qGenDocumentsTASKSEQUENCE: TStringField
      FieldName = 'TASKSEQUENCE'
      ReadOnly = True
      Size = 4000
    end
    object qGenDocumentsTASKDESCRIPTION: TStringField
      FieldName = 'TASKDESCRIPTION'
      ReadOnly = True
      Size = 200
    end
    object qGenDocumentsPARTYTYPECOUNT: TFloatField
      FieldName = 'PARTYTYPECOUNT'
      ReadOnly = True
    end
    object qGenDocumentsDOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
  end
  object qGenDocParties: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  g.partytype,'
      '  p.search,'
      '  g.nname'
      'FROM'
      '  workflowgendocumentparties g,'
      '  phonebook p'
      'WHERE'
      '  g.workflowgendocument = :workflowgendocument AND'
      '  p.nname = g.nname'
      '')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 141
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowgendocument'
        Value = nil
      end>
    object qGenDocPartiesPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      Required = True
      Size = 32
    end
    object qGenDocPartiesSEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Required = True
      Size = 85
    end
    object qGenDocPartiesNNAME: TFloatField
      FieldName = 'NNAME'
      Required = True
    end
  end
  object qTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 228
    Top = 65
  end
  object qAssignTo: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '     VALUE,'
      '     CODE'
      'FROM'
      '     DISPLAY_NAME '
      'WHERE '
      '     CLASS = '#39'MATTER'#39' AND acct = :entity')
    Left = 239
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
    object qAssignToVALUE: TStringField
      FieldName = 'VALUE'
      Required = True
      Size = 60
    end
    object qAssignToCODE: TStringField
      FieldName = 'CODE'
      Size = 2
    end
  end
  object dsAssignTo: TDataSource
    AutoEdit = False
    DataSet = qAssignTo
    Left = 239
    Top = 186
  end
  object qryDataform: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code from dataform d, matter m'
      'where m.workflow = d.WORKFLOWTYPECODE'
      'and nmatter = :nmatter')
    Left = 36
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qryDataformFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select fieldname'
      'from dataformfield'
      'where dataform = :dataform'
      'order by seq')
    Left = 144
    Top = 182
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dataform'
        Value = nil
      end>
  end
  object qryTranslations: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select externalfield, workflowfield'
      'from workflowfieldtranslate'
      'where workflowfield = :workflowfield')
    Left = 32
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowfield'
        Value = nil
      end>
  end
  object qPartyCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  count(*)'
      'FROM '
      '  mattercontactactingfor af,'
      '  mattercontactactingfor at, '
      '  phonebook p,'
      '  phonebook f,'
      '  phonebook t,'
      '  phonebook pp,  '
      '  matterparty mpf,'
      '  matterparty mpt,'
      '  matterparty mp'
      'WHERE'
      '    mp.nmatter = :nmatter'
      'aND af.nmatter(+) = :nmatter'
      'AND at.nmatter(+) = :nmatter'
      'AND mpf.nmatter(+) = :nmatter'
      'AND mpt.nmatter(+) = :nmatter'
      'AND mp.CATEGORY = :partyname'
      'AND p.nname = mp.nname'
      'AND af.nname(+) = mp.nname'
      'AND at.actingfornname(+) = mp.nname'
      'AND f.nname(+) = af.actingfornname'
      'AND t.nname(+) = at.nname'
      'AND pp.nname(+) = p.nnamemaster'
      'AND mpf.nname(+) = af.actingfornname'
      'AND mpt.nname(+) = at.nname')
    Left = 140
    Top = 244
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partyname'
        Value = nil
      end>
  end
  object qryTaskTree: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select count(*) as tasks'
      '--workflowtask, templatelineid,seqno,parentlineid'
      'from workflowtasks '
      'where workflowtypecode = :workflowtypecode '
      'and nmatter = :nmatter'
      'start with parentlineid = :parentlineid '
      'connect by prior templatelineid = parentlineid '
      ''
      ''
      '/*'
      
        'select workflowtask, templatelineid,seqno,parentlineid, CONNECT_' +
        'BY_ISLEAF "IsLeaf", level '
      'from workflowtasks'
      'where workflowtypecode = :workflowtypecode'
      'and nmatter = :nmatter'
      'connect by prior templatelineid = parentlineid'
      'order siblings by templatelineid, seqno'
      '*/')
    Left = 236
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'parentlineid'
        Value = nil
      end>
  end
  object qryWorkflowDataForms: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT distinct WORKFLOW_DATAFORMFIELD.dataform, DATAFORM.PARTY ' +
        ' '
      'FROM '
      '   WORKFLOW_DATAFORMFIELD,'
      '   DATAFORM'
      'WHERE '
      '   WKFLOW_LINEID = :CODE'
      'AND'
      '   WORKFLOW_DATAFORMFIELD.DATAFORM  = DATAFORM.CODE'
      'order by dataform')
    Left = 41
    Top = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object qryCheckCriticalDates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select 1 from'
      'workflowtasks'
      'where'
      ' linkdatetorelated = :templatelineid'
      'and'
      ' nmatter = :nmatter')
    Left = 191
    Top = 309
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'templatelineid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsTeams: TDataSource
    AutoEdit = False
    DataSet = qTeams
    Left = 239
    Top = 370
  end
  object qTeams: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR FROM  TEAM')
    Left = 191
    Top = 367
    object qTeamsCODE: TStringField
      FieldName = 'CODE'
      Required = True
    end
    object qTeamsDESCR: TStringField
      FieldName = 'DESCR'
      Size = 50
    end
  end
end
