object dmDasboardTeam: TdmDasboardTeam
  OldCreateOrder = False
  Height = 600
  Width = 946
  object qryAgedDebtorsMatterCnt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  a.apaid0 + b.apaid1 + c.apaid2 + d.apaid3 + e.apaid10 AS Total' +
        'Matters,'
      '  a.apaid0 AS adj0,'
      '  b.apaid1 AS adj1,'
      '  c.apaid2 AS adj2,'
      '  d.apaid3 AS adj3,'
      '  e.apaid10 AS adj10'
      'from ('
      'select'
      '  count( n.nmatter) AS apaid0'
      'FROM nmemo n, matter m'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = n.nmatter'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p1, TRUN' +
        'C(SYSDATE), n.nmatter) <> 0 ) a,'
      '(select'
      '   count(n.nmatter) as apaid1'
      'FROM nmemo n, matter m'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = n.nmatter'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p2, TRUN' +
        'C(SYSDATE) - (:p1 + 1), n.nmatter) <> 0 ) b,'
      '(select'
      '  count(n.nmatter) AS apaid2'
      'FROM nmemo n, matter m'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = n.nmatter'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p3, TRUN' +
        'C(SYSDATE) - (:p2 + 1), n.nmatter) <> 0) c,'
      '(select'
      '  count(n.nmatter) AS apaid3'
      'FROM nmemo n, matter m'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = n.nmatter'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p4, TRUN' +
        'C(SYSDATE) - (:p3 + 1), n.nmatter) <> 0) d,'
      '(select'
      '  count(n.nmatter) AS apaid10'
      'FROM nmemo n, matter m'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = n.nmatter'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(TO_DATE('#39'01/01/1900'#39 +
        ','#39'dd/mm/yyyy'#39')),TRUNC(SYSDATE) - (:p4 + 1),   n.nmatter) <> 0) e'
      ''
      ''
      ''
      '/*'
      
        'select adj0, adj1, adj2, adj3, adj10, (adj0+ adj1+ adj2+ adj3+ a' +
        'dj10) as Total  from vw_Team_AgedDebtorsCount where dept = :dept' +
        '  */')
    Left = 55
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        Value = nil
      end>
  end
  object qryWipGeneratedBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select nvl(sum(wip),0) as month_budget from budget'
      '  where '
      '    employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  and month = cast(to_char(:month_start_date,'#39'MM'#39') as integer) '
      
        '  and calendar_year = cast(to_char(:month_start_date,'#39'YYYY'#39')as i' +
        'nteger)'
      '  group by month, year) c,'
      '(select nvl(sum(wip),0) year_budget'
      '  from budget'
      '  where'
      '    employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39')'
      '  BETWEEN :year_start_date and :year_end_date) D'
      'group by month_budget, year_budget'
      ''
      '')
    Left = 52
    Top = 97
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
    object qryWipGeneratedBudgetMONTH_BUDGET: TFloatField
      FieldName = 'MONTH_BUDGET'
      currency = True
    end
    object qryWipGeneratedBudgetYEAR_BUDGET: TFloatField
      FieldName = 'YEAR_BUDGET'
      currency = True
    end
  end
  object qryAgedDebtorsGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '     '#39'Current'#39' as per,'
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSD' +
        'ATE) - :P1, TRUNC(SYSDATE),             n.owing)),0)) AS "Curren' +
        't"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL'
      'union all'
      'SELECT'
      '      '#39'30 Days'#39','
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSD' +
        'ATE) - :P2, TRUNC(SYSDATE) - (:P1 + 1), n.owing)),0)) AS "30 Day' +
        's"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL'#9
      'union all'
      'SELECT'
      '      '#39'60 Days'#39','
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSD' +
        'ATE) - :P3, TRUNC(SYSDATE) - (:P2 + 1), n.owing)),0)) AS "60 Day' +
        's"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL'
      'union all'
      'SELECT'
      '      '#39'90 Days'#39','
      
        #9'  abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) ' +
        '- :P4, TRUNC(SYSDATE) - (:P3 + 1), n.owing)),0)) AS "90 Days"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL'
      'union all'
      'SELECT'
      '      '#39'120+ Days'#39','
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched),TRUNC(TO_DA' +
        'TE('#39'01/01/1900'#39','#39'dd/mm/yyyy'#39')), TRUNC(SYSDATE) - (:P4 + 1),   n.' +
        'owing)),0)) AS "120 +"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL')
    Left = 160
    Top = 82
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P4'
        Value = nil
      end>
  end
  object dsAgedDebtorsMatterCnt: TUniDataSource
    DataSet = qryAgedDebtorsMatterCnt
    Left = 144
    Top = 38
  end
  object qryAgedDebtors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  sum(c.apaid0)+sum(c.apaid1)+sum(c.apaid2)+sum(c.apaid3)+sum(c.' +
        'apaid10) as totalaged,'
      '  sum(c.apaid0) AS adj0,'
      '  sum(c.apaid1) AS adj1,'
      '  sum(c.apaid2) AS adj2,'
      '  sum(c.apaid3) AS adj3,'
      '  sum(c.apaid10) AS adj10'
      'from ('
      '   select'
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :p1, TRUNC(SYSDATE),             n.owing)),0) AS apaid0,'
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :p2, TRUNC(SYSDATE) - (:p1 + 1), n.owing)),0) AS apaid1,'
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :p3, TRUNC(SYSDATE) - (:p2 + 1), n.owing)),0) AS apaid2,'
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :p4, TRUNC(SYSDATE) - (:p3 + 1), n.owing)),0) AS apaid3,'
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(TO_DATE('#39'0' +
        '1/01/1900'#39','#39'dd/mm/yyyy'#39')),  TRUNC(SYSDATE) - (:p4 + 1), n.owing)' +
        '),0) AS apaid10'
      '  FROM matter m, nmemo n'
      '  WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  AND m.nmatter = n.nmatter'
      ') c')
    Left = 223
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qryAgedDebtorsADJ0: TFloatField
      FieldName = 'ADJ0'
      currency = True
    end
    object qryAgedDebtorsADJ1: TFloatField
      FieldName = 'ADJ1'
      currency = True
    end
    object qryAgedDebtorsADJ2: TFloatField
      FieldName = 'ADJ2'
      currency = True
    end
    object qryAgedDebtorsADJ3: TFloatField
      FieldName = 'ADJ3'
      currency = True
    end
    object qryAgedDebtorsADJ10: TFloatField
      FieldName = 'ADJ10'
      currency = True
    end
    object qryAgedDebtorsTOTALAGED: TFloatField
      FieldName = 'TOTALAGED'
      currency = True
    end
  end
  object dsAgedDebtors: TUniDataSource
    DataSet = qryAgedDebtors
    Left = 302
  end
  object qryFeesBilledMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '  SELECT nvl(sum(amount),0) as fees'
      '   FROM fee'
      '   WHERE  billed = '#39'Y'#39
      'and type <> '#39'wo'#39
      'and billtype = '#39'Billable'#39
      '   and author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )   '
      
        ' and trunc(invoicedate) between :month_start_date and :month_end' +
        '_date'
      ''
      '/*'
      'SELECT  nvl(sum(fees),0) as fees'
      '   FROM nmemo, matter'
      '   WHERE nmemo.nmatter = matter.nmatter'
      '   AND rv_type NOT IN ('#39'C'#39','#39'R'#39')'
      '   AND refno <> '#39'DRAFT'#39
      '   AND generated between :month_start_date and :month_end_date'
      '   and matter.author in ( SELECT distinct e.CODE'
      '    FROM  employee e'
      '    where'
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '*/')
    Left = 374
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
        Value = nil
      end>
    object qryFeesBilledMonthFEES: TFloatField
      FieldName = 'FEES'
      currency = True
    end
  end
  object dsFeesBilledMonth: TUniDataSource
    DataSet = qryFeesBilledMonth
    Left = 482
    Top = 9
  end
  object dsFeesBilledYTD: TUniDataSource
    DataSet = qryFeesBilledYTD
    Left = 551
    Top = 62
  end
  object qryFeesBilledYTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '  SELECT nvl(sum(amount),0) as fees'
      '   FROM fee'
      '   WHERE  billed = '#39'Y'#39
      'and type <> '#39'wo'#39
      'and billtype = '#39'Billable'#39
      '   and author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )   '
      
        ' and trunc(invoicedate) between :year_start_date and :year_end_d' +
        'ate'
      ''
      '/*'
      'SELECT  nvl(sum(fees),0) as fees'
      '   FROM nmemo, matter'
      '   WHERE nmemo.nmatter = matter.nmatter'
      '   AND rv_type NOT IN ('#39'C'#39','#39'R'#39')'
      '   AND refno <> '#39'DRAFT'#39
      '   AND generated between  :year_start_date and :year_end_date'
      '   and matter.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      ' */')
    Left = 457
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
    object qryFeesBilledYTDFEES: TFloatField
      FieldName = 'FEES'
      currency = True
    end
  end
  object qryFeeReceivedMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select  nvl(sum(feereceipt*feeshare),0) as FE_Receipt '
      'from (select nmemo'
      ', sum(fee) as FeeReceipt '
      'from alloc '
      'where nmemo is not null and (nreceipt > 0 ) and trunc(created) '
      ' between :month_start_date and :month_end_date'
      'group by nmemo) REC,'
      
        ' (select fe.nmemo, author, fe_fee, FeesBilled, fe_fee/feesbilled' +
        ' as feeshare from '
      
        ' (select nmemo, author, sum(nvl(amount,0)) as FE_Fee from fee wh' +
        'ere nmemo is not null and author is not null group by nmemo, aut' +
        'hor) FE,'
      ' (select nmemo, nvl(fees,0) as FeesBilled from nmemo '
      
        ' where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and refno' +
        ' <>'#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      ' where bills.nmemo=fe.nmemo ) fa '
      ' where REC.nmemo =FA.nmemo'
      'and fa.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      ''
      ''
      '/*'
      'select sum(fees_paid ) Fees_paid'
      'from vw_fees_recvd_month_team'
      'where dept = :dept'
      'and system_date between :month_start_date and :month_end_date  '
      '*/')
    Left = 482
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qryFeeReceivedMonthFE_RECEIPT: TFloatField
      FieldName = 'FE_RECEIPT'
      currency = True
    end
  end
  object dsFeeReceivedMonth: TUniDataSource
    DataSet = qryFeeReceivedMonth
    Left = 583
    Top = 105
  end
  object qryFeesBilledGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(amount) as fees, '
      ' to_char(invoicedate,'#39'Mon-YY'#39'),'
      ' get_fin_year(invoicedate),'
      
        ' DECODE(TO_CHAR(invoicedate,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1' +
        ',8,2,9,3,10,4,11,5,12,6)'
      'from fee f'
      'where f.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and billed = '#39'Y'#39
      'and type <> '#39'wo'#39
      'and billtype = '#39'Billable'#39
      
        'and trunc(invoicedate) between :year_start_date and :year_end_da' +
        'te '
      
        'group by to_char(invoicedate,'#39'Mon-YY'#39'),get_fin_year(invoicedate)' +
        ','
      
        'DECODE(TO_CHAR(invoicedate,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1,' +
        '8,2,9,3,10,4,11,5,12,6)'
      'union'
      'select 0,'
      
        '   to_char(to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39 +
        'Oct'#39',5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',1' +
        '2,'#39'Jun'#39') ||'
      
        '   '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3, ' +
        'fin_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin' +
        '_year),'#39'mm-yyyy'#39'),'#39'Mon-yy'#39'), '
      '   to_char(fin_year),'
      '   fin_period '
      ' from calendar '
      
        'where   not exists(select 1 from fee where fee.author in ( SELEC' +
        'T distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      
        'and   INV_period = fin_period and inv_year = fin_year AND billty' +
        'pe = '#39'Billable'#39
      ' AND billed = '#39'Y'#39' and type <> '#39'wo'#39
      'and billtype = '#39'Billable'#39')'
      'And '
      
        '  to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'Oct'#39',5,'#39'N' +
        'ov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12,'#39'Jun'#39') ' +
        '||'
      
        '  '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'mm-yy'#39') '
      '   BETWEEN :year_start_date and :year_end_date'
      'order by 3,4'
      '')
    Left = 641
    Top = 18
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object qryFeesBilledBudgetGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(billedfees ) Fees_budget,'
      '   LPAD(month,2,'#39'0'#39')||'#39'-'#39'||calendar_year as rpt_period, period'
      '  from budget'
      '  where employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN :year_start_date AND :year_end_date'
      '  group by month,calendar_year,period'
      '  order by 3')
    Left = 773
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object qryFeesReceivedBudgetGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(receivedfees ) Fees_budget,'
      '   LPAD(month,2,'#39'0'#39')||'#39'-'#39'||calendar_year as rpt_period, period'
      '  from budget'
      '  where employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39')'
      '  BETWEEN :year_start_date and :year_end_date '
      '  group by month,calendar_year,period'
      '  order by 3'
      ''
      '')
    Left = 785
    Top = 83
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object qryFeesReceivedGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select  sum(feereceipt*feeshare) as fees_paid, disp_period, Peri' +
        'od '
      '  from ('
      '   select nmemo'
      '     ,to_char(created,'#39'Mon-YY'#39') as disp_period'
      
        '     ,DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,' +
        '1,8,2,9,3,10,4,11,5,12,6) as period '
      '     , sum(fee) as FeeReceipt '
      '     from alloc '
      
        '    where nmemo is not null and (nreceipt > 0 ) and trunc(create' +
        'd) '
      '    between :year_start_date and :year_end_date'
      '    group by nmemo,to_char(created,'#39'Mon-YY'#39')'
      
        ',DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1,8,2' +
        ',9,3,10,4,11,5,12,6)) REC,'
      
        ' ( select fe.nmemo, author, fe_fee, FeesBilled, fe_fee/feesbille' +
        'd as feeshare from'
      
        '      (  select nmemo, author, sum(nvl(amount,0)) as FE_Fee from' +
        ' fee where nmemo is not null and author is not null group by nme' +
        'mo, author ) FE  ,'#9'  '
      ' (select nmemo, nvl(fees,0) as FeesBilled from nmemo '
      
        '     where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and r' +
        'efno <>'#39'DRAFT'#39' and nvl(fees,0) <>0)  bills '
      '      where bills.nmemo=fe.nmemo ) fa '
      '  where REC.nmemo =FA.nmemo'
      '  and author in ( SELECT distinct e.CODE'
      '      FROM  employee e'
      '      where '
      '      e.NFEE_AUTHORITY in'
      '     (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '     connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '     and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '     and dept = :dept )'
      '     group by  Period, disp_period '
      'union '
      'select 0, '
      
        '  to_char(to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'O' +
        'ct'#39',5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12' +
        ','#39'Jun'#39') ||'
      
        '  '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'Mon-yy'#39'),'#39'Mon-yy'#39')'
      '  ,fin_period'
      'from calendar '
      'where not exists( select 1 from matter m, nmemo n, alloc a'
      '  where a.trust = '#39'G'#39' '
      '  and a.nmemo = n.nmemo'
      '  and a.nmatter = m.nmatter'
      '  and m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  and nreceipt <> 0 '
      '  and fee <> 0'
      '  and rv_nmemo is null'
      '  and nreceipt is not null'
      
        '  and   get_fin_year(system_date) = fin_year and fin_period = DE' +
        'CODE(TO_CHAR(system_date,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1,8,' +
        '2,9,3,10,4,11,5,12,6))'
      
        '  and to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'Oct'#39',' +
        '5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12,'#39'Ju' +
        'n'#39') ||'
      
        '     '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3' +
        ', fin_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,f' +
        'in_year),'#39'Mon-yy'#39') '
      '   BETWEEN :year_start_date and :year_end_date'
      'order by 3')
    Left = 690
    Top = 98
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
  end
  object dsFeeReceivedYear: TUniDataSource
    DataSet = qryFeeReceivedYear
    Left = 520
    Top = 162
  end
  object qryFeeReceivedYear: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select  nvl(sum(feereceipt*feeshare),0) as FE_Receipt '
      'from (select nmemo, sum(fee) as FeeReceipt '
      '   from alloc '
      
        '   where nmemo is not null and (nreceipt > 0 ) and trunc(created' +
        ') '
      '   between :year_start_date and :year_end_date'
      '   group by nmemo) REC,'
      
        '   (select fe.nmemo, author, fe_fee, FeesBilled, fe_fee/feesbill' +
        'ed as feeshare from '
      
        '     (select nmemo, author, sum(nvl(amount,0)) as FE_Fee from fe' +
        'e where nmemo is not null and author is not null group by nmemo,' +
        ' author) FE,'
      '   (select nmemo, nvl(fees,0) as FeesBilled from nmemo '
      
        '     where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and r' +
        'efno <>'#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      '    where bills.nmemo=fe.nmemo ) fa '
      '    where REC.nmemo =FA.nmemo'
      'and author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      ''
      '/*'
      'select sum(fees_paid ) Fees_paid'
      'from vw_fees_recvd_month_team'
      'where dept = :dept'
      'and system_date between :year_start_date and :year_end_date'
      '*/')
    Left = 398
    Top = 170
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qryFeeReceivedYearFE_RECEIPT: TFloatField
      FieldName = 'FE_RECEIPT'
      currency = True
    end
  end
  object dsBilledFeesBudget: TUniDataSource
    DataSet = qryBilledFeesBudget
    Left = 355
    Top = 105
  end
  object qryBilledFeesBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select nvl(sum(BILLEDFEES),0) as month_budget from budget'
      '  where employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  and month = cast(to_char(:month_start_date,'#39'MM'#39') as integer) '
      
        '  and calendar_year = cast(to_char(:month_start_date,'#39'YYYY'#39')as i' +
        'nteger)'
      '  group by month, year) c,'
      '(select nvl(sum(BILLEDFEES),0) year_budget'
      '  from budget'
      '  where'
      '  employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39')'
      '  BETWEEN :year_start_date and :year_end_date) D'
      'group by month_budget, year_budget')
    Left = 263
    Top = 91
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
    object qryBilledFeesBudgetMONTH_BUDGET: TFloatField
      FieldName = 'MONTH_BUDGET'
      currency = True
    end
    object qryBilledFeesBudgetYEAR_BUDGET: TFloatField
      FieldName = 'YEAR_BUDGET'
      currency = True
    end
  end
  object dsWipGeneratedBudget: TUniDataSource
    DataSet = qryWipGeneratedBudget
    Left = 175
    Top = 147
  end
  object dsWIPFigures: TUniDataSource
    DataSet = qryWIPFigures
    Left = 121
    Top = 232
  end
  object qryWIPFigures: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p1, T' +
        'RUNC(SYSDATE),             NVL(FEE.AMOUNT,0))),0) "0days", '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p2, T' +
        'RUNC(SYSDATE) - (:p1 + 1), NVL(FEE.AMOUNT,0))),0) "30days", '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p3, T' +
        'RUNC(SYSDATE) - (:p2 + 1), NVL(FEE.AMOUNT,0))),0) "60days", '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p4, T' +
        'RUNC(SYSDATE) - (:p3 + 1), NVL(FEE.AMOUNT,0))),0) "90days", '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(TO_DATE('#39'01/01/18' +
        '00'#39','#39'DD/MM/YYYY'#39')), TRUNC(SYSDATE) - (:p4 + 1), NVL(FEE.AMOUNT,0' +
        '))),0) "120days" '
      'FROM FEE'
      'WHERE author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND FEE.BILLTYPE = '#39'Billable'#39' '
      'AND FEE.BILLED = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')')
    Left = 38
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qryWIPFiguresDSDesigner0days: TFloatField
      FieldName = '0days'
      currency = True
    end
    object qryWIPFiguresDSDesigner30days: TFloatField
      FieldName = '30days'
      currency = True
    end
    object qryWIPFiguresDSDesigner60days: TFloatField
      FieldName = '60days'
      currency = True
    end
    object qryWIPFiguresDSDesigner90days: TFloatField
      FieldName = '90days'
      currency = True
    end
    object qryWIPFiguresDSDesigner120days: TFloatField
      FieldName = '120days'
      currency = True
    end
  end
  object qryWIPGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 1,'#39'Current'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p1, T' +
        'RUNC(SYSDATE),             NVL(FEE.AMOUNT,0))),0) '
      'FROM FEE'
      'WHERE fee.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 2,'#39'30'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p2, T' +
        'RUNC(SYSDATE) - (:p1 + 1), NVL(FEE.AMOUNT,0))),0) "30days"'
      'FROM FEE'
      'WHERE FEE.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND FEE.AMOUNT > 0'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'union'
      'SELECT 3,'#39'60'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p3, T' +
        'RUNC(SYSDATE) - (:p2 + 1), NVL(FEE.AMOUNT,0))),0) "60days"'
      'FROM FEE'
      'WHERE FEE.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 4,'#39'90'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p4, T' +
        'RUNC(SYSDATE) - (:p3 + 1), NVL(FEE.AMOUNT,0))),0) "90days"'
      'FROM FEE'
      'WHERE FEE.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 5,'#39'120+'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(TO_DATE('#39'01/01/18' +
        '00'#39','#39'DD/MM/YYYY'#39')), TRUNC(SYSDATE) - (:p4 + 1),   NVL(FEE.AMOUNT' +
        ',0))),0) "120days"   '
      'FROM FEE'
      'WHERE FEE.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')')
    Left = 193
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        Value = nil
      end>
  end
  object qryMattersOpened: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mtd, ytd'
      'from ('
      'select count(nmatter) as mtd from matter '
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and opened between :firstdate and :lastdate) a,'
      '(select count(nmatter) as ytd from matter '
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and opened between :year_start_date and :year_end_date)b')
    Left = 465
    Top = 221
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
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
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
    object qryMattersOpenedMTD: TFloatField
      FieldName = 'MTD'
    end
    object qryMattersOpenedYTD: TFloatField
      FieldName = 'YTD'
    end
  end
  object qryClientMilestones: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mattertype.descr, '
      
        'trunc((sum(fee.amount)- nvl(sum(notional_cost),1))/decode(sum(fe' +
        'e.amount),0,1,sum(fee.amount)) * 100) total'
      'from mattertype, fee, matter'
      'where fee.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and matter.nmatter = fee.nmatter'
      'and matter.type = mattertype.code'
      'and billtype = '#39'Billable'#39' '
      'and billed = '#39'Y'#39
      'and fee.type not in ('#39'ia'#39','#39'wo'#39')'
      '-- and trunc(invoicedate) >= (trunc(sysdate) - 365)'
      'and trunc(invoicedate) >= :datefrom '
      'group by mattertype.descr'
      'order by total desc')
    Left = 293
    Top = 214
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end>
  end
  object dsFeesReceivedBudget: TUniDataSource
    DataSet = qryFeesReceivedBudget
    Left = 144
    Top = 270
  end
  object qryFeesReceivedBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select nvl(receivedFEES,0) as month_budget from budget'
      'where employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      
        'and  month = cast(to_char(:month_start_date,'#39'MM'#39') as integer) an' +
        'd calendar_year = cast(to_char(:month_start_date,'#39'YYYY'#39')as integ' +
        'er)) c,'
      '(select nvl(sum(receivedFEES),0) year_budget'
      '  from budget'
      '  where employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39')'
      '  BETWEEN :year_start_date and :year_end_date) D'
      ''
      ''
      '')
    Left = 37
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
    object FloatField1: TFloatField
      FieldName = 'MONTH_BUDGET'
      currency = True
    end
    object FloatField2: TFloatField
      FieldName = 'YEAR_BUDGET'
      currency = True
    end
  end
  object qryWIPGenerated: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.month_total, b.year_total from'
      '(select nvl(sum(amount),0) as month_total from fee f'
      'where f.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and billtype = '#39'Billable'#39
      'and type not in ('#39'ia'#39', '#39'wo'#39')'
      
        'and trunc(f.created) between :month_start_date and :month_end_da' +
        'te ) a,'
      '(select nvl(sum(amount),0) as year_total from fee f'
      'where f.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and billtype = '#39'Billable'#39
      'and type not in ('#39'ia'#39', '#39'wo'#39')'
      
        'and trunc(f.created) between :year_start_date and :year_end_date' +
        ') b'
      '')
    Left = 44
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
    object qryWIPGeneratedMONTH_TOTAL: TFloatField
      FieldName = 'MONTH_TOTAL'
      currency = True
    end
    object qryWIPGeneratedYEAR_TOTAL: TFloatField
      FieldName = 'YEAR_TOTAL'
      currency = True
    end
  end
  object qryWIPLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nvl(sum(amount),0) as month_total '
      'from fee f'
      'where f.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and nvl(billed, '#39'N'#39') = '#39'N'#39
      'and nvl(billtype, '#39'Billable'#39') = '#39'Billable'#39
      'AND TYPE NOT IN ('#39'ia'#39','#39'wo'#39')')
    Left = 204
    Top = 428
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qryWIPLockupMONTH_TOTAL: TFloatField
      FieldName = 'MONTH_TOTAL'
      currency = True
    end
  end
  object dsWIPGenerated: TUniDataSource
    DataSet = qryWIPGenerated
    Left = 40
    Top = 206
  end
  object dsWIPLockup: TUniDataSource
    DataSet = qryWIPLockup
    Left = 206
    Top = 483
  end
  object qryWIPGeneratedGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  NVL(b.unbilled,0) AS unbilled, '
      '  b.PERIOD, b.YEAR,  '
      
        '  to_char(to_date(b.cal_MONTH || '#39'-'#39' || b.cal_YEAR,'#39'Mon-yy'#39'),'#39'Mo' +
        'n-yy'#39') AS viewdate'
      'FROM'
      '  ('
      '    SELECT nvl(sum(amount),0) AS unbilled,author,  '
      '      CAST(GET_FIN_YEAR(fee.created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(fee.created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,1' +
        '1,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS PERIOD,'
      #9'  TO_CHAR(fee.created,'#39'YY'#39') AS cal_year,'
      #9'  TO_CHAR(created,'#39'Mon'#39') AS cal_month'
      '    FROM calendar,FEE'
      '    WHERE fee.author in (SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '    AND billtype = '#39'Billable'#39
      '    AND type not in ('#39'wo'#39','#39'ia'#39')'
      '    and fin_period = period'
      '    and fin_year = year'
      '    GROUP BY CAST(GET_FIN_YEAR(fee.created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(fee.created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,1' +
        '1,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(fee.created,'#39'YY'#39'),'
      #9'  TO_CHAR(created,'#39'Mon'#39')'
      '   ) b'
      'WHERE '
      '    b.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND trunc(TO_DATE(b.cal_MONTH || '#39'-'#39' || b.cal_YEAR, '#39'Mon-YY'#39'))'
      '  BETWEEN :firstdate AND :lastdate'
      'union'
      'select 0, fin_period, fin_year, '
      
        '  to_char(to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'O' +
        'ct'#39',5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12' +
        ','#39'Jun'#39') ||'
      
        '  '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'mm-yyyy'#39'),'#39'Mon-yy'#39') '
      'from calendar '
      
        'where not exists(select 1 from fee where author in ( SELECT dist' +
        'inct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '    and period = fin_period and year = fin_year '
      '    AND billtype = '#39'Billable'#39
      '    AND type not in ('#39'ia'#39','#39'wo'#39'))'
      
        '    and Trunc(to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',' +
        '4,'#39'Oct'#39',5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May' +
        #39',12,'#39'Jun'#39') ||'
      
        '  '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'mm-yy'#39')) '
      '   BETWEEN :firstdate AND :lastdate'
      'ORDER BY 3,2'
      ''
      ''
      ''
      ''
      '/*'
      'SELECT '
      '  NVL(b.unbilled,0) AS unbilled, '
      '  NVL(m.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR,  '
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      '  ('
      '    SELECT nvl(SUM(amount),0) AS unbilled,author,  '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH'
      '    FROM FEE '
      '    WHERE author = :author'
      '    AND billtype = '#39'Billable'#39
      '    AND billed = '#39'N'#39
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '   ) b,'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip,employee as author, '
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
      '    b.author = :author'
      'AND b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
      'AND b.author(+)   = m.author'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'UNION'
      'SELECT '
      '  NVL(a.unbilled,0) AS unbilled,'
      '  NVL(b.wip,0) AS wipbudget, '
      '  a.MONTH, a.YEAR,'
      
        '  TO_DATE(a.CAL_MONTH || '#39'-'#39' || a.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      '   ('
      '    SELECT nvl(SUM(amount),0) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS cal_year,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS cal_month'
      '    FROM FEE '
      '    WHERE author = :author '
      '    AND billtype = '#39'Billable'#39
      '    AND billed = '#39'N'#39
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'),'
      '      LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) a,'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip, EMPLOYEE AS author, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      '    WHERE BUDGET.EMPLOYEE = :author'
      '    GROUP BY EMPLOYEE, PERIOD, NVL(financial_year,YEAR)'
      '  ) b'
      'WHERE'
      '    a.author = :author'
      'AND b.MONTH(+)    = a.MONTH'
      'AND b.YEAR(+)     = a.YEAR'
      'AND b.author(+)   = a.author'
      'AND TO_DATE(a.MONTH || '#39'-'#39' || a.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'UNION'
      'SELECT '
      '  NVL(m.unbilled,0) AS unbilled, '
      '  NVL(b.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR, '
      
        '  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') AS viewda' +
        'te'
      'FROM'
      '  ('
      '    SELECT nvl(SUM(amount),0) AS unbilled, author,'
      '     CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS CAL_MONTH'
      '    FROM FEE '
      '    WHERE author = :author'
      '    AND billtype = '#39'Billable'#39
      '    AND billed = '#39'N'#39
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39') ,LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip, employee as author,'
      '      financial_year AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      '    WHERE BUDGET.EMPLOYEE = :author'
      '    GROUP BY EMPLOYEE, PERIOD, financial_year'
      '  ) b'
      'WHERE '
      '    m.author = :author'
      'AND m.MONTH    = b.MONTH(+)'
      'AND m.YEAR     = b.YEAR(+)'
      'AND m.author   = b.author(+)'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'ORDER BY YEAR,MONTH'
      '*/')
    Left = 339
    Top = 294
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
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
  object qryLockupGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '#39'WIP'#39' as lockup, nvl(sum(amount),0) as month_total '
      'from fee f'
      'where f.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and nvl(billed, '#39'N'#39') = '#39'N'#39
      'and nvl(billtype, '#39'Billable'#39') = '#39'Billable'#39
      'AND TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      
        'SELECT '#39'Unbilled disbs'#39' as lockup, nvl(sum(nvl(amount * -1,0)),0' +
        ') as unbill_disb'
      'FROM alloc a, matter m'
      'WHERE a.nmatter = m.nmatter'
      '   AND m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '   AND nvl(billed, '#39'N'#39') = '#39'N'#39
      '   AND nvl(TRUST, '#39'G'#39') <> '#39'T'#39
      '   AND (nvl(ncheque,0) > 0'
      '        or'
      '        (nvl(njournal,0) > 0 and a.type = '#39'J2'#39')'
      '       )'
      'union'
      
        'SELECT '#39'Debtors'#39' as lockup, abs(nvl(sum(amt), 0)) as debtor_amou' +
        'nt'
      '   FROM'
      '   ('
      '      SELECT (nvl(alloc.amount, 0) + nvl(alloc.tax,0)) as amt'
      '      FROM alloc, matter'
      '      WHERE alloc.nmatter = matter.nmatter'
      '      AND matter.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '      AND alloc.trust <> '#39'T'#39
      '      AND alloc.type <> '#39'DR'#39
      
        '      AND (alloc.nreceipt <> 0 OR alloc.type = '#39'J1'#39' OR alloc.typ' +
        'e = '#39'RF'#39')'
      '      UNION ALL'
      
        '      SELECT (nvl(fees,0) + nvl(disb,0) + nvl(sund,0) + nvl(antd' +
        ',0) + nvl(upcred, 0) + nvl(tax,0)) *-1 as amt'
      '      FROM nmemo, matter'
      '      WHERE nmemo.nmatter = matter.nmatter'
      '      AND matter.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '      AND dispatched IS NOT NULL'
      '      AND refno <> '#39'DRAFT'#39
      '      AND rv_type <> '#39'D'#39
      '   )'
      'union'
      
        'SELECT '#39'Creditors'#39' as lockup,NVL(SUM(a.amount * -1),0) as month_' +
        'total  '
      'FROM MATTER m, ALLOC a'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = a.nmatter'
      'AND a.ninvoice IS NOT NULL'
      'AND a.billed = '#39'N'#39
      'union'
      
        'SELECT '#39'Sundries'#39' as lockup, NVL(SUM(NVL(amount,0)), 0) as month' +
        '_total '
      'FROM SUNDRY s, MATTER m'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND s.nmatter=m.nmatter '
      'AND Billed = '#39'N'#39
      ''
      ''
      ''
      '/*'
      
        'select '#39'WIP'#39' as lockup, abs(nvl(sum(month_total),0)) as month_to' +
        'tal '
      'from vw_wip_lockup_team'
      'where dept = :dept'
      'and created between :start_date and :end_date'
      'union'
      
        'SELECT '#39'Unbilled disbs'#39' as lockup, nvl(sum(unbill_disb),0) as un' +
        'bill_disb'
      'FROM vw_unbill_disbs_lockup_team'
      'WHERE dept = :dept'
      '     AND created between :start_date and :end_date'
      'union'
      
        'SELECT '#39'Debtors'#39' as lockup, abs(nvl(sum(debtor_amount), 0)) as d' +
        'ebtor_amount'
      '   FROM vw_debtor_lockup_team'
      'where dept = :dept'
      'AND created between :start_date and :end_date */')
    Left = 147
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
  end
  object dsDebtorLockup: TUniDataSource
    DataSet = qryDebtorLockup
    Left = 51
    Top = 455
  end
  object qryDebtorLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT abs(nvl(sum(amt), 0)) as debtor_amount'
      '   FROM'
      '   ('
      '      SELECT (nvl(owing,0)) * -1'
      '      as amt'
      '      FROM nmemo, matter'
      '      WHERE nmemo.nmatter = matter.nmatter'
      '      AND matter.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '      AND dispatched IS NOT NULL'
      '      AND refno <> '#39'DRAFT'#39
      '      AND rv_type <> '#39'D'#39
      '   )')
    Left = 50
    Top = 390
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qryDebtorLockupDEBTOR_AMOUNT: TFloatField
      FieldName = 'DEBTOR_AMOUNT'
      currency = True
    end
  end
  object qryWIPGeneratedBudgetGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  NVL(m.wip,0) AS wipbudget, '
      '  m.MONTH, m.YEAR,  '
      '  m.CAL_MONTH || '#39'-'#39' || substr(m.CAL_YEAR,3,2) AS viewdate'
      'FROM  '
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip,employee as author, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      '      CALENDAR_YEAR   AS CAL_YEAR,'
      
        '      decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39',11,'#39'Nov'#39',12,' +
        #39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Jun'#39') AS CAL_MO' +
        'NTH'
      '    FROM BUDGET'
      '    WHERE BUDGET.employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      
        '    GROUP BY PERIOD, NVL(financial_year,YEAR),CALENDAR_YEAR,MONT' +
        'H'
      '  ) m'
      '  WHERE '
      '    m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '  AND TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      '  union'
      '  SELECT '
      '  NVL(b.wip,0) AS wipbudget, '
      '  b.MONTH, b.YEAR,'
      '  b.CAL_MONTH || '#39'-'#39' || substr(b.CAL_YEAR,3,2) AS viewdate'
      'FROM'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip, employee as author, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      '      CALENDAR_YEAR   AS CAL_YEAR,'
      
        '      decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39',11,'#39'Nov'#39',12,' +
        #39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Jun'#39') AS CAL_MO' +
        'NTH'
      '    FROM BUDGET'
      '    WHERE BUDGET.employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      
        '    GROUP BY month, calendar_year, PERIOD, NVL(financial_year,YE' +
        'AR)'
      '  ) b'
      '  WHERE '
      '    b.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '   AND TO_DATE(b.CAL_MONTH || '#39'-'#39' || b.CAL_YEAR, '#39'MM-YY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      '  union'
      '  SELECT '
      '  NVL(b.wip,0) AS wipbudget, '
      '  b.MONTH, b.YEAR, '
      '  b.CAL_MONTH || '#39'-'#39' || substr(b.CAL_YEAR,3,2) AS viewdate'
      'FROM'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip, employee as author,'
      '      financial_year AS YEAR,'
      '      PERIOD AS MONTH,'
      '      CALENDAR_YEAR   AS CAL_YEAR,'
      
        '      decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39',11,'#39'Nov'#39',12,' +
        #39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Jun'#39') AS CAL_MO' +
        'NTH'
      '    FROM BUDGET'
      '    WHERE BUDGET.employee in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '    GROUP BY month, calendar_year, PERIOD, financial_year'
      '  ) b  '
      'WHERE '
      '    b.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND TO_DATE(b.CAL_MONTH || '#39'-'#39' || b.CAL_YEAR, '#39'MM-YY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      'ORDER BY YEAR,MONTH')
    Left = 307
    Top = 364
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
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
  object qryChargeSummary: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select 1 as id,trunc(created) created, '#39'Chargeable - '#39'||to_char(' +
        'sum(units)) units, 3 as eventtype from fee'
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and billtype = '#39'Billable'#39' and time_type = '#39'M'#39
      'group by trunc(created)'
      'union'
      
        'select 2 as id, trunc(created) created, '#39'Non Chargeable - '#39'||to_' +
        'char(sum(units)) units, 2 as eventtype from fee'
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and billtype = '#39'Billable'#39' and time_type = '#39'O'#39
      'group by trunc(created)'
      'union'
      
        'select 3 as id, trunc(created) created, '#39'Total - '#39'||to_char(sum(' +
        'units)) units, 1 as eventtype from fee'
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and billtype = '#39'Billable'#39' and time_type in ('#39'M'#39','#39'O'#39')'
      'group by trunc(created)'
      'order by 2,1')
    Left = 443
    Top = 306
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
  end
  object dsChargeSummary: TUniDataSource
    DataSet = qryChargeSummary
    Left = 439
    Top = 355
  end
  object qryMatterProfitability: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mattertype.descr, '
      
        'trunc((sum(fee.amount)- nvl(sum(notional_cost),1))/decode(sum(fe' +
        'e.amount),0,1,sum(fee.amount)) * 100) total'
      'from mattertype, fee, matter'
      'where fee.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and matter.nmatter = fee.nmatter'
      'and matter.type = mattertype.code'
      'and billtype = '#39'Billable'#39' '
      'and billed = '#39'Y'#39
      '-- and trunc(invoicedate) >= (trunc(sysdate) - 365) '
      'and trunc(invoicedate) >= :datefrom '
      'group by mattertype.descr'
      'order by total desc')
    Left = 567
    Top = 364
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end>
    object qryMatterProfitabilityDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
    object qryMatterProfitabilityTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object dsMatterProfitability: TUniDataSource
    DataSet = qryMatterProfitability
    Left = 572
    Top = 418
  end
  object qryTotalClients: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct count(client.nclient)'
      'from client , matter'
      'where'
      'matter.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and matter.nclient = client.nclient')
    Left = 669
    Top = 350
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
  end
  object dsTotalClients: TUniDataSource
    DataSet = qryTotalClients
    Left = 707
    Top = 321
  end
  object dsClientCountMTD: TUniDataSource
    DataSet = qryClientCountMTD
    Left = 705
    Top = 291
  end
  object qryClientCountMTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select count(distinct matter.nclient)'
      'from client , matter'
      'where'
      'matter.author in ( SELECT distinct e.CODE'
      '    FROM  employee e'
      '    where'
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and matter.nclient = client.nclient'
      'and introduced between :month_start_date and :month_end_date'
      '')
    Left = 674
    Top = 291
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
        Value = nil
      end>
  end
  object dsClientCountYTD: TUniDataSource
    DataSet = qryClientCountYTD
    Left = 621
    Top = 276
  end
  object qryClientCountYTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select count(distinct matter.nclient)'
      'from client , matter'
      'where'
      'matter.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and matter.nclient = client.nclient'
      'and introduced between :year_start_date and :year_end_date')
    Left = 557
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object dsClientMilestones: TUniDataSource
    DataSet = qryClientMilestones
    Left = 372
    Top = 243
  end
  object qryTotalMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.matts, b.closed'
      'from ('
      'select count(nmatter) as matts '
      'from matter '
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and nvl(closed,0) = 0) a,'
      '(select count(nmatter) as closed '
      'from matter '
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and nvl(closed,0) = 1) b')
    Left = 567
    Top = 235
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
  end
  object dsTotalMatters: TUniDataSource
    DataSet = qryTotalMatters
    Left = 677
    Top = 209
  end
  object qryTopReferrers: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * '
      'FROM'
      '('
      'SELECT p2.name, SUM(amount) total'
      'FROM MATTER m, PHONEBOOK p1, PHONEBOOK p2, FEE f'
      'WHERE f.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = f.nmatter'
      'AND m.NCLIENT = p1.nclient '
      'AND p2.nclient = p1.referredby_nclient'
      'AND billed = '#39'Y'#39
      'AND f.TYPE NOT IN ('#39'wo'#39', '#39'ia'#39')'
      
        '--and trunc(f.invoicedate) between (trunc(sysdate) - 365) and tr' +
        'unc(sysdate)'
      'and trunc(f.invoicedate) between :datefrom and :dateto'
      'GROUP BY p2.name'
      'UNION'
      'SELECT p2.name, SUM(amount) total'
      'FROM MATTER m, PHONEBOOK p1, PHONEBOOK p2, FEE'
      'WHERE fee.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.NCLIENT = p1.nclient'
      'AND FEE.nmatter = m.nmatter '
      'AND p2.nname = p1.referredby_nname'
      'AND billed = '#39'Y'#39
      'AND FEE.TYPE NOT IN ('#39'wo'#39', '#39'ia'#39')'
      
        '--and trunc(fee.invoicedate) between (trunc(sysdate) - 365) and ' +
        'trunc(sysdate)'
      'and trunc(fee.invoicedate) between :datefrom and :dateto'
      'GROUP BY p2.name'
      'UNION'
      'SELECT e.name, SUM(amount) total'
      'FROM MATTER m, EMPLOYEE e, PHONEBOOK p1, FEE'
      'WHERE fee.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND p1.referredby_emp = e.code'
      'AND FEE.nmatter = m.nmatter'
      'AND m.nclient = p1.nclient'
      'AND billed = '#39'Y'#39
      'AND FEE.TYPE NOT IN ('#39'wo'#39', '#39'ia'#39')'
      
        '--and trunc(fee.invoicedate) between (trunc(sysdate) - 365) and ' +
        'trunc(sysdate)'
      'and trunc(fee.invoicedate) between :datefrom and :dateto'
      'GROUP BY e.name'
      'ORDER BY total DESC'
      ')'
      'WHERE '
      'total <> 0'
      'AND ROWNUM <= 10')
    Left = 790
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end>
  end
  object dsTopReferrers: TUniDataSource
    DataSet = qryTopReferrers
    Left = 791
    Top = 264
  end
  object dsTopClients: TUniDataSource
    DataSet = qryTopClients
    Left = 770
    Top = 455
  end
  object qryTopClients: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      '('
      'select phonebook.NAME, sum(amount) total'
      'from fee, matter, phonebook'
      'where fee.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and fee.nmatter = matter.nmatter'
      'and fee.NCLIENT = phonebook.NCLIENT'
      'and billed = '#39'Y'#39
      
        '-- and trunc(fee.invoicedate) between (trunc(sysdate) - 365) and' +
        ' trunc(sysdate)'
      'and trunc(fee.invoicedate) between :datefrom and :dateto'
      'group by phonebook.NAME'
      'order by total desc'
      ')'
      'where '
      'total <> 0 and'
      'rownum <= 10'
      '')
    Left = 770
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end>
  end
  object dsMattersClosed: TUniDataSource
    DataSet = qryMattersClosed
    Left = 754
    Top = 161
  end
  object qryMattersClosed: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mtd, ytd'
      'from ('
      'select count(nmatter) as mtd from matter '
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and completed between :firstdate and :lastdate) a,'
      '(select count(nmatter) as ytd from matter '
      'where author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'and completed between :year_start_date and :year_end_date)b')
    Left = 689
    Top = 149
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
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
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object dsMattersOpened: TUniDataSource
    DataSet = qryMattersOpened
    Left = 598
    Top = 169
  end
  object qryUnbilledDisbs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(sum(nvl(amount * -1,0)),0) as unbill_disb'
      'FROM alloc a, matter m'
      'WHERE a.nmatter = m.nmatter'
      '   AND m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      '   AND nvl(billed, '#39'N'#39') = '#39'N'#39
      '   AND nvl(TRUST, '#39'G'#39') <> '#39'T'#39
      '   AND (nvl(ncheque,0) > 0'
      '        or'
      '        (nvl(njournal,0) > 0 and a.type = '#39'J2'#39')'
      '       )'
      '')
    Left = 141
    Top = 322
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qryUnbilledDisbsUNBILL_DISB: TFloatField
      FieldName = 'UNBILL_DISB'
      currency = True
    end
  end
  object dsUnbilledDisbs: TUniDataSource
    DataSet = qryUnbilledDisbs
    Left = 227
    Top = 322
  end
  object qryCreditorsLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.cred_month_total, b.sund_month_total'
      'from'
      '(SELECT NVL(SUM(a.amount * -1),0) as cred_month_total  '
      'FROM MATTER m, ALLOC a'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = a.nmatter'
      'AND a.ninvoice IS NOT NULL'
      'AND a.billed = '#39'N'#39' ) a,'
      '(SELECT NVL(SUM(NVL(amount,0)), 0) as sund_month_total '
      'FROM SUNDRY s, MATTER m'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND s.nmatter=m.nmatter '
      'AND Billed = '#39'N'#39') b'
      '')
    Left = 330
    Top = 435
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qryCreditorsLockupCRED_MONTH_TOTAL: TFloatField
      FieldName = 'CRED_MONTH_TOTAL'
      currency = True
    end
  end
  object dsCreditorsLockup: TUniDataSource
    DataSet = qryCreditorsLockup
    Left = 433
    Top = 444
  end
  object qrySundryLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.cred_month_total, b.sund_month_total'
      'from'
      '(SELECT NVL(SUM(a.amount * -1),0) as cred_month_total  '
      'FROM MATTER m, ALLOC a'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND m.nmatter = a.nmatter'
      'AND a.ninvoice IS NOT NULL'
      'AND a.billed = '#39'N'#39' ) a,'
      '(SELECT NVL(SUM(NVL(amount,0)), 0) as sund_month_total '
      'FROM SUNDRY s, MATTER m'
      'WHERE m.author in ( SELECT distinct e.CODE '
      '    FROM  employee e '
      '    where '
      '    e.NFEE_AUTHORITY in'
      '    (select distinct nfee_authority from fee_authority_relation'
      
        '     start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authori' +
        'ty from employee where code = :code)'
      '    connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      '    and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      '   and dept = :dept )'
      'AND s.nmatter=m.nmatter '
      'AND Billed = '#39'N'#39') b'
      '')
    Left = 341
    Top = 508
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
    object qrySundryLockupSUND_MONTH_TOTAL: TFloatField
      FieldName = 'SUND_MONTH_TOTAL'
      currency = True
    end
  end
  object dsSundryLockup: TUniDataSource
    DataSet = qrySundryLockup
    Left = 435
    Top = 499
  end
end
