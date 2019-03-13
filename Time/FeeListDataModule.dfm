object dmFeeList: TdmFeeList
  OldCreateOrder = False
  Height = 484
  Width = 783
  object qBudgetGraphAuthQtrWIP: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on author per quarter'
      ''
      'SELECT m.author, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(b.unbilled,0) AS unbilled, '
      '  NVL(m.wip,0) AS wipbudget, '
      '  m.quarter, m.YEAR, '
      '  '#39'Q'#39' || m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND TYPE <> '#39'ia'#39' '
      '    AND author = :author'
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4' +
        ',2)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author '
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4' +
        ',2)'
      '  ) b,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE AS author,'
      '      NVL(financial_year,YEAR) AS YEAR, '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS quar' +
        'ter   '
      '    FROM BUDGET'
      '    WHERE EMPLOYEE = :author  '
      '    GROUP BY EMPLOYEE, '
      '      NVL(financial_year,YEAR), '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) '
      '  ) m'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.quarter(+)  = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.quarter(+)  = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.quarter, m.YEAR,  '
      '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND type <> '#39'ia'#39
      '    AND author = :author '
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4' +
        ',2)'
      '  ) m,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author '
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4' +
        ',2)'
      '  ) a,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE AS author,'
      '      NVL(financial_year,YEAR) AS YEAR, '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS quar' +
        'ter    '
      '    FROM BUDGET'
      '    WHERE EMPLOYEE = :author '
      '    GROUP BY EMPLOYEE, '
      '      NVL(financial_year,YEAR), '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2)'
      '  ) b'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.quarter(+)  = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.quarter(+)  = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.quarter, m.YEAR,  '
      '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND TYPE <> '#39'ia'#39
      '    AND author = :author '
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4' +
        ',2)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author '
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4' +
        ',2)'
      '  ) m,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE AS author,'
      '      NVL(financial_year,YEAR) AS YEAR, '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS quar' +
        'ter    '
      '    FROM BUDGET'
      '    WHERE EMPLOYEE = :author '
      '    GROUP BY EMPLOYEE, '
      '      NVL(financial_year,YEAR), '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) '
      '  ) b'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.quarter(+)  = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.quarter(+)  = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY YEAR, quarter')
    Left = 57
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBudgetGraphAuthYrWIP: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on author per year'
      ''
      'SELECT m.author, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(b.unbilled,0) AS unbilled,'
      '  NVL(m.wip,0) AS wipbudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND type <> '#39'ia'#39
      '    AND author = :author '
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39' '
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author'
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) b,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE AS author,'
      '      financial_year AS YEAR'
      '    FROM BUDGET '
      '    GROUP BY EMPLOYEE, '
      '      financial_year'
      '  ) m'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.unbilled,0) AS unbilled, '
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND type <> '#39'ia'#39
      '    AND author = :author '
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) m,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39' '
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author'
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE AS author,'
      '      financial_year AS YEAR '
      '    FROM BUDGET '
      '    GROUP BY EMPLOYEE, '
      '      financial_year'
      '  ) b'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND TYPE <> '#39'ia'#39
      '    AND author = :author '
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39' '
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author'
      '    GROUP BY author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) m,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE AS author,'
      '      financial_year AS YEAR'
      '    FROM BUDGET '
      '    GROUP BY EMPLOYEE, '
      '      financial_year'
      '  ) b'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY author, YEAR')
    Left = 56
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBudgetGraphDeptYrWIP: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on department per year'
      ''
      'SELECT m.dept, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(b.unbilled,0) AS unbilled,'
      '  NVL(m.wip,0) AS wipbudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND type <> '#39'ia'#39
      '    AND dept = :dept '
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND dept = :dept '
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) b,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept,'
      '      financial_year AS YEAR'
      '    FROM BUDGET'
      '    WHERE department = :dept '
      '    GROUP BY department, '
      '      financial_year'
      '  ) m'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.unbilled,0) AS unbilled, '
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND type <> '#39'ia'#39
      '    AND dept = :dept '
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) m,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND dept = :dept'
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept,'
      '      financial_year AS YEAR '
      '    FROM BUDGET'
      '    WHERE department = :dept '
      '    GROUP BY department, '
      '      financial_year'
      '  ) b'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND TYPE <> '#39'ia'#39
      '    AND dept = :dept '
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND dept = :dept '
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) m,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept,'
      '      financial_year AS YEAR'
      '    FROM BUDGET'
      '    WHERE department = :dept '
      '    GROUP BY department, '
      '      financial_year'
      '  ) b'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY dept, YEAR')
    Left = 189
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBudgetGraphDeptQtrWIP: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on department per quarter'
      ''
      'SELECT m.dept, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(b.unbilled,0) AS unbilled,'
      '  NVL(m.wip,0) AS wipbudget, '
      '  m.quarter, m.YEAR,  '
      '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE'
      '    WHERE billed = '#39'Y'#39' AND type <> '#39'ia'#39
      '    AND dept = :dept'
      '    GROUP BY dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE'
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND dept = :dept'
      '    GROUP BY dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) b,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept,'
      '      NVL(financial_year,YEAR) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS qua' +
        'rter '
      '    FROM BUDGET'
      '    WHERE department = :dept'
      '    GROUP BY department,'
      '      NVL(financial_year,YEAR),'
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2)'
      '  ) m'
      'WHERE'
      '    a.dept(+)   = m.dept'
      'AND a.quarter(+)  = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.quarter(+)  = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept,'
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget,'
      '  m.quarter, m.YEAR,'
      '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39' AND type <> '#39'ia'#39
      '    AND dept = :dept '
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) m,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND dept = :dept '
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) a,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept,'
      '      NVL(financial_year,YEAR) AS YEAR, '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS qua' +
        'rter   '
      '    FROM BUDGET'
      '    WHERE department = :dept '
      '    GROUP BY department,'
      '      NVL(financial_year,YEAR) , '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2)'
      '  ) b'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.quarter(+)  = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.quarter(+)  = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept,'
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget,'
      '  m.quarter, m.YEAR,'
      '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE'
      '    WHERE billed = '#39'Y'#39' AND TYPE <> '#39'ia'#39
      '    AND dept = :dept'
      '    GROUP BY dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) '
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter '
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND dept = :dept '
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) m,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept,'
      '      NVL(financial_year,YEAR) AS YEAR, '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS qua' +
        'rter   '
      '    FROM BUDGET'
      '    WHERE department = :dept '
      '    GROUP BY department, '
      '      NVL(financial_year,YEAR) , '
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(financial_' +
        'year,YEAR) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2)'
      '  ) b'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.quarter(+)  = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.quarter(+)  = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY  YEAR, quarter'
      '')
    Left = 199
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBudgetGraphDeptMthWIP: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on department per month'
      ''
      'SELECT m.dept, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(b.unbilled,0) AS unbilled, '
      '  NVL(m.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE    '
      '    WHERE billed = '#39'Y'#39' '
      #9'AND TYPE <> '#39'ia'#39
      '    AND dept = :dept'
      '    GROUP BY dept, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE   '
      '    WHERE billed = '#39'N'#39' '
      '    AND billtype = '#39'Billable'#39
      '     AND dept = :dept '
      '    GROUP BY dept, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) b,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      #9'  CALENDAR_YEAR AS CAL_YEAR,'
      #9'  MONTH AS CAL_MONTH'
      '    FROM BUDGET'
      '    WHERE department = :dept '
      
        '    GROUP BY department, PERIOD,NVL(financial_year,YEAR) ,CALEND' +
        'AR_YEAR ,MONTH'
      '  ) m'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'UNION'
      'SELECT m.dept, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.unbilled,0) AS unbilled, '
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR, '
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS CAL_MONTH'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39
      #9'AND TYPE <> '#39'ia'#39
      '    AND dept = :dept '
      '    GROUP BY dept, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'),LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39' '
      '    AND billtype = '#39'Billable'#39
      '    AND dept = :dept'
      '    GROUP BY dept, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      '    WHERE department = :dept '
      '    GROUP BY department, PERIOD, NVL(financial_year,YEAR)'
      '  ) b'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'UNION'
      'SELECT m.dept, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR, '
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39
      #9'AND TYPE <> '#39'ia'#39
      '    AND dept = :dept '
      '    GROUP BY dept,CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, dept, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS CAL_MONTH '
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND dept = :dept '
      '    GROUP BY dept, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'), LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,'
      '  ('
      '    SELECT SUM(wip) AS wip, department AS dept, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      '    WHERE department = :dept  '
      '    GROUP BY department, PERIOD, NVL(financial_year,YEAR)'
      '  ) b'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'ORDER BY dept,YEAR,MONTH')
    Left = 201
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
        Value = nil
      end>
  end
  object qBudgetGraphAuthMonthWIP: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on author per month'
      ''
      'SELECT m.author,'
      '  NVL(a.billed,0) AS billed,'
      '  NVL(b.unbilled,0) AS unbilled, '
      '  NVL(m.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR,  '
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed,author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39
      #9'AND TYPE <> '#39'ia'#39
      '    AND author = :author'
      '    GROUP BY author,CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author '
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '   ) b,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE AS author, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      #9'  CALENDAR_YEAR   AS CAL_YEAR,'
      #9'  LPAD(MONTH,2,'#39'0'#39') AS CAL_MONTH'
      '    FROM BUDGET'
      '    WHERE BUDGET.EMPLOYEE = :author '
      
        '    GROUP BY EMPLOYEE, PERIOD, NVL(financial_year,YEAR),CALENDAR' +
        '_YEAR,MONTH'
      '  ) m'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'UNION'
      'SELECT m.author, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS cal_year,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS cal_month'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39
      #9'AND TYPE <> '#39'ia'#39
      '    AND author = :author '
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'),'
      #9'   LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39' '
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author'
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE.CODE AS author, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET, EMPLOYEE'
      '    WHERE BUDGET.EMPLOYEE = :author'
      '    AND BUDGET.EMPLOYEE = EMPLOYEE.code  '
      '    GROUP BY EMPLOYEE.CODE, PERIOD, NVL(financial_year,YEAR)'
      '  ) b'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      ''
      ''
      ''
      'UNION'
      'SELECT m.author, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.unbilled,0) AS unbilled, '
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR, '
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE '
      '    WHERE billed = '#39'Y'#39
      #9'AND TYPE <> '#39'ia'#39
      '    AND author = :author '
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,'
      '  ('
      '    SELECT SUM(amount) AS unbilled, author, '
      '     CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS CAL_MONTH'
      '    FROM FEE '
      '    WHERE billed = '#39'N'#39
      '    AND billtype = '#39'Billable'#39
      '    AND author = :author '
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39') ,LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,'
      '  ('
      '    SELECT SUM(wip) AS wip, EMPLOYEE.CODE AS author, '
      '      financial_year AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET, EMPLOYEE'
      '    WHERE BUDGET.EMPLOYEE = :author'
      '    AND BUDGET.EMPLOYEE = EMPLOYEE.code '
      '    GROUP BY EMPLOYEE.CODE, PERIOD, financial_year'
      '  ) b'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'ORDER BY author,YEAR,MONTH')
    Left = 63
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
        Value = nil
      end>
  end
  object qPartner: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name from employee where '
      'ispartner = '#39'Y'#39' and active = '#39'Y'#39)
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 241
    Top = 87
  end
  object dsPartner: TDataSource
    DataSet = qPartner
    Left = 291
    Top = 88
  end
  object dsScaleCost: TDataSource
    DataSet = qScaleCost
    Left = 483
    Top = 85
  end
  object qFeeEarners: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NULL AS CODE, NULL AS NAME FROM DUAL'
      'UNION'
      'SELECT CODE, NAME '
      'FROM EMPLOYEE '
      'WHERE'
      'ACTIVE = '#39'Y'#39' '
      'AND ISTIME_RECORDER = '#39'Y'#39
      '--AND ISFEEEARNER = '#39'Y'#39
      'ORDER BY NAME')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 716
    Top = 19
  end
  object qDelete: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM FEE WHERE NFEE = -1')
    Left = 637
    Top = 176
  end
  object qWorked: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT COUNT(CNT) AS DAYS FROM (SELECT COUNT(AMOUNT) AS CNT FROM' +
        ' FEE WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo GROUP' +
        ' BY CREATED)')
    Left = 681
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object qUnbilled: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUM(AMOUNT) AS AMT, SUM(UNITS) AS UNITS, SUM(MINS) AS MIN' +
        'S, COUNT(AMOUNT) AS CNT'
      
        'FROM FEE WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo A' +
        'ND BILLED <> '#39'Y'#39)
    Left = 642
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object dsFees: TUniDataSource
    AutoEdit = False
    DataSet = qFees
    Left = 624
    Top = 66
  end
  object dsFeeEarners: TDataSource
    DataSet = qFeeEarners
    Left = 719
    Top = 81
  end
  object qBilled: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUM(AMOUNT) AS AMT, SUM(UNITS) AS UNITS, SUM(MINS) AS MIN' +
        'S, COUNT(AMOUNT) AS CNT'
      
        'FROM FEE WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo A' +
        'ND BILLED = '#39'Y'#39)
    Left = 647
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object qScaleCost: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from scalecost'
      'order by descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 397
    Top = 85
  end
  object dsAuthorType: TDataSource
    DataSet = qAuthorType
    Left = 108
    Top = 7
  end
  object qAuthorType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM emptype ORDER BY descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 35
    Top = 4
  end
  object qEntity: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from entity'
      'order by name')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 38
    Top = 57
  end
  object dsEntity: TDataSource
    DataSet = qEntity
    Left = 92
    Top = 61
  end
  object dsBranch: TDataSource
    DataSet = qBranch
    Left = 322
    Top = 23
  end
  object qBranch: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from branch'
      'where entity = :entity'
      'order by descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 270
    Top = 18
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object qDepartment: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from empdept'
      'order by descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 416
    Top = 12
  end
  object dsDepartment: TDataSource
    DataSet = qDepartment
    Left = 470
    Top = 22
  end
  object qFeeType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from feetype'
      'order by descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 571
    Top = 9
  end
  object dsFeeType: TDataSource
    DataSet = qFeeType
    Left = 630
    Top = 14
  end
  object qBudgetGraphAuthMonthFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on author per month'
      ''
      'SELECT m.author, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.billedfees,0) AS feebudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.author,'
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR,'
      
        '      CAST(DECODE(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS M' +
        'ONTH'
      '    FROM FEE f '
      '    WHERE f.billed = '#39'Y'#39' '
      '    AND f.author = :author   '
      
        '    GROUP BY f.author,CAST(GET_FIN_YEAR(NVL(invoicedate,created)' +
        ') AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,  '
      '  ('
      
        '    SELECT SUM(billedfees) AS billedfees, EMPLOYEE.CODE AS autho' +
        'r, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      #9'  CALENDAR_YEAR AS CAL_YEAR,'
      #9'  MONTH AS CAL_MONTH'
      '    FROM BUDGET, EMPLOYEE'
      '    WHERE BUDGET.EMPLOYEE = :author'
      '    AND BUDGET.EMPLOYEE = EMPLOYEE.code   '
      
        '    GROUP BY EMPLOYEE.CODE, PERIOD, NVL(financial_year,YEAR) ,CA' +
        'LENDAR_YEAR,MONTH'
      '  ) m'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      ''
      ''
      'UNION'
      ''
      ''
      'SELECT m.author, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.billedfees,0) AS feebudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed,f.author, '
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR,'
      
        '      CAST(DECODE(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS M' +
        'ONTH,'
      #9'  TO_CHAR(NVL(invoicedate,created),'#39'YYYY'#39') AS CAL_YEAR,'
      
        #9'  LPAD(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),2,'#39'0'#39') AS CAL_MON' +
        'TH'
      '    FROM FEE f '
      '    WHERE f.billed = '#39'Y'#39' '
      '    AND f.author = :author'
      
        '    GROUP BY f.author,CAST(GET_FIN_YEAR(NVL(invoicedate,created)' +
        ') AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      
        #9'  TO_CHAR(NVL(invoicedate,created),'#39'YYYY'#39'),LPAD(TO_CHAR(NVL(inv' +
        'oicedate,created),'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, EMPLOYEE AS author, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      '    WHERE BUDGET.EMPLOYEE = :author'
      '    GROUP BY EMPLOYEE,PERIOD, NVL(financial_year,YEAR) '
      '  ) a'
      'WHERE'
      '    a.author(+)   = m.author'
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      ''
      '  '
      '')
    Left = 366
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
        Value = nil
      end>
  end
  object qBudgetGraphDeptMonthFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on author per month'
      ''
      'SELECT m.dept, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.billedfees,0) AS feebudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.dept,'
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR,'
      
        '      CAST(DECODE(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS M' +
        'ONTH'
      '    FROM FEE f'
      '    WHERE f.billed = '#39'Y'#39' '
      '    AND f.dept = :dept'
      
        '    GROUP BY dept,CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS' +
        ' INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, department AS dept, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      #9'  CALENDAR_YEAR AS CAL_YEAR,'
      #9'  MONTH AS CAL_MONTH'
      '    FROM BUDGET'
      #9'WHERE department = :dept'
      
        '    GROUP BY department, PERIOD, NVL(financial_year,YEAR),CALEND' +
        'AR_YEAR,MONTH'
      '  ) m'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.MONTH(+)  = m.MONTH'
      'AND a.YEAR(+)   = m.YEAR'
      'AND m.dept = :dept'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'UNION'
      'SELECT m.dept, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.billedfees,0) AS feebudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed,f.dept, '
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR,'
      
        '      CAST(DECODE(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS M' +
        'ONTH,'
      #9'  TO_CHAR(NVL(invoicedate,created),'#39'YYYY'#39') AS CAL_YEAR,'
      
        #9'  LPAD(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),2,'#39'0'#39') AS CAL_MON' +
        'TH'
      '    FROM FEE f'
      '    WHERE f.billed = '#39'Y'#39' '
      '    AND f.dept = :dept'
      
        '    GROUP BY f.dept,CAST(GET_FIN_YEAR(NVL(invoicedate,created)) ' +
        'AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(NVL(invoicedate,created),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      
        #9'  TO_CHAR(NVL(invoicedate,created),'#39'YYYY'#39'), LPAD(TO_CHAR(NVL(in' +
        'voicedate,created),'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, department AS dept, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      #9'WHERE department = :dept'
      '    GROUP BY department ,PERIOD, NVL(financial_year,YEAR)'
      '  ) a'
      'WHERE'
      '    a.dept(+)   = m.dept'
      'AND a.MONTH(+)  = m.MONTH'
      'AND a.YEAR(+)   = m.YEAR'
      'AND m.dept = :dept'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      '')
    Left = 522
    Top = 146
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
        Value = nil
      end>
  end
  object qBudgetGraphAuthMthHr: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT m.author, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(b.otime,0) AS otime,'
      '  NVL(m.feetime,0) AS timebudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39' '
      '    AND author = :author     '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39' '
      '    AND author = :author      '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) b,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      financial_year AS YEAR,'
      '      PERIOD AS MONTH,'
      #9'  calendar_year AS cal_year,'
      #9'  MONTH AS cal_month'
      '    FROM BUDGET  '
      
        '    GROUP BY EMPLOYEE, PERIOD, financial_year,calendar_year,MONT' +
        'H'
      '  ) m'
      'WHERE '
      '       a.author(+)   = m.author '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'UNION'
      'SELECT m.author, '
      '  NVL(m.mtime,0) AS mtime,'
      '  NVL(a.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS cal_year,'
      #9'  LPAD(TO_CHAR(created,'#39'mm'#39'),2,'#39'0'#39') AS cal_month'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39' '
      '    AND author = :author     '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'), LPAD(TO_CHAR(created,'#39'mm'#39'),2,'#39'0'#39')'
      '  ) m, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND author = :author       '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      financial_year AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET    '
      '    GROUP BY EMPLOYEE,PERIOD, financial_year'
      '  ) b'
      'WHERE'
      '    a.author(+)   = m.author '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'UNION'
      'SELECT m.author, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(m.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.MONTH, m.YEAR, '
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND author = :author      '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS CAL_MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND author = :author       '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39') , LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      financial_year AS YEAR,'
      '      PERIOD AS MONTH '
      '    FROM BUDGET'
      '    GROUP BY EMPLOYEE, PERIOD, financial_year'
      '  ) b'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'ORDER BY author,YEAR,MONTH')
    Left = 57
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
        Value = nil
      end>
  end
  object qBdgtGraphAuthQtrFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT m.author, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.billedfees,0) AS feebudget, '
      '  m.quarter, m.YEAR,'
      '  '#39'Q'#39' || m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.author,'
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR,'
      
        '      DECODE(CAST(TO_CHAR(NVL(invoicedate,created), '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE f.billed = '#39'Y'#39' '
      '    AND f.author = :author'
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(NVL(invoicedate,created), '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2)'
      '  ) a,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, EMPLOYEE AS author, '
      '      nvl(financial_year,year) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || nvl(financial_' +
        'year,year) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS qua' +
        'rter '
      '    FROM BUDGET'
      '    WHERE EMPLOYEE = :author'
      '    GROUP BY EMPLOYEE, nvl(financial_year,year) ,'
      
        '             DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || nvl(fin' +
        'ancial_year,year) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2)'
      '  ) m'
      'WHERE '
      '    a.author(+)   = m.author'
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.billedfees,0) AS feebudget, '
      '  m.quarter, m.YEAR,'
      '  '#39'Q'#39' ||  m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.author,'
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR,'
      
        '      DECODE(CAST(TO_CHAR(NVL(invoicedate,created), '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE f.billed = '#39'Y'#39' '
      '    AND f.author = :author'
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(NVL(invoicedate,created), '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2)'
      '  ) m,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, EMPLOYEE AS author, '
      '      nvl(financial_year,year) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || nvl(financial_' +
        'year,year) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS qua' +
        'rter '
      '    FROM BUDGET'
      '    WHERE EMPLOYEE = :author'
      '    GROUP BY EMPLOYEE, nvl(financial_year,year) ,'
      
        '             DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(fin' +
        'ancial_year,YEAR) , '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2)'
      '  ) a'
      'WHERE'
      '    a.author(+)   = m.author'
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY YEAR,quarter')
    Left = 355
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBdgtGraphDeptQtrFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on department per quarter'
      ''
      'SELECT m.dept, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.billedfees,0) AS feebudget, '
      '  m.quarter, m.YEAR,'
      '  '#39'Q'#39' || m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.dept,'
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR,'
      
        '      DECODE(CAST(TO_CHAR(NVL(invoicedate,created), '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2) AS quarter'
      '    FROM FEE f '
      '    WHERE f.billed = '#39'Y'#39
      '    AND f.dept = :dept'
      '    GROUP BY f.dept,'
      '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(NVL(invoicedate,created), '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2)'
      '  ) a,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, department AS dept, '
      '      nvl(financial_year,year) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || nvl(financial_' +
        'year,year), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS quar' +
        'ter '
      '    FROM BUDGET'
      '    WHERE department = :dept'
      '    GROUP BY department, nvl(financial_year,year),'
      
        '             DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || nvl(fin' +
        'ancial_year,year), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2)'
      '  ) m'
      'WHERE '
      '    a.dept(+)   = m.dept'
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.billedfees,0) AS feebudget, '
      '  m.quarter, m.YEAR,'
      '  '#39'Q'#39' ||  m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.dept,'
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR,'
      
        '      DECODE(CAST(TO_CHAR(NVL(invoicedate,created), '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2) AS quarter'
      '    FROM FEE f '
      '    WHERE f.billed = '#39'Y'#39
      '    AND f.dept = :dept'
      '    GROUP BY f.dept,'
      '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(NVL(invoicedate,created), '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2)'
      '  ) m,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, department AS dept,'
      '      nvl(financial_year,year) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || nvl(financial_' +
        'year,year), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2) AS quar' +
        'ter '
      '    FROM BUDGET'
      '    WHERE department = :dept'
      '    GROUP BY department, nvl(financial_year,year),'
      
        '             DECODE(CAST(TO_CHAR(TO_DATE(MONTH || '#39'-'#39' || NVL(fin' +
        'ancial_year,YEAR), '#39'MM/YYYY'#39'),'#39'Q'#39') AS INTEGER),1,3,2,4,3,1,4,2)'
      '  ) a'
      'WHERE'
      '    a.dept(+)   = m.dept'
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY YEAR,quarter')
    Left = 521
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBdgtGraphDeptMthHr: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      ''
      'SELECT m.dept, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(b.otime,0) AS otime,'
      '  NVL(m.feetime,0) AS timebudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.dept = :dept      '
      '    GROUP BY f.dept,CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.dept = :dept        '
      '    GROUP BY f.dept,CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) b,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      #9'  CALENDAR_YEAR AS CAL_YEAR,'
      #9'  MONTH AS CAL_MONTH'
      '    FROM BUDGET'
      '    WHERE department = :dept  '
      
        '    GROUP BY department, PERIOD, NVL(financial_year,YEAR),CALEND' +
        'AR_YEAR,MONTH'
      '  ) m'
      'WHERE '
      '       a.dept(+)   = m.dept '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
      '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
      'UNION'
      'SELECT m.dept, '
      '  NVL(m.mtime,0) AS mtime,'
      '  NVL(a.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.MONTH, m.YEAR,'
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS CAL_MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.dept = :dept       '
      '    GROUP BY f.dept, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'), LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.dept = :dept        '
      '    GROUP BY f.dept,CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      '    WHERE department = :dept    '
      '    GROUP BY department,PERIOD, NVL(financial_year,YEAR) '
      '  ) b'
      'WHERE'
      '    a.dept(+)   = m.dept '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
      '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
      'UNION'
      'SELECT m.dept, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(m.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.MONTH, m.YEAR, '
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.dept = :dept       '
      '    GROUP BY f.dept,CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS CAL_MONTH'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.dept = :dept        '
      '    GROUP BY f.dept,CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'),LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH '
      '    FROM BUDGET'
      '    WHERE department = :dept'
      '    GROUP BY department, PERIOD, NVL(financial_year,YEAR) '
      '  ) b'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.MONTH(+)    = m.MONTH'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
      '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
      'ORDER BY dept,YEAR,MONTH')
    Left = 202
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
        Value = nil
      end>
  end
  object qBdgtGraphAuthQtrHr: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT m.author, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(b.otime,0) AS otime,'
      '  NVL(m.feetime,0) AS timebudget, '
      '  m.quarter, m.YEAR,'
      '   '#39'Q'#39' ||  m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.author = :author     '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.author = :author      '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) b,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      calendar_year AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM BUDGET '
      '    WHERE EMPLOYEE = :author  '
      
        '    GROUP BY EMPLOYEE, DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2), calendar_year '
      '  ) m'
      'WHERE '
      '       a.author(+)   = m.author '
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.quarter(+)    = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(m.mtime,0) AS mtime,'
      '  NVL(a.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.quarter, m.YEAR,'
      '   '#39'Q'#39' ||  m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.author = :author     '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) m, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.author = :author      '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) a,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      calendar_year AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM BUDGET    '
      '    WHERE EMPLOYEE = :author '
      
        '    GROUP BY EMPLOYEE,DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEG' +
        'ER),1,3,2,4,3,1,4,2), calendar_year'
      '  ) b'
      'WHERE'
      '    a.author(+)   = m.author '
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.quarter(+)    = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(m.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.quarter, m.YEAR, '
      '   '#39'Q'#39' ||  m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND author = :author    '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.author = :author      '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) m,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      calendar_year AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM BUDGET'
      '    WHERE EMPLOYEE = :author '
      
        '    GROUP BY EMPLOYEE, DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTE' +
        'GER),1,3,2,4,3,1,4,2), calendar_year'
      '  ) b'
      'WHERE '
      '       a.author(+)   = m.author '
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.quarter(+)    = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY YEAR,quarter')
    Left = 60
    Top = 419
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBdgtGraphDeptQtrHr: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT m.dept, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(b.otime,0) AS otime,'
      '  NVL(m.feetime,0) AS timebudget, '
      '  m.quarter, m.YEAR,'
      '   '#39'Q'#39' ||  m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.author = :author     '
      '    GROUP BY f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.author = :author       '
      '    GROUP BY f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) b,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      calendar_year AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM BUDGET'
      '    WHERE department = :dept '
      
        '    GROUP BY department, DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS IN' +
        'TEGER),1,3,2,4,3,1,4,2), calendar_year '
      '  ) m'
      'WHERE '
      '       a.dept(+)   = m.dept '
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.quarter(+)    = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept, '
      '  NVL(m.mtime,0) AS mtime,'
      '  NVL(a.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.quarter, m.YEAR,'
      '   '#39'Q'#39' ||  m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.author = :author      '
      '    GROUP BY f.dept,'
      '     CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) m, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.author = :author       '
      '    GROUP BY f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) a,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      calendar_year AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM BUDGET '
      '    WHERE department = :dept   '
      
        '    GROUP BY department,DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INT' +
        'EGER),1,3,2,4,3,1,4,2), calendar_year '
      '  ) b'
      'WHERE'
      '    a.dept(+)   = m.dept '
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.quarter(+)    = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(m.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.quarter, m.YEAR, '
      '   '#39'Q'#39' ||  m.quarter || '#39'-'#39' || m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60,2) AS mtime, f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.author = :author      '
      '    GROUP BY f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60,2) AS otime, f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.author = :author       '
      '    GROUP BY f.dept,'
      '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER),'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2)'
      '  ) m,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      calendar_year AS YEAR,'
      
        '      DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER),1,3,2,4,3,1,' +
        '4,2) AS quarter'
      '    FROM BUDGET'
      '    WHERE department = :dept'
      
        '    GROUP BY department, DECODE(CAST(TO_CHAR(created, '#39'Q'#39') AS IN' +
        'TEGER),1,3,2,4,3,1,4,2), calendar_year '
      '  ) b'
      'WHERE '
      '       a.dept(+)   = m.dept '
      'AND a.quarter(+)    = m.quarter'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.quarter(+)    = m.quarter'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY YEAR,quarter')
    Left = 205
    Top = 418
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBdgtGraphAuthYrFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      ''
      'SELECT m.author, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.billedfees,0) AS feebudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '   SELECT SUM(amount) AS billed, f.author, '
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR'
      '    FROM FEE f'
      '    WHERE f.billed = '#39'Y'#39
      '    AND f.author = :author'
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER)'
      '  ) a,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, EMPLOYEE AS author,'
      '      financial_year AS YEAR'
      '    FROM BUDGET '
      '    GROUP BY EMPLOYEE, '
      '      financial_year'
      '  ) m'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.budgetfees,0) AS feebudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.author, '
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR'
      '    FROM FEE f '
      '    WHERE f.billed = '#39'Y'#39' '
      '    AND f.author = :author'
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER)'
      '  ) m,  '
      '  ('
      '    SELECT SUM(billedfees) AS budgetfees, EMPLOYEE AS author,'
      '      financial_year AS YEAR '
      '    FROM BUDGET '
      '    GROUP BY EMPLOYEE, '
      '      financial_year'
      '  ) a'
      'WHERE '
      '    a.author(+)   = m.author'
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY author, YEAR')
    Left = 362
    Top = 287
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBdgtGraphDeptYrFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '--Fees on department per year'
      ''
      'SELECT m.dept, '
      '  NVL(a.billed,0) AS billed,'
      '  NVL(m.billedfees,0) AS feebudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.dept, '
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR'
      '    FROM FEE f'
      '    WHERE billed = '#39'Y'#39' '
      '    AND f.dept = :dept'
      
        '    GROUP BY dept,CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS' +
        ' INTEGER)'
      '  ) a,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, department AS dept,'
      '      financial_year AS YEAR'
      '    FROM BUDGET'
      '    WHERE department = :dept '
      '    GROUP BY department, '
      '      financial_year'
      '  ) m'
      'WHERE '
      '    a.dept(+)   = m.dept '
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept, '
      '  NVL(m.billed,0) AS billed,'
      '  NVL(a.billedfees,0) AS feebudget, '
      '  m.YEAR,  '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT SUM(amount) AS billed, f.dept, '
      
        '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER) AS' +
        ' YEAR'
      '    FROM FEE f '
      '    WHERE billed = '#39'Y'#39
      '    AND f.dept = :dept'
      '    GROUP BY dept, '
      '      CAST(GET_FIN_YEAR(NVL(invoicedate,created)) AS INTEGER)'
      '  ) m,  '
      '  ('
      '    SELECT SUM(billedfees) AS billedfees, department AS dept,'
      '      financial_year AS YEAR '
      '    FROM BUDGET '
      '    WHERE department = :dept'
      '    GROUP BY department, '
      '      financial_year'
      '  ) a'
      'WHERE'
      '    a.dept(+)   = m.dept'
      'AND a.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY dept, YEAR'
      '')
    Left = 495
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBdgtGraphAuthYrHr: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      ''
      'SELECT m.author, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(b.otime,0) AS otime,'
      '  NVL(m.feetime,0) AS timebudget, '
      '  m.YEAR,'
      '  m.YEAR AS viewdate'
      'FROM'
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.author = :author     '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.author = :author      '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) b,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      financial_year AS YEAR'
      '    FROM BUDGET  '
      '    GROUP BY EMPLOYEE,  financial_year'
      '  ) m'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.author, '
      '  NVL(m.mtime,0) AS mtime,'
      '  NVL(a.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '   m.YEAR,'
      '   m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.author = :author     '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) m, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.author = :author      '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      financial_year AS YEAR'
      '    FROM BUDGET    '
      '    GROUP BY EMPLOYEE, financial_year'
      '  ) b'
      'WHERE'
      '    a.author(+)   = m.author '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT a.author, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(m.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  a.YEAR, '
      '  b.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.author = :author     '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39' '
      '    AND f.author = :author     '
      '    GROUP BY f.author,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) m,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, EMPLOYEE AS author, '
      '      financial_year AS YEAR'
      '    FROM BUDGET'
      '    GROUP BY EMPLOYEE,  financial_year'
      '  ) b'
      'WHERE '
      '    a.author(+)   = m.author '
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.author = :author'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY author,YEAR')
    Left = 356
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qBdgtGraphDeptYrHr: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      ''
      'SELECT m.dept, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(b.otime,0) AS otime,'
      '  NVL(m.feetime,0) AS timebudget, '
      '  m.YEAR,'
      '  m.YEAR AS viewdate'
      'FROM'
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39
      '    AND f.dept = :dept     '
      '    GROUP BY f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39' '
      '    AND f.dept = :dept     '
      '    GROUP BY f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) b,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      financial_year AS YEAR'
      '    FROM BUDGET'
      '    WHERE department = :dept  '
      '    GROUP BY department, financial_year'
      '  ) m'
      'WHERE '
      '    a.dept(+)   = m.dept'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT m.dept, '
      '  NVL(m.mtime,0) AS mtime,'
      '  NVL(a.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.YEAR,'
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39' '
      '    AND f.dept = :dept    '
      '    GROUP BY f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) m, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.dept,'
      '      YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.dept = :dept      '
      '    GROUP BY f.dept,'
      '      YEAR'
      '  ) a,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      financial_year AS YEAR'
      '    FROM BUDGET    '
      '    WHERE department = :dept'
      '    GROUP BY department, financial_year'
      '  ) b'
      'WHERE'
      '    a.dept(+)   = m.dept'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'UNION'
      'SELECT a.dept, '
      '  NVL(a.mtime,0) AS mtime,'
      '  NVL(m.otime,0) AS otime,'
      '  NVL(b.feetime,0) AS timebudget, '
      '  m.YEAR, '
      '  m.YEAR AS viewdate'
      'FROM'
      ' ('
      '    SELECT ROUND(SUM(mins)/60) AS mtime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'M'#39' '
      '    AND f.dept = :dept    '
      '    GROUP BY f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) a, '
      '  ('
      '    SELECT ROUND(SUM(mins)/60) AS otime, f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR'
      '    FROM FEE f'
      '    WHERE time_type = '#39'O'#39
      '    AND f.dept = :dept      '
      '    GROUP BY f.dept,'
      '      CAST(GET_FIN_YEAR(created) AS INTEGER)'
      '  ) m,   '
      '  ('
      '    SELECT SUM(TIME) AS feetime, department AS dept, '
      '      financial_year AS YEAR'
      '    FROM BUDGET'
      '    WHERE department = :dept'
      '    GROUP BY department,  financial_year'
      '  ) b'
      'WHERE '
      '    a.dept(+)   = m.dept'
      'AND a.YEAR(+)     = m.YEAR'
      'AND b.dept(+)   = m.dept'
      'AND b.YEAR(+)     = m.YEAR'
      'AND m.dept = :dept'
      'AND m.YEAR BETWEEN :firstyear AND :lastyear'
      'ORDER BY dept,YEAR')
    Left = 493
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'firstyear'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lastyear'
        Value = nil
      end>
  end
  object qFees: TUniQuery
    KeyFields = 'NFEE'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '/*+ ORDERED */FEE.NFEE,/*+ ORDERED */trunc(FEE.CREATED) "CREATED' +
        '", FEE.AUTHOR, FEE.FILEID, FEE.NMATTER'
      ', FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS'
      ', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK'
      
        ', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, PHONEBOOK.SEARCH AS TI' +
        'TLE'
      
        ', MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR AS FEETYPE,' +
        'PART.NAME AS PARTNERNAME, AUTH.NAME AS AUTHORNAME'
      
        ', DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, BILLTYPE, TIME_T' +
        'YPE, FEE.NOTIONAL_COST, FEE.STANDARD_COST '
      ',  case'
      '     when FEE.AMOUNT> 0 then FEE.AMOUNT'
      #9' else 0'
      '  end  as FEES_POS'
      ', case '
      '     when FEE.AMOUNT< 0 then FEE.AMOUNT'
      #9' else  0'
      '  end as FEES_NEG'
      ', case '
      '     when FEE.AMOUNT= 0 then FEE.AMOUNT'
      #9' else 0'
      
        '  end as FEES_ZERO, 0 as PROFORMA, EMPCODE, matter.TYPE AS matte' +
        'r_type, FEE.NMEMO, FEE.NOTES, FEE.SYSTEM_DATE, FEE.ITEMS,'
      '   FEE.TASK_AMOUNT, TASK_TAX, FEE.ROWID'
      
        'FROM FEE, MATTER, NMEMO, PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPL' +
        'OYEE AUTH, BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT'
      
        'WHERE FEE.NMATTER = MATTER.NMATTER AND FEE.NMEMO = NMEMO.NMEMO(+' +
        ')'
      'AND FEE.TYPE = FEETYPE.CODE AND FEE.PARTNER = PART.CODE'
      'AND FEE.AUTHOR = AUTH.NAME'
      'and FEE.AUTHOR = '#39'CMC'#39
      'AND MATTER.BRANCH = BR.CODE'
      'AND FEE.DEPT = DPT.CODE'
      'AND PART.DEPT = PARTDPT.CODE'
      'AND MATTER.NCLIENT = PHONEBOOK.NCLIENT')
    Debug = True
    Left = 581
    Top = 67
  end
end
