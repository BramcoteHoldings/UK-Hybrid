object dmWorkFlowDataModuleMerge: TdmWorkFlowDataModuleMerge
  OldCreateOrder = False
  Height = 620
  Width = 447
  object qExportBranchMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  b.dxaddress,'
      '  TRIM(b.add1 || '#39' '#39' || b.add2) AS shortaddress,'
      '  b.add1 AS address1,'
      '  b.add2 AS address2,'
      '  b.suburb AS city,'
      '  b.state,'
      '  b.postcode,'
      '  b.phone,'
      '  b.fax,'
      '  b.mailaddress,'
      '  b.mailcity'
      'FROM'
      '  branch b,'
      '  matter m'
      'WHERE'
      '  b.code = m.branch AND'
      '  m.nmatter = :nmatter'
      '')
    Left = 331
    Top = 187
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qExportBranchMatterDXADDRESS: TStringField
      FieldName = 'DXADDRESS'
      Size = 60
    end
    object qExportBranchMatterSHORTADDRESS: TStringField
      FieldName = 'SHORTADDRESS'
      ReadOnly = True
      Size = 121
    end
    object qExportBranchMatterADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object qExportBranchMatterADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object qExportBranchMatterCITY: TStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qExportBranchMatterSTATE: TStringField
      FieldName = 'STATE'
    end
    object qExportBranchMatterPOSTCODE: TStringField
      FieldName = 'POSTCODE'
    end
    object qExportBranchMatterPHONE: TStringField
      FieldName = 'PHONE'
      Size = 30
    end
    object qExportBranchMatterFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qExportBranchMatterMAILADDRESS: TStringField
      FieldName = 'MAILADDRESS'
      Size = 50
    end
    object qExportBranchMatterMAILCITY: TStringField
      FieldName = 'MAILCITY'
      Size = 30
    end
  end
  object qExportBranchUser: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  b.dxaddress,'
      '  TRIM(b.add1 || '#39' '#39' || b.add2) AS shortaddress,'
      '  b.add1 AS address1,'
      '  b.add2 AS address2,'
      '  b.suburb AS city,'
      '  b.state,'
      '  b.postcode,'
      '  b.phone,'
      '  b.fax,'
      '  b.mailaddress,'
      '  b.mailcity'
      'FROM'
      '  branch b,'
      '  employee e'
      'WHERE'
      '  b.code = e.branch AND'
      '  e.code = :employee'
      '  ')
    Left = 41
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'employee'
        Value = nil
      end>
  end
  object qExportEmployees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from ('
      
        'SELECT   m.employee AS ID, m.TYPE, e.NAME, e.phone, e.fax AS fac' +
        'simile,'
      
        '         e.email, e.sex, d.descr AS department, b.descr AS offic' +
        'e,'
      
        '         e.signatory, e.POSITION, e.rate, e.givennames, e.surnam' +
        'e, e.ilars,'
      '         e.initials'
      '    FROM employee e,         '
      '         (SELECT partner AS employee, '#39'Partner'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION ALL'
      '          SELECT author AS employee, '#39'Author'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION ALL'
      '          SELECT author AS employee, '#39'Solicitor'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION ALL'
      '          SELECT controller AS employee, '#39'Controller'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION ALL'
      '          SELECT OPERATOR AS employee, '#39'Assistant'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT author AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'AUTHOR'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'Author'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT partner AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'PARTNER'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'Partner'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT controller AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'CONTROLLER'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'Controller'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT OPERATOR AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'OPERATOR'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'Operator'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT paralegal AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'LAWCLERK'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'LawClerk'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter) m,'
      '         empdept d,'
      '         branch b'
      
        '   WHERE e.code = m.employee AND d.code(+) = e.dept AND b.code(+' +
        ') = e.branch'
      'ORDER BY TYPE)'
      'union'
      '(SELECT code AS ID, '#39'User Id'#39', NAME, phone, fax AS facsimile,'
      
        '         email, sex, '#39#39'/*d.descr */ AS department, '#39#39'/*b.descr *' +
        '/ AS office,'
      '         signatory, POSITION, rate, givennames, surname, ilars,'
      '         initials AS employee'
      '            FROM employee'
      '           WHERE employee.user_name = USER)'
      ''
      ''
      '/*'
      
        'SELECT   m.employee AS ID, m.TYPE, e.NAME, e.phone, e.fax AS fac' +
        'simile,'
      
        '         e.email, e.sex, d.descr AS department, b.descr AS offic' +
        'e,'
      
        '         e.signatory, e.POSITION, e.rate, e.givennames, e.surnam' +
        'e, e.ilars,'
      '         e.initials, (SELECT initials AS employee'
      '                        FROM employee'
      
        '                       WHERE employee.login_id = USER) AS user_i' +
        'd'
      '    FROM employee e,'
      '         (SELECT partner AS employee, '#39'Partner'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION ALL'
      '          SELECT author AS employee, '#39'Author'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION ALL'
      '          SELECT author AS employee, '#39'Solicitor'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION ALL'
      '          SELECT controller AS employee, '#39'Controller'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION ALL'
      '          SELECT OPERATOR AS employee, '#39'Assistant'#39' AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT author AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'AUTHOR'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'Author'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT partner AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'PARTNER'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'Partner'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT controller AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'CONTROLLER'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'Controller'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT OPERATOR AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'OPERATOR'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'Operator'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter'
      '          UNION'
      '          SELECT paralegal AS employee,'
      '                 NVL ((SELECT VALUE'
      '                         FROM display_name'
      '                        WHERE NAME = '#39'LAWCLERK'#39
      '                          AND CLASS = '#39'MATTER'#39
      '                          AND acct = entity),'
      '                      '#39'LawClerk'#39
      '                     ) AS TYPE'
      '            FROM matter'
      '           WHERE nmatter = :nmatter) m,'
      '         empdept d,'
      '         branch b'
      '   WHERE e.code = m.employee '
      '     AND d.code(+) = e.dept'
      '     AND b.code(+) = e.branch'
      'ORDER BY TYPE'
      '*/')
    Left = 49
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qExportEmployeesID: TStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 10
    end
    object qExportEmployeesTYPE: TStringField
      FieldName = 'TYPE'
      ReadOnly = True
      Size = 60
    end
    object qExportEmployeesNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qExportEmployeesPHONE: TStringField
      FieldName = 'PHONE'
      Size = 30
    end
    object qExportEmployeesFACSIMILE: TStringField
      FieldName = 'FACSIMILE'
      Size = 30
    end
    object qExportEmployeesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object qExportEmployeesSEX: TStringField
      FieldName = 'SEX'
      FixedChar = True
      Size = 1
    end
    object qExportEmployeesDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      ReadOnly = True
      Size = 60
    end
    object qExportEmployeesOFFICE: TStringField
      FieldName = 'OFFICE'
      ReadOnly = True
      Size = 60
    end
    object qExportEmployeesSIGNATORY: TStringField
      FieldName = 'SIGNATORY'
      Size = 80
    end
    object qExportEmployeesPOSITION: TStringField
      FieldName = 'POSITION'
      Size = 50
    end
    object qExportEmployeesRATE: TFloatField
      FieldName = 'RATE'
    end
    object qExportEmployeesGIVENNAMES: TStringField
      FieldName = 'GIVENNAMES'
      Size = 60
    end
    object qExportEmployeesSURNAME: TStringField
      FieldName = 'SURNAME'
      Size = 100
    end
    object qExportEmployeesILARS: TStringField
      FieldName = 'ILARS'
      Size = 1
    end
    object qExportEmployeesINITIALS: TStringField
      FieldName = 'INITIALS'
      ReadOnly = True
    end
  end
  object qExportEntity: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  code,'
      '  name,'
      '  acn,'
      '  abn'
      'FROM'
      '  entity'
      'WHERE'
      ' code = :entity')
    Left = 331
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
    object qExportEntityCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 2
    end
    object qExportEntityNAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
    object qExportEntityACN: TStringField
      FieldName = 'ACN'
      Size = 30
    end
    object qExportEntityABN: TStringField
      FieldName = 'ABN'
      Size = 30
    end
  end
  object qExportMatter: TUniQuery
    UpdatingTable = 'MATTER'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      '  m.nmatter,'
      '  m.opened,'
      '  mt.descr as mattertype,'
      '  mst.descr as mattersubtype,'
      '  ep.name as partner,'
      '  ea.name as author,'
      '  m.title,'
      '  m.fileid,'
      '  ms.descr as status,'
      '  fc.descr as account,'
      '  m.trustauth,'
      '  m.shortdescr,'
      '  m.longdescr,'
      '  m.office,'
      '  c.name as clientname,'
      '  c.contact as clientcontact,'
      '  cg.descr as clientgender,'
      '  m.contact as contact,'
      '  ec.name as controller,'
      '  eo.name as operator,'
      '  m.type,'
      '  m.archived,'
      '  m.acct,'
      '  m.bill_to,'
      '  m.lasttrans,'
      '  m.lasttrust,'
      '  m.referredby,'
      '  m.notes,'
      '  m.litigation,'
      '  m.speculation,'
      '  m.agency,'
      '  m.gratis,'
      '  m.billing_plan,'
      '  m.prev_ncmaudit,'
      '  m.prev_ntraudit,'
      '  m.task,'
      '  m.exp_completion,'
      '  m.opref,'
      '  m.task_date,'
      '  m.feecode,'
      '  m.completed,'
      '  m.labelcode,'
      '  m.modby,'
      '  m.inttrigdate,'
      '  m.tcclrdate,'
      '  m.lastbilldate,'
      '  m.lastletter,'
      '  m.branch,'
      '  m.gstexempt,'
      '  m.trstmnt,'
      '  m.trauth,'
      '  m.sledate,'
      '  m.jurisdiction,'
      '  m.debtornote,'
      '  m.debtordate,'
      '  m.workflow AS workflowtypecode,'
      '  w.descr AS workflowtype,'
      '  b.descr AS matterbranch,'
      '  M.ESTIMATEDFEE,'
      '  M.ESTIMATEDDISBPRINC,'
      '  M.ESTIMATEDDISBAGENT,'
      '  M.ESTIMATEDCREDITORS,'
      '  M.BUDGET_FEES,'
      '  M.BUDGET_DISB,'
      
        '  M.ESTIMATEDDISBPRINC + M.ESTIMATEDDISBAGENT + M.ESTIMATEDCREDI' +
        'TORS AS TOTAL_DISB,'
      
        '  M.ESTIMATEDDISBPRINC + M.ESTIMATEDDISBAGENT + M.ESTIMATEDCREDI' +
        'TORS + M.ESTIMATEDFEE AS ESTIMATE_TOTAL,'
      '  m.author||'#39':'#39'||m.operator||'#39':'#39'||m.fileid as AuthOper,'
      '  ea.INITIALS as author_initials,'
      '  ep.INITIALS as partner_initials,'
      '  ec.INITIALS as controller_initials,'
      '  eo.INITIALS as operator_initials,'
      '  M.BARCODE,'
      '  M.BPAY_REFERENCE,'
      '  EA.EMAIL AS AUTHOR_EMAIL,'
      '  EA.PHONE AS AUTHOR_PHONE,'
      '  EA.NAME AS AUTHOR_NAME'
      'from'
      '  matter m,'
      '  mattertype mt,'
      '  mattersubtype mst,'
      '  employee ep,'
      '  employee ea,'
      '  employee eo,'
      '  employee ec,'
      '  matterstatus ms,'
      '  feecode fc,'
      '  client c,'
      '  gender cg,'
      '  workflowtype w,'
      '  branch b'
      'where'
      '  mt.code = m.TYPE'
      '  AND w.code(+) = m.workflow'
      '  AND mst.code(+) = m.subtype'
      '  AND mst.mattertype(+) = m.type'
      '  AND ep.code(+) = m.partner'
      '  AND ea.code(+) = m.author'
      '  AND eo.code(+) = m.operator'
      '  AND ec.code(+) = m.controller'
      '  AND ms.code(+) = m.status'
      '  AND fc.code(+) = m.acct'
      '  AND c.nclient(+) = m.nclient'
      '  AND cg.code(+) = c.gender'
      '  AND m.nmatter = :nmatter'
      '  AND b.code(+) = m.branch')
    SpecificOptions.Strings = (
      'Oracle.ExtendedFieldsInfo=True')
    Left = 41
    Top = 73
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qExportMatterData: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   df.code AS DATAFORM, df.caption AS dataformcaption, d.s' +
        'eq,'
      
        '         f.fieldname, t.descr, t.caption, f.textvalue, f.numberv' +
        'alue,'
      '         f.datevalue, t.TYPE, m.nmatter AS nunique,'
      '         nunique2, df.code AS linktable'
      
        '    FROM FIELDTYPELINK f, FIELDTYPE t, DATAFORMFIELD d, DATAFORM' +
        ' df, MATTER m'
      '   WHERE t.NAME = f.fieldname'
      '     AND d.DATAFORM = df.code'
      '     AND d.fieldname = t.NAME'
      '     AND f.linktable = d.DATAFORM'
      '     AND (f.nunique = :nmatter)'
      '     AND df.code <> '#39'SINGLEFIELDFORM'#39
      '     AND df.party IS NULL'
      '     AND m.nmatter = :nmatter'
      
        '     AND (df.workflowtypecode = NVL(:workflow, m.workflow) OR df' +
        '.workflowtypecode IS NULL or '
      
        '       exists (select 1 from dataform_workflow w where w.datafor' +
        'm = d.dataform and w.workflowtypecode = m.workflow) )'
      'UNION'
      
        'SELECT   df.code AS DATAFORM, df.caption AS dataformcaption, d.s' +
        'eq,'
      '         t.NAME AS fieldname, t.descr, t.caption,'
      '         CAST (NULL AS VARCHAR2 (2000)) AS textvalue,'
      '         CAST (NULL AS NUMBER (17, 2)) AS numbervalue,'
      
        '         CAST (NULL AS DATE) AS datevalue, t.TYPE, m.nmatter AS ' +
        'nunique,'
      
        '         CAST (NULL AS INTEGER) AS nunique2, df.code AS linktabl' +
        'e'
      '    FROM FIELDTYPE t, DATAFORMFIELD d, DATAFORM df, MATTER m'
      '   WHERE d.DATAFORM = df.code'
      '     AND m.nmatter = :nmatter'
      
        '     AND (df.workflowtypecode = NVL(:workflow, m.workflow) OR df' +
        '.workflowtypecode IS NULL or '
      
        '       exists (select 1 from dataform_workflow w where w.datafor' +
        'm = d.dataform and w.workflowtypecode = m.workflow))'
      '     AND df.code <> '#39'SINGLEFIELDFORM'#39
      '     AND df.party IS NULL'
      '     AND d.fieldname = t.NAME'
      '     AND t.NAME NOT IN ('
      '            SELECT t.NAME'
      '              FROM FIELDTYPELINK f, FIELDTYPE t, DATAFORMFIELD d'
      '             WHERE t.NAME = f.fieldname'
      '               AND d.DATAFORM = df.code'
      '               AND d.fieldname = t.NAME'
      '               AND f.linktable = d.DATAFORM'
      '               AND f.nunique = :nmatter) ORDER BY DATAFORM, seq'
      ' '
      ''
      ''
      ''
      '/*'
      'SELECT'
      '  df.code as dataform,'
      '  df.caption AS dataformcaption,'
      '  d.seq,'
      '  f.fieldname,'
      '  t.descr,'
      '  t.caption,'
      '  f.textvalue,'
      '  f.numbervalue,'
      '  f.datevalue,'
      '  t.type,'
      '  m.nmatter as nunique,'
      '  CAST(NULL AS INTEGER) as nunique2,'
      '  df.code AS linktable'
      'FROM'
      '  fieldtypelink f,'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform df,'
      '  matter m'
      'WHERE'
      '  t.name = f.fieldname'
      '  AND d.dataform = df.code'
      '  AND d.fieldname = t.name'
      '  AND f.linktable = d.dataform'
      '  AND f.nunique = :nmatter'
      '  AND df.code <> '#39'SINGLEFIELDFORM'#39
      '  AND df.party IS NULL'
      '  AND m.nmatter = :nmatter'
      
        '  AND (df.workflowtypecode = m.workflow OR df.workflowtypecode I' +
        'S NULL)'
      'UNION'
      'SELECT'
      '  df.code as dataform,'
      '  df.caption AS dataformcaption,'
      '  d.seq,'
      '  t.name AS fieldname,'
      '  t.descr,'
      '  t.caption,'
      '  CAST(NULL AS VARCHAR2(2000)) AS textvalue,'
      '  CAST(NULL AS NUMBER(17,2)) AS numbervalue,'
      '  CAST(NULL AS DATE) AS datevalue,'
      '  t.type,'
      '  m.nmatter as nunique,'
      '  CAST(NULL AS INTEGER) as nunique2,'
      '  df.code AS linktable'
      'FROM'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform df,'
      '  matter m'
      'WHERE'
      '  d.dataform = df.code'
      '  AND m.nmatter = :nmatter'
      
        '  AND (df.workflowtypecode = m.workflow OR df.workflowtypecode I' +
        'S NULL)'
      '  AND df.code <> '#39'SINGLEFIELDFORM'#39
      '  AND df.party IS NULL'
      '  AND d.fieldname = t.name'
      '  AND t.name NOT IN'
      '    (SELECT t.name'
      '     FROM fieldtypelink f, fieldtype t, dataformfield d'
      '     WHERE t.name = f.fieldname'
      '       AND d.dataform = df.code'
      '       AND d.fieldname = t.name'
      '       AND f.linktable = d.dataform'
      '       AND f.nunique = :nmatter)'
      ' ORDER BY dataform, seq'
      '*/')
    Options.StrictUpdate = False
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 173
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'workflow'
        Value = nil
      end>
    object qExportMatterDataDATAFORM: TStringField
      FieldName = 'DATAFORM'
      ReadOnly = True
      Size = 32
    end
    object qExportMatterDataDATAFORMCAPTION: TStringField
      FieldName = 'DATAFORMCAPTION'
      ReadOnly = True
      Size = 60
    end
    object qExportMatterDataSEQ: TSmallintField
      FieldName = 'SEQ'
      ReadOnly = True
    end
    object qExportMatterDataFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 40
    end
    object qExportMatterDataDESCR: TStringField
      FieldName = 'DESCR'
      ReadOnly = True
      Size = 400
    end
    object qExportMatterDataCAPTION: TStringField
      FieldName = 'CAPTION'
      ReadOnly = True
      Size = 120
    end
    object qExportMatterDataTEXTVALUE: TStringField
      FieldName = 'TEXTVALUE'
      Size = 2000
    end
    object qExportMatterDataNUMBERVALUE: TFloatField
      FieldName = 'NUMBERVALUE'
    end
    object qExportMatterDataDATEVALUE: TDateTimeField
      FieldName = 'DATEVALUE'
    end
    object qExportMatterDataTYPE: TStringField
      FieldName = 'TYPE'
      ReadOnly = True
      Size = 2
    end
    object qExportMatterDataNUNIQUE: TLargeintField
      FieldName = 'NUNIQUE'
      ReadOnly = True
    end
    object qExportMatterDataNUNIQUE2: TFloatField
      FieldName = 'NUNIQUE2'
    end
    object qExportMatterDataLINKTABLE: TStringField
      FieldName = 'LINKTABLE'
      ReadOnly = True
      Size = 32
    end
  end
  object qInsertGenDocParty: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO'
      'workflowgendocumentparties '
      ' (nname, partytype, workflowgendocument ) '
      'VALUES '
      ' (:nname, :partytype, :workflowgendocument)'
      '')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 331
    Top = 314
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'workflowgendocument'
        Value = nil
      end>
  end
  object spInsertGenDocument: TUniStoredProc
    StoredProcName = 'WORKFLOWINSERTGENDOCUMENT'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := WORKFLOWINSERTGENDOCUMENT(:ANMATTER, :ATEMPLATELINE' +
        'ID, :ADOCUMENTID, :AFILEPATH, :ATEMPLATEPATH, :ADATAFILEPATH, :A' +
        'WHO, :ADATAFORM, :APRECCATEGORY, :APRECCLASSIFICATION, :ADOCFILE' +
        'PATH, :ADOCDESCR, :ADOCDOCID);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 200
    Top = 309
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ANMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ATEMPLATELINEID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ADOCUMENTID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'AFILEPATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ATEMPLATEPATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADATAFILEPATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'AWHO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADATAFORM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'APRECCATEGORY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'APRECCLASSIFICATION'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADOCFILEPATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADOCDESCR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ADOCDOCID'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'WORKFLOWINSERTGENDOCUMENT'
  end
  object qMatterClient: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT P.NNAME, '
      '  P.SEARCH'
      'FROM MATTER M, PHONEBOOK P, CLIENT C'
      'WHERE M.NMATTER = :NMATTER'
      '  AND M.NCLIENT = C.NCLIENT'
      '  AND P.NCLIENT = C.NCLIENT'
      '')
    Left = 173
    Top = 186
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end>
    object qMatterClientNNAME: TLargeintField
      FieldName = 'NNAME'
      ReadOnly = True
      Required = True
    end
    object qMatterClientSEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Required = True
      Size = 100
    end
  end
  object qMatterDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT m.fileid, m.nmatter, m.shortdescr, c.search clientname,'
      '       w.descr AS workflowtype, m.workflow AS workflowtypecode,'
      '       e.initials AS author_initial, e.phone AS author_phone,'
      '       e.email AS author_email'
      '  FROM employee e, client c, workflowtype w, matter m'
      ' WHERE c.nclient = m.nclient'
      '   AND w.code = m.workflow'
      '   AND m.nmatter = :nmatter'
      '   AND m.author = e.code ')
    Left = 42
    Top = 187
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
      Size = 100
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
    object qMatterDetailsAUTHOR_INITIAL: TStringField
      FieldName = 'AUTHOR_INITIAL'
    end
    object qMatterDetailsAUTHOR_PHONE: TStringField
      FieldName = 'AUTHOR_PHONE'
      Size = 30
    end
    object qMatterDetailsAUTHOR_EMAIL: TStringField
      FieldName = 'AUTHOR_EMAIL'
      Size = 100
    end
  end
  object qMatterFormData: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.nmatter,'
      '  p.dataform,'
      '  p.dataformcaption,'
      '  p.seq,'
      '  p.fieldname,'
      '  p.fieldtype,'
      '  k.textvalue,'
      '  k.numbervalue,'
      '  k.datevalue,'
      '  DECODE(k.fieldname,NULL,'#39'T'#39','#39'F'#39') AS new,'
      '  p.caption'
      'FROM'
      '  ('
      '    SELECT'
      '      z.nmatter,'
      '      z.dataform,'
      '      z.dataformcaption,'
      '      y.seq,'
      '      y.fieldname,'
      '      y.type AS fieldtype,'
      '      y.caption'
      '    FROM'
      '      ('
      '        SELECT'
      '          UNIQUE(f.nunique2) AS nmatter,'
      '          g.code AS dataform,'
      '          g.caption AS dataformcaption'
      '        FROM'
      '          fieldtypelink f,'
      '          dataform g'
      '        WHERE'
      '          f.linktable = g.code AND'
      '          g.party = :partytype AND'
      '          g.partyismatterspecific ='#39'Y'#39' AND'
      '          f.nunique = :nunique'
      '        UNION'
      '        SELECT '
      '          m.nmatter,'
      '          g.code AS dataform,'
      '          g.caption AS dataformcaption'
      '        FROM'
      '          matterparty p,'
      '          matter m,'
      '          dataform g'
      '        WHERE'
      '          p.nname = :nunique AND'
      '          m.nmatter = p.nmatter AND'
      '          g.party = :partytype AND'
      '          g.partyismatterspecific ='#39'Y'#39' '
      
        '--        AND  (g.workflowtypecode IS NULL OR g.workflowtypecode' +
        ' = m.workflow)'
      '        UNION'
      '        SELECT'
      '          0 AS nmatter,'
      '          g.code AS dataform,'
      '          g.caption as dataformcaption'
      '        FROM'
      '          dataform g'
      '        WHERE'
      '          g.party = :partytype AND'
      '          g.partyismatterspecific = '#39'Y'#39
      '        ORDER BY nmatter, dataform'
      '      ) z,'
      '      ('
      '        SELECT'
      '          d.fieldname,'
      '          d.dataform,'
      '          d.seq,'
      '          t.type,'
      '          t.caption'
      '        FROM'
      '          dataformfield d,'
      '          fieldtype t'
      '        WHERE'
      '          t.name = d.fieldname'
      '        ORDER BY dataform,fieldname,seq'
      '      ) y'
      '    WHERE'
      '      y.dataform = z.dataform'
      '    ORDER BY nmatter, dataform, seq'
      '  ) p,'
      '  ('
      '    SELECT'
      '      nunique AS nname,'
      '      nunique2 AS nmatter,'
      '      fieldname,'
      '      textvalue,'
      '      numbervalue,'
      '      datevalue,'
      '      linktable AS dataform'
      '    FROM'
      '      fieldtypelink'
      '    WHERE'
      '      nunique = :nunique AND'
      '      nunique2 IS NOT NULL'
      '    ORDER BY nname, nmatter, dataform, fieldname'
      '  ) k'
      'WHERE'
      '  p.nmatter = k.nmatter(+) AND'
      '  p.dataform = k.dataform(+) AND'
      '  p.fieldname = k.fieldname(+) AND'
      '  p.nmatter = :nmatter'
      'ORDER BY p.dataform, p.nmatter, p.seq'
      ''
      '')
    Left = 331
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nunique'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qMatterFormDataNMATTER: TFloatField
      FieldName = 'NMATTER'
      ReadOnly = True
    end
    object qMatterFormDataDATAFORM: TStringField
      FieldName = 'DATAFORM'
      ReadOnly = True
      Size = 32
    end
    object qMatterFormDataDATAFORMCAPTION: TStringField
      FieldName = 'DATAFORMCAPTION'
      ReadOnly = True
      Size = 60
    end
    object qMatterFormDataSEQ: TSmallintField
      FieldName = 'SEQ'
      ReadOnly = True
    end
    object qMatterFormDataFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      ReadOnly = True
      Size = 32
    end
    object qMatterFormDataFIELDTYPE: TStringField
      FieldName = 'FIELDTYPE'
      ReadOnly = True
      Size = 2
    end
    object qMatterFormDataTEXTVALUE: TStringField
      FieldName = 'TEXTVALUE'
      ReadOnly = True
      Size = 2000
    end
    object qMatterFormDataNUMBERVALUE: TFloatField
      FieldName = 'NUMBERVALUE'
      ReadOnly = True
    end
    object qMatterFormDataDATEVALUE: TDateTimeField
      FieldName = 'DATEVALUE'
      ReadOnly = True
    end
    object qMatterFormDataNEW: TStringField
      FieldName = 'NEW'
      ReadOnly = True
      Size = 1
    end
    object qMatterFormDataCAPTION: TStringField
      FieldName = 'CAPTION'
      ReadOnly = True
      Size = 120
    end
  end
  object qMatterParty: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  mp.nname,'
      '  mp.category,'
      '  p.search,'
      '  p.name,'
      '  p.givennames,'
      '  p.lastname,'
      '  p.salutation,'
      '  pp.name as parentname,'
      '  pp.nname as parentnname,'
      
        '  NVL(NVL(p.homephone,pp.homephone), NVL(p.workphone,pp.workphon' +
        'e)) AS phone,'
      ''
      '  f.nname        AS actingfornname,'
      '  f.search       AS actingforsearch,'
      '  f.name         AS actingforname,'
      '  f.givennames   AS actingforgivennames,'
      '  f.lastname     AS actingforlastname,'
      '  f.salutation   AS actingforsalutation,'
      '  mpf.category   AS actingforcategory,'
      '  nvl(f.homephone, f.workphone) AS actingforphone,'
      ''
      '  t.nname        AS throughnname,'
      '  t.search       AS throughsearch,'
      '  t.name         AS throughname,'
      '  t.givennames   AS throughgivennames,'
      '  t.lastname     AS throughlastname,'
      '  t.salutation   AS throughsalutation,'
      '  mpt.category   AS throughcategory,'
      '  nvl(t.homephone, t.workphone) AS throughphone,'
      '  NVL(P.CONTACT_NAME, pp.CONTACT_NAME) as PARTY_CONTACT_NAME,'
      
        '  NVL(P.additional_contact_name, pp.additional_contact_name) as ' +
        'PARTY_ADDITIONAL_CONTACT_NAME,'
      '  NVL(P.NRIC, PP.NRIC) NRIC'
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
      'AND p.nname = mp.nname'
      'AND af.nname(+) = mp.nname'
      'AND at.actingfornname(+) = mp.nname'
      'AND f.nname(+) = af.actingfornname'
      'AND t.nname(+) = at.nname'
      'AND pp.nname(+) = p.nnamemaster'
      'AND mpf.nname(+) = af.actingfornname'
      'AND mpt.nname(+) = at.nname'
      'ORDER BY mp.category,mp.seq')
    Left = 173
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qMatterPartyNNAME: TLargeintField
      FieldName = 'NNAME'
      ReadOnly = True
    end
    object qMatterPartyCATEGORY: TStringField
      FieldName = 'CATEGORY'
      ReadOnly = True
      Size = 30
    end
    object qMatterPartySEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Required = True
      Size = 85
    end
    object qMatterPartyNAME: TStringField
      FieldName = 'NAME'
      ReadOnly = True
      Size = 100
    end
    object qMatterPartyGIVENNAMES: TStringField
      FieldName = 'GIVENNAMES'
      ReadOnly = True
      Size = 60
    end
    object qMatterPartyLASTNAME: TStringField
      FieldName = 'LASTNAME'
      ReadOnly = True
      Size = 60
    end
    object qMatterPartySALUTATION: TStringField
      FieldName = 'SALUTATION'
      ReadOnly = True
      Size = 40
    end
    object qMatterPartyPARENTNAME: TStringField
      FieldName = 'PARENTNAME'
      ReadOnly = True
      Size = 100
    end
    object qMatterPartyPARENTNNAME: TLargeintField
      FieldName = 'PARENTNNAME'
      ReadOnly = True
    end
    object qMatterPartyPHONE: TStringField
      FieldName = 'PHONE'
      ReadOnly = True
      Size = 30
    end
    object qMatterPartyACTINGFORNNAME: TLargeintField
      FieldName = 'ACTINGFORNNAME'
      ReadOnly = True
    end
    object qMatterPartyACTINGFORSEARCH: TStringField
      FieldName = 'ACTINGFORSEARCH'
      ReadOnly = True
      Size = 85
    end
    object qMatterPartyACTINGFORNAME: TStringField
      FieldName = 'ACTINGFORNAME'
      ReadOnly = True
      Size = 100
    end
    object qMatterPartyACTINGFORGIVENNAMES: TStringField
      FieldName = 'ACTINGFORGIVENNAMES'
      ReadOnly = True
      Size = 60
    end
    object qMatterPartyACTINGFORLASTNAME: TStringField
      FieldName = 'ACTINGFORLASTNAME'
      ReadOnly = True
      Size = 60
    end
    object qMatterPartyACTINGFORSALUTATION: TStringField
      FieldName = 'ACTINGFORSALUTATION'
      ReadOnly = True
      Size = 40
    end
    object qMatterPartyACTINGFORCATEGORY: TStringField
      FieldName = 'ACTINGFORCATEGORY'
      ReadOnly = True
      Size = 30
    end
    object qMatterPartyACTINGFORPHONE: TStringField
      FieldName = 'ACTINGFORPHONE'
      ReadOnly = True
      Size = 30
    end
    object qMatterPartyTHROUGHNNAME: TLargeintField
      FieldName = 'THROUGHNNAME'
      ReadOnly = True
    end
    object qMatterPartyTHROUGHSEARCH: TStringField
      FieldName = 'THROUGHSEARCH'
      ReadOnly = True
      Size = 85
    end
    object qMatterPartyTHROUGHNAME: TStringField
      FieldName = 'THROUGHNAME'
      ReadOnly = True
      Size = 100
    end
    object qMatterPartyTHROUGHGIVENNAMES: TStringField
      FieldName = 'THROUGHGIVENNAMES'
      ReadOnly = True
      Size = 60
    end
    object qMatterPartyTHROUGHLASTNAME: TStringField
      FieldName = 'THROUGHLASTNAME'
      ReadOnly = True
      Size = 60
    end
    object qMatterPartyTHROUGHSALUTATION: TStringField
      FieldName = 'THROUGHSALUTATION'
      ReadOnly = True
      Size = 40
    end
    object qMatterPartyTHROUGHCATEGORY: TStringField
      FieldName = 'THROUGHCATEGORY'
      ReadOnly = True
      Size = 30
    end
    object qMatterPartyTHROUGHPHONE: TStringField
      FieldName = 'THROUGHPHONE'
      ReadOnly = True
      Size = 30
    end
  end
  object qPartyDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT :partytype AS TYPE, p.nname AS nname,'
      
        '       NVL (trim(p.givennames), trim(m.givennames)) AS partygive' +
        'nnames,'
      
        '       NVL (trim(p.lastname), trim(m.lastname)) AS partylastname' +
        ', p.search AS partysearch,'
      '       p.title AS partytitle, p.gender AS partygender,'
      '       TRIM'
      '          (DECODE (p.whichaddress,'
      '                   '#39'S'#39', NVL (p.address, m.address)'
      '                    || CHR (13)'
      '                    || CHR (10)'
      '                    || DECODE (p.address,'
      '                               NULL, NVL (p.suburb, m.suburb),'
      '                               p.suburb'
      '                              )'
      '                    || '#39' '#39
      '                    || DECODE (p.address,'
      '                               NULL, NVL (p.state, m.state),'
      '                               p.state'
      '                              )'
      '                    || '#39' '#39
      '                    || DECODE (p.address,'
      
        '                               NULL, NVL (p.postcode, m.postcode' +
        '),'
      '                               p.postcode'
      '                              )'
      '                    || DECODE (DECODE (p.address,'
      
        '                                       NULL, NVL (p.country, m.c' +
        'ountry),'
      '                                       p.country'
      '                                      ),'
      '                               NULL, '#39#39','
      '                                  CHR (13)'
      '                               || CHR (10)'
      '                               || DECODE (p.address,'
      
        '                                          NULL, NVL (p.country, ' +
        'm.country),'
      '                                          p.country'
      '                                         )'
      '                              ),'
      '                   NULL, NVL (p.address, m.address)'
      '                    || CHR (13)'
      '                    || CHR (10)'
      '                    || DECODE (p.address,'
      '                               NULL, NVL (p.suburb, m.suburb),'
      '                               p.suburb'
      '                              )'
      '                    || '#39' '#39
      '                    || DECODE (p.address,'
      '                               NULL, NVL (p.state, m.state),'
      '                               p.state'
      '                              )'
      '                    || '#39' '#39
      '                    || DECODE (p.address,'
      
        '                               NULL, NVL (p.postcode, m.postcode' +
        '),'
      '                               p.postcode'
      '                              )'
      '                    || DECODE (DECODE (p.address,'
      
        '                                       NULL, NVL (p.country, m.c' +
        'ountry),'
      '                                       p.country'
      '                                      ),'
      '                               NULL, '#39#39','
      '                                  CHR (13)'
      '                               || CHR (10)'
      '                               || NVL (p.country, m.country)'
      '                              ),'
      '                   '#39'P'#39', NVL (p.postaladdress, m.postaladdress)'
      '                    || CHR (13)'
      '                    || CHR (10)'
      '                    || DECODE (p.postaladdress,'
      
        '                               NULL, NVL (p.postalsuburb, m.post' +
        'alsuburb),'
      '                               p.postalsuburb'
      '                              )'
      '                    || '#39' '#39
      '                    || DECODE (p.postaladdress,'
      
        '                               NULL, NVL (p.postalstate, m.posta' +
        'lstate),'
      '                               p.postalstate'
      '                              )'
      '                    || '#39' '#39
      '                    || DECODE (p.postaladdress,'
      
        '                               NULL, NVL (p.postalpostcode, m.po' +
        'stalpostcode),'
      '                               p.postalpostcode'
      '                              )'
      '                    || DECODE (DECODE (p.postaladdress,'
      
        '                                       NULL, NVL (p.postalcountr' +
        'y,'
      
        '                                                  m.postalcountr' +
        'y'
      '                                                 ),'
      '                                       p.postalcountry'
      '                                      ),'
      '                               NULL, '#39#39','
      '                                  CHR (13)'
      '                               || CHR (10)'
      '                               || DECODE (p.postaladdress,'
      
        '                                          NULL, NVL (p.postalcou' +
        'ntry,'
      
        '                                                     m.postalcou' +
        'ntry'
      '                                                    ),'
      '                                          p.postalcountry'
      '                                         )'
      '                              ),'
      '                   '#39'C'#39', NVL (p.cust_address, m.cust_address)'
      '                    || CHR (13)'
      '                    || CHR (10)'
      '                    || DECODE (p.cust_address,'
      
        '                               NULL, NVL (p.cust_suburb, m.cust_' +
        'suburb),'
      '                               p.cust_suburb'
      '                              )'
      '                    || '#39' '#39
      '                    || DECODE (p.cust_address,'
      
        '                               NULL, NVL (p.cust_state, m.cust_s' +
        'tate),'
      '                               p.cust_state'
      '                              )'
      '                    || '#39' '#39
      '                    || DECODE (p.cust_address,'
      
        '                               NULL, NVL (p.cust_postcode, m.cus' +
        't_postcode),'
      '                               p.cust_postcode'
      '                              )'
      '                    || DECODE (DECODE (p.cust_address,'
      
        '                                       NULL, NVL (p.cust_country' +
        ','
      '                                                  m.cust_country'
      '                                                 ),'
      '                                       p.cust_country'
      '                                      ),'
      '                               NULL, '#39#39','
      '                                  CHR (13)'
      '                               || CHR (10)'
      '                               || DECODE (p.cust_address,'
      
        '                                          NULL, NVL (p.cust_coun' +
        'try,'
      
        '                                                     m.cust_coun' +
        'try'
      '                                                    ),'
      '                                          p.cust_country'
      '                                         )'
      '                              ),'
      '                   '#39'D'#39', CASE'
      
        '                          WHEN INSTR (UPPER (NVL (p.dx, m.dx)), ' +
        #39'DX'#39') = 0'
      '                             THEN '#39'DX '#39
      '                       END'
      '                    || NVL (p.dx, m.dx)'
      '                    || CHR (13)'
      '                    || CHR (10)'
      '                    || NVL (p.dxloc, m.dxloc)'
      '                  )'
      '          ) AS partyaddress,'
      '       NVL (p.salutation, m.salutation) AS partysalutation,'
      '       NVL (p.workphone, m.workphone) AS partyworkphone,'
      '       NVL (p.homephone, m.homephone) AS partyhomephone,'
      
        '       NVL (p.dx, m.dx) AS partydx, NVL (p.dxloc, m.dxloc) AS pa' +
        'rtydxloc,'
      '       NVL (p.fax, m.fax) AS partyfax, p.code AS partycode,'
      '       p.sparty AS partysparty, p.solicitor AS partysolicitor,'
      
        '       p.real_estate AS partyreal_estate, p.referrals AS partyre' +
        'ferrals,'
      '       p.note AS partynote, NVL (p.NAME, m.NAME) AS partyname,'
      '       NVL (p.shortname, m.shortname) AS partyshortname,'
      '       NVL (p.longname, m.longname) AS partylongname,'
      '       p.mod_date AS partymod_date, p.mod_by AS partymod_by,'
      
        '       p.TYPE AS partytype, NVL (p.country, m.country) AS partyc' +
        'ountry,'
      
        '       p.acn AS partyacn, p.occupation AS partyoccupation, p.dob' +
        ' AS partydob,'
      '       NVL (p.www, m.www) AS partywww, NVL (trim(p.mobile),'
      
        '                                            trim(m.mobile)) AS p' +
        'artymobile,'
      '       NVL (p.address, m.address) AS address,'
      '       DECODE (p.address,'
      '               NULL, NVL (p.suburb, m.suburb),'
      '               p.suburb'
      '              ) AS suburb,'
      
        '       DECODE (p.address, NULL, NVL (p.state, m.state), p.state)' +
        ' AS state,'
      '       DECODE (p.address,'
      '               NULL, NVL (p.postcode, m.postcode),'
      '               p.postcode'
      '              ) AS postcode,'
      '       DECODE (p.address,'
      '               NULL, NVL (p.country, m.country),'
      '               p.country'
      '              ) AS country,'
      '       NVL (p.postaladdress, m.postaladdress) AS postaladdress,'
      '       DECODE (p.postaladdress,'
      '               NULL, NVL (p.postalsuburb, m.postalsuburb),'
      '               p.postalsuburb'
      '              ) AS postalsuburb,'
      '       DECODE (p.postaladdress,'
      '               NULL, NVL (p.postalstate, m.postalstate),'
      '               p.postalstate'
      '              ) AS postalstate,'
      '       DECODE (p.postaladdress,'
      '               NULL, NVL (p.postalpostcode, m.postalpostcode),'
      '               p.postalpostcode'
      '              ) AS postalpostcode,'
      '       DECODE (p.postaladdress,'
      '               NULL, NVL (p.postalcountry, m.postalcountry),'
      '               p.postalcountry'
      '              ) AS postalcountry,'
      '       p.whichaddress AS whichaddress,'
      '       DECODE (p.gender, '#39'M'#39', '#39'he'#39', '#39'F'#39', '#39'she'#39', '#39'It'#39') AS heshe,'
      
        '       DECODE (p.gender, '#39'M'#39', '#39'him'#39', '#39'F'#39', '#39'her'#39', '#39'It'#39') AS himher' +
        ','
      
        '       DECODE (p.gender, '#39'M'#39', '#39'his'#39', '#39'F'#39', '#39'her'#39', NULL) AS hisher' +
        ','
      
        '       DECODE (p.gender, '#39'M'#39', '#39'Sir'#39', '#39'F'#39', '#39'Madam'#39', NULL) AS sirm' +
        'adam,'
      
        '       NVL (p.abn, m.abn) AS partyabn, m.NAME AS parent_partynam' +
        'e,'
      '       m.shortname AS parent_partyshortname,'
      '       m.longname AS parent_partylongname,'
      '       m.solicitor AS parent_partysolicitor,'
      
        '       NVL (p.cust_address, m.cust_address) AS party_cust_addres' +
        's,'
      '       NVL (p.cust_suburb, m.cust_suburb) AS party_cust_suburb,'
      '       NVL (p.cust_state, m.cust_state) AS party_cust_state,'
      
        '       NVL (p.cust_postcode, m.cust_postcode) AS party_cust_post' +
        'code,'
      
        '       NVL (p.cust_country, m.cust_country) AS party_cust_countr' +
        'y,'
      '       NVL (p.full_name_address,'
      '            m.full_name_address'
      '           ) AS party_full_name_address,'
      '       p.system1 AS var1, p.system2 AS var2,'
      
        '       NVL (p.full_address, m.full_address) AS party_full_addres' +
        's,'
      '       NVL (p.suburb_only_address,'
      '            m.suburb_only_address'
      '           ) AS party_suburb_only_address,'
      
        '       NVL (p.dx_full_address, m.dx_full_address) AS party_dx_fu' +
        'll_address,'
      '       NVL (TRIM (p.email), TRIM (m.email)) AS partyemail,'
      '       NVL (p.email1, m.email1) AS partyemail1,'
      '       NVL (p.email2, m.email2) AS partyemail2,'
      '       TRIM (DECODE (p.whichaddress,'
      '                     '#39'S'#39', NVL (p.address, m.address),'
      
        '                     '#39'P'#39', NVL (p.postaladdress, m.postaladdress)' +
        ','
      '                     '#39'C'#39', NVL (p.cust_address, m.cust_address)'
      '                    )'
      '            ) AS partydefaultaddress,'
      '       TRIM (DECODE (p.whichaddress,'
      '                     '#39'S'#39', NVL (p.suburb, m.suburb),'
      '                     '#39'P'#39', NVL (p.postalsuburb, m.postalsuburb),'
      '                     '#39'C'#39', NVL (p.cust_suburb, m.cust_suburb)'
      '                    )'
      '            ) AS partydefaultsuburb,'
      '       TRIM (DECODE (p.whichaddress,'
      '                     '#39'S'#39', NVL (p.state, m.state),'
      '                     '#39'P'#39', NVL (p.postalstate, m.postalstate),'
      '                     '#39'C'#39', NVL (p.cust_state, m.cust_state)'
      '                    )'
      '            ) AS partydefaultstate,'
      '       TRIM (DECODE (p.whichaddress,'
      '                     '#39'S'#39', NVL (p.postcode, m.postcode),'
      
        '                     '#39'P'#39', NVL (p.postalpostcode, m.postalpostcod' +
        'e),'
      '                     '#39'C'#39', NVL (p.cust_postcode, m.cust_postcode)'
      '                    )'
      '            ) AS partydefaultpostcode,'
      '       TRIM (DECODE (p.whichaddress,'
      '                     '#39'S'#39', NVL (p.country, m.country),'
      
        '                     '#39'P'#39', NVL (p.postalcountry, m.postalcountry)' +
        ','
      '                     '#39'C'#39', NVL (p.cust_country, m.cust_country)'
      '                    )'
      '            ) AS partydefaultcountry,'
      '    NVL(P.CONTACT_NAME, M.CONTACT_NAME) as PARTY_CONTACT_NAME,'
      
        '    NVL(P.additional_contact_name, M.additional_contact_name) as' +
        ' PARTY_ADDITIONAL_CONTACT_NAME,'
      '    NVL(P.NRIC, M.NRIC) NRIC,'
      '    NVL(P.full_address, M.full_address) Full_Address,'
      
        '    NVL(P.full_name_address, M.full_name_address) full_name_addr' +
        'ess'
      'FROM'
      '  PHONEBOOK P,'
      '  PHONEBOOK M'
      'WHERE '
      '   p.nnamemaster = m.nname(+)'
      'AND'
      ' P.NNAME = :nname')
    Left = 336
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qPartyFormData: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.seq,'
      '  g.code as dataform,'
      '  f.fieldname,'
      '  t.caption,'
      '  t.type,'
      '  f.textvalue,'
      '  f.nunique,'
      '  f.linktable,'
      '  f.numbervalue,'
      '  f.datevalue,'
      '  CAST(NULL AS INTEGER) as nunique2,'
      '  g.caption as dataformcaption'
      'FROM'
      '  fieldtypelink f,'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  t.name = f.fieldname'
      '  AND d.dataform = g.code'
      '  AND d.fieldname = t.name'
      '  AND f.linktable = upper(g.code)'
      '  AND f.nunique = :nunique'
      '  AND g.party = :partytype'
      '  AND g.partyismatterspecific = '#39'N'#39
      'UNION'
      'SELECT'
      '  d.seq,'
      '  g.code as dataform,'
      '  t.name AS fieldname,'
      '  t.caption,'
      '  t.type,'
      '  NULL AS textvalue,'
      '  CAST(:nunique AS INTEGER) AS nunique,'
      '  NULL AS linktable,'
      '  CAST(NULL AS NUMBER(17,2)) AS numbervalue,'
      '  CAST(NULL AS DATE) AS datevalue,'
      '  CAST(NULL AS INTEGER) as nunique2,'
      '  g.caption as dataformcaption'
      'FROM'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  d.dataform = g.code'
      '  AND g.party = :partytype'
      '  AND g.partyismatterspecific = '#39'N'#39
      '  AND d.fieldname = t.name'
      '  AND t.name NOT IN ('
      '    SELECT t.name'
      '    FROM'
      '      fieldtypelink f,'
      '      fieldtype t,'
      '      dataformfield d,'
      '      dataform g'
      '    WHERE t.name = f.fieldname'
      '     AND d.dataform = g.code'
      '     AND g.party = :partytype'
      '     AND d.fieldname = t.NAME'
      '     AND f.linktable = upper(g.code)'
      '     AND f.nunique = :nunique'
      '  )'
      'ORDER BY 1  '
      '')
    Left = 331
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nunique'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
    object qPartyFormDataSEQ: TSmallintField
      FieldName = 'SEQ'
      ReadOnly = True
    end
    object qPartyFormDataDATAFORM: TStringField
      FieldName = 'DATAFORM'
      ReadOnly = True
      Size = 32
    end
    object qPartyFormDataFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 40
    end
    object qPartyFormDataCAPTION: TStringField
      FieldName = 'CAPTION'
      ReadOnly = True
      Size = 120
    end
    object qPartyFormDataTYPE: TStringField
      FieldName = 'TYPE'
      ReadOnly = True
      Size = 2
    end
    object qPartyFormDataTEXTVALUE: TStringField
      FieldName = 'TEXTVALUE'
      Size = 2000
    end
    object qPartyFormDataNUNIQUE: TFloatField
      FieldName = 'NUNIQUE'
    end
    object qPartyFormDataLINKTABLE: TStringField
      FieldName = 'LINKTABLE'
      Size = 32
    end
    object qPartyFormDataNUMBERVALUE: TFloatField
      FieldName = 'NUMBERVALUE'
    end
    object qPartyFormDataDATEVALUE: TDateTimeField
      FieldName = 'DATEVALUE'
    end
    object qPartyFormDataNUNIQUE2: TFloatField
      FieldName = 'NUNIQUE2'
      ReadOnly = True
    end
    object qPartyFormDataDATAFORMCAPTION: TStringField
      FieldName = 'DATAFORMCAPTION'
      ReadOnly = True
      Size = 60
    end
  end
  object qTaskDocumentsOtherParties: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.id,'
      '  p.docid,'
      '  p.partytype,'
      '  p.listorder,'
      
        '  (SELECT COUNT(*) FROM matterparty WHERE category = p.partytype' +
        ' AND nmatter = :nmatter) AS partytypecount'
      'FROM'
      '  workflowdtotherparties p'
      'WHERE'
      '  p.docid = :docid'
      'ORDER BY p.listorder'
      '')
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 331
    Top = 366
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
    object qTaskDocumentsOtherPartiesID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object qTaskDocumentsOtherPartiesDOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
    object qTaskDocumentsOtherPartiesPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      Required = True
      Size = 25
    end
    object qTaskDocumentsOtherPartiesLISTORDER: TFloatField
      FieldName = 'LISTORDER'
      Required = True
    end
    object qTaskDocumentsOtherPartiesPARTYTYPECOUNT: TFloatField
      FieldName = 'PARTYTYPECOUNT'
      ReadOnly = True
    end
  end
  object qTaskDocuments: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.docid,'
      '  d.workflowtypecode,'
      '  d.doctype,'
      '  NVL(d.partytype,'#39'Client'#39') AS partytype,'
      '  d.documentname,'
      '  d.documentpath,'
      '  d.templatepath,'
      '  d.datafilepath,'
      '  d.groupid,'
      '  d.referredoptional,'
      '  NVL(g.name,NVL(d.partytype,'#39'Client'#39')) as groupname,'
      
        '  (SELECT COUNT(*) FROM matterparty WHERE category = d.partytype' +
        ' AND nmatter = :nmatter) AS addresseecount,'
      '  d.dataform,'
      '  d.NPRECCLASSIFICATION,'
      '  d.NPRECCATEGORY,'
      '  d.TEMPLATETYPE'
      'FROM'
      '  workflowdoctemplates d, workflowdocgroups g'
      'WHERE g.groupid(+) = d.groupid AND d.docid'
      '-- CHANGE NEXT'
      
        'IN (SELECT docid FROM workflowtaskdoclink WHERE tasklineid = :ta' +
        'sklineid)'
      'ORDER BY'
      '  groupname,'
      '  d.doctype,'
      '  d.partytype,'
      '  d.documentname')
    ReadOnly = True
    Left = 41
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tasklineid'
        Value = nil
      end>
    object qTaskDocumentsDOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
    object qTaskDocumentsWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      Size = 11
    end
    object qTaskDocumentsDOCTYPE: TStringField
      FieldName = 'DOCTYPE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qTaskDocumentsPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      ReadOnly = True
      Size = 25
    end
    object qTaskDocumentsDOCUMENTNAME: TStringField
      FieldName = 'DOCUMENTNAME'
      Size = 200
    end
    object qTaskDocumentsDOCUMENTPATH: TStringField
      FieldName = 'DOCUMENTPATH'
      Size = 2000
    end
    object qTaskDocumentsTEMPLATEPATH: TStringField
      FieldName = 'TEMPLATEPATH'
      Size = 2000
    end
    object qTaskDocumentsDATAFILEPATH: TStringField
      FieldName = 'DATAFILEPATH'
      Size = 2000
    end
    object qTaskDocumentsGROUPID: TFloatField
      FieldName = 'GROUPID'
    end
    object qTaskDocumentsREFERREDOPTIONAL: TStringField
      FieldName = 'REFERREDOPTIONAL'
      FixedChar = True
      Size = 1
    end
    object qTaskDocumentsGROUPNAME: TStringField
      FieldName = 'GROUPNAME'
      ReadOnly = True
      Size = 50
    end
    object qTaskDocumentsADDRESSEECOUNT: TFloatField
      FieldName = 'ADDRESSEECOUNT'
      ReadOnly = True
    end
    object qTaskDocumentsDATAFORM: TStringField
      FieldName = 'DATAFORM'
      Size = 100
    end
    object qTaskDocumentsNPRECCLASSIFICATION: TLargeintField
      FieldName = 'NPRECCLASSIFICATION'
    end
    object qTaskDocumentsNPRECCATEGORY: TLargeintField
      FieldName = 'NPRECCATEGORY'
    end
    object qTaskDocumentsTEMPLATETYPE: TStringField
      FieldName = 'TEMPLATETYPE'
      Size = 40
    end
  end
  object qTaskParty2: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.nname,'
      '  p.category, p.seq, p.prefix, b.search'
      'FROM matterparty p, phonebook b'
      'WHERE b.nname = p.nname'
      'AND p.category = :partytype'
      'AND p.nmatter = :nmatter'
      'ORDER BY'
      '  p.seq')
    Left = 173
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qTaskParty2NNAME: TLargeintField
      FieldName = 'NNAME'
    end
    object qTaskParty2CATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 30
    end
    object qTaskParty2SEQ: TSmallintField
      FieldName = 'SEQ'
    end
    object qTaskParty2PREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 50
    end
    object qTaskParty2SEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Required = True
      Size = 100
    end
  end
  object qTaskParty: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.nname,'
      '  p.category, p.seq, p.prefix, b.search'
      'FROM matterparty p, phonebook b'
      'WHERE b.nname = p.nname'
      'AND p.category = :partytype'
      'AND p.nmatter = :nmatter'
      'ORDER BY'
      '  p.seq')
    Left = 165
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qTaskPartyNNAME: TLargeintField
      FieldName = 'NNAME'
    end
    object qTaskPartyCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 30
    end
    object qTaskPartySEQ: TSmallintField
      FieldName = 'SEQ'
    end
    object qTaskPartyPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 50
    end
    object qTaskPartySEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Required = True
      Size = 85
    end
  end
  object tbTranslate: TUniTable
    TableName = 'WORKFLOWFIELDTRANSLATE'
    Connection = dmAxiom.uniInsight
    KeyFields = 'WORKFLOWFIELD;EXTERNALFIELD'
    Left = 41
    Top = 314
    object tbTranslateWORKFLOWFIELD: TStringField
      FieldName = 'WORKFLOWFIELD'
      Required = True
      Size = 80
    end
    object tbTranslateEXTERNALFIELD: TStringField
      FieldName = 'EXTERNALFIELD'
      Required = True
      Size = 80
    end
    object tbTranslateDESCR: TStringField
      FieldName = 'DESCR'
      Size = 80
    end
    object tbTranslateSAMPLE_DATA: TStringField
      FieldName = 'SAMPLE_DATA'
      Size = 240
    end
  end
  object dsTranslate: TUniDataSource
    AutoEdit = False
    DataSet = tbTranslate
    Left = 41
    Top = 366
  end
  object qExportClients: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.nname  AS nname,'
      '  NVL(P.GIVENNAMES, B.GIVENNAMES) AS partygivennames,'
      '  NVL(P.LASTNAME, B.LASTNAME)  AS partylastname,'
      '  p.search AS partysearch,'
      '  p.title  AS partytitle,'
      '  p.gender AS partygender,'
      '  TRIM(DECODE(p.WHICHADDRESS,'
      #39'S'#39', NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB) ' +
        '|| '#39' '#39' ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) || ' +
        #39' '#39' ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POST' +
        'CODE) ||'
      
        '     DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), P' +
        '.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL,' +
        ' NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
      'NULL, NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB)' +
        ' || '#39' '#39' ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) ||' +
        ' '#39' '#39' ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POS' +
        'TCODE) ||'
      
        '      DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), ' +
        'P.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL' +
        ', NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
      
        #39'P'#39', NVL(P.POSTALADDRESS, B.POSTALADDRESS) || chr(13) || chr(10)' +
        ' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B.POSTALS' +
        'UBURB), P.POSTALSUBURB) || '#39' '#39' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.POSTALST' +
        'ATE), P.POSTALSTATE) || '#39' '#39' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, B.POSTA' +
        'LPOSTCODE), P.POSTALPOSTCODE) ||'
      
        '     DECODE(DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B' +
        '.POSTALCOUNTRY), P.POSTALCOUNTRY),NULL,'#39#39', chr(13) || chr(10) ||' +
        ' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B.POSTALCOUN' +
        'TRY), P.POSTALCOUNTRY)),'
      
        #39'C'#39', NVL(P.CUST_ADDRESS, B.CUST_ADDRESS) || chr(13) || chr(10) |' +
        '|'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_SUBURB, B.CUST_SUBU' +
        'RB), P.CUST_SUBURB) || '#39' '#39' ||'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_STATE, B.CUST_STATE' +
        '), P.CUST_STATE) || '#39' '#39' ||'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_POSTCODE, B.CUST_PO' +
        'STCODE), P.CUST_POSTCODE) ||'
      
        '     DECODE(DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, B.C' +
        'UST_COUNTRY), P.CUST_COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DEC' +
        'ODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, B.CUST_COUNTRY), P' +
        '.CUST_COUNTRY)),'
      
        #39'D'#39', '#39'DX '#39' || NVL(P.DX, B.DX) || chr(13) || chr(10) || NVL(P.DXL' +
        'OC, B.DXLOC)'
      ')) AS partyaddress,'
      '  NVL(P.SALUTATION, B.SALUTATION) AS partysalutation,'
      '  NVL(P.WORKPHONE, B.WORKPHONE)   AS partyworkphone,'
      '  NVL(P.HOMEPHONE, B.HOMEPHONE)   AS partyhomephone,'
      '  NVL(P.DX, B.DX)                 AS partydx,'
      '  NVL(P.DXLOC, B.DXLOC)           AS partydxloc,'
      '  NVL(P.FAX, B.FAX)               AS partyfax,'
      '  p.code                          AS partycode,'
      '  p.sparty                        AS partysparty,'
      '  p.solicitor                     AS partysolicitor,'
      '  p.real_estate                   AS partyreal_estate,'
      '  p.referrals                     AS partyreferrals,'
      '  p.note                          AS partynote,'
      '  NVL(P.NAME, B.NAME)             AS partyname,'
      '  NVL(P.SHORTNAME, B.SHORTNAME)   AS partyshortname,'
      '  NVL(P.LONGNAME, B.LONGNAME)     AS partylongname,'
      '  p.mod_date                      AS partymod_date,'
      '  p.mod_by                        AS partymod_by,'
      '  p.type                          AS partytype,'
      '  NVL(P.COUNTRY, B.COUNTRY)       AS partycountry,'
      '  p.acn                           AS partyacn,'
      '  p.occupation                    AS partyoccupation,'
      '  p.dob                           AS partydob,'
      '    NVL(P.WWW, B.WWW)               AS partywww,'
      '  NVL(P.MOBILE, B.MOBILE)         AS partymobile,'
      '  NVL(P.ADDRESS, B.ADDRESS)       AS address,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB)    ' +
        '                           AS suburb,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE)       ' +
        '                           AS state,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POSTCOD' +
        'E)                         AS postcode,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY) ' +
        '                           AS country,'
      
        '  NVL(P.POSTALADDRESS, B.POSTALADDRESS)                         ' +
        '                           AS postaladdress,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B.POSTALSUBU' +
        'RB), P.POSTALSUBURB)       AS postalsuburb,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.POSTALSTATE' +
        '), P.POSTALSTATE)          AS postalstate,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, B.POSTALPO' +
        'STCODE), P.POSTALPOSTCODE) AS postalpostcode,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B.POSTALCOU' +
        'NTRY), P.POSTALCOUNTRY)    AS postalcountry,'
      '  p.whichaddress   AS whichaddress,'
      '  c.taxno          AS taxfileno,'
      '  DECODE(p.gender,'#39'M'#39','#39'he'#39','#39'F'#39','#39'she'#39',NULL) AS HESHE,'
      '  DECODE(p.gender,'#39'M'#39','#39'him'#39','#39'F'#39','#39'her'#39',NULL) AS HIMHER,'
      '  DECODE(p.gender,'#39'M'#39','#39'his'#39','#39'F'#39','#39'her'#39',NULL) AS HISHER,'
      '  DECODE(p.gender,'#39'M'#39','#39'Sir'#39','#39'F'#39','#39'Madam'#39',NULL) AS SIRMADAM,'
      '  P.ABN                           AS partyabn,'
      '  B.name              AS parent_partyname,'
      '  B.shortname              AS parent_partyshortname,'
      '  B.longname              AS parent_partylongname,'
      '  B.solicitor              AS parent_partysolicitor,'
      '  BJ.SOLICITOR_CODE AS SOLICITORCODE,'
      '  CD.DESCR AS COURTNAME,'
      '  CD.STREET AS COURTADDRESS,'
      '  CD.SUBURB AS COURTSUBURB,'
      '  CD.STATE AS COURTSTATE,'
      '  CD.POSTCODE AS COURTPOSTCODE,'
      '  C.CODE AS client_code,'
      '  NVL(P.CUST_ADDRESS, B.CUST_ADDRESS) as party_cust_address, '
      '  NVL(P.CUST_SUBURB, B.CUST_SUBURB) as part_cust_suburb,'
      '  NVL(P.CUST_STATE, B.CUST_STATE) as party_cust_state,'
      '  NVL(P.CUST_POSTCODE, B.CUST_POSTCODE) as party_cust_postcode,'
      '  NVL(P.CUST_COUNTRY, B.CUST_COUNTRY) as party_cust_country,'
      '  nvl(M.ESTIMATEDFEE,0) ESTIMATEDFEE,'
      '  nvl(M.ESTIMATEDDISBPRINC,0) ESTIMATEDDISBPRINC,'
      '  nvl(M.ESTIMATEDDISBAGENT,0) ESTIMATEDDISBAGENT,'
      '  nvl(M.ESTIMATEDCREDITORS,0) ESTIMATEDCREDITORS,'
      '  nvl(M.TRSTMNT,0) TRSTMNT,'
      
        '  NVL(P.FULL_NAME_ADDRESS, B.FULL_NAME_ADDRESS) as party_FULL_NA' +
        'ME_ADDRESS,'
      '  P.SYSTEM1 AS VAR1, P.SYSTEM2 AS VAR2,'
      '  NVL(P.FULL_ADDRESS, B.FULL_ADDRESS) as party_FULL_ADDRESS,'
      
        '  NVL(P.SUBURB_ONLY_ADDRESS, B.SUBURB_ONLY_ADDRESS) AS PARTY_SUB' +
        'URB_ONLY_ADDRESS,'
      
        '  NVL(P.DX_FULL_ADDRESS, B.DX_FULL_ADDRESS) AS PARTY_DX_FULL_ADD' +
        'RESS,'
      '  NVL(trim(P.EMAIL), trim(B.EMAIL))           AS partyemail,'
      '  NVL(trim(P.EMAIL1), trim(B.EMAIL1))           AS partyemail1,'
      '  NVL(trim(P.EMAIL2), trim(B.EMAIL2))           AS partyemail2,'
      '  NVL(P.NRIC, B.NRIC) NRIC,'
      '  NVL(P.full_address, B.full_address) Full_Address,'
      
        '  NVL(P.full_name_address, B.full_name_address) full_name_addres' +
        's'
      'FROM'
      '  MATTER M,'
      '  CLIENT C,'
      '  PHONEBOOK P,'
      '  PHONEBOOK B,'
      '  BRANCH_JURISDICTION BJ,'
      '  COURT_DETAILS CD'
      'WHERE'
      '  M.NMATTER = :nmatter AND'
      '  C.NCLIENT = M.NCLIENT AND'
      '  P.NCLIENT = C.NCLIENT AND'
      '  P.NNAMEMASTER = B.NNAME (+) AND'
      '  M.SUBJURISDICTION = BJ.SUBJURISDICTION (+) AND'
      '  M.BRANCH = BJ.BRANCH (+) AND'
      '  BJ.COURT_ADDRESS_CODE = CD.CODE (+) AND'
      '  BJ.SUBJURISDICTION = CD.SUBJURISDICTION (+)'
      ''
      ''
      ''
      ''
      ''
      '/*'
      'SELECT'
      '  p.nname  AS nname,'
      '  NVL(P.GIVENNAMES, B.GIVENNAMES) AS partygivennames,'
      '  NVL(P.LASTNAME, B.LASTNAME)  AS partylastname,'
      '  p.search AS partysearch,'
      '  p.title  AS partytitle,'
      '  p.gender AS partygender,'
      '  TRIM(DECODE(p.WHICHADDRESS,'
      #39'S'#39', NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB) ' +
        '|| '#39' '#39' ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) || ' +
        #39' '#39' ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POST' +
        'CODE) ||'
      
        '     DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), P' +
        '.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL,' +
        ' NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
      'NULL, NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB)' +
        ' || '#39' '#39' ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) ||' +
        ' '#39' '#39' ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POS' +
        'TCODE) ||'
      
        '      DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), ' +
        'P.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL' +
        ', NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
      
        #39'P'#39', NVL(P.POSTALADDRESS, B.POSTALADDRESS) || chr(13) || chr(10)' +
        ' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B.POSTALS' +
        'UBURB), P.POSTALSUBURB) || '#39' '#39' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.POSTALST' +
        'ATE), P.POSTALSTATE) || '#39' '#39' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, B.POSTA' +
        'LPOSTCODE), P.POSTALPOSTCODE) ||'
      
        '     DECODE(DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B' +
        '.POSTALCOUNTRY), P.POSTALCOUNTRY),NULL,'#39#39', chr(13) || chr(10) ||' +
        ' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B.POSTALCOUN' +
        'TRY), P.POSTALCOUNTRY)),'
      
        #39'C'#39', NVL(P.CUST_ADDRESS, B.CUST_ADDRESS) || chr(13) || chr(10) |' +
        '|'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_SUBURB, B.CUST_SUBU' +
        'RB), P.CUST_SUBURB) || '#39' '#39' ||'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_STATE, B.CUST_STATE' +
        '), P.CUST_STATE) || '#39' '#39' ||'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_POSTCODE, B.CUST_PO' +
        'STCODE), P.CUST_POSTCODE) ||'
      
        '     DECODE(DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, B.C' +
        'UST_COUNTRY), P.CUST_COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DEC' +
        'ODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, B.CUST_COUNTRY), P' +
        '.CUST_COUNTRY)),'
      
        #39'D'#39', '#39'DX '#39' || NVL(P.DX, B.DX) || chr(13) || chr(10) || NVL(P.DXL' +
        'OC, B.DXLOC)'
      ')) AS partyaddress,'
      '  NVL(P.SALUTATION, B.SALUTATION) AS partysalutation,'
      '  NVL(P.WORKPHONE, B.WORKPHONE)   AS partyworkphone,'
      '  NVL(P.HOMEPHONE, B.HOMEPHONE)   AS partyhomephone,'
      '  NVL(P.DX, B.DX)                 AS partydx,'
      '  NVL(P.DXLOC, B.DXLOC)           AS partydxloc,'
      '  NVL(P.FAX, B.FAX)               AS partyfax,'
      '  p.code                          AS partycode,'
      '  p.sparty                        AS partysparty,'
      '  p.solicitor                     AS partysolicitor,'
      '  p.real_estate                   AS partyreal_estate,'
      '  p.referrals                     AS partyreferrals,'
      '  p.note                          AS partynote,'
      '  NVL(P.NAME, B.NAME)             AS partyname,'
      '  NVL(P.SHORTNAME, B.SHORTNAME)   AS partyshortname,'
      '  NVL(P.LONGNAME, B.LONGNAME)     AS partylongname,'
      '  p.mod_date                      AS partymod_date,'
      '  p.mod_by                        AS partymod_by,'
      '  p.type                          AS partytype,'
      '  NVL(P.COUNTRY, B.COUNTRY)       AS partycountry,'
      '  p.acn                           AS partyacn,'
      '  p.occupation                    AS partyoccupation,'
      '  p.dob                           AS partydob,'
      '  NVL(P.EMAIL, B.EMAIL)           AS partyemail,'
      '  NVL(P.WWW, B.WWW)               AS partywww,'
      '  NVL(P.MOBILE, B.MOBILE)         AS partymobile,'
      '  NVL(P.ADDRESS, B.ADDRESS)       AS address,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB)    ' +
        '                           AS suburb,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE)       ' +
        '                           AS state,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POSTCOD' +
        'E)                         AS postcode,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY) ' +
        '                           AS country,'
      
        '  NVL(P.POSTALADDRESS, B.POSTALADDRESS)                         ' +
        '                           AS postaladdress,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B.POSTALSUBU' +
        'RB), P.POSTALSUBURB)       AS postalsuburb,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.POSTALSTATE' +
        '), P.POSTALSTATE)          AS postalstate,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, B.POSTALPO' +
        'STCODE), P.POSTALPOSTCODE) AS postalpostcode,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B.POSTALCOU' +
        'NTRY), P.POSTALCOUNTRY)    AS postalcountry,'
      '  p.whichaddress   AS whichaddress,'
      '  c.taxno          AS taxfileno,'
      '  DECODE(p.gender,'#39'M'#39','#39'he'#39','#39'F'#39','#39'she'#39',NULL) AS HESHE,'
      '  DECODE(p.gender,'#39'M'#39','#39'him'#39','#39'F'#39','#39'her'#39',NULL) AS HIMHER,'
      '  DECODE(p.gender,'#39'M'#39','#39'his'#39','#39'F'#39','#39'her'#39',NULL) AS HISHER,'
      '  DECODE(p.gender,'#39'M'#39','#39'Sir'#39','#39'F'#39','#39'Madam'#39',NULL) AS SIRMADAM,'
      '  P.ABN                           AS partyabn,'
      '  B.name'#9#9#9'  AS parent_partyname,'
      '  B.shortname'#9#9#9'  AS parent_partyshortname,'
      '  B.longname'#9#9#9'  AS parent_partylongname,'
      '  B.solicitor'#9#9#9'  AS parent_partysolicitor,'
      '  BJ.SOLICITOR_CODE AS SOLICITORCODE,'
      '  CD.DESCR AS COURTNAME,'
      '  CD.STREET AS COURTADDRESS,'
      '  CD.SUBURB AS COURTSUBURB,'
      '  CD.STATE AS COURTSTATE,'
      '  CD.POSTCODE AS COURTPOSTCODE,'
      '  C.CODE AS client_code,'
      '  NVL(P.CUST_ADDRESS, B.CUST_ADDRESS) as party_cust_address, '
      '  NVL(P.CUST_SUBURB, B.CUST_SUBURB) as part_cust_suburb,'
      '  NVL(P.CUST_STATE, B.CUST_STATE) as party_cust_state,'
      '  NVL(P.CUST_POSTCODE, B.CUST_POSTCODE) as party_cust_postcode,'
      '  NVL(P.CUST_COUNTRY, B.CUST_COUNTRY) as party_cust_country,'
      '  nvl(M.ESTIMATEDFEE,0) ESTIMATEDFEE,'
      '  nvl(M.ESTIMATEDDISBPRINC,0) ESTIMATEDDISBPRINC,'
      '  nvl(M.ESTIMATEDDISBAGENT,0) ESTIMATEDDISBAGENT,'
      '  nvl(M.ESTIMATEDCREDITORS,0) ESTIMATEDCREDITORS,'
      '  nvl(M.TRSTMNT,0) TRSTMNT,'
      '  p.FULL_NAME_ADDRESS as party_FULL_NAME_ADDRESS,'
      '  NVL(P.CONTACT_NAME, b.CONTACT_NAME) as PARTY_CONTACT_NAME,'
      
        '  NVL(P.additional_contact_name, b.additional_contact_name) as P' +
        'ARTY_ADDITIONAL_CONTACT_NAME'
      'FROM'
      '  MATTER M,'
      '  CLIENT C,'
      '  PHONEBOOK P,'
      '  PHONEBOOK B,'
      '  BRANCH_JURISDICTION BJ,'
      '  COURT_DETAILS CD'
      'WHERE'
      '  M.NMATTER = :nmatter AND'
      '  C.NCLIENT = M.NCLIENT AND'
      '  P.NCLIENT = C.NCLIENT AND'
      '  P.NNAMEMASTER = B.NNAME (+) AND'
      '  M.SUBJURISDICTION = BJ.SUBJURISDICTION (+) AND'
      '  M.BRANCH = BJ.BRANCH (+) AND'
      '  BJ.COURT_ADDRESS_CODE = CD.CODE (+) AND'
      '  BJ.SUBJURISDICTION = CD.SUBJURISDICTION (+)'
      '*/')
    Left = 201
    Top = 367
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qExportClientsNNAME: TLargeintField
      FieldName = 'NNAME'
      ReadOnly = True
      Required = True
    end
    object qExportClientsPARTYGIVENNAMES: TStringField
      FieldName = 'PARTYGIVENNAMES'
      ReadOnly = True
      Size = 60
    end
    object qExportClientsPARTYLASTNAME: TStringField
      FieldName = 'PARTYLASTNAME'
      ReadOnly = True
      Size = 60
    end
    object qExportClientsPARTYSEARCH: TStringField
      FieldName = 'PARTYSEARCH'
      ReadOnly = True
      Required = True
      Size = 85
    end
    object qExportClientsPARTYTITLE: TStringField
      FieldName = 'PARTYTITLE'
      ReadOnly = True
      Size = 40
    end
    object qExportClientsPARTYGENDER: TStringField
      FieldName = 'PARTYGENDER'
      ReadOnly = True
      Size = 1
    end
    object qExportClientsPARTYADDRESS: TStringField
      FieldName = 'PARTYADDRESS'
      ReadOnly = True
      Size = 246
    end
    object qExportClientsPARTYSALUTATION: TStringField
      FieldName = 'PARTYSALUTATION'
      ReadOnly = True
      Size = 40
    end
    object qExportClientsPARTYWORKPHONE: TStringField
      FieldName = 'PARTYWORKPHONE'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsPARTYHOMEPHONE: TStringField
      FieldName = 'PARTYHOMEPHONE'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsPARTYDX: TStringField
      FieldName = 'PARTYDX'
      ReadOnly = True
    end
    object qExportClientsPARTYDXLOC: TStringField
      FieldName = 'PARTYDXLOC'
      ReadOnly = True
      Size = 50
    end
    object qExportClientsPARTYFAX: TStringField
      FieldName = 'PARTYFAX'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsPARTYCODE: TStringField
      FieldName = 'PARTYCODE'
      ReadOnly = True
    end
    object qExportClientsPARTYSPARTY: TStringField
      FieldName = 'PARTYSPARTY'
      ReadOnly = True
      Size = 1
    end
    object qExportClientsPARTYSOLICITOR: TStringField
      FieldName = 'PARTYSOLICITOR'
      ReadOnly = True
      Size = 1
    end
    object qExportClientsPARTYREAL_ESTATE: TStringField
      FieldName = 'PARTYREAL_ESTATE'
      ReadOnly = True
      Size = 1
    end
    object qExportClientsPARTYREFERRALS: TSmallintField
      FieldName = 'PARTYREFERRALS'
      ReadOnly = True
    end
    object qExportClientsPARTYNOTE: TStringField
      FieldName = 'PARTYNOTE'
      ReadOnly = True
      Size = 2000
    end
    object qExportClientsPARTYNAME: TStringField
      FieldName = 'PARTYNAME'
      ReadOnly = True
      Size = 100
    end
    object qExportClientsPARTYSHORTNAME: TStringField
      FieldName = 'PARTYSHORTNAME'
      ReadOnly = True
      Size = 60
    end
    object qExportClientsPARTYLONGNAME: TStringField
      FieldName = 'PARTYLONGNAME'
      ReadOnly = True
      Size = 150
    end
    object qExportClientsPARTYMOD_DATE: TDateTimeField
      FieldName = 'PARTYMOD_DATE'
      ReadOnly = True
    end
    object qExportClientsPARTYMOD_BY: TStringField
      FieldName = 'PARTYMOD_BY'
      ReadOnly = True
      Size = 10
    end
    object qExportClientsPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      ReadOnly = True
      Size = 1
    end
    object qExportClientsPARTYCOUNTRY: TStringField
      FieldName = 'PARTYCOUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsPARTYACN: TStringField
      FieldName = 'PARTYACN'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsPARTYOCCUPATION: TStringField
      FieldName = 'PARTYOCCUPATION'
      ReadOnly = True
      Size = 250
    end
    object qExportClientsPARTYDOB: TDateTimeField
      FieldName = 'PARTYDOB'
      ReadOnly = True
    end
    object qExportClientsPARTYWWW: TStringField
      FieldName = 'PARTYWWW'
      ReadOnly = True
      Size = 60
    end
    object qExportClientsPARTYMOBILE: TStringField
      FieldName = 'PARTYMOBILE'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsADDRESS: TStringField
      FieldName = 'ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qExportClientsSUBURB: TStringField
      FieldName = 'SUBURB'
      ReadOnly = True
      Size = 50
    end
    object qExportClientsSTATE: TStringField
      FieldName = 'STATE'
      ReadOnly = True
    end
    object qExportClientsPOSTCODE: TStringField
      FieldName = 'POSTCODE'
      ReadOnly = True
    end
    object qExportClientsCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsPOSTALADDRESS: TStringField
      FieldName = 'POSTALADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qExportClientsPOSTALSUBURB: TStringField
      FieldName = 'POSTALSUBURB'
      ReadOnly = True
      Size = 50
    end
    object qExportClientsPOSTALSTATE: TStringField
      FieldName = 'POSTALSTATE'
      ReadOnly = True
    end
    object qExportClientsPOSTALPOSTCODE: TStringField
      FieldName = 'POSTALPOSTCODE'
      ReadOnly = True
    end
    object qExportClientsPOSTALCOUNTRY: TStringField
      FieldName = 'POSTALCOUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsWHICHADDRESS: TStringField
      FieldName = 'WHICHADDRESS'
      ReadOnly = True
      Size = 1
    end
    object qExportClientsTAXFILENO: TStringField
      FieldName = 'TAXFILENO'
      ReadOnly = True
    end
    object qExportClientsHESHE: TStringField
      FieldName = 'HESHE'
      ReadOnly = True
      Size = 3
    end
    object qExportClientsHIMHER: TStringField
      FieldName = 'HIMHER'
      ReadOnly = True
      Size = 3
    end
    object qExportClientsHISHER: TStringField
      FieldName = 'HISHER'
      ReadOnly = True
      Size = 3
    end
    object qExportClientsSIRMADAM: TStringField
      FieldName = 'SIRMADAM'
      ReadOnly = True
      Size = 5
    end
    object qExportClientsPARTYABN: TStringField
      FieldName = 'PARTYABN'
      ReadOnly = True
      FixedChar = True
      Size = 14
    end
    object qExportClientsPARENT_PARTYNAME: TStringField
      FieldName = 'PARENT_PARTYNAME'
      ReadOnly = True
      Size = 100
    end
    object qExportClientsPARENT_PARTYSHORTNAME: TStringField
      FieldName = 'PARENT_PARTYSHORTNAME'
      ReadOnly = True
      Size = 60
    end
    object qExportClientsPARENT_PARTYLONGNAME: TStringField
      FieldName = 'PARENT_PARTYLONGNAME'
      ReadOnly = True
      Size = 150
    end
    object qExportClientsPARENT_PARTYSOLICITOR: TStringField
      FieldName = 'PARENT_PARTYSOLICITOR'
      ReadOnly = True
      Size = 1
    end
    object qExportClientsSOLICITORCODE: TStringField
      FieldName = 'SOLICITORCODE'
      ReadOnly = True
    end
    object qExportClientsCOURTNAME: TStringField
      FieldName = 'COURTNAME'
      ReadOnly = True
      Size = 50
    end
    object qExportClientsCOURTADDRESS: TStringField
      FieldName = 'COURTADDRESS'
      ReadOnly = True
      Size = 80
    end
    object qExportClientsCOURTSUBURB: TStringField
      FieldName = 'COURTSUBURB'
      ReadOnly = True
      Size = 50
    end
    object qExportClientsCOURTSTATE: TStringField
      FieldName = 'COURTSTATE'
      ReadOnly = True
      Size = 3
    end
    object qExportClientsCOURTPOSTCODE: TStringField
      FieldName = 'COURTPOSTCODE'
      ReadOnly = True
      Size = 4
    end
    object qExportClientsCLIENT_CODE: TStringField
      FieldName = 'CLIENT_CODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qExportClientsPARTY_CUST_ADDRESS: TStringField
      FieldName = 'PARTY_CUST_ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qExportClientsPART_CUST_SUBURB: TStringField
      FieldName = 'PART_CUST_SUBURB'
      ReadOnly = True
      Size = 50
    end
    object qExportClientsPARTY_CUST_STATE: TStringField
      FieldName = 'PARTY_CUST_STATE'
      ReadOnly = True
    end
    object qExportClientsPARTY_CUST_POSTCODE: TStringField
      FieldName = 'PARTY_CUST_POSTCODE'
      ReadOnly = True
    end
    object qExportClientsPARTY_CUST_COUNTRY: TStringField
      FieldName = 'PARTY_CUST_COUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportClientsESTIMATEDFEE: TFloatField
      FieldName = 'ESTIMATEDFEE'
      ReadOnly = True
    end
    object qExportClientsESTIMATEDDISBPRINC: TFloatField
      FieldName = 'ESTIMATEDDISBPRINC'
      ReadOnly = True
    end
    object qExportClientsESTIMATEDDISBAGENT: TFloatField
      FieldName = 'ESTIMATEDDISBAGENT'
      ReadOnly = True
    end
    object qExportClientsESTIMATEDCREDITORS: TFloatField
      FieldName = 'ESTIMATEDCREDITORS'
      ReadOnly = True
    end
    object qExportClientsTRSTMNT: TFloatField
      FieldName = 'TRSTMNT'
      ReadOnly = True
    end
    object qExportClientsPARTY_FULL_NAME_ADDRESS: TStringField
      FieldName = 'PARTY_FULL_NAME_ADDRESS'
      ReadOnly = True
      Size = 1500
    end
    object qExportClientsVAR1: TStringField
      FieldName = 'VAR1'
      ReadOnly = True
      Size = 100
    end
    object qExportClientsVAR2: TStringField
      FieldName = 'VAR2'
      ReadOnly = True
      Size = 100
    end
    object qExportClientsPARTY_FULL_ADDRESS: TStringField
      FieldName = 'PARTY_FULL_ADDRESS'
      ReadOnly = True
      Size = 1500
    end
    object qExportClientsPARTY_SUBURB_ONLY_ADDRESS: TStringField
      FieldName = 'PARTY_SUBURB_ONLY_ADDRESS'
      ReadOnly = True
      Size = 250
    end
    object qExportClientsPARTY_DX_FULL_ADDRESS: TStringField
      FieldName = 'PARTY_DX_FULL_ADDRESS'
      ReadOnly = True
      Size = 250
    end
    object qExportClientsPARTYEMAIL: TStringField
      FieldName = 'PARTYEMAIL'
      ReadOnly = True
      Size = 80
    end
    object qExportClientsPARTYEMAIL1: TStringField
      FieldName = 'PARTYEMAIL1'
      ReadOnly = True
      Size = 80
    end
    object qExportClientsPARTYEMAIL2: TStringField
      FieldName = 'PARTYEMAIL2'
      ReadOnly = True
      Size = 80
    end
  end
  object qExportMultiClients: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.nname  AS nname,'
      
        '  NVL(trim(P.GIVENNAMES), trim(B.GIVENNAMES)) AS partygivennames' +
        ','
      '  NVL(P.LASTNAME, B.LASTNAME)  AS partylastname,'
      '  p.search AS partysearch,'
      '  p.title  AS partytitle,'
      '  p.gender AS partygender,'
      '  TRIM(DECODE(p.WHICHADDRESS,'
      #39'S'#39', NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB) ' +
        '|| '#39' '#39' ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) || ' +
        #39' '#39' ||'
      
        '     DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POST' +
        'CODE) ||'
      
        '     DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), P' +
        '.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL,' +
        ' NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
      ''
      'NULL, NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB)' +
        ' || '#39' '#39' ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) ||' +
        ' '#39' '#39' ||'
      
        '      DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POS' +
        'TCODE) ||'
      
        '      DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), ' +
        'P.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL' +
        ', NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
      ''
      
        #39'P'#39', NVL(P.POSTALADDRESS, B.POSTALADDRESS) || chr(13) || chr(10)' +
        ' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B.POSTALS' +
        'UBURB), P.POSTALSUBURB) || '#39' '#39' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.POSTALST' +
        'ATE), P.POSTALSTATE) || '#39' '#39' ||'
      
        '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, B.POSTA' +
        'LPOSTCODE), P.POSTALPOSTCODE) ||'
      
        '     DECODE(DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B' +
        '.POSTALCOUNTRY), P.POSTALCOUNTRY),NULL,'#39#39', chr(13) || chr(10) ||' +
        ' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B.POSTALCOUN' +
        'TRY), P.POSTALCOUNTRY)),'
      ''
      
        #39'C'#39', NVL(P.CUST_ADDRESS, B.CUST_ADDRESS) || chr(13) || chr(10) |' +
        '|'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_SUBURB, B.CUST_SUBU' +
        'RB), P.CUST_SUBURB) || '#39' '#39' ||'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_STATE, B.CUST_STATE' +
        '), P.CUST_STATE) || '#39' '#39' ||'
      
        '     DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_POSTCODE, B.CUST_PO' +
        'STCODE), P.CUST_POSTCODE) ||'
      
        '     DECODE(DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, B.C' +
        'UST_COUNTRY), P.CUST_COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DEC' +
        'ODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, B.CUST_COUNTRY), P' +
        '.CUST_COUNTRY)),'
      ''
      
        #39'D'#39', '#39'DX '#39' || NVL(P.DX, B.DX) || chr(13) || chr(10) || NVL(P.DXL' +
        'OC, B.DXLOC)'
      ')) AS partyaddress,'
      '  NVL(P.SALUTATION, B.SALUTATION) AS partysalutation,'
      '  NVL(P.WORKPHONE, B.WORKPHONE)   AS partyworkphone,'
      '  NVL(P.HOMEPHONE, B.HOMEPHONE)   AS partyhomephone,'
      '  NVL(P.DX, B.DX)                 AS partydx,'
      '  NVL(P.DXLOC, B.DXLOC)           AS partydxloc,'
      '  NVL(P.FAX, B.FAX)               AS partyfax,'
      '  p.code                          AS partycode,'
      '  p.sparty                        AS partysparty,'
      '  p.solicitor                     AS partysolicitor,'
      '  p.real_estate                   AS partyreal_estate,'
      '  p.referrals                     AS partyreferrals,'
      '  p.note                          AS partynote,'
      '  NVL(P.NAME, B.NAME)             AS partyname,'
      '  NVL(P.SHORTNAME, B.SHORTNAME)   AS partyshortname,'
      '  NVL(P.LONGNAME, B.LONGNAME)     AS partylongname,'
      '  p.mod_date                      AS partymod_date,'
      '  p.mod_by                        AS partymod_by,'
      '  p.type                          AS partytype,'
      '  NVL(P.COUNTRY, B.COUNTRY)       AS partycountry,'
      '  p.acn                           AS partyacn,'
      '  p.occupation                    AS partyoccupation,'
      '  p.dob                           AS partydob,'
      '  NVL(P.EMAIL, B.EMAIL)           AS partyemail,'
      '  NVL(P.WWW, B.WWW)               AS partywww,'
      '  NVL(P.MOBILE, B.MOBILE)         AS partymobile,'
      '  NVL(P.ADDRESS, B.ADDRESS)       AS address,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB)    ' +
        '                           AS suburb,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE)       ' +
        '                           AS state,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POSTCOD' +
        'E)                         AS postcode,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY) ' +
        '                           AS country,'
      
        '  NVL(P.POSTALADDRESS, B.POSTALADDRESS)                         ' +
        '                           AS postaladdress,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B.POSTALSUBU' +
        'RB), P.POSTALSUBURB)       AS postalsuburb,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.POSTALSTATE' +
        '), P.POSTALSTATE)          AS postalstate,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, B.POSTALPO' +
        'STCODE), P.POSTALPOSTCODE) AS postalpostcode,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B.POSTALCOU' +
        'NTRY), P.POSTALCOUNTRY)    AS postalcountry,'
      '  p.whichaddress   AS whichaddress,'
      '  DECODE(p.gender,'#39'M'#39','#39'he'#39','#39'F'#39','#39'she'#39',NULL) AS HESHE,'
      '  DECODE(p.gender,'#39'M'#39','#39'him'#39','#39'F'#39','#39'her'#39',NULL) AS HIMHER,'
      '  DECODE(p.gender,'#39'M'#39','#39'his'#39','#39'F'#39','#39'her'#39',NULL) AS HISHER,'
      '  DECODE(p.gender,'#39'M'#39','#39'Sir'#39','#39'F'#39','#39'Madam'#39',NULL) AS SIRMADAM,'
      '  p.abn                           AS partyabn,'
      '  B.name'#9#9#9'  AS parent_partyname,'
      '  B.shortname'#9#9#9'  AS parent_partyshortname,'
      '  B.longname'#9#9#9'  AS parent_partylongname,'
      '  B.solicitor'#9#9#9'  AS parent_partysolicitor,'
      '  NVL(P.ADDRESS, B.ADDRESS) as party_address, '
      '  NVL(P.SUBURB, B.SUBURB) as party_suburb,'
      '  NVL(P.STATE, B.STATE) as party_state,'
      '  NVL(P.POSTCODE, B.POSTCODE) as party_postcode,'
      '  NVL(P.COUNTRY, B.COUNTRY) as party_country,'
      
        '  NVL(p.FULL_NAME_ADDRESS, b.FULL_NAME_ADDRESS) as party_FULL_NA' +
        'ME_ADDRESS,'
      '  NVL(p.FULL_ADDRESS, b.FULL_ADDRESS) as party_FULL_ADDRESS,'
      
        '  NVL(P.SUBURB_ONLY_ADDRESS, B.SUBURB_ONLY_ADDRESS) AS PARTY_SUB' +
        'URB_ONLY_ADDRESS,'
      
        '  NVL(P.DX_FULL_ADDRESS, B.DX_FULL_ADDRESS) AS PARTY_DX_FULL_ADD' +
        'RESS,'
      '  NVL(P.CUST_ADDRESS, B.CUST_ADDRESS) as party_cust_address, '
      '  NVL(P.CUST_SUBURB, B.CUST_SUBURB) as party_cust_suburb,'
      '  NVL(P.CUST_STATE, B.CUST_STATE) as party_cust_state,'
      '  NVL(P.CUST_POSTCODE, B.CUST_POSTCODE) as party_cust_postcode,'
      '  NVL(P.CUST_COUNTRY, B.CUST_COUNTRY) as party_cust_country,'
      '  P.SYSTEM1 AS VAR1, P.SYSTEM2 AS VAR2,'
      '  NVL(P.EMAIL1, B.EMAIL1)                   AS partyemail1,'
      '  NVL(P.EMAIL2, B.EMAIL2)                   AS partyemail2,'
      '  NVL(P.CONTACT_NAME, b.CONTACT_NAME) as PARTY_CONTACT_NAME,'
      
        '  NVL(P.additional_contact_name, b.additional_contact_name) as P' +
        'ARTY_ADDITIONAL_CONTACT_NAME'
      ''
      ''
      '--  BJ.SOLICITOR_CODE AS SOLICITORCODE,'
      '--  CD.DESCR AS COURTNAME,'
      '--  CD.STREET AS COURTADDRESS,'
      '--  CD.SUBURB AS COURTSUBURB,'
      '--  CD.STATE AS COURTSTATE,'
      '--  CD.POSTCODE AS COURTPOSTCODE'
      'FROM'
      '--  MATTER M,'
      '  PHONEBOOK P,'
      '  PHONEBOOK B'
      '--  BRANCH_JURISDICTION BJ,'
      '--  COURT_DETAILS CD'
      'WHERE '
      '  P.NNAMEMASTER = :NNAME AND'
      '  P.NNAMEMASTER = B.NNAME'
      '--  M.NCLIENT = P.NCLIENT AND'
      '--  M.SUBJURISDICTION = BJ.SUBJURISDICTION (+) AND'
      '--  M.BRANCH = BJ.BRANCH (+) AND'
      '--  BJ.COURT_ADDRESS_CODE = CD.CODE (+) AND'
      '--  BJ.SUBJURISDICTION = CD.SUBJURISDICTION (+)')
    Left = 173
    Top = 426
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end>
    object qExportMultiClientsNNAME: TLargeintField
      FieldName = 'NNAME'
      Required = True
    end
    object qExportMultiClientsPARTYGIVENNAMES: TStringField
      FieldName = 'PARTYGIVENNAMES'
      ReadOnly = True
      Size = 60
    end
    object qExportMultiClientsPARTYLASTNAME: TStringField
      FieldName = 'PARTYLASTNAME'
      ReadOnly = True
      Size = 60
    end
    object qExportMultiClientsPARTYSEARCH: TStringField
      FieldName = 'PARTYSEARCH'
      Required = True
      Size = 85
    end
    object qExportMultiClientsPARTYTITLE: TStringField
      FieldName = 'PARTYTITLE'
      Size = 40
    end
    object qExportMultiClientsPARTYGENDER: TStringField
      FieldName = 'PARTYGENDER'
      Size = 1
    end
    object qExportMultiClientsPARTYADDRESS: TStringField
      FieldName = 'PARTYADDRESS'
      ReadOnly = True
      Size = 246
    end
    object qExportMultiClientsPARTYSALUTATION: TStringField
      FieldName = 'PARTYSALUTATION'
      ReadOnly = True
      Size = 40
    end
    object qExportMultiClientsPARTYWORKPHONE: TStringField
      FieldName = 'PARTYWORKPHONE'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsPARTYHOMEPHONE: TStringField
      FieldName = 'PARTYHOMEPHONE'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsPARTYDX: TStringField
      FieldName = 'PARTYDX'
      ReadOnly = True
    end
    object qExportMultiClientsPARTYDXLOC: TStringField
      FieldName = 'PARTYDXLOC'
      ReadOnly = True
      Size = 50
    end
    object qExportMultiClientsPARTYFAX: TStringField
      FieldName = 'PARTYFAX'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsPARTYCODE: TStringField
      FieldName = 'PARTYCODE'
    end
    object qExportMultiClientsPARTYSPARTY: TStringField
      FieldName = 'PARTYSPARTY'
      Size = 1
    end
    object qExportMultiClientsPARTYSOLICITOR: TStringField
      FieldName = 'PARTYSOLICITOR'
      Size = 1
    end
    object qExportMultiClientsPARTYREAL_ESTATE: TStringField
      FieldName = 'PARTYREAL_ESTATE'
      Size = 1
    end
    object qExportMultiClientsPARTYREFERRALS: TSmallintField
      FieldName = 'PARTYREFERRALS'
    end
    object qExportMultiClientsPARTYNOTE: TStringField
      FieldName = 'PARTYNOTE'
      Size = 2000
    end
    object qExportMultiClientsPARTYNAME: TStringField
      FieldName = 'PARTYNAME'
      ReadOnly = True
      Size = 100
    end
    object qExportMultiClientsPARTYSHORTNAME: TStringField
      FieldName = 'PARTYSHORTNAME'
      ReadOnly = True
      Size = 60
    end
    object qExportMultiClientsPARTYLONGNAME: TStringField
      FieldName = 'PARTYLONGNAME'
      ReadOnly = True
      Size = 150
    end
    object qExportMultiClientsPARTYMOD_DATE: TDateTimeField
      FieldName = 'PARTYMOD_DATE'
    end
    object qExportMultiClientsPARTYMOD_BY: TStringField
      FieldName = 'PARTYMOD_BY'
      Size = 10
    end
    object qExportMultiClientsPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      Size = 1
    end
    object qExportMultiClientsPARTYCOUNTRY: TStringField
      FieldName = 'PARTYCOUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsPARTYACN: TStringField
      FieldName = 'PARTYACN'
      Size = 30
    end
    object qExportMultiClientsPARTYOCCUPATION: TStringField
      FieldName = 'PARTYOCCUPATION'
      Size = 250
    end
    object qExportMultiClientsPARTYDOB: TDateTimeField
      FieldName = 'PARTYDOB'
    end
    object qExportMultiClientsPARTYEMAIL: TStringField
      FieldName = 'PARTYEMAIL'
      ReadOnly = True
      Size = 80
    end
    object qExportMultiClientsPARTYWWW: TStringField
      FieldName = 'PARTYWWW'
      ReadOnly = True
      Size = 60
    end
    object qExportMultiClientsPARTYMOBILE: TStringField
      FieldName = 'PARTYMOBILE'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsADDRESS: TStringField
      FieldName = 'ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qExportMultiClientsSUBURB: TStringField
      FieldName = 'SUBURB'
      ReadOnly = True
      Size = 50
    end
    object qExportMultiClientsSTATE: TStringField
      FieldName = 'STATE'
      ReadOnly = True
    end
    object qExportMultiClientsPOSTCODE: TStringField
      FieldName = 'POSTCODE'
      ReadOnly = True
    end
    object qExportMultiClientsCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsPOSTALADDRESS: TStringField
      FieldName = 'POSTALADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qExportMultiClientsPOSTALSUBURB: TStringField
      FieldName = 'POSTALSUBURB'
      ReadOnly = True
      Size = 50
    end
    object qExportMultiClientsPOSTALSTATE: TStringField
      FieldName = 'POSTALSTATE'
      ReadOnly = True
    end
    object qExportMultiClientsPOSTALPOSTCODE: TStringField
      FieldName = 'POSTALPOSTCODE'
      ReadOnly = True
    end
    object qExportMultiClientsPOSTALCOUNTRY: TStringField
      FieldName = 'POSTALCOUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsWHICHADDRESS: TStringField
      FieldName = 'WHICHADDRESS'
      Size = 1
    end
    object qExportMultiClientsHESHE: TStringField
      FieldName = 'HESHE'
      ReadOnly = True
      Size = 3
    end
    object qExportMultiClientsHIMHER: TStringField
      FieldName = 'HIMHER'
      ReadOnly = True
      Size = 3
    end
    object qExportMultiClientsHISHER: TStringField
      FieldName = 'HISHER'
      ReadOnly = True
      Size = 3
    end
    object qExportMultiClientsSIRMADAM: TStringField
      FieldName = 'SIRMADAM'
      ReadOnly = True
      Size = 5
    end
    object qExportMultiClientsPARTYABN: TStringField
      FieldName = 'PARTYABN'
      FixedChar = True
      Size = 14
    end
    object qExportMultiClientsPARENT_PARTYNAME: TStringField
      FieldName = 'PARENT_PARTYNAME'
      ReadOnly = True
      Size = 100
    end
    object qExportMultiClientsPARENT_PARTYSHORTNAME: TStringField
      FieldName = 'PARENT_PARTYSHORTNAME'
      ReadOnly = True
      Size = 60
    end
    object qExportMultiClientsPARENT_PARTYLONGNAME: TStringField
      FieldName = 'PARENT_PARTYLONGNAME'
      ReadOnly = True
      Size = 150
    end
    object qExportMultiClientsPARENT_PARTYSOLICITOR: TStringField
      FieldName = 'PARENT_PARTYSOLICITOR'
      ReadOnly = True
      Size = 1
    end
    object qExportMultiClientsPARTY_ADDRESS: TStringField
      FieldName = 'PARTY_ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qExportMultiClientsPARTY_SUBURB: TStringField
      FieldName = 'PARTY_SUBURB'
      ReadOnly = True
      Size = 50
    end
    object qExportMultiClientsPARTY_STATE: TStringField
      FieldName = 'PARTY_STATE'
      ReadOnly = True
    end
    object qExportMultiClientsPARTY_POSTCODE: TStringField
      FieldName = 'PARTY_POSTCODE'
      ReadOnly = True
    end
    object qExportMultiClientsPARTY_COUNTRY: TStringField
      FieldName = 'PARTY_COUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsPARTY_FULL_NAME_ADDRESS: TStringField
      FieldName = 'PARTY_FULL_NAME_ADDRESS'
      ReadOnly = True
      Size = 1500
    end
    object qExportMultiClientsPARTY_FULL_ADDRESS: TStringField
      FieldName = 'PARTY_FULL_ADDRESS'
      ReadOnly = True
      Size = 1500
    end
    object qExportMultiClientsPARTY_SUBURB_ONLY_ADDRESS: TStringField
      FieldName = 'PARTY_SUBURB_ONLY_ADDRESS'
      ReadOnly = True
      Size = 250
    end
    object qExportMultiClientsPARTY_DX_FULL_ADDRESS: TStringField
      FieldName = 'PARTY_DX_FULL_ADDRESS'
      ReadOnly = True
      Size = 250
    end
    object qExportMultiClientsPARTY_CUST_ADDRESS: TStringField
      FieldName = 'PARTY_CUST_ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qExportMultiClientsPARTY_CUST_SUBURB: TStringField
      FieldName = 'PARTY_CUST_SUBURB'
      ReadOnly = True
      Size = 50
    end
    object qExportMultiClientsPARTY_CUST_STATE: TStringField
      FieldName = 'PARTY_CUST_STATE'
      ReadOnly = True
    end
    object qExportMultiClientsPARTY_CUST_POSTCODE: TStringField
      FieldName = 'PARTY_CUST_POSTCODE'
      ReadOnly = True
    end
    object qExportMultiClientsPARTY_CUST_COUNTRY: TStringField
      FieldName = 'PARTY_CUST_COUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qExportMultiClientsVAR1: TStringField
      FieldName = 'VAR1'
      Size = 100
    end
    object qExportMultiClientsVAR2: TStringField
      FieldName = 'VAR2'
      Size = 100
    end
    object qExportMultiClientsPARTYEMAIL1: TStringField
      FieldName = 'PARTYEMAIL1'
      ReadOnly = True
      Size = 80
    end
    object qExportMultiClientsPARTYEMAIL2: TStringField
      FieldName = 'PARTYEMAIL2'
      ReadOnly = True
      Size = 80
    end
  end
  object qMatterActingFor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  t.nname,'
      '  mp.category,'
      '  nvl(trim(t.search), trim(pp.search)) as search,'
      '  nvl(trim(t.name), trim(pp.name)) as name,'
      '  nvl(trim(t.givennames), trim(pp.givennames)) as givennames,'
      '  nvl(trim(t.lastname), trim(pp.lastname)) as lastname,'
      '  nvl(trim(t.salutation), trim(pp.salutation)) as salutation,'
      '  pp.name as parentname,'
      '  pp.nname as parentnname,'
      
        '  NVL(NVL(t.homephone,pp.homephone), NVL(t.workphone,pp.workphon' +
        'e)) AS phone,'
      '  '
      '  t.search       AS throughsearch,'
      '  t.name         AS throughname,'
      '  t.givennames   AS throughgivennames,'
      '  t.lastname     AS throughlastname,'
      '  t.salutation   AS throughsalutation,'
      '  mpt.category   AS throughcategory,'
      '  nvl(t.homephone, t.workphone) AS throughphone,'
      ''
      ' TRIM(DECODE(t.WHICHADDRESS,'
      #39'S'#39', NVL(t.ADDRESS, pp.ADDRESS) || chr(13) || chr(10) ||'
      
        '     DECODE(t.ADDRESS, NULL, NVL(t.SUBURB, pp.SUBURB), t.SUBURB)' +
        ' || '#39' '#39' ||'
      
        '     DECODE(t.ADDRESS, NULL, NVL(t.STATE, pp.STATE), t.STATE) ||' +
        ' '#39' '#39' ||'
      
        '     DECODE(t.ADDRESS, NULL, NVL(t.POSTCODE, pp.POSTCODE), t.POS' +
        'TCODE) ||'
      
        '     DECODE(DECODE(t.ADDRESS, NULL, NVL(t.COUNTRY, pp.COUNTRY), ' +
        't.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(t.ADDRESS, NULL' +
        ', NVL(t.COUNTRY, pp.COUNTRY), t.COUNTRY)),'
      ''
      'NULL, NVL(t.ADDRESS, pp.ADDRESS) || chr(13) || chr(10) ||'
      
        '      DECODE(t.ADDRESS, NULL, NVL(t.SUBURB, pp.SUBURB), t.SUBURB' +
        ') || '#39' '#39' ||'
      
        '      DECODE(t.ADDRESS, NULL, NVL(t.STATE, pp.STATE), t.STATE) |' +
        '| '#39' '#39' ||'
      
        '      DECODE(t.ADDRESS, NULL, NVL(t.POSTCODE, pp.POSTCODE), t.PO' +
        'STCODE) ||'
      
        '      DECODE(DECODE(t.ADDRESS, NULL, NVL(t.COUNTRY, pp.COUNTRY),' +
        ' t.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(t.ADDRESS, NUL' +
        'L, NVL(t.COUNTRY, pp.COUNTRY), t.COUNTRY)),'
      ''
      
        #39'P'#39', NVL(t.POSTALADDRESS, pp.POSTALADDRESS) || chr(13) || chr(10' +
        ') ||'
      
        '     DECODE(t.POSTALADDRESS, NULL, NVL(t.POSTALSUBURB, pp.POSTAL' +
        'SUBURB), t.POSTALSUBURB) || '#39' '#39' ||'
      
        '     DECODE(t.POSTALADDRESS, NULL, NVL(t.POSTALSTATE, pp.POSTALS' +
        'TATE), t.POSTALSTATE) || '#39' '#39' ||'
      
        '     DECODE(t.POSTALADDRESS, NULL, NVL(t.POSTALPOSTCODE, pp.POST' +
        'ALPOSTCODE), t.POSTALPOSTCODE) ||'
      
        '     DECODE(DECODE(t.POSTALADDRESS, NULL, NVL(t.POSTALCOUNTRY, p' +
        'p.POSTALCOUNTRY), t.POSTALCOUNTRY),NULL,'#39#39', chr(13) || chr(10) |' +
        '| DECODE(t.POSTALADDRESS, NULL, NVL(t.POSTALCOUNTRY, pp.POSTALCO' +
        'UNTRY), t.POSTALCOUNTRY)),'
      ''
      
        #39'C'#39', NVL(t.CUST_ADDRESS, pp.CUST_ADDRESS) || chr(13) || chr(10) ' +
        '||'
      
        '     DECODE(t.CUST_ADDRESS, NULL, NVL(t.CUST_SUBURB, pp.CUST_SUB' +
        'URB), t.CUST_SUBURB) || '#39' '#39' ||'
      
        '     DECODE(t.CUST_ADDRESS, NULL, NVL(t.CUST_STATE, pp.CUST_STAT' +
        'E), t.CUST_STATE) || '#39' '#39' ||'
      
        '     DECODE(t.CUST_ADDRESS, NULL, NVL(t.CUST_POSTCODE, pp.CUST_P' +
        'OSTCODE), t.CUST_POSTCODE) ||'
      
        '     DECODE(DECODE(t.CUST_ADDRESS, NULL, NVL(t.CUST_COUNTRY, pp.' +
        'CUST_COUNTRY), t.CUST_COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DE' +
        'CODE(t.CUST_ADDRESS, NULL, NVL(t.CUST_COUNTRY, pp.CUST_COUNTRY),' +
        ' t.CUST_COUNTRY)),'
      ''
      
        #39'D'#39', '#39'DX '#39' || NVL(t.DX, pp.DX) || chr(13) || chr(10) || NVL(t.DX' +
        'LOC, pp.DXLOC)'
      ')) AS acting_partyaddress,'
      '  nvl(t.ADDRESS, pp.ADDRESS) AS address,'
      '  nvl(t.SUBURB, pp.SUBURB) AS suburb,'
      '  nvl(t.STATE, pp.STATE) AS state,'
      '  nvl(t.POSTCODE, pp.POSTCODE) AS postcode,'
      '  nvl(t.COUNTRY, pp.COUNTRY) AS country,'
      '  nvl(t.DX, pp.DX) AS dx,'
      '  nvl(t.DXLOC, pp.DXLOC) AS dxloc,'
      '  nvl(T.FAX, pp.FAX) AS fax,'
      '  nvl(t.email, pp.EMAIL) as email,'
      
        '  nvl(t.full_name_address, pp.full_name_address) as acting_full_' +
        'name_address,'
      '  nvl(t.full_address, pp.full_address) as acting_full_address,'
      
        '  NVL(T.SUBURB_ONLY_ADDRESS, PP.SUBURB_ONLY_ADDRESS) AS ACTING_S' +
        'UBURB_ONLY_ADDRESS,'
      
        '  NVL(T.DX_FULL_ADDRESS, PP.DX_FULL_ADDRESS) AS ACTING_DX_FULL_A' +
        'DDRESS,'
      '  NVL(t.CONTACT_NAME, pp.CONTACT_NAME) as PARTY_CONTACT_NAME,'
      
        '  NVL(t.additional_contact_name, pp.additional_contact_name) as ' +
        'PARTY_ADDITIONAL_CONTACT_NAME,'
      '  NVL(t.full_address, pp.full_address) Full_Address,'
      
        '  NVL(t.full_name_address, pp.full_name_address) full_name_addre' +
        'ss'
      'FROM '
      '  mattercontactactingfor at, '
      '  phonebook t,'
      '  phonebook pp,'
      '  matterparty mp,  '
      '  matterparty mpt'
      'WHERE'
      '    mp.nmatter = :nmatter'
      'AND at.nmatter(+) = :nmatter'
      'AND mpt.nmatter(+) = :nmatter'
      'AND at.actingfornname(+) = mp.nname'
      'AND t.nname(+) = at.nname'
      'AND pp.nname(+) = t.nnamemaster'
      'AND mpt.nname(+) = at.nname'
      'AND t.nname is not null'
      'ORDER BY mp.category,mp.seq')
    Left = 334
    Top = 431
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object spInsertGenericDocument: TUniStoredProc
    StoredProcName = 'DOCINSERTGENDOCUMENT'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := DOCINSERTGENDOCUMENT(:ANMATTER, :ADOCUMENTID, :AFIL' +
        'EPATH, :ATEMPLATEPATH, :ADATAFILEPATH, :AWHO, :ADATAFORM, :ADESC' +
        'R, :ADOC_NAME, :AFILEID, :AFILE_EXTENSION, :APRECCATEGORY, :APRE' +
        'CCLASSIFICATION, :ADISPLAYFILEPATH, :AIMAGEINDEX);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 47
    Top = 424
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ANMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ADOCUMENTID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'AFILEPATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ATEMPLATEPATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADATAFILEPATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'AWHO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADATAFORM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADESCR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADOC_NAME'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'AFILEID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'AFILE_EXTENSION'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'APRECCATEGORY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'APRECCLASSIFICATION'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ADISPLAYFILEPATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'AIMAGEINDEX'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'DOCINSERTGENDOCUMENT'
  end
  object qClientFormData: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.seq,'
      '  f.fieldname,'
      '  t.caption,'
      '  t.type,'
      '  f.textvalue,'
      '  f.nunique,'
      '  f.nunique2,'
      '  g.code AS dataform,'
      '  g.caption AS dataformcaption,'
      '  g.party AS party,'
      '  f.numbervalue,'
      '  f.datevalue,'
      '  f.linktable'
      'FROM'
      '  fieldtypelink f,'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  t.name = f.fieldname'
      '  AND d.dataform = g.code'
      '  AND d.fieldname = t.name'
      '  AND f.linktable = g.code'
      '  AND f.nunique = :nunique'
      '  AND f.nunique2 IS NULL'
      '  AND g.party = :partytype'
      '  AND g.partyismatterspecific = '#39'N'#39
      'UNION'
      'SELECT'
      '  d.seq,'
      '  t.name AS fieldname,'
      '  t.caption,'
      '  t.type,'
      '  NULL AS textvalue,'
      '  -1 AS nunique,'
      '  -1 AS nunique2,'
      '  g.code AS dataform,'
      '  g.caption AS dataformcaption,'
      '  g.party AS party,'
      '  -1 as numbervalue,'
      '  null as datevalue,'
      '  null as linktable'
      'FROM'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  d.dataform = g.code'
      '  AND g.party = :partytype'
      '  AND d.fieldname = t.name'
      '  AND t.name NOT IN ('
      '    SELECT t.name'
      '    FROM'
      '      fieldtypelink f,'
      '      fieldtype t,'
      '      dataformfield d,'
      '      dataform g'
      '    WHERE t.name = f.fieldname'
      '      AND d.dataform = g.code'
      '      AND g.party = :partytype'
      '      AND d.fieldname = t.NAME'
      '      AND f.linktable = g.code'
      '      AND f.nunique = :nunique'
      '      AND f.nunique2 IS NULL'
      '      AND g.partyismatterspecific = '#39'N'#39
      '  )'
      '  AND g.partyismatterspecific = '#39'N'#39
      'ORDER BY dataform, seq'
      '')
    Left = 233
    Top = 503
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nunique'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
  end
  object qPGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT  /*+ first_rows */ distinct g.category, '
      
        '  decode(g.otherparty,'#39'Y'#39','#39'Yes'#39','#39'No'#39') as otherparty, g.actingfor' +
        ', g.fieldname'
      'FROM'
      '  pbgroup g, pbgroupings p'
      'WHERE'
      '  g.category = p.category(+)'
      'AND p.nname = :nname'
      'ORDER BY g.category ')
    Left = 46
    Top = 482
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nname'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsMatterParty: TUniDataSource
    DataSet = qMatterParty
    Left = 245
    Top = 219
  end
  object dsTaskParty: TUniDataSource
    DataSet = qTaskParty
    Left = 248
    Top = 14
  end
  object qMatterPartyData: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.seq,'
      '  g.code as dataform,'
      '  f.fieldname,'
      '  t.caption,'
      '  t.type,'
      '  f.textvalue,'
      '  f.nunique,'
      '  f.linktable,'
      '  f.numbervalue,'
      '  f.datevalue,'
      '  f.nunique2,'
      '  g.caption as dataformcaption'
      'FROM'
      '  fieldtypelink f,'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  t.name = f.fieldname'
      '  AND d.dataform = g.code'
      '  AND d.fieldname = t.name'
      '  AND f.linktable = upper(g.code)'
      '  AND f.nunique = :nunique'
      '  AND f.nunique2 = :nunique2'
      '  AND g.party = :partytype'
      '--  AND g.partyismatterspecific = '#39'N'#39
      'UNION'
      'SELECT'
      '  d.seq,'
      '  g.code as dataform,'
      '  t.name AS fieldname,'
      '  t.caption,'
      '  t.type,'
      '  NULL AS textvalue,'
      '  CAST(:nunique AS INTEGER) AS nunique,'
      '  NULL AS linktable,'
      '  CAST(NULL AS NUMBER(17,2)) AS numbervalue,'
      '  CAST(NULL AS DATE) AS datevalue,'
      '  CAST(NULL AS INTEGER) as nunique2,'
      '  g.caption as dataformcaption'
      'FROM'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  d.dataform = g.code'
      '  AND g.party = :partytype'
      '--  AND g.partyismatterspecific = '#39'N'#39
      '  AND d.fieldname = t.name'
      '  AND t.name NOT IN ('
      '    SELECT t.name'
      '    FROM'
      '      fieldtypelink f,'
      '      fieldtype t,'
      '      dataformfield d,'
      '      dataform g'
      '    WHERE t.name = f.fieldname'
      '     AND d.dataform = g.code'
      '     AND g.party = :partytype'
      '     AND d.fieldname = t.NAME'
      '     AND f.linktable = upper(g.code)'
      '     AND f.nunique = :nunique'
      #9' AND f.nunique2 = :nunique2'
      '  )'
      'ORDER BY 1  ')
    Left = 341
    Top = 501
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nunique'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nunique2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
    object qMatterPartyDataSEQ: TSmallintField
      FieldName = 'SEQ'
      ReadOnly = True
    end
    object qMatterPartyDataDATAFORM: TStringField
      FieldName = 'DATAFORM'
      ReadOnly = True
      Size = 32
    end
    object qMatterPartyDataFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 40
    end
    object qMatterPartyDataCAPTION: TStringField
      FieldName = 'CAPTION'
      ReadOnly = True
      Size = 120
    end
    object qMatterPartyDataTYPE: TStringField
      FieldName = 'TYPE'
      ReadOnly = True
      Size = 2
    end
    object qMatterPartyDataTEXTVALUE: TStringField
      FieldName = 'TEXTVALUE'
      Size = 2000
    end
    object qMatterPartyDataNUNIQUE: TFloatField
      FieldName = 'NUNIQUE'
    end
    object qMatterPartyDataLINKTABLE: TStringField
      FieldName = 'LINKTABLE'
      Size = 32
    end
    object qMatterPartyDataNUMBERVALUE: TFloatField
      FieldName = 'NUMBERVALUE'
    end
    object qMatterPartyDataDATEVALUE: TDateTimeField
      FieldName = 'DATEVALUE'
    end
    object qMatterPartyDataNUNIQUE2: TFloatField
      FieldName = 'NUNIQUE2'
    end
    object qMatterPartyDataDATAFORMCAPTION: TStringField
      FieldName = 'DATAFORMCAPTION'
      ReadOnly = True
      Size = 60
    end
  end
  object qEmployeeTypeRates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   '
      '         NVL (a.emp_level, b.emp_level) AS emp_level, '
      '         NVL (a.rate, b.stdrate) as feerate'
      
        '--         NVL (a.feecodedesc, b.feecodedesc) as feecodedesc , N' +
        'VL(a.emptypedescr, b.emptypedescr) as emptypedescr'
      
        '    FROM (SELECT effective_from, emp_level, nvl(feecodetype.rate' +
        ',0) rate, feecode.descr AS feecodedesc,'
      '                 feetype.descr AS feetypedescr'
      '            FROM feecodetype, feecode, feetype'
      '           WHERE feecodetype.feecode = feecode.code'
      '             AND feecode.code = :code'
      '             AND effective_from IS NOT NULL'
      '             AND effective_to IS NULL'
      '             AND feecodetype.emp_level = feetype.code) a,'
      
        '         (SELECT   MAX (effective_from), emp_level, MAX (feecode' +
        'type.rate) AS stdrate,'
      '                   feecode.descr AS feecodedesc,'
      '                   feetype.descr AS feetypedescr'
      '              FROM feecodetype, feecode, feetype'
      '             WHERE feecodetype.feecode = feecode.code'
      '               AND feecode.code = :stdcode'
      '               AND effective_from IS NOT NULL'
      '               AND effective_to IS NULL'
      '               AND feecodetype.emp_level = feetype.code'
      
        '          GROUP BY feecodetype.emp_level, feecode.descr, feetype' +
        '.descr) b'
      '   WHERE a.emp_level(+) = b.emp_level')
    SpecificOptions.Strings = (
      'Oracle.ExtendedFieldsInfo=True')
    Left = 122
    Top = 517
    ParamData = <
      item
        DataType = ftString
        Name = 'code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'stdcode'
        ParamType = ptInput
        Value = nil
      end>
    object qEmployeeTypeRatesFEERATE: TFloatField
      FieldName = 'FEERATE'
      ReadOnly = True
    end
    object qEmployeeTypeRatesEMP_LEVEL: TStringField
      FieldName = 'EMP_LEVEL'
      ReadOnly = True
    end
  end
end
