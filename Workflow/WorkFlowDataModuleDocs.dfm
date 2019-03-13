object dmWorkFlowDataModuleDocs: TdmWorkFlowDataModuleDocs
  OldCreateOrder = False
  Height = 498
  Width = 622
  object tbDocGroups: TUniTable
    TableName = 'WORKFLOWDOCGROUPS'
    OrderFields = 'NAME'
    Connection = dmAxiom.uniInsight
    KeyFields = 'GROUPID'
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SEQ_WORKFLOWGENDOCUMENT'
      'Oracle.FetchAll=True')
    Left = 402
    Top = 64
  end
  object dsDocGroups: TDataSource
    AutoEdit = False
    DataSet = tbDocGroups
    Left = 402
    Top = 17
  end
  object qDocTemplAdminDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from WORKFLOWDOCTEMPLATES'
      'where  doctype = '#39'A'#39
      'and groupid = :groupid'
      'and workflowtypecode = nvl(:workflowtypecode,workflowtypecode)'
      'order by documentname')
    FetchRows = 150
    Left = 280
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'groupid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end>
  end
  object dsDocTemplAdminDocs: TDataSource
    AutoEdit = False
    DataSet = qDocTemplAdminDocs
    Left = 280
    Top = 64
  end
  object tbDocTemplates: TUniTable
    TableName = 'WORKFLOWDOCTEMPLATES'
    OrderFields = 'DOCUMENTNAME'
    Connection = dmAxiom.uniInsight
    DetailFields = 'WORKFLOWTYPECODE'
    KeyFields = 'DOCID'
    FilterSQL = 'ACTIVE = '#39'Y'#39
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SEQ_WORKFLOWDOCTEMPLATES')
    Left = 56
    Top = 17
  end
  object dsDocTemplates: TDataSource
    DataSet = tbDocTemplates
    Left = 56
    Top = 64
  end
  object qPhoneGroupings: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM pbgroup where otherparty = '#39'Y'#39
      'order by category')
    Left = 160
    Top = 17
  end
  object dsPhoneGroupings: TDataSource
    DataSet = qPhoneGroupings
    Left = 160
    Top = 64
  end
  object qAdminUsedGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT  g.groupid, g.name, count(*) as cnt FROM workflowdocgroup' +
        's g, workflowdoctemplates d '
      '  WHERE d.groupid = g.groupid'
      '  AND d.doctype ='#39'A'#39
      'GROUP BY g.groupid, g.name'
      'ORDER BY g.name')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 56
    Top = 124
  end
  object qCountOtherDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select count(*) as numdocs, :workflowtypecode as workflowtypecod' +
        'e '
      'from WORKFLOWDOCTEMPLATES'
      'where  workflowtypecode = :workflowtypecode'
      'AND doctype in ('#39'O'#39','#39'A'#39')'
      'AND groupid IS NULL')
    Left = 160
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end>
  end
  object qCountAdminDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select count(*) as numdocs'
      ' from WORKFLOWDOCTEMPLATES'
      'where  doctype = '#39'A'#39
      'and groupid = :groupid'
      'and workflowtypecode = nvl(:workflowtypecode,workflowtypecode )'
      ''
      ''
      '/*'
      'select count(*) as numdocs'
      'from WORKFLOWDOCTEMPLATES'
      'where  doctype = '#39'A'#39' '
      'and groupid = :groupid'
      'and workflowtypecode is null'
      '*/')
    Left = 280
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'groupid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end>
  end
  object qCountGroupedOtherDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select count(*) as numdocs, :workflowtypecode as workflowtypecod' +
        'e from WORKFLOWDOCTEMPLATES'
      'where  workflowtypecode = :workflowtypecode'
      'AND doctype = '#39'O'#39
      'AND groupid = :groupid')
    Left = 94
    Top = 301
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'groupid'
        Value = nil
      end>
  end
  object qCountGroupedPartyDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select count(*) as numdocs, '
      ':workflowtypecode as workflowtypecode,'
      ':partytype as partytype'
      ' from WORKFLOWDOCTEMPLATES'
      'where  workflowtypecode = :workflowtypecode'
      'AND partytype = :partytype'
      'AND doctype = '#39'P'#39
      'AND groupid = :groupid')
    Left = 94
    Top = 370
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'groupid'
        Value = nil
      end>
  end
  object qCountPartyDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select count(*) as numdocs, '
      ':workflowtypecode as workflowtypecode,'
      ':partytype as partytype'
      ' from WORKFLOWDOCTEMPLATES'
      'where  workflowtypecode = :workflowtypecode'
      'AND partytype = :partytype'
      'AND doctype = '#39'P'#39
      'AND groupid IS NULL')
    Left = 56
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
  end
  object qDocTemplMatterParty: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   0 AS ID, '#39'Client'#39' AS NAME, '#39'P'#39' AS TYPE'
      '    FROM DUAL'
      '   WHERE (SELECT COUNT (*)'
      '            FROM workflowdoctemplates'
      '           WHERE doctype in ('#39'O'#39','#39'A'#39')'
      '             AND workflowtypecode = :workflowtypecode'
      '             AND groupid IS NULL'
      '-- INSERT NOT USED HERE'
      '         ) > 0'
      'UNION'
      'SELECT DISTINCT 0 AS ID, partytype AS NAME, '#39'P'#39' AS TYPE'
      '           FROM workflowdoctemplates'
      '          WHERE workflowtypecode = :workflowtypecode'
      '            AND groupid IS NULL'
      '            AND doctype = '#39'P'#39
      '-- INSERT NOT USED HERE'
      'UNION'
      'SELECT   groupid AS ID, NAME, '#39'G'#39
      '    FROM workflowdocgroups'
      '   WHERE groupid IN ('
      '            SELECT UNIQUE (groupid)'
      '                     FROM workflowdoctemplates'
      '                    WHERE groupid IS NOT NULL'
      '                      AND doctype IN ('#39'P'#39', '#39'O'#39')'
      '                      AND workflowtypecode = :workflowtypecode'
      '-- INSERT NOT USED HERE'
      '         )'
      'UNION'
      
        'SELECT DISTINCT workflowdoctemplates.groupid AS ID, workflowdocg' +
        'roups.NAME,'
      '                '#39'A'#39' AS TYPE'
      '           FROM workflowdocgroups, workflowdoctemplates'
      '          WHERE workflowtypecode = :workflowtypecode'
      '            AND workflowdoctemplates.groupid IS NOT NULL'
      '            AND doctype = '#39'A'#39
      
        '            AND workflowdocgroups.groupid = workflowdoctemplates' +
        '.groupid'
      '-- INSERT NOT USED HERE'
      'ORDER BY 2')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 448
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end>
  end
  object qDocTemplMatterOtherDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from WORKFLOWDOCTEMPLATES'
      'where  workflowtypecode = :workflowtypecode'
      'AND doctype in ('#39'O'#39','#39'A'#39')'
      'AND groupid IS NULL'
      'order by documentname')
    Left = 248
    Top = 185
    ParamData = <
      item
        DataType = ftString
        Name = 'workflowtypecode'
        Value = ''
      end>
  end
  object qDocTemplMatterPartyDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from WORKFLOWDOCTEMPLATES'
      'where  workflowtypecode = :workflowtypecode'
      'AND partytype = :partytype'
      'AND doctype = '#39'P'#39
      'AND groupid IS NULL'
      'order by documentname')
    Left = 93
    Top = 433
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
  end
  object qDocTemplMatterGroupedParty: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  '#39'Client'#39' AS name'
      '  FROM dual'
      '  WHERE ('
      '    SELECT COUNT(*)'
      '    FROM workflowdoctemplates'
      '    WHERE doctype = '#39'O'#39
      '    AND workflowtypecode = :workflowtypecode'
      '    AND groupid = :groupid'
      '-- INSERT NOT USED HERE'
      '  ) > 0'
      'UNION'
      '  SELECT DISTINCT'
      #9'partytype AS name'
      '  FROM workflowdoctemplates'
      '  WHERE workflowtypecode = :workflowtypecode'
      '    AND groupid = :groupid'
      '    AND doctype = '#39'P'#39
      '-- INSERT NOT USED HERE'
      'ORDER BY name')
    Left = 261
    Top = 362
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'groupid'
        Value = nil
      end>
  end
  object qDocTemplMatterGroupedPartyDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from WORKFLOWDOCTEMPLATES'
      'where  workflowtypecode = :workflowtypecode'
      'AND partytype = :partytype'
      'AND doctype = '#39'P'#39
      'AND groupid = :groupid'
      'order by documentname'
      '')
    Left = 261
    Top = 433
    ParamData = <
      item
        DataType = ftString
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'groupid'
        Value = nil
      end>
  end
  object qDocTemplMatterGroupedOtherDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from WORKFLOWDOCTEMPLATES'
      'where  workflowtypecode = :workflowtypecode'
      'AND doctype = '#39'O'#39
      'AND groupid = :groupid'
      'order by documentname')
    Left = 456
    Top = 433
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workflowtypecode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'groupid'
        Value = nil
      end>
  end
  object qDocTemplOtherParties: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from workflowdtotherparties'
      'where  docid = :docid'
      'order by listorder'
      '')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 261
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
  object qDocTemplOtherPartiesInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO workflowdtotherparties (docid, listorder,partytype)'
      'VALUES (:docid, :listorder, :partytype)'
      '')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 448
    Top = 370
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'listorder'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
  end
  object qDocTemplOtherPartiesUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE workflowdtotherparties'
      'SET'
      ' listorder = :listorder,'
      ' partytype = :partytype'
      'WHERE'
      '  id = :id'
      '')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 448
    Top = 305
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'listorder'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object qDocTemplOtherPartiesDelete: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM workflowdtotherparties'
      'WHERE'
      ' id = :id'
      '')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 94
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object vtDocTemplateReport: TVirtualTable
    FieldDefs = <
      item
        Name = 'DocID'
        DataType = ftInteger
      end
      item
        Name = 'DocumentName'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Addressee'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RefersTo'
        DataType = ftString
        Size = 200
      end>
    Left = 386
    Top = 132
    Data = {
      040004000500446F63494403000000000000000C00446F63756D656E744E616D
      6501006400000000000900416464726573736565010032000000000008005265
      66657273546F0100C80000000000000001000000040000000100000001000000
      3201000000320100000033}
    object vtDocTemplateReportDocID: TIntegerField
      FieldName = 'DocID'
    end
    object vtDocTemplateReportDocumentName: TStringField
      FieldName = 'DocumentName'
      Size = 100
    end
    object vtDocTemplateReportAddressee: TStringField
      FieldName = 'Addressee'
      Size = 50
    end
    object vtDocTemplateReportRefersTo: TStringField
      FieldName = 'RefersTo'
      Size = 200
    end
  end
  object qDocTemplWKAdminDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from WORKFLOWDOCTEMPLATES'
      'where  doctype = '#39'A'#39
      '--and workflowtypecode is not null'
      'order by documentname')
    FetchRows = 150
    Left = 512
    Top = 134
  end
  object dsDocTemplWKAdminDocs: TDataSource
    AutoEdit = False
    DataSet = qDocTemplWKAdminDocs
    Left = 504
    Top = 189
  end
  object tbDocTemplatesEdit: TUniTable
    TableName = 'WORKFLOWDOCTEMPLATES'
    OrderFields = 'DOCUMENTNAME'
    Connection = dmAxiom.uniInsight
    DetailFields = 'WORKFLOWTYPECODE'
    KeyFields = 'DOCID'
    AfterInsert = tbDocTemplatesEditAfterInsert
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SEQ_WORKFLOWDOCTEMPLATES')
    Left = 500
    Top = 12
  end
  object dsDocTemplatesEdit: TDataSource
    DataSet = tbDocTemplatesEdit
    Left = 504
    Top = 71
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 564
    Top = 348
  end
end
