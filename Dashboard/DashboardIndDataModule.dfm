object dmDashboardInd: TdmDashboardInd
  OldCreateOrder = False
  Height = 680
  Width = 905
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
      'FROM'
      '   (SELECT'
      
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
      '     FROM matter m, nmemo n'
      '      WHERE m.author = :author'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      '  '#9'   AND dispatched IS NOT NULL'
      
        '      AND ( (n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39 +
        '))'
      '   ) c'
      '')
    Left = 27
    Top = 2
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
        Name = 'author'
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
    Left = 125
    Top = 65533
  end
  object qryAgedDebtorsMatterCnt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      
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
      'FROM nmemo n'
      'WHERE n.author = :author'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      'AND ((n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39'))'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p1, TRUN' +
        'C(SYSDATE), n.nmatter) <> 0 ) a,'
      '(select'
      '   count(nmatter) as apaid1'
      'FROM nmemo n'
      'WHERE n.author = :author'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      'AND ((n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39'))'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p2, TRUN' +
        'C(SYSDATE) - (:p1 + 1), n.nmatter) <> 0 ) b,'
      '(select'
      '  count(nmatter) AS apaid2'
      'FROM nmemo n'
      'WHERE n.author = :author'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      'AND ((n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39'))'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p3, TRUN' +
        'C(SYSDATE) - (:p2 + 1), n.nmatter) <> 0) c,'
      '(select'
      '  count(nmatter) AS apaid3'
      'FROM nmemo n'
      'WHERE n.author = :author'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      'AND ((n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39'))'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p4, TRUN' +
        'C(SYSDATE) - (:p3 + 1), n.nmatter) <> 0) d,'
      '(select'
      '  count(nmatter) AS apaid10'
      'FROM nmemo n'
      'WHERE n.author = :author'
      'AND dispatched IS NOT NULL'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'and owing <> 0'
      'AND ((n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39'))'
      
        'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(TO_DATE('#39'01/01/1900'#39 +
        ','#39'dd/mm/yyyy'#39')),TRUNC(SYSDATE) - (:p4 + 1),   n.nmatter) <> 0) e'
      '')
    Left = 61
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
  object qryAgedDebtorsGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '     '#39'Current'#39','
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :P1, TRUNC(SYSDATE),             n.owing)),0) AS "Current"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author = :author'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL'
      
        '      AND ( (n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39 +
        '))'
      'union all'
      'SELECT'
      '      '#39'30 Days'#39','
      
        '        nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE)' +
        ' - :P2, TRUNC(SYSDATE) - (:P1 + 1), n.owing)),0) AS "30 Days"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author = :author'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL'
      
        '      AND ( (n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39 +
        '))'#9
      'union all'
      'SELECT'
      '      '#39'60 Days'#39','
      
        '        nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE)' +
        ' - :P3, TRUNC(SYSDATE) - (:P2 + 1), n.owing)),0) AS "60 Days"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author = :author'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL'
      
        '      AND ( (n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39 +
        '))'
      'union all'
      'SELECT'
      '      '#39'90 Days'#39','
      
        #9'  nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :P' +
        '4, TRUNC(SYSDATE) - (:P3 + 1), n.owing)),0) AS "90 Days"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author = :author'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      #9'  AND dispatched IS NOT NULL'
      
        '      AND ( (n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39 +
        '))'
      'union all'
      'SELECT'
      '      '#39'120+ Days'#39','
      
        '        nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched),TRUNC(TO_DATE('#39 +
        '01/01/1900'#39','#39'dd/mm/yyyy'#39')), TRUNC(SYSDATE) - (:P4 + 1),   n.owin' +
        'g)),0) AS "120 +"'
      '      FROM  matter m, nmemo n'
      '      WHERE m.author = :author'
      '      AND n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      '      AND dispatched IS NOT NULL'
      
        '      AND ( (n.refno not like '#39'%CN'#39') and (n.refno not like '#39'%RV'#39 +
        '))')
    Left = 171
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
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
  object qryFeesBilledMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(sum(amount),0)'
      '   FROM fee'
      '   WHERE author = :author'
      '   and nmemo is not null '
      
        '   and trunc(invoicedate) between :month_start_date and :month_e' +
        'nd_date'
      ''
      '   /*'
      'SELECT nvl(sum(amount),0)'
      '   FROM fee'
      '   WHERE author = :author'
      '   AND billed = '#39'Y'#39
      'and type <> '#39'wo'#39
      'and billtype = '#39'Billable'#39
      
        '   and trunc(invoicedate) between :month_start_date and :month_e' +
        'nd_date'
      '   */')
    Left = 379
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
    object qryFeesBilledMonthNVLSUMAMOUNT0: TFloatField
      FieldName = 'NVL(SUM(AMOUNT),0)'
      currency = True
    end
  end
  object dsFeesBilledMonth: TUniDataSource
    DataSet = qryFeesBilledMonth
    Left = 368
    Top = 51
  end
  object dsAgedDebtorsMatterCnt: TUniDataSource
    DataSet = qryAgedDebtorsMatterCnt
    Left = 169
    Top = 82
  end
  object qryFeesBilledBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select nvl(billedfees,0) as month_budget from budget'
      'where employee = :author'
      
        'and month = cast(to_char(:month_start_date,'#39'MM'#39') as integer) and' +
        ' calendar_year = cast(to_char(:month_start_date,'#39'YYYY'#39')as intege' +
        'r)) c,'
      '(select nvl(sum(billedfees),0) as year_budget from budget'
      'where employee = :author'
      
        'and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39') BETWEEN :y' +
        'ear_start_date AND :year_end_date) d')
    Left = 270
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
    object qryFeesBilledBudgetMONTH_BUDGET: TFloatField
      FieldName = 'MONTH_BUDGET'
      currency = True
    end
    object qryFeesBilledBudgetYEAR_BUDGET: TFloatField
      FieldName = 'YEAR_BUDGET'
      currency = True
    end
  end
  object qryFeesReceivedBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select nvl(receivedfees,0) as month_budget from budget'
      'where employee = :author'
      
        'and month = cast(to_char(:month_start_date,'#39'MM'#39') as integer) and' +
        ' calendar_year = cast(to_char(:month_start_date,'#39'YYYY'#39')as intege' +
        'r)) c,'
      '(select nvl(sum(receivedfees),0) as year_budget from budget'
      'where employee = :author'
      
        'and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39') BETWEEN :y' +
        'ear_start_date AND :year_end_date) d')
    Left = 210
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
    object qryFeesReceivedBudgetMONTH_BUDGET: TFloatField
      FieldName = 'MONTH_BUDGET'
      currency = True
    end
    object qryFeesReceivedBudgetYEAR_BUDGET: TFloatField
      FieldName = 'YEAR_BUDGET'
      currency = True
    end
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
      'WHERE FEE.AUTHOR = :author'
      'AND FEE.BILLTYPE = '#39'Billable'#39' '
      'AND FEE.BILLED = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')')
    Left = 23
    Top = 134
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
        Name = 'author'
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
  object dsWIPFigures: TUniDataSource
    DataSet = qryWIPFigures
    Left = 94
    Top = 142
  end
  object qryWipGeneratedBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select nvl(wip,0) as month_budget from budget'
      'where employee = :author'
      
        'and month = cast(to_char(:month_start_date,'#39'MM'#39') as integer) and' +
        ' calendar_year = cast(to_char(:month_start_date,'#39'YYYY'#39')as intege' +
        'r)) c,'
      '(select nvl(sum(wip),0) as year_budget from budget'
      'where employee = :author'
      
        'and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39') BETWEEN :y' +
        'ear_start_date AND :year_end_date) d'
      ''
      '')
    Left = 48
    Top = 190
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
  object qryWIPGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 1,'#39'Current'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p1, T' +
        'RUNC(SYSDATE),             NVL(FEE.AMOUNT,0))),0) '
      'FROM FEE'
      'WHERE FEE.AUTHOR = :AUTHOR'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 2,'#39'30'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p2, T' +
        'RUNC(SYSDATE) - (:p1 + 1), NVL(FEE.AMOUNT,0))),0) "30days"'
      'FROM FEE'
      'WHERE FEE.AUTHOR = :AUTHOR'
      'AND FEE.AMOUNT > 0'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'union'
      'SELECT 3,'#39'60'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p3, T' +
        'RUNC(SYSDATE) - (:p2 + 1), NVL(FEE.AMOUNT,0))),0) "60days"'
      'FROM FEE'
      'WHERE FEE.AUTHOR = :AUTHOR'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 4,'#39'90'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p4, T' +
        'RUNC(SYSDATE) - (:p3 + 1), NVL(FEE.AMOUNT,0))),0) "90days"'
      'FROM FEE'
      'WHERE FEE.AUTHOR = :AUTHOR'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 5,'#39'120+'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(TO_DATE('#39'01/01/18' +
        '00'#39','#39'DD/MM/YYYY'#39')), TRUNC(SYSDATE) - (:p4 + 1),   NVL(FEE.AMOUNT' +
        ',0))),0) "120days"   '
      'FROM FEE'
      'WHERE FEE.AUTHOR = :AUTHOR'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')')
    Left = 195
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
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
  object dsWipGeneratedBudget: TUniDataSource
    DataSet = qryWipGeneratedBudget
    Left = 49
    Top = 240
  end
  object dsFeesReceivedBudget: TUniDataSource
    DataSet = qryFeesReceivedBudget
    Left = 306
    Top = 116
  end
  object dsFeesBilledBudget: TUniDataSource
    DataSet = qryFeesBilledBudget
    Left = 265
    Top = 61
  end
  object qryFeesBilledYTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(sum(amount),0)'
      '   FROM fee'
      '   WHERE author = :author'
      '   and nmemo is not null '
      
        '   and trunc(invoicedate) between :year_start_date and :year_end' +
        '_date'
      ''
      '/*'
      'SELECT nvl(sum(amount),0)'
      '   FROM fee'
      '   WHERE author = :author'
      '   AND billed = '#39'Y'#39
      '   and TYPE NOT IN ('#39'wo'#39')'
      '   and billtype = '#39'Billable'#39
      
        '   and trunc(invoicedate) between :year_start_date and :year_end' +
        '_date'
      '*/'
      '/* type <> '#39'wo'#39' */'
      ''
      '/*'
      'SELECT nvl(sum(fees),0)'
      '   FROM nmemo'
      '   WHERE'
      '   nmemo.author = :author'
      '   AND rv_type NOT IN ('#39'C'#39','#39'R'#39')'
      '   AND refno <> '#39'DRAFT'#39
      
        '   and trunc(generated) between :year_start_date and :year_end_d' +
        'ate  */')
    Left = 494
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
    object qryFeesBilledYTDNVLSUMAMOUNT0: TFloatField
      FieldName = 'NVL(SUM(AMOUNT),0)'
      currency = True
    end
  end
  object dsFeesBilledYTD: TUniDataSource
    DataSet = qryFeesBilledYTD
    Left = 468
    Top = 72
  end
  object dsFeeReceivedMonth: TUniDataSource
    DataSet = qryFeeReceivedMonth
    Left = 513
    Top = 145
  end
  object qryFeeReceivedMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      ' select  sum(feereceipt*feeshare) as FE_Receipt '
      'from (select a.nmemo'
      
        ', sum(a.fee/* - (a.fee / ((n.fees+n.feestax)/100 + 1))*/) as Fee' +
        'Receipt'
      'from /*nmemo n, */alloc a '
      
        'where /* a.nmemo is not null and */ (nreceipt > 0 and nreceipt i' +
        's not null and ( a.fee <> 0 /*and n.fees <> 0 and n.feestax <> 0' +
        '*/ ) ) '
      '--and a.nmemo = n.nmemo '
      'and trunc(created) between :month_start_date and :month_end_date'
      'group by a.nmemo) REC,'
      
        ' (select fe.nmemo, author, fe_fee, FeesBilled, fe_fee/feesbilled' +
        ' as feeshare from '
      
        ' (select nmemo, author, sum(nvl(amount,0)) as FE_Fee from fee wh' +
        'ere nmemo is not null and author is not null group by nmemo, aut' +
        'hor) FE,'
      
        ' (select nmemo, nvl(fees,0) + nvl(feestax,0) as FeesBilled from ' +
        'nmemo '
      
        ' where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and refno' +
        ' <> '#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      ' where bills.nmemo=fe.nmemo ) fa '
      ' where REC.nmemo =FA.nmemo'
      'and author = :author'
      ''
      ''
      '/*'
      'select  sum(feereceipt*feeshare) as FE_Receipt'
      'from (select a.nmemo'
      
        ', sum(a.fee - (a.fee / ((n.fees+n.feestax)/100 + 1))) as FeeRece' +
        'ipt'
      '-- sum(fee) as FeeReceipt '
      'from nmemo n, alloc a '
      
        'where a.nmemo is not null and (nreceipt > 0 and ( a.fee <> 0 and' +
        ' n.fees <> 0 and n.feestax <> 0) ) '
      'and a.nmemo = n.nmemo '
      'and trunc(created) between :month_start_date and :month_end_date'
      'group by a.nmemo) REC,'
      
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
      'and author = :author'
      '*/')
    Left = 397
    Top = 147
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
        Name = 'author'
        Value = nil
      end>
    object qryFeeReceivedMonthFE_RECEIPT: TFloatField
      FieldName = 'FE_RECEIPT'
      currency = True
    end
  end
  object qryFeeReceivedYear: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select  sum(feereceipt*feeshare) as FE_Receipt '
      'from (select a.nmemo'
      
        ', sum(a.fee/* - (a.fee / ((n.fees+n.feestax)/100 + 1))*/) as Fee' +
        'Receipt'
      'from /*nmemo n, */alloc a '
      
        'where /* a.nmemo is not null and */ (nreceipt > 0 and nreceipt i' +
        's not null and ( a.fee <> 0 /*and n.fees <> 0 and n.feestax <> 0' +
        '*/ ) ) '
      '--and a.nmemo = n.nmemo '
      'and trunc(created) between  :year_start_date and  :year_end_date'
      'group by a.nmemo) REC,'
      
        ' (select fe.nmemo, author, fe_fee, FeesBilled, fe_fee/feesbilled' +
        ' as feeshare from '
      
        ' (select nmemo, author, sum(nvl(amount,0)) as FE_Fee from fee wh' +
        'ere nmemo is not null and author is not null group by nmemo, aut' +
        'hor) FE,'
      
        ' (select nmemo, nvl(fees,0) + nvl(feestax,0) as FeesBilled from ' +
        'nmemo '
      
        ' where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and refno' +
        ' <> '#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      ' where bills.nmemo=fe.nmemo ) fa '
      ' where REC.nmemo =FA.nmemo'
      'and author = :author'
      ''
      ''
      '/*'
      'select  sum(feereceipt*feeshare) as FE_Receipt'
      'from (select a.nmemo'
      
        ', sum(a.fee - (a.fee / ((n.fees+n.feestax)/100 + 1))) as FeeRece' +
        'ipt'
      '-- sum(fee) as FeeReceipt '
      'from nmemo n, alloc a '
      
        'where a.nmemo is not null and (nreceipt > 0 and ( a.fee <> 0 and' +
        ' n.fees <> 0 and n.feestax <> 0) ) '
      'and a.nmemo = n.nmemo '
      
        'and trunc(created) >=  :year_start_date and trunc(created) <= :y' +
        'ear_end_date'
      'group by a.nmemo) REC,'
      
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
      'and author = :author'
      '*/'
      ''
      ''
      ''
      '/*'
      'select  sum(feereceipt*feeshare) as FE_Receipt '
      'from (select a.nmemo'
      
        ', sum(a.fee - (a.fee / ((n.fees+n.feestax)/100 + 1))) as FeeRece' +
        'ipt'
      '-- sum(fee) as FeeReceipt '
      'from nmemo n, alloc a '
      
        'where a.nmemo is not null and (nreceipt > 0 and ( a.fee <> 0 and' +
        ' n.fees <> 0 and n.feestax <> 0) ) '
      'and a.nmemo = n.nmemo '
      'and trunc(created) between :year_start_date and :year_end_date'
      'group by a.nmemo) REC,'
      
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
      'and author = :author'
      '*/')
    Left = 309
    Top = 215
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
        Name = 'author'
        Value = nil
      end>
    object qryFeeReceivedYearFE_RECEIPT: TFloatField
      FieldName = 'FE_RECEIPT'
      currency = True
    end
  end
  object qryFeesBilledBudgetGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(billedfees ) Fees_budget,'
      
        '   to_char(to_date(decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39 +
        ',11,'#39'Nov'#39',12,'#39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Ju' +
        'n'#39')||'#39'-'#39'||calendar_year,'#39'Mon-yy'#39'),'#39'Mon-yy'#39') as rpt_period, perio' +
        'd'
      '  from budget'
      '  where employee = :author'
      '  and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN :year_start_date AND :year_end_date'
      '  group by month,calendar_year,period'
      '  order by 3'
      ''
      '')
    Left = 630
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
  object qryFeesBilledGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(amount) as fees, '
      ' to_char(invoicedate,'#39'Mon-YY'#39'),'
      ' get_fin_year(invoicedate),'
      
        ' DECODE(TO_CHAR(invoicedate,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1' +
        ',8,2,9,3,10,4,11,5,12,6)'
      'from fee f'
      'where author = :author'
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
      'where   not exists(select 1 from fee where author = :author '
      
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
    Left = 585
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
      'select disp_period, period, sum(fees_paid) as fees_paid  from'
      '('
      
        'select  sum(feereceipt*feeshare) as fees_paid, disp_period, Peri' +
        'od from (select a.nmemo'
      ',to_char(created,'#39'Mon-YY'#39') as disp_period'
      
        ',DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1,8,2' +
        ',9,3,10,4,11,5,12,6) as period '
      ',sum(a.fee) as FeeReceipt'
      
        '--,sum(a.fee - (a.fee / ((n.fees + n.feestax)/100 + 1))) as FeeR' +
        'eceipt'
      '-- sum(fee) as FeeReceipt '
      'from nmemo n, alloc a'
      
        'where a.nmemo is not null and (nreceipt > 0 and ( a.fee <> 0 and' +
        ' n.fees <> 0 and n.feestax <> 0)) and a.nmemo = n.nmemo and trun' +
        'c(created) '
      'between :year_start_date and :year_end_date'
      'group by a.nmemo,to_char(created,'#39'Mon-YY'#39')'
      
        ',DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1,8,2' +
        ',9,3,10,4,11,5,12,6)) REC,'
      
        ' (select fe.nmemo, author, fe_fee, FeesBilled, fe_fee/FeesBilled' +
        '*FeesBilled/billfeesinctax '
      '--  fe_fee/feesbilled '
      'as feeshare from '
      
        ' (select nmemo, author, sum(nvl(amount,0)) as FE_Fee from fee wh' +
        'ere nmemo is not null and author is not null group by nmemo, aut' +
        'hor) FE,'
      
        ' (select nmemo, nvl(fees,0) as FeesBilled, nvl(fees,0) + nvl(fee' +
        'stax,0) as billfeesinctax from nmemo '
      
        ' where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and refno' +
        ' <>'#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      ' where bills.nmemo=fe.nmemo ) fa '
      ' where REC.nmemo =FA.nmemo'
      'and author = :author '
      ' group by  Period, disp_period'
      ' union'
      'select 0, '
      
        '  to_char(to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'O' +
        'ct'#39',5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12' +
        ','#39'Jun'#39') ||'
      
        '  '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'Mon-yy'#39'),'#39'Mon-yy'#39')'
      ',fin_period'
      'from calendar '
      'where not exists(select 1 from matter m,nmemo n,alloc a'
      'where a.trust = '#39'G'#39' '
      'and a.nmemo = n.nmemo'
      'and a.nmatter = m.nmatter'
      'and m.author = :author'
      'and rv_nmemo is null'
      'and nreceipt is not null'
      'and nreceipt <> 0 '
      'and fee <> 0'
      
        'and   get_fin_year(system_date) = fin_year and fin_period = DECO' +
        'DE(TO_CHAR(system_date,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1,8,2,' +
        '9,3,10,4,11,5,12,6))'
      
        'and to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'Oct'#39',5,' +
        #39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12,'#39'Jun'#39 +
        ') ||'
      
        '  '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'Mon-yy'#39') '
      '   BETWEEN :year_start_date and :year_end_date'
      ')'
      ' GROUP BY disp_period, period'
      'order by 2')
    Left = 417
    Top = 205
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
        Name = 'author'
        Value = nil
      end>
  end
  object dsFeeReceivedYear: TUniDataSource
    DataSet = qryFeeReceivedYear
    Left = 304
    Top = 259
  end
  object qryFeesReceivedBudgetGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(receivedfees ) Fees_budget,'
      
        '   to_char(to_date(decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39 +
        ',11,'#39'Nov'#39',12,'#39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Ju' +
        'n'#39')||'#39'-'#39'||calendar_year,'#39'Mon-yy'#39'),'#39'Mon-yy'#39') as rpt_period, perio' +
        'd'
      '  from budget'
      '  where employee = :author'
      '  and TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN :year_start_date AND :year_end_date'
      '  group by month,calendar_year,period'
      '  order by 3'
      ''
      '')
    Left = 706
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
  object dsMattersClosed: TUniDataSource
    DataSet = qryMattersClosed
    Left = 684
    Top = 269
  end
  object qryMattersClosed: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mtd, ytd'
      'from ('
      'select count(nmatter) as mtd from matter '
      'where author = :author'
      'and closed = 1'
      'and trunc(completed) between :firstdate and :lastdate) a,'
      '(select count(nmatter) as ytd from matter '
      'where author = :author'
      'and closed = 1'
      
        'and trunc(completed) between :year_start_date and :year_end_date' +
        ')b')
    Left = 698
    Top = 184
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
    Left = 519
    Top = 327
  end
  object qryMattersOpened: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mtd, ytd'
      'from ('
      'select count(nmatter) as mtd from matter '
      'where author = :author'
      'and closed = 0'
      'and opened between :firstdate and :lastdate) a,'
      '(select count(nmatter) as ytd from matter '
      'where author = :author'
      'and closed = 0'
      'and opened between :year_start_date and :year_end_date)b')
    Left = 526
    Top = 280
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
      '    WHERE BUDGET.EMPLOYEE = :author '
      
        '    GROUP BY EMPLOYEE, PERIOD, NVL(financial_year,YEAR),CALENDAR' +
        '_YEAR,MONTH'
      '  ) m'
      '  WHERE '
      '    m.author = :author'
      '  AND TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      '  union'
      '  SELECT '
      '  NVL(b.wip,0) AS wipbudget, '
      '  b.MONTH, b.YEAR,'
      '  b.CAL_MONTH || '#39'-'#39' || substr(b.CAL_YEAR,3,2) AS viewdate'
      'FROM'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip, EMPLOYEE AS author, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      '      CALENDAR_YEAR   AS CAL_YEAR,'
      
        '      decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39',11,'#39'Nov'#39',12,' +
        #39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Jun'#39') AS CAL_MO' +
        'NTH'
      '    FROM BUDGET'
      '    WHERE BUDGET.EMPLOYEE = :author'
      
        '    GROUP BY EMPLOYEE, month, calendar_year, PERIOD, NVL(financi' +
        'al_year,YEAR)'
      '  ) b'
      '  WHERE '
      '    b.author = :author'
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
      '    WHERE BUDGET.EMPLOYEE = :author'
      
        '    GROUP BY EMPLOYEE, month, calendar_year, PERIOD, financial_y' +
        'ear'
      '  ) b  '
      'WHERE '
      '    b.author = :author'
      'AND TO_DATE(b.CAL_MONTH || '#39'-'#39' || b.CAL_YEAR, '#39'MM-YY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      'ORDER BY YEAR,MONTH')
    Left = 388
    Top = 301
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
  object qryWIPGeneratedGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   NVL (unbilled, 0) unbilled, NVL (a.period, b.bud_period' +
        ') period,'
      
        '         nvl(b.year, a.YEAR) as year, nvl(wipbudget,0) wipbudget' +
        ', nvl(b.viewdate, a.viewdate) as viewdate'
      
        '    FROM (SELECT NVL (b.unbilled, 0) AS unbilled, b.period, b.YE' +
        'AR,'
      
        '                 TO_CHAR (TO_DATE (cal_month || '#39'-'#39' || cal_year,' +
        ' '#39'Mon-yy'#39'),'
      '                          '#39'Mon-yy'#39
      '                         ) AS viewdate'
      '            FROM ('
      
        '                  SELECT   NVL (SUM (amount), 0) AS unbilled, au' +
        'thor,'
      
        '                           CAST (get_fin_year (fee.created) AS I' +
        'NTEGER) AS YEAR,'
      
        '                           CAST (DECODE (TO_CHAR (fee.created, '#39 +
        'MM'#39'),'
      '                                       1, 7,'
      '                                       2, 8,'
      '                                       3, 9,'
      '                                       4, 10,'
      '                                       5, 11,'
      '                                       6, 12,'
      '                                       7, 1,'
      '                                       8, 2,'
      '                                       9, 3,'
      '                                       10, 4,'
      '                                       11, 5,'
      '                                       12, 6'
      '                                      ) AS INTEGER'
      '                              ) AS period,'
      
        '                           TO_CHAR (fee.created, '#39'YY'#39') AS cal_ye' +
        'ar,'
      '                           TO_CHAR (created, '#39'Mon'#39') AS cal_month'
      '                      FROM calendar, fee'
      '                     WHERE author = :author'
      '                       AND billtype = '#39'Billable'#39
      '                       AND TYPE NOT IN ('#39'wo'#39', '#39'ia'#39')'
      '                       AND fin_period = period'
      '                       AND fin_year = YEAR'
      '                  GROUP BY author,'
      
        '                           CAST (get_fin_year (fee.created) AS I' +
        'NTEGER),'
      
        '                           CAST (DECODE (TO_CHAR (fee.created, '#39 +
        'MM'#39'),'
      '                                         1, 7,'
      '                                         2, 8,'
      '                                         3, 9,'
      '                                         4, 10,'
      '                                         5, 11,'
      '                                         6, 12,'
      '                                         7, 1,'
      '                                         8, 2,'
      '                                         9, 3,'
      '                                         10, 4,'
      '                                         11, 5,'
      '                                         12, 6'
      '                                        ) AS INTEGER'
      '                                ),'
      '                           TO_CHAR (fee.created, '#39'YY'#39'),'
      '                           TO_CHAR (created, '#39'Mon'#39')) b'
      '           WHERE b.author = :author'
      
        '             AND TRUNC (TO_DATE (b.cal_month || '#39'-'#39' || b.cal_yea' +
        'r, '#39'Mon-YY'#39'))'
      '                    BETWEEN :firstdate'
      '                        AND :lastdate'
      '          UNION'
      '          SELECT 0, fin_period, fin_year,'
      '                 TO_CHAR (TO_DATE (   DECODE (fin_period,'
      '                                              1, '#39'Jul'#39','
      '                                              2, '#39'Aug'#39','
      '                                              3, '#39'Sep'#39','
      '                                              4, '#39'Oct'#39','
      '                                              5, '#39'Nov'#39','
      '                                              6, '#39'Dec'#39','
      '                                              7, '#39'Jan'#39','
      '                                              8, '#39'Feb'#39','
      '                                              9, '#39'Mar'#39','
      '                                              10, '#39'Apr'#39','
      '                                              11, '#39'May'#39','
      '                                              12, '#39'Jun'#39
      '                                             )'
      '                                   || '#39'-'#39
      '                                   || DECODE (fin_period,'
      '                                              1, fin_year - 1,'
      '                                              2, fin_year - 1,'
      '                                              3, fin_year - 1,'
      '                                              4, fin_year - 1,'
      '                                              5, fin_year - 1,'
      '                                              6, fin_year - 1,'
      '                                              fin_year'
      '                                             ),'
      '                                   '#39'mm-yyyy'#39
      '                                  ),'
      '                          '#39'Mon-yy'#39
      '                         )'
      '            FROM calendar'
      '           WHERE NOT EXISTS ('
      '                    SELECT 1'
      '                      FROM fee'
      '                     WHERE author = :author'
      '                       AND period = fin_period'
      '                       AND YEAR = fin_year'
      '                       AND billtype = '#39'Billable'#39
      '                       AND TYPE NOT IN ('#39'ia'#39', '#39'wo'#39'))'
      '             AND TRUNC (TO_DATE (   DECODE (fin_period,'
      '                                            1, '#39'Jul'#39','
      '                                            2, '#39'Aug'#39','
      '                                            3, '#39'Sep'#39','
      '                                            4, '#39'Oct'#39','
      '                                            5, '#39'Nov'#39','
      '                                            6, '#39'Dec'#39','
      '                                            7, '#39'Jan'#39','
      '                                            8, '#39'Feb'#39','
      '                                            9, '#39'Mar'#39','
      '                                            10, '#39'Apr'#39','
      '                                            11, '#39'May'#39','
      '                                            12, '#39'Jun'#39
      '                                           )'
      '                                 || '#39'-'#39
      '                                 || DECODE (fin_period,'
      '                                            1, fin_year - 1,'
      '                                            2, fin_year - 1,'
      '                                            3, fin_year - 1,'
      '                                            4, fin_year - 1,'
      '                                            5, fin_year - 1,'
      '                                            6, fin_year - 1,'
      '                                            fin_year'
      '                                           ),'
      '                                 '#39'mm-yy'#39
      '                                )'
      '                       ) BETWEEN :firstdate AND :lastdate) a'
      '         FULL OUTER JOIN'
      
        '         (SELECT NVL (c.wip, 0) AS wipbudget, c.MONTH bud_period' +
        ', c.YEAR,'
      
        '                 c.cal_month || '#39'-'#39' || SUBSTR (c.cal_year, 3, 2)' +
        ' AS viewdate'
      
        '            FROM (SELECT   NVL (SUM (wip), 0) AS wip, employee A' +
        'S author,'
      '                           NVL (financial_year, YEAR) AS YEAR,'
      
        '                           period AS MONTH, calendar_year AS cal' +
        '_year,'
      '                           DECODE (MONTH,'
      '                                   7, '#39'Jul'#39','
      '                                   8, '#39'Aug'#39','
      '                                   9, '#39'Sep'#39','
      '                                   10, '#39'Oct'#39','
      '                                   11, '#39'Nov'#39','
      '                                   12, '#39'Dec'#39','
      '                                   1, '#39'Jan'#39','
      '                                   2, '#39'Feb'#39','
      '                                   3, '#39'Mar'#39','
      '                                   4, '#39'Apr'#39','
      '                                   5, '#39'May'#39','
      '                                   6, '#39'Jun'#39
      '                                  ) AS cal_month'
      '                      FROM budget'
      '                     WHERE budget.employee = :author'
      '                  GROUP BY employee,'
      '                           MONTH,'
      '                           calendar_year,'
      '                           period,'
      '                           NVL (financial_year, YEAR)) c'
      '           WHERE c.author = :author'
      
        '             AND TO_DATE (c.cal_month || '#39'-'#39' || c.cal_year, '#39'MM-' +
        'YY'#39')'
      '                    BETWEEN :firstdate'
      '                        AND :lastdate'
      '          UNION'
      '          SELECT NVL (b.wip, 0) AS wipbudget, b.MONTH, b.YEAR,'
      
        '                 b.cal_month || '#39'-'#39' || SUBSTR (b.cal_year, 3, 2)' +
        ' AS viewdate'
      
        '            FROM (SELECT   NVL (SUM (wip), 0) AS wip, employee A' +
        'S author,'
      
        '                           financial_year AS YEAR, period AS MON' +
        'TH,'
      '                           calendar_year AS cal_year,'
      '                           DECODE (MONTH,'
      '                                   7, '#39'Jul'#39','
      '                                   8, '#39'Aug'#39','
      '                                   9, '#39'Sep'#39','
      '                                   10, '#39'Oct'#39','
      '                                   11, '#39'Nov'#39','
      '                                   12, '#39'Dec'#39','
      '                                   1, '#39'Jan'#39','
      '                                   2, '#39'Feb'#39','
      '                                   3, '#39'Mar'#39','
      '                                   4, '#39'Apr'#39','
      '                                   5, '#39'May'#39','
      '                                   6, '#39'Jun'#39
      '                                  ) AS cal_month'
      '                      FROM budget'
      '                     WHERE budget.employee = :author'
      '                  GROUP BY employee,'
      '                           MONTH,'
      '                           calendar_year,'
      '                           period,'
      '                           financial_year) b'
      '           WHERE b.author = :author'
      
        '             AND TO_DATE (b.cal_month || '#39'-'#39' || b.cal_year, '#39'MM-' +
        'YY'#39')'
      '                    BETWEEN :firstdate'
      
        '                        AND :year_end_date) b ON (a.period = b.b' +
        'ud_period)'
      'ORDER BY 3, 2'
      ''
      ''
      '/*'
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
      '    WHERE author = :author'
      '    AND billtype = '#39'Billable'#39
      '    AND type not in ('#39'wo'#39','#39'ia'#39')'
      '    and fin_period = period'
      '    and fin_year = year'
      '    GROUP BY author, CAST(GET_FIN_YEAR(fee.created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(fee.created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,1' +
        '1,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(fee.created,'#39'YY'#39'),'
      #9'  TO_CHAR(created,'#39'Mon'#39')'
      '   ) b'
      'WHERE '
      '    b.author = :author'
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
      'where   not exists(select 1 from fee where author = :author '
      
        'and   period = fin_period and year = fin_year AND billtype = '#39'Bi' +
        'llable'#39
      '    AND type not in ('#39'ia'#39','#39'wo'#39'))'
      '    and '
      
        #9'trunc(to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'Oct'#39 +
        ',5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12,'#39'J' +
        'un'#39') ||'
      
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
      'UNION'
      'SELECT '
      '  NVL(a.unbilled,0) AS unbilled,'
      '  a.MONTH, a.YEAR,'
      '  a.cal_MONTH || '#39'-'#39' || a.cal_YEAR AS viewdate'
      'FROM'
      '   ('
      '    SELECT nvl(SUM(amount),0) AS unbilled, author, '
      '      CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS cal_year,'
      #9'  TO_CHAR(created,'#39'Mon'#39') AS cal_month'
      '    FROM FEE '
      '    WHERE author = :author '
      '    AND billtype = '#39'Billable'#39
      '    AND billed = '#39'N'#39
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'),'
      '         TO_CHAR(created,'#39'Mon'#39')'
      '  ) a  '
      'WHERE'
      '    a.author = :author'
      'AND TO_DATE(a.cal_MONTH || '#39'-'#39' || a.cal_YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      'UNION'
      'SELECT '
      '  NVL(m.unbilled,0) AS unbilled,'
      '  m.MONTH, m.YEAR, '
      '  m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR AS viewdate'
      'FROM'
      '  ('
      '    SELECT nvl(SUM(amount),0) AS unbilled, author,'
      '     CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  TO_CHAR(created,'#39'Mon'#39') AS CAL_MONTH'
      '    FROM FEE '
      '    WHERE author = :author'
      '    AND billtype = '#39'Billable'#39
      '    AND billed = '#39'N'#39
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39') ,TO_CHAR(created,'#39'Mon'#39')'
      '  ) m'
      'WHERE '
      '    m.author = :author'
      'AND TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      'ORDER BY YEAR,MONTH  */')
    Left = 190
    Top = 258
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
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object dsWIPGenerated: TUniDataSource
    DataSet = qryWIPGenerated
    Left = 27
    Top = 364
  end
  object qryWIPGenerated: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select NVL(a.month_total,0) as month_total, NVL(b.year_total,0) ' +
        'as year_total from'
      '(select nvl(sum(amount),0) as month_total from fee'
      'where author = :author'
      'and billtype = '#39'Billable'#39
      'and type not in ('#39'wo'#39','#39'ia'#39')'
      
        'and trunc(created) between :month_start_date and :month_end_date' +
        ' ) a,'
      '(select nvl(sum(amount),0) as year_total from fee'
      'where author = :author'
      'and billtype = '#39'Billable'#39
      'and type not in ('#39'wo'#39','#39'ia'#39')'
      
        'and trunc(created) between :year_start_date and :year_end_date) ' +
        'b')
    Left = 34
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
      'where f.author = :author'
      'and nvl(billed, '#39'N'#39') = '#39'N'#39
      'and nvl(billtype, '#39'Billable'#39') = '#39'Billable'#39
      'AND TYPE NOT IN ('#39'ia'#39','#39'wo'#39')')
    Left = 136
    Top = 321
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
    object qryWIPLockupMONTH_TOTAL: TFloatField
      FieldName = 'MONTH_TOTAL'
      currency = True
    end
  end
  object qryUnbilledDisbs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(sum(nvl(amount * -1,0)),0) as unbill_disb'
      'FROM alloc a, matter m'
      'WHERE a.nmatter = m.nmatter'
      '   AND m.author = :author'
      '   AND nvl(billed, '#39'N'#39') = '#39'N'#39
      '   AND nvl(TRUST, '#39'G'#39') <> '#39'T'#39
      '   AND (nvl(ncheque,0) > 0'
      '        or'
      '        (nvl(njournal,0) > 0 and a.type = '#39'J2'#39')'
      '       )')
    Left = 26
    Top = 417
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
    object qryUnbilledDisbsUNBILL_DISB: TFloatField
      FieldName = 'UNBILL_DISB'
      currency = True
    end
  end
  object dsUnbilledDisbs: TUniDataSource
    DataSet = qryUnbilledDisbs
    Left = 25
    Top = 470
  end
  object dsWIPLockup: TUniDataSource
    DataSet = qryWIPLockup
    Left = 134
    Top = 377
  end
  object qryClientMilestones: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mattertype.descr, '
      
        'trunc((sum(fee.amount)- nvl(sum(notional_cost),1))/decode(sum(fe' +
        'e.amount),0,1,sum(fee.amount)) * 100) total'
      'from mattertype, fee, matter'
      'where fee.author = :author'
      'and matter.nmatter = fee.nmatter'
      'and matter.type = mattertype.code'
      'and billtype = '#39'Billable'#39' '
      'and billed = '#39'Y'#39
      'and fee.type not in ('#39'ia'#39','#39'wo'#39')'
      '-- and trunc(invoicedate) >= (trunc(sysdate) - 365) '
      'and trunc(invoicedate) >= :datefrom '
      'group by mattertype.descr'
      'order by total desc')
    Left = 303
    Top = 379
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end>
  end
  object qryLockupGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '#39'WIP'#39' as lockup, nvl(sum(amount),0) as month_total '
      'from fee'
      'where author = :author'
      'and nvl(billed,'#39'N'#39') = '#39'N'#39
      'and nvl(billtype,'#39'Billable'#39') = '#39'Billable'#39
      'union'
      
        'SELECT '#39'Unbilled disbs'#39' as lockup, nvl(sum(nvl(amount * -1,0)),0' +
        ') as unbill_disb'
      'FROM alloc a, matter m'
      'WHERE a.nmatter = m.nmatter'
      '   AND m.author = :author'
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
      '      AND matter.author = :author'
      '      AND alloc.trust <> '#39'T'#39
      '      AND alloc.type <> '#39'DR'#39
      
        '      AND (alloc.nreceipt <> 0 OR alloc.type = '#39'J1'#39' OR alloc.typ' +
        'e = '#39'RF'#39')'
      '      UNION ALL'
      
        '      SELECT (nvl(fees,0) + nvl(disb,0) + nvl(sund,0) + nvl(antd' +
        ',0) + nvl(upcred, 0) + nvl(tax,0)) *-1 as amt'
      '      FROM nmemo, matter'
      '      WHERE nmemo.nmatter = matter.nmatter'
      '      AND matter.author = :author'
      '      AND dispatched IS NOT NULL'
      '      AND refno <> '#39'DRAFT'#39
      '      AND rv_type <> '#39'D'#39
      '   )'
      'union'
      
        'SELECT '#39'Creditors'#39' as lockup,NVL(SUM(a.amount * -1),0) as month_' +
        'total  '
      'FROM MATTER m, ALLOC a'
      'WHERE m.author = :author'
      'AND m.nmatter = a.nmatter'
      'AND a.ninvoice IS NOT NULL'
      'AND a.billed = '#39'N'#39
      'union'
      
        'SELECT '#39'Sundries'#39' as lockup, NVL(SUM(NVL(amount,0)), 0) as month' +
        '_total '
      'FROM SUNDRY s, MATTER m'
      'WHERE m.author = :author '
      'AND s.nmatter=m.nmatter '
      'AND Billed = '#39'N'#39
      ''
      ''
      ''
      '')
    Left = 41
    Top = 590
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
  end
  object qryDebtorLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT abs(nvl(sum(amt), 0)) as debtor_amount'
      '   FROM'
      '   ('
      '--      SELECT (nvl(alloc.amount, 0) + nvl(alloc.tax,0)) as amt'
      '--      FROM alloc, matter'
      '--      WHERE alloc.nmatter = matter.nmatter'
      '--      AND matter.author = :author'
      '--      AND alloc.trust <> '#39'T'#39
      '--      AND alloc.type <> '#39'DR'#39
      
        '--      AND (alloc.nreceipt <> 0 OR alloc.type = '#39'J1'#39' OR alloc.t' +
        'ype = '#39'RF'#39')'
      '--      UNION ALL'
      '      SELECT (nvl(owing,0)) * -1'
      '      as amt'
      '      FROM nmemo, matter'
      '      WHERE nmemo.nmatter = matter.nmatter'
      '      AND matter.author = :author'
      '      AND dispatched IS NOT NULL'
      '      AND refno <> '#39'DRAFT'#39
      '      AND rv_type <> '#39'D'#39
      '   )')
    Left = 131
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
    object qryDebtorLockupDEBTOR_AMOUNT: TFloatField
      FieldName = 'DEBTOR_AMOUNT'
      currency = True
    end
  end
  object dsDebtorLockup: TUniDataSource
    DataSet = qryDebtorLockup
    Left = 133
    Top = 491
  end
  object dsClientMilestones: TUniDataSource
    DataSet = qryClientMilestones
    Left = 394
    Top = 376
  end
  object qryTotalMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.matts, b.closed'
      'from ('
      'select count(nmatter) as matts '
      'from matter '
      'where author = :author'
      'and nvl(closed,0) = 0) a,'
      '(select count(nmatter) as closed '
      'from matter '
      'where author = :author'
      'and nvl(closed,0) = 1) b')
    Left = 496
    Top = 385
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
  end
  object dsTotalMatters: TUniDataSource
    DataSet = qryTotalMatters
    Left = 567
    Top = 370
  end
  object qryTopClients: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      '('
      'select phonebook.NAME, sum(amount) total'
      'from fee, matter, phonebook'
      'where fee.author = :author'
      'and fee.nmatter = matter.nmatter'
      'and fee.NCLIENT = phonebook.NCLIENT'
      'and billed = '#39'Y'#39
      
        '-- and trunc(fee.invoicedate) between (trunc(sysdate) - 365) and' +
        ' trunc(sysdate)'
      'and trunc(fee.invoicedate) between :datefrom and :dateto'
      'group by name'
      'order by total desc'
      ')'
      'where '
      'total <> 0 and'
      'rownum <= 20')
    FetchRows = 10
    Left = 651
    Top = 338
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
  object dsTopClients: TUniDataSource
    DataSet = qryTopClients
    Left = 649
    Top = 390
  end
  object dsTopReferrers: TUniDataSource
    DataSet = qryTopReferrers
    Left = 635
    Top = 539
  end
  object qryTopReferrers: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from'
      '('
      'select p2.name, sum(amount) total'
      'from fee f, matter m, phonebook p1, phonebook p2'
      'where f.author = :author'
      'and m.nmatter = f.nmatter'
      'and m.NCLIENT = p1.nclient '
      'and p2.nclient = p1.referredby_nclient'
      'and billed = '#39'Y'#39
      'and f.type not in ('#39'wo'#39', '#39'ia'#39')'
      
        '-- and f.invoicedate between (trunc(sysdate) - 365) and trunc(sy' +
        'sdate)'
      'and f.invoicedate between :datefrom and :dateto'
      'group by p2.name'
      'union'
      'select p2.name, sum(amount) total'
      'from fee, matter m, phonebook p1, phonebook p2'
      'where fee.author = :author'
      'and m.NCLIENT = p1.nclient'
      'and fee.nmatter = m.nmatter '
      'and p2.nname = p1.referredby_nname'
      'and billed = '#39'Y'#39
      'and fee.type not in ('#39'wo'#39', '#39'ia'#39')'
      
        '-- and fee.invoicedate between (trunc(sysdate) - 365) and trunc(' +
        'sysdate)'
      'and fee.invoicedate between :datefrom and :dateto'
      'group by p2.name'
      'union'
      'select e.name, sum(amount) total'
      'from fee, matter m, employee e, phonebook p1'
      'where fee.author = :author'
      'and p1.referredby_emp = e.code'
      'and fee.nmatter = m.nmatter'
      'and m.nclient = p1.nclient'
      'and billed = '#39'Y'#39
      'and fee.type not in ('#39'wo'#39', '#39'ia'#39')'
      
        '-- and fee.invoicedate between (trunc(sysdate) - 365) and trunc(' +
        'sysdate)'
      'and fee.invoicedate between :datefrom and :dateto'
      'group by e.name'
      'order by total desc'
      ')'
      'where '
      'total <> 0'
      'and rownum <= 20')
    Left = 606
    Top = 463
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
  object dsClientCountMTD: TUniDataSource
    DataSet = qryClientCountMTD
    Left = 480
    Top = 489
  end
  object dsTotalClients: TUniDataSource
    DataSet = qryTotalClients
    Left = 453
    Top = 594
  end
  object qryTotalClients: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct count(client.nclient)'
      'from client , matter'
      'where'
      'matter.author = :author'
      'and matter.nclient = client.nclient')
    Left = 457
    Top = 539
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
  end
  object qryClientCountMTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct count(client.nclient)'
      'from client , matter'
      'where'
      'matter.author = :author'
      'and matter.nclient = client.nclient'
      'and introduced between :month_start_date and :month_end_date')
    Left = 473
    Top = 441
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
    Left = 360
    Top = 502
  end
  object qryClientCountYTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select count(client.nclient)'
      'from client , matter'
      'where'
      'matter.author = :author'
      'and matter.nclient = client.nclient'
      'and introduced between :year_start_date and :year_end_date')
    Left = 360
    Top = 449
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
    object qryClientCountYTDCOUNTCLIENTNCLIENT: TFloatField
      FieldName = 'COUNT(CLIENT.NCLIENT)'
    end
  end
  object qryChargeSummary: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select 1 as id,trunc(created) created, '#39'Chargeable - '#39'||to_char(' +
        'sum(units)) units, 4 as eventtype, sum(units) as tot_units from ' +
        'fee'
      'where author = :author'
      
        'and billtype = '#39'Billable'#39' and time_type = '#39'M'#39' and type not in ('#39 +
        'ia'#39','#39'wo'#39')'
      'group by trunc(created)'
      'union'
      
        'select 2 as id,trunc(created) created, '#39'Non Chargeable - '#39'||to_c' +
        'har(sum(units)) units, 3 as eventtype, sum(units) as tot_units f' +
        'rom fee'
      'where author = :author'
      
        'and billtype = '#39'NonBillable'#39' and time_type = '#39'M'#39' and type not in' +
        ' ('#39'ia'#39','#39'wo'#39')'
      'group by trunc(created)'
      'union'
      
        'select 3 as id, trunc(created) created, '#39'Overhead - '#39'||to_char(s' +
        'um(units)) units, 2 as eventtype, sum(units) as tot_units from f' +
        'ee'
      'where author = :author'
      
        'and billtype = '#39'NonBillable'#39' and time_type = '#39'O'#39' and type not in' +
        ' ('#39'ia'#39','#39'wo'#39')'
      'group by trunc(created)'
      'union'
      
        'select 4 as id, trunc(created) created, '#39'Total - '#39'||to_char(sum(' +
        'units)) units, 1 as eventtype, sum(units) as tot_units from fee'
      'where author = :author'
      'and time_type in ('#39'M'#39','#39'O'#39') and type not in ('#39'ia'#39','#39'wo'#39')'
      'group by trunc(created)'
      'order by 2,1')
    Left = 244
    Top = 446
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
  end
  object dsChargeSummary: TUniDataSource
    DataSet = qryChargeSummary
    Left = 238
    Top = 500
  end
  object qryHours: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nvl(trunc(a.mins/60,2),0) as Billable, '
      'nvl(trunc(b.mins/60,2),0) as Nonbillable, '
      'nvl(trunc(c.mins/60,2),0) as Overhead,'
      'nvl(trunc((a.mins + b.mins + c.mins)/60,2),0) as total'
      'from'
      '(select sum(mins) as mins '
      'from fee'
      'where author = :author'
      'and billtype = '#39'Billable'#39
      'and time_type = '#39'M'#39
      'and type not in ('#39'ia'#39','#39'wo'#39')'
      
        'and trunc(created) between :month_start_date and :month_end_date' +
        ' ) a,'
      '(select sum(mins) as mins '
      'from fee'
      'where author = :author'
      'and billtype = '#39'NonBillable'#39' and time_type = '#39'M'#39
      'and type not in ('#39'ia'#39','#39'wo'#39')'
      
        'and trunc(created) between :month_start_date and :month_end_date' +
        ' ) b,'
      '(select sum(mins) as mins '
      'from fee'
      'where author = :author'
      'and billtype = '#39'NonBillable'#39' and time_type = '#39'O'#39
      'and type not in ('#39'ia'#39','#39'wo'#39')'
      
        'and trunc(created) between :month_start_date and :month_end_date' +
        ' ) c')
    Left = 228
    Top = 562
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
  object dsqryFeesBilledGraph: TUniDataSource
    DataSet = qryFeesBilledGraph
    Left = 811
    Top = 51
  end
  object dsFeesReceivedGraph: TUniDataSource
    DataSet = qryFeesReceivedGraph
    Left = 513
    Top = 226
  end
  object dsWIPGeneratedGraph: TUniDataSource
    DataSet = qryWIPGeneratedGraph
    Left = 260
    Top = 326
  end
  object qryLockupCredSund: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.cred_month_total, b.sund_month_total'
      'from'
      '(SELECT NVL(SUM(a.amount * -1),0) as cred_month_total  '
      'FROM MATTER m, ALLOC a'
      'WHERE m.author = :author'
      'AND m.nmatter = a.nmatter'
      'AND a.ninvoice IS NOT NULL'
      'AND a.billed = '#39'N'#39' ) a,'
      '(SELECT NVL(SUM(NVL(amount,0)), 0) as sund_month_total '
      'FROM SUNDRY s, MATTER m'
      'WHERE m.author = :author '
      'AND s.nmatter=m.nmatter '
      'AND Billed = '#39'N'#39') b')
    Left = 142
    Top = 562
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
    object qryLockupCredSundCRED_MONTH_TOTAL: TFloatField
      FieldName = 'CRED_MONTH_TOTAL'
      currency = True
    end
    object qryLockupCredSundSUND_MONTH_TOTAL: TFloatField
      FieldName = 'SUND_MONTH_TOTAL'
      currency = True
    end
  end
  object dsLockupCredSund: TUniDataSource
    DataSet = qryLockupCredSund
    Left = 223
    Top = 614
  end
  object qryHoursYTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select trunc(a.mins/60,2) as Billable, '
      'trunc(b.mins/60,2) as Nonbillable,'
      'trunc(c.mins/60,2) as Overhead, '
      'trunc((a.mins + b.mins + c.mins)/60,2) as total'
      'from'
      '(select sum(mins) as mins '
      'from fee'
      'where author = :author'
      'and billtype = '#39'Billable'#39
      'and time_type = '#39'M'#39
      'and type not in ('#39'ia'#39','#39'wo'#39')'
      
        'and trunc(created) between :year_start_date and :year_end_date )' +
        ' a,'
      '(select sum(mins) as mins '
      'from fee'
      'where author = :author'
      'and billtype = '#39'NonBillable'#39
      'and time_type = '#39'M'#39
      'and type not in ('#39'ia'#39','#39'wo'#39')'
      
        'and trunc(created) between :year_start_date and :year_end_date )' +
        ' b,'
      '(select sum(mins) as mins '
      'from fee'
      'where author = :author'
      'and billtype = '#39'NonBillable'#39
      'and time_type = '#39'O'#39
      'and type not in ('#39'ia'#39','#39'wo'#39')'
      
        'and trunc(created) between :year_start_date and :year_end_date )' +
        ' c')
    Left = 298
    Top = 563
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
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
  object qryFeesListBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   NVL (disp_period, budg_disp) disp_period, NVL (fees, 0)' +
        ' fees,'
      
        '         NVL (fees_budget, 0) fees_budget, NVL (a.period, b.peri' +
        'od) period,'
      '         CASE'
      '            WHEN (NVL (fees_budget, 0) > 0)'
      '               THEN ROUND ((NVL (fees, 0) / fees_budget) * 100)'
      '            ELSE 0'
      '         END AS ratio'
      
        '    FROM (SELECT   SUM (fees) AS fees, disp_period, fin_year, pe' +
        'riod'
      '              FROM (SELECT   SUM (amount) AS fees,'
      
        '                             TO_CHAR (invoicedate, '#39'Mon-YY'#39') AS ' +
        'disp_period,'
      
        '                             get_fin_year (invoicedate) AS fin_y' +
        'ear,'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ) AS period'
      '                        FROM fee f'
      '                       WHERE author = :author'
      '                         AND billed = '#39'Y'#39
      '--               AND TYPE <> '#39'wo'#39
      '                         AND billtype = '#39'Billable'#39
      
        '                         AND TRUNC (invoicedate) BETWEEN :year_s' +
        'tart_date'
      
        '                                                     AND :year_e' +
        'nd_date'
      '                    GROUP BY TO_CHAR (invoicedate, '#39'Mon-YY'#39'),'
      '                             get_fin_year (invoicedate),'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    )'
      '                    UNION'
      '                    SELECT   SUM (fee_hist.amount) AS fees,'
      
        '                             TO_CHAR (invoicedate, '#39'Mon-YY'#39') AS ' +
        'disp_period,'
      
        '                             get_fin_year (invoicedate) AS fin_y' +
        'ear,'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ) AS period'
      '                        FROM fee_hist, nmemo n, nmemo r'
      '                       WHERE TRUNC (fee_hist.invoicedate)'
      '                                BETWEEN TO_DATE (   '#39'01-'#39
      
        '                                                 || TO_CHAR (:ye' +
        'ar_end_date,'
      
        '                                                             '#39'Mo' +
        'n'#39
      '                                                            )'
      '                                                 || '#39'-'#39
      
        '                                                 || TO_CHAR (:ye' +
        'ar_end_date,'
      
        '                                                             '#39'yy' +
        'yy'#39
      '                                                            )'
      '                                                )'
      '                                    AND :year_end_date'
      '                         AND TRUNC (fee_hist.system_date) >'
      '                                TO_DATE (   '#39'01-'#39
      
        '                                         || TO_CHAR (:year_end_d' +
        'ate, '#39'Mon'#39')'
      '                                         || '#39'-'#39
      
        '                                         || TO_CHAR (:year_end_d' +
        'ate, '#39'yyyy'#39')'
      '                                        )'
      '                         AND fee_hist.billtype = '#39'Billable'#39
      '                         AND fee_hist.billed = '#39'Y'#39
      '                         AND (   (fee_hist.reversed = '#39'Y'#39')'
      '                              OR (fee_hist.deleted = '#39'Y'#39')'
      '                             )'
      '                         AND fee_hist.nmemo = n.nmemo'
      '                         AND n.rv_nmemo = r.nmemo'
      '                         AND r.rv_type = '#39'R'#39
      '                    GROUP BY TO_CHAR (invoicedate, '#39'Mon-YY'#39'),'
      '                             get_fin_year (invoicedate),'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    )'
      '                    UNION'
      '                    SELECT   SUM (fee_hist.amount * -1) AS fees,'
      
        '                             TO_CHAR (invoicedate, '#39'Mon-YY'#39') AS ' +
        'disp_period,'
      '                             get_fin_year (invoicedate),'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ) AS period'
      '                        FROM fee_hist, nmemo n, nmemo r'
      '                       WHERE TRUNC (n.dispatched)'
      '                                BETWEEN TO_DATE (   '#39'01-'#39
      
        '                                                 || TO_CHAR (:ye' +
        'ar_end_date,'
      
        '                                                             '#39'Mo' +
        'n'#39
      '                                                            )'
      '                                                 || '#39'-'#39
      
        '                                                 || TO_CHAR (:ye' +
        'ar_end_date,'
      
        '                                                             '#39'yy' +
        'yy'#39
      '                                                            )'
      '                                                )'
      '                                    AND :year_end_date'
      '                         AND fee_hist.billtype = '#39'Billable'#39
      '                         AND fee_hist.billed = '#39'Y'#39
      '                         AND (   (fee_hist.reversed = '#39'Y'#39')'
      '                              OR (fee_hist.deleted = '#39'Y'#39')'
      '                             )'
      '                         AND fee_hist.nmemo = r.nmemo'
      '                         AND n.rv_nmemo = r.nmemo'
      '                    GROUP BY TO_CHAR (invoicedate, '#39'Mon-YY'#39'),'
      '                             get_fin_year (invoicedate),'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ))'
      '          GROUP BY disp_period, fin_year, period'
      '          UNION'
      '          SELECT 0,'
      '                 TO_CHAR (TO_DATE (   DECODE (fin_period,'
      '                                              1, '#39'Jul'#39','
      '                                              2, '#39'Aug'#39','
      '                                              3, '#39'Sep'#39','
      '                                              4, '#39'Oct'#39','
      '                                              5, '#39'Nov'#39','
      '                                              6, '#39'Dec'#39','
      '                                              7, '#39'Jan'#39','
      '                                              8, '#39'Feb'#39','
      '                                              9, '#39'Mar'#39','
      '                                              10, '#39'Apr'#39','
      '                                              11, '#39'May'#39','
      '                                              12, '#39'Jun'#39
      '                                             )'
      '                                   || '#39'-'#39
      '                                   || DECODE (fin_period,'
      '                                              1, fin_year - 1,'
      '                                              2, fin_year - 1,'
      '                                              3, fin_year - 1,'
      '                                              4, fin_year - 1,'
      '                                              5, fin_year - 1,'
      '                                              6, fin_year - 1,'
      '                                              fin_year'
      '                                             ),'
      '                                   '#39'mm-yyyy'#39
      '                                  ),'
      '                          '#39'Mon-yy'#39
      '                         ),'
      '                 TO_CHAR (fin_year), fin_period'
      '            FROM calendar'
      '           WHERE NOT EXISTS ('
      '                    SELECT 1'
      '                      FROM fee'
      '                     WHERE author = :author'
      '                       AND inv_period = fin_period'
      '                       AND inv_year = fin_year'
      '                       AND billtype = '#39'Billable'#39
      '                       AND billed = '#39'Y'#39
      '--                       AND TYPE <> '#39'wo'#39
      '                       AND billtype = '#39'Billable'#39')'
      '             AND TO_DATE (   DECODE (fin_period,'
      '                                     1, '#39'Jul'#39','
      '                                     2, '#39'Aug'#39','
      '                                     3, '#39'Sep'#39','
      '                                     4, '#39'Oct'#39','
      '                                     5, '#39'Nov'#39','
      '                                     6, '#39'Dec'#39','
      '                                     7, '#39'Jan'#39','
      '                                     8, '#39'Feb'#39','
      '                                     9, '#39'Mar'#39','
      '                                     10, '#39'Apr'#39','
      '                                     11, '#39'May'#39','
      '                                     12, '#39'Jun'#39
      '                                    )'
      '                          || '#39'-'#39
      '                          || DECODE (fin_period,'
      '                                     1, fin_year - 1,'
      '                                     2, fin_year - 1,'
      '                                     3, fin_year - 1,'
      '                                     4, fin_year - 1,'
      '                                     5, fin_year - 1,'
      '                                     6, fin_year - 1,'
      '                                     fin_year'
      '                                    ),'
      '                          '#39'mm-yy'#39
      
        '                         ) BETWEEN :year_start_date AND :year_en' +
        'd_date) a'
      '         FULL OUTER JOIN'
      
        '         (SELECT   SUM (NVL (billedfees, 0)) fees_budget, period' +
        ','
      
        '                   TO_CHAR (TO_DATE (MONTH || '#39'-'#39' || calendar_ye' +
        'ar, '#39'MM-YYYY'#39'),'
      '                            '#39'Mon-YY'#39
      '                           ) AS budg_disp'
      '              FROM budget'
      '             WHERE employee = :author'
      
        '               AND TO_DATE (MONTH || '#39'-'#39' || calendar_year, '#39'MM-Y' +
        'YYY'#39')'
      '                      BETWEEN :year_start_date'
      '                          AND :year_end_date'
      
        '          GROUP BY MONTH, calendar_year, period) b ON (a.period ' +
        '= b.period)'
      'ORDER BY 4'
      ''
      ''
      '/*'
      
        'SELECT   NVL (disp_period, budg_disp) disp_period, NVL (fees, 0)' +
        ' fees,'
      
        '         NVL (fees_budget, 0) fees_budget, NVL (a.period, b.peri' +
        'od) period,'
      '         CASE'
      '            WHEN (NVL (fees_budget, 0) > 0)'
      '               THEN ROUND ((NVL (fees, 0) / fees_budget) * 100)'
      '            ELSE 0'
      '         END AS ratio'
      
        '    FROM (SELECT   SUM (fees) AS fees, disp_period, fin_year, pe' +
        'riod'
      '              FROM (SELECT   SUM (amount) AS fees,'
      
        '                             TO_CHAR (invoicedate, '#39'Mon-YY'#39') AS ' +
        'disp_period,'
      
        '                             get_fin_year (invoicedate) AS fin_y' +
        'ear,'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ) AS period'
      '                        FROM fee f'
      '                       WHERE author = :author'
      '                         AND billed = '#39'Y'#39
      '--               AND TYPE <> '#39'wo'#39
      '                         AND billtype = '#39'Billable'#39
      
        '                         AND TRUNC (invoicedate) BETWEEN :year_s' +
        'tart_date'
      
        '                                                     AND :year_e' +
        'nd_date'
      '                    GROUP BY TO_CHAR (invoicedate, '#39'Mon-YY'#39'),'
      '                             get_fin_year (invoicedate),'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    )'
      '                    UNION'
      '                    SELECT   SUM (fee_hist.amount) AS fees,'
      
        '                             TO_CHAR (invoicedate, '#39'Mon-YY'#39') AS ' +
        'disp_period,'
      
        '                             get_fin_year (invoicedate) AS fin_y' +
        'ear,'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ) AS period'
      '                        FROM fee_hist, nmemo n, nmemo r'
      '                       WHERE TRUNC (fee_hist.invoicedate)'
      '                                BETWEEN TO_DATE (   '#39'01-'#39
      
        '                                                 || TO_CHAR (:cu' +
        'rrperiodend,'
      
        '                                                             '#39'Mo' +
        'n'#39
      '                                                            )'
      '                                                 || '#39'-'#39
      
        '                                                 || TO_CHAR (:cu' +
        'rrperiodend,'
      
        '                                                             '#39'yy' +
        'yy'#39
      '                                                            )'
      '                                                )'
      '                                    AND :currperiodend'
      '                         AND TRUNC (fee_hist.system_date) >'
      '                                TO_DATE (   '#39'01-'#39
      
        '                                         || TO_CHAR (:currperiod' +
        'end, '#39'Mon'#39')'
      '                                         || '#39'-'#39
      
        '                                         || TO_CHAR (:currperiod' +
        'end, '#39'yyyy'#39')'
      '                                        )'
      '                         AND fee_hist.billtype = '#39'Billable'#39
      '                         AND fee_hist.billed = '#39'Y'#39
      '                         AND (   (fee_hist.reversed = '#39'Y'#39')'
      '                              OR (fee_hist.deleted = '#39'Y'#39')'
      '                             )'
      '                         AND fee_hist.nmemo = n.nmemo'
      '                         AND n.rv_nmemo = r.nmemo'
      '                         AND r.rv_type = '#39'R'#39
      '                    GROUP BY TO_CHAR (invoicedate, '#39'Mon-YY'#39'),'
      '                             get_fin_year (invoicedate),'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    )'
      '                    UNION'
      '                    SELECT   SUM (fee_hist.amount * -1) AS fees,'
      
        '                             TO_CHAR (invoicedate, '#39'Mon-YY'#39') AS ' +
        'disp_period,'
      '                             get_fin_year (invoicedate),'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ) AS period'
      '                        FROM fee_hist, nmemo n, nmemo r'
      '                       WHERE TRUNC (n.dispatched)'
      '                                BETWEEN TO_DATE (   '#39'01-'#39
      
        '                                                 || TO_CHAR (:cu' +
        'rrperiodend,'
      
        '                                                             '#39'Mo' +
        'n'#39
      '                                                            )'
      '                                                 || '#39'-'#39
      
        '                                                 || TO_CHAR (:cu' +
        'rrperiodend,'
      
        '                                                             '#39'yy' +
        'yy'#39
      '                                                            )'
      '                                                )'
      '                                    AND :currperiodend'
      '                         AND fee_hist.billtype = '#39'Billable'#39
      '                         AND fee_hist.billed = '#39'Y'#39
      '                         AND (   (fee_hist.reversed = '#39'Y'#39')'
      '                              OR (fee_hist.deleted = '#39'Y'#39')'
      '                             )'
      '                         AND fee_hist.nmemo = r.nmemo'
      '                         AND n.rv_nmemo = r.nmemo'
      '                    GROUP BY TO_CHAR (invoicedate, '#39'Mon-YY'#39'),'
      '                             get_fin_year (invoicedate),'
      
        '                             DECODE (TO_CHAR (invoicedate, '#39'MM'#39')' +
        ','
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ))'
      '          GROUP BY disp_period, fin_year, period'
      '          UNION'
      '          SELECT 0,'
      '                 TO_CHAR (TO_DATE (   DECODE (fin_period,'
      '                                              1, '#39'Jul'#39','
      '                                              2, '#39'Aug'#39','
      '                                              3, '#39'Sep'#39','
      '                                              4, '#39'Oct'#39','
      '                                              5, '#39'Nov'#39','
      '                                              6, '#39'Dec'#39','
      '                                              7, '#39'Jan'#39','
      '                                              8, '#39'Feb'#39','
      '                                              9, '#39'Mar'#39','
      '                                              10, '#39'Apr'#39','
      '                                              11, '#39'May'#39','
      '                                              12, '#39'Jun'#39
      '                                             )'
      '                                   || '#39'-'#39
      '                                   || DECODE (fin_period,'
      '                                              1, fin_year - 1,'
      '                                              2, fin_year - 1,'
      '                                              3, fin_year - 1,'
      '                                              4, fin_year - 1,'
      '                                              5, fin_year - 1,'
      '                                              6, fin_year - 1,'
      '                                              fin_year'
      '                                             ),'
      '                                   '#39'mm-yyyy'#39
      '                                  ),'
      '                          '#39'Mon-yy'#39
      '                         ),'
      '                 TO_CHAR (fin_year), fin_period'
      '            FROM calendar'
      '           WHERE NOT EXISTS ('
      '                    SELECT 1'
      '                      FROM fee'
      '                     WHERE author = :author'
      '                       AND inv_period = fin_period'
      '                       AND inv_year = fin_year'
      '                       AND billtype = '#39'Billable'#39
      '                       AND billed = '#39'Y'#39
      '--                       AND TYPE <> '#39'wo'#39
      '                       AND billtype = '#39'Billable'#39')'
      '             AND TO_DATE (   DECODE (fin_period,'
      '                                     1, '#39'Jul'#39','
      '                                     2, '#39'Aug'#39','
      '                                     3, '#39'Sep'#39','
      '                                     4, '#39'Oct'#39','
      '                                     5, '#39'Nov'#39','
      '                                     6, '#39'Dec'#39','
      '                                     7, '#39'Jan'#39','
      '                                     8, '#39'Feb'#39','
      '                                     9, '#39'Mar'#39','
      '                                     10, '#39'Apr'#39','
      '                                     11, '#39'May'#39','
      '                                     12, '#39'Jun'#39
      '                                    )'
      '                          || '#39'-'#39
      '                          || DECODE (fin_period,'
      '                                     1, fin_year - 1,'
      '                                     2, fin_year - 1,'
      '                                     3, fin_year - 1,'
      '                                     4, fin_year - 1,'
      '                                     5, fin_year - 1,'
      '                                     6, fin_year - 1,'
      '                                     fin_year'
      '                                    ),'
      '                          '#39'mm-yy'#39
      
        '                         ) BETWEEN :year_start_date AND :year_en' +
        'd_date) a'
      '         FULL OUTER JOIN'
      
        '         (SELECT   SUM (NVL (billedfees, 0)) fees_budget, period' +
        ','
      
        '                   TO_CHAR (TO_DATE (MONTH || '#39'-'#39' || calendar_ye' +
        'ar, '#39'MM-YYYY'#39'),'
      '                            '#39'Mon-YY'#39
      '                           ) AS budg_disp'
      '              FROM budget'
      '             WHERE employee = :author'
      
        '               AND TO_DATE (MONTH || '#39'-'#39' || calendar_year, '#39'MM-Y' +
        'YYY'#39')'
      '                      BETWEEN :year_start_date'
      '                          AND :year_end_date'
      
        '          GROUP BY MONTH, calendar_year, period) b ON (a.period ' +
        '= b.period)'
      'ORDER BY 4'
      ''
      ''
      ''
      
        'SELECT   NVL (disp_period, budg_disp) disp_period, NVL (fees, 0)' +
        ' fees,'
      
        '         NVL (fees_budget, 0) fees_budget, NVL (a.period, b.peri' +
        'od) period,'
      '         CASE'
      '            WHEN (NVL (fees_budget, 0) > 0)'
      '               THEN round((NVL (fees, 0) / fees_budget)*100)'
      '            ELSE 0'
      '         END AS ratio'
      '    FROM (SELECT   SUM (amount) AS fees,'
      
        '                   TO_CHAR (invoicedate, '#39'Mon-YY'#39') AS disp_perio' +
        'd,'
      '                   get_fin_year (invoicedate),'
      '                   DECODE (TO_CHAR (invoicedate, '#39'MM'#39'),'
      '                           1, 7,'
      '                           2, 8,'
      '                           3, 9,'
      '                           4, 10,'
      '                           5, 11,'
      '                           6, 12,'
      '                           7, 1,'
      '                           8, 2,'
      '                           9, 3,'
      '                           10, 4,'
      '                           11, 5,'
      '                           12, 6'
      '                          ) AS period'
      '              FROM fee f'
      '             WHERE author = :author'
      '               AND billed = '#39'Y'#39
      '--               AND TYPE <> '#39'wo'#39
      '               AND billtype = '#39'Billable'#39
      
        '               AND TRUNC (invoicedate) BETWEEN :year_start_date ' +
        'AND :year_end_date'
      '          GROUP BY TO_CHAR (invoicedate, '#39'Mon-YY'#39'),'
      '                   get_fin_year (invoicedate),'
      '                   DECODE (TO_CHAR (invoicedate, '#39'MM'#39'),'
      '                           1, 7,'
      '                           2, 8,'
      '                           3, 9,'
      '                           4, 10,'
      '                           5, 11,'
      '                           6, 12,'
      '                           7, 1,'
      '                           8, 2,'
      '                           9, 3,'
      '                           10, 4,'
      '                           11, 5,'
      '                           12, 6'
      '                          )'
      'UNION'
      '                    SELECT  SUM (fee_hist.amount) AS fees,'
      'TO_CHAR (invoicedate, '#39'Mon-YY'#39') AS disp_period,'
      '                   get_fin_year (invoicedate),'
      '                   DECODE (TO_CHAR (invoicedate, '#39'MM'#39'),'
      '                           1, 7,'
      '                           2, 8,'
      '                           3, 9,'
      '                           4, 10,'
      '                           5, 11,'
      '                           6, 12,'
      '                           7, 1,'
      '                           8, 2,'
      '                           9, 3,'
      '                           10, 4,'
      '                           11, 5,'
      '                           12, 6'
      '                          ) AS period'
      '                        FROM fee_hist, nmemo n, nmemo r'
      '                       WHERE TRUNC (fee_hist.invoicedate)'
      '                                BETWEEN TO_DATE (   '#39'01-'#39
      
        '                                                 || TO_CHAR (:cu' +
        'rrperiodend,'
      
        '                                                             '#39'Mo' +
        'n'#39
      '                                                            )'
      '                                                 || '#39'-'#39
      
        '                                                 || TO_CHAR (:cu' +
        'rrperiodend,'
      
        '                                                             '#39'yy' +
        'yy'#39
      '                                                            )'
      '                                                )'
      '                                    AND :currperiodend'
      '                         AND TRUNC (fee_hist.system_date) >'
      '                                TO_DATE (   '#39'01-'#39
      
        '                                         || TO_CHAR (:currperiod' +
        'end, '#39'Mon'#39')'
      '                                         || '#39'-'#39
      
        '                                         || TO_CHAR (:currperiod' +
        'end, '#39'yyyy'#39')'
      '                                        )'
      '                         AND fee_hist.billtype = '#39'Billable'#39
      '                         AND fee_hist.billed = '#39'Y'#39
      
        '                         AND ((fee_hist.reversed = '#39'Y'#39') or (fee_' +
        'hist.deleted = '#39'Y'#39'))'
      '                         AND fee_hist.nmemo = n.nmemo'
      '                         AND n.rv_nmemo = r.nmemo'
      '                         AND r.rv_type = '#39'R'#39
      '                    GROUP BY fee_hist.author'
      '                    UNION'
      '                    SELECT   fee_hist.author,'
      
        '                             SUM (fee_hist.amount * -1) AS mtdfe' +
        'es'
      '                        FROM fee_hist, nmemo n, nmemo r'
      '                       WHERE TRUNC (n.dispatched)'
      '                                BETWEEN TO_DATE (   '#39'01-'#39
      
        '                                                 || TO_CHAR (:cu' +
        'rrperiodend,'
      
        '                                                             '#39'Mo' +
        'n'#39
      '                                                            )'
      '                                                 || '#39'-'#39
      
        '                                                 || TO_CHAR (:cu' +
        'rrperiodend,'
      
        '                                                             '#39'yy' +
        'yy'#39
      '                                                            )'
      '                                                )'
      
        '                                    AND :currperiodend          ' +
        '               '
      '                         AND fee_hist.billtype = '#39'Billable'#39
      '                         AND fee_hist.billed = '#39'Y'#39
      
        '                         AND ((fee_hist.reversed = '#39'Y'#39') or (fee_' +
        'hist.deleted = '#39'Y'#39'))'
      '                         AND fee_hist.nmemo = r.nmemo'
      '                         AND n.rv_nmemo = r.nmemo'
      '                    GROUP BY fee_hist.author'
      '          UNION'
      '          SELECT 0,'
      '                 TO_CHAR (TO_DATE (   DECODE (fin_period,'
      '                                              1, '#39'Jul'#39','
      '                                              2, '#39'Aug'#39','
      '                                              3, '#39'Sep'#39','
      '                                              4, '#39'Oct'#39','
      '                                              5, '#39'Nov'#39','
      '                                              6, '#39'Dec'#39','
      '                                              7, '#39'Jan'#39','
      '                                              8, '#39'Feb'#39','
      '                                              9, '#39'Mar'#39','
      '                                              10, '#39'Apr'#39','
      '                                              11, '#39'May'#39','
      '                                              12, '#39'Jun'#39
      '                                             )'
      '                                   || '#39'-'#39
      '                                   || DECODE (fin_period,'
      '                                              1, fin_year - 1,'
      '                                              2, fin_year - 1,'
      '                                              3, fin_year - 1,'
      '                                              4, fin_year - 1,'
      '                                              5, fin_year - 1,'
      '                                              6, fin_year - 1,'
      '                                              fin_year'
      '                                             ),'
      '                                   '#39'mm-yyyy'#39
      '                                  ),'
      '                          '#39'Mon-yy'#39
      '                         ),'
      '                 TO_CHAR (fin_year), fin_period'
      '            FROM calendar'
      '           WHERE NOT EXISTS ('
      '                    SELECT 1'
      '                      FROM fee'
      '                     WHERE author = :author'
      '                       AND inv_period = fin_period'
      '                       AND inv_year = fin_year'
      '                       AND billtype = '#39'Billable'#39
      '                       AND billed = '#39'Y'#39
      '--                       AND TYPE <> '#39'wo'#39
      '                       AND billtype = '#39'Billable'#39')'
      '             AND TO_DATE (   DECODE (fin_period,'
      '                                     1, '#39'Jul'#39','
      '                                     2, '#39'Aug'#39','
      '                                     3, '#39'Sep'#39','
      '                                     4, '#39'Oct'#39','
      '                                     5, '#39'Nov'#39','
      '                                     6, '#39'Dec'#39','
      '                                     7, '#39'Jan'#39','
      '                                     8, '#39'Feb'#39','
      '                                     9, '#39'Mar'#39','
      '                                     10, '#39'Apr'#39','
      '                                     11, '#39'May'#39','
      '                                     12, '#39'Jun'#39
      '                                    )'
      '                          || '#39'-'#39
      '                          || DECODE (fin_period,'
      '                                     1, fin_year - 1,'
      '                                     2, fin_year - 1,'
      '                                     3, fin_year - 1,'
      '                                     4, fin_year - 1,'
      '                                     5, fin_year - 1,'
      '                                     6, fin_year - 1,'
      '                                     fin_year'
      '                                    ),'
      '                          '#39'mm-yy'#39
      
        '                         ) BETWEEN :year_start_date AND :year_en' +
        'd_date) a'
      '         FULL OUTER JOIN'
      
        '         (SELECT   SUM (NVL (billedfees, 0)) fees_budget, period' +
        ','
      
        '                   TO_CHAR (TO_DATE (MONTH || '#39'-'#39' || calendar_ye' +
        'ar, '#39'MM-YYYY'#39'),'
      '                            '#39'Mon-YY'#39
      '                           ) AS budg_disp'
      '              FROM budget'
      '             WHERE employee = :author'
      
        '               AND TO_DATE (MONTH || '#39'-'#39' || calendar_year, '#39'MM-Y' +
        'YYY'#39')'
      '                      BETWEEN :year_start_date'
      '                          AND :year_end_date'
      
        '          GROUP BY MONTH, calendar_year, period) b ON (a.period ' +
        '= b.period)'
      'ORDER BY 4'
      '*/')
    Left = 748
    Top = 316
    ParamData = <
      item
        DataType = ftString
        Name = 'author'
        Value = 'DBS'
      end
      item
        DataType = ftDate
        Name = 'year_start_date'
        Value = 41456d
      end
      item
        DataType = ftDate
        Name = 'year_end_date'
        Value = 41820d
      end>
  end
  object dsFeesListBudget: TUniDataSource
    DataSet = qryFeesListBudget
    Left = 768
    Top = 381
  end
  object qryFeesReceivedGrid: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   NVL (disp_period, budg_disp) disp_period, nvl(fees_paid' +
        ',0) fees_paid,nvl(fees_budget,0) fees_budget, '
      '   nvl(a.period, b.period) period'
      '   ,CASE'
      '            WHEN (NVL (fees_budget, 0) > 0)'
      
        '               THEN round((NVL (fees_paid, 0) / fees_budget) * 1' +
        '00)'
      '            ELSE 0'
      '         END AS ratio'
      
        '    FROM (SELECT   SUM (feereceipt * feeshare) AS fees_paid, dis' +
        'p_period,'
      '                   period'
      '              FROM (SELECT   a.nmemo,'
      
        '                             TO_CHAR (created, '#39'Mon-YY'#39') AS disp' +
        '_period,'
      '                             DECODE (TO_CHAR (created, '#39'MM'#39'),'
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    ) AS period,'
      '                             SUM (a.fee) AS feereceipt'
      '                    FROM     nmemo n, alloc a'
      '                       WHERE a.nmemo IS NOT NULL'
      '                         AND (    nreceipt > 0'
      '                              AND (a.fee <> 0 AND n.fees <> 0'
      '                                   AND n.feestax <> 0'
      '                                  )'
      '                             )'
      '                         AND a.nmemo = n.nmemo'
      
        '                         AND TRUNC (created) BETWEEN :year_start' +
        '_date'
      
        '                                                 AND :year_end_d' +
        'ate'
      '                    GROUP BY a.nmemo,'
      '                             TO_CHAR (created, '#39'Mon-YY'#39'),'
      '                             DECODE (TO_CHAR (created, '#39'MM'#39'),'
      '                                     1, 7,'
      '                                     2, 8,'
      '                                     3, 9,'
      '                                     4, 10,'
      '                                     5, 11,'
      '                                     6, 12,'
      '                                     7, 1,'
      '                                     8, 2,'
      '                                     9, 3,'
      '                                     10, 4,'
      '                                     11, 5,'
      '                                     12, 6'
      '                                    )) rec,'
      '                   (SELECT fe.nmemo, author, fe_fee, feesbilled,'
      '                             fe_fee'
      '                           / feesbilled'
      '                           * feesbilled'
      '                           / billfeesinctax'
      '--  fe_fee/feesbilled'
      '                           AS feeshare'
      '                      FROM (SELECT   nmemo, author,'
      
        '                                     SUM (NVL (amount, 0)) AS fe' +
        '_fee'
      '                                FROM fee'
      
        '                               WHERE nmemo IS NOT NULL AND autho' +
        'r IS NOT NULL'
      '                            GROUP BY nmemo, author) fe,'
      
        '                           (SELECT nmemo, NVL (fees, 0) AS feesb' +
        'illed,'
      '                                     NVL (fees, 0)'
      
        '                                   + NVL (feestax, 0) AS billfee' +
        'sinctax'
      '                              FROM nmemo'
      '                             WHERE refno NOT LIKE '#39'%RV%'#39
      '                               AND refno NOT LIKE '#39'%CN%'#39
      '                               AND refno <> '#39'DRAFT'#39
      '                               AND NVL (fees, 0) <> 0) bills'
      '                     WHERE bills.nmemo = fe.nmemo) fa'
      '             WHERE rec.nmemo = fa.nmemo AND author = :author'
      '          GROUP BY period, disp_period'
      '          UNION'
      '          SELECT 0,'
      '                 TO_CHAR (TO_DATE (   DECODE (fin_period,'
      '                                              1, '#39'Jul'#39','
      '                                              2, '#39'Aug'#39','
      '                                              3, '#39'Sep'#39','
      '                                              4, '#39'Oct'#39','
      '                                              5, '#39'Nov'#39','
      '                                              6, '#39'Dec'#39','
      '                                              7, '#39'Jan'#39','
      '                                              8, '#39'Feb'#39','
      '                                              9, '#39'Mar'#39','
      '                                              10, '#39'Apr'#39','
      '                                              11, '#39'May'#39','
      '                                              12, '#39'Jun'#39
      '                                             )'
      '                                   || '#39'-'#39
      '                                   || DECODE (fin_period,'
      '                                              1, fin_year - 1,'
      '                                              2, fin_year - 1,'
      '                                              3, fin_year - 1,'
      '                                              4, fin_year - 1,'
      '                                              5, fin_year - 1,'
      '                                              6, fin_year - 1,'
      '                                              fin_year'
      '                                             ),'
      '                                   '#39'Mon-yy'#39
      '                                  ),'
      '                          '#39'Mon-yy'#39
      '                         ),'
      '                 fin_period'
      '            FROM calendar'
      '           WHERE NOT EXISTS ('
      '                    SELECT 1'
      '                      FROM matter m, nmemo n, alloc a'
      '                     WHERE a.trust = '#39'G'#39
      '                       AND a.nmemo = n.nmemo'
      '                       AND a.nmatter = m.nmatter'
      '                       AND m.author = :author'
      '                       AND rv_nmemo IS NULL'
      '                       AND nreceipt IS NOT NULL'
      '                       AND nreceipt <> 0'
      '                       AND fee <> 0'
      '                       AND get_fin_year (system_date) = fin_year'
      '                       AND fin_period ='
      
        '                              DECODE (TO_CHAR (system_date, '#39'MM'#39 +
        '),'
      '                                      1, 7,'
      '                                      2, 8,'
      '                                      3, 9,'
      '                                      4, 10,'
      '                                      5, 11,'
      '                                      6, 12,'
      '                                      7, 1,'
      '                                      8, 2,'
      '                                      9, 3,'
      '                                      10, 4,'
      '                                      11, 5,'
      '                                      12, 6'
      '                                     ))'
      '             AND TO_DATE (   DECODE (fin_period,'
      '                                     1, '#39'Jul'#39','
      '                                     2, '#39'Aug'#39','
      '                                     3, '#39'Sep'#39','
      '                                     4, '#39'Oct'#39','
      '                                     5, '#39'Nov'#39','
      '                                     6, '#39'Dec'#39','
      '                                     7, '#39'Jan'#39','
      '                                     8, '#39'Feb'#39','
      '                                     9, '#39'Mar'#39','
      '                                     10, '#39'Apr'#39','
      '                                     11, '#39'May'#39','
      '                                     12, '#39'Jun'#39
      '                                    )'
      '                          || '#39'-'#39
      '                          || DECODE (fin_period,'
      '                                     1, fin_year - 1,'
      '                                     2, fin_year - 1,'
      '                                     3, fin_year - 1,'
      '                                     4, fin_year - 1,'
      '                                     5, fin_year - 1,'
      '                                     6, fin_year - 1,'
      '                                     fin_year'
      '                                    ),'
      '                          '#39'Mon-yy'#39
      
        '                         ) BETWEEN :year_start_date AND :year_en' +
        'd_date) a,'
      '         (SELECT nvl(SUM (receivedfees),0) fees_budget, period,'
      
        '                 TO_CHAR (TO_DATE (MONTH || '#39'-'#39' || calendar_year' +
        ', '#39'MM-YYYY'#39'),'
      '                            '#39'Mon-YY'#39
      '                           ) AS budg_disp'
      '              FROM budget'
      '             WHERE employee = :author'
      
        '               AND TO_DATE (MONTH || '#39'-'#39' || calendar_year, '#39'MM-Y' +
        'YYY'#39')'
      '                      BETWEEN :year_start_date'
      '                          AND :year_end_date'
      '          GROUP BY MONTH, calendar_year, period) b'
      '   WHERE a.period = b.period(+)'
      '--GROUP BY disp_period, a.period'
      'ORDER BY 4')
    Left = 754
    Top = 471
    ParamData = <
      item
        DataType = ftDate
        Name = 'year_start_date'
        Value = 41456d
      end
      item
        DataType = ftDate
        Name = 'year_end_date'
        Value = 41820d
      end
      item
        DataType = ftString
        Name = 'author'
        Value = 'DBS'
      end>
  end
  object dsFeesReceivedGrid: TUniDataSource
    DataSet = qryFeesReceivedGrid
    Left = 760
    Top = 541
  end
  object procDailyBudget: TUniStoredProc
    StoredProcName = 'get_daily_units_budget'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := get_daily_units_budget(:P_EMPLOYEE, :P_FROMDATE, :P' +
        '_TODATE);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 554
    Top = 581
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_EMPLOYEE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_FROMDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_TODATE'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'get_daily_units_budget'
  end
end
