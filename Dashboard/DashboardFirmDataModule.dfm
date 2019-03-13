object dmDashboardFirm: TdmDashboardFirm
  OldCreateOrder = False
  Height = 633
  Width = 877
  object qryAgedDebtors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  SUM(c.apaid0)+SUM(c.apaid1)+SUM(c.apaid2)+SUM(c.apaid3)+SUM(c.' +
        'apaid10) AS totalaged,'
      '  SUM(c.apaid0) AS adj0,'
      '  SUM(c.apaid1) AS adj1,'
      '  SUM(c.apaid2) AS adj2,'
      '  SUM(c.apaid3) AS adj3,'
      '  SUM(c.apaid10) AS adj10'
      'FROM ('
      '   SELECT'
      
        '      NVL(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :p1, TRUNC(SYSDATE),             n.owing)),0) AS apaid0,'
      
        '      NVL(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :p2, TRUNC(SYSDATE) - (:p1 + 1), n.owing)),0) AS apaid1,'
      
        '      NVL(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :p3, TRUNC(SYSDATE) - (:p2 + 1), n.owing)),0) AS apaid2,'
      
        '      NVL(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) -' +
        ' :p4, TRUNC(SYSDATE) - (:p3 + 1), n.owing)),0) AS apaid3,'
      
        '      NVL(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(TO_DATE('#39'0' +
        '1/01/1900'#39','#39'dd/mm/yyyy'#39')),  TRUNC(SYSDATE) - (:p4 + 1), n.owing)' +
        '),0) AS apaid10'
      '  FROM matter m, nmemo n'
      'WHERE n.fileid = m.fileid'
      'AND n.refno <> '#39'DRAFT'#39
      'AND n.rv_type <> '#39'D'#39
      'AND ((n.refno NOT LIKE '#39'%CN'#39') AND (n.refno NOT LIKE '#39'%RV'#39')) '
      'AND n.owing <> 0 '
      'AND dispatched IS NOT NULL ) c'
      ''
      ''
      '/*'
      'SELECT '
      '  ABS(sum(c.amount)) AS Amount,    '
      '  ABS(sum(c.apaid0)) AS adj0,'
      '  ABS(sum(c.apaid1)) AS adj1,'
      '  ABS(sum(c.apaid2)) AS adj2,'
      '  ABS(sum(c.apaid3)) AS adj3,'
      '  ABS(sum(c.apaid10)) AS adj10'
      '   FROM'
      '   (     '
      '      SELECT '
      
        #9'    nvl(sum(nvl((n.fees - n.fees_paid),0) + nvl((n.disb - n.dis' +
        'b_paid),0) + nvl((n.sund - n.sund_paid),0) + nvl((n.antd - n.ant' +
        'd_paid),0) + nvl((n.upcred - n.upcred_paid), 0) + nvl((n.tax - n' +
        '.tax_paid),0)),0) *-1 AS amount, '
      
        '            nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p1, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39'),             (nvl((n.fees -' +
        ' n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund -' +
        ' n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcred' +
        ' - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0) AS' +
        ' apaid0,'
      
        '            nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p2, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p1 + 1), (nvl((n.fees -' +
        ' n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund -' +
        ' n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcred' +
        ' - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0) AS' +
        ' apaid1,'
      
        '            nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p3, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p2 + 1), (nvl((n.fees -' +
        ' n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund -' +
        ' n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcred' +
        ' - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0) AS' +
        ' apaid2,'
      
        '            nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p4, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p3 + 1), (nvl((n.fees -' +
        ' n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund -' +
        ' n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcred' +
        ' - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0) AS' +
        ' apaid3,'
      
        '            nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(SY' +
        'SDATE,'#39'DD/MM/YYYY'#39'),                           TO_DATE(TO_CHAR(S' +
        'YSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p4 + 1),   (nvl((n.fees -' +
        ' n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund -' +
        ' n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcred' +
        ' - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0) AS' +
        ' apaid10   '
      '      FROM nmemo n, matter m'
      '      WHERE m.nmatter = n.nmatter'
      '      AND dispatched IS NOT NULL'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      '   ) c */')
    Left = 22
    Top = 22
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
      end
      item
        DataType = ftUnknown
        Name = 'p2'
      end
      item
        DataType = ftUnknown
        Name = 'p3'
      end
      item
        DataType = ftUnknown
        Name = 'p4'
      end>
    object qryAgedDebtorsTOTALAGED: TFloatField
      FieldName = 'TOTALAGED'
      currency = True
    end
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
  end
  object dsAgedDebtors: TUniDataSource
    DataSet = qryAgedDebtors
    Left = 91
    Top = 15
  end
  object qryAgedDebtorsMatterCnt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '--  c.amount AS Amount,    '
      '  c.apaid0 AS adj0,'
      '  c.apaid1 AS adj1,'
      '  c.apaid2 AS adj2,'
      '  c.apaid3 AS adj3,'
      '  c.apaid10 AS adj10'
      'from ('
      'select'
      
        '  count(distinct(nvl(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYS' +
        'DATE) - :p1, TRUNC(SYSDATE), n.nmatter),0))) AS apaid0, '
      
        '  count(distinct(nvl(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYS' +
        'DATE) - :p2, TRUNC(SYSDATE) - (:p1 + 1), n.nmatter),0))) AS apai' +
        'd1,'
      
        '  count(distinct(nvl(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYS' +
        'DATE) - :p3, TRUNC(SYSDATE) - (:p2 + 1), n.nmatter),0))) AS apai' +
        'd2, '
      
        '  count(distinct(nvl(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYS' +
        'DATE) - :p4, TRUNC(SYSDATE) - (:p3 + 1), n.nmatter),0))) AS apai' +
        'd3, '
      
        '  count(distinct(nvl(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(TO_' +
        'DATE('#39'01/01/1900'#39','#39'dd/mm/yyyy'#39')),TRUNC(SYSDATE) - (:p4 + 1),   n' +
        '.nmatter),0))) AS apaid10 '
      'FROM nmemo n'
      'WHERE dispatched IS NOT NULL '
      'AND n.refno <> '#39'DRAFT'#39' '
      'AND n.rv_type <> '#39'D'#39' ) c')
    Left = 200
    Top = 2
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
      end
      item
        DataType = ftUnknown
        Name = 'p2'
      end
      item
        DataType = ftUnknown
        Name = 'p3'
      end
      item
        DataType = ftUnknown
        Name = 'p4'
      end>
  end
  object qryFeesBilledMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(sum(amount),0)'
      '   FROM fee'
      '   WHERE nmemo is not null '
      
        '   and trunc(invoicedate) between :month_start_date and :month_e' +
        'nd_date'
      ''
      '/*'
      'SELECT nvl(sum(amount),0)'
      '   FROM fee f'
      '   WHERE  billed = '#39'Y'#39
      'and f.type <> '#39'wo'#39
      'and billtype = '#39'Billable'#39
      
        '   and trunc(invoicedate) between :month_start_date and :month_e' +
        'nd_date'
      '*/')
    Left = 318
    Top = 7
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
      end>
    object qryFeesBilledMonthNVLSUMAMOUNT0: TFloatField
      FieldName = 'NVL(SUM(AMOUNT),0)'
      currency = True
    end
  end
  object dsFeesBilledMonth: TUniDataSource
    DataSet = qryFeesBilledMonth
    Left = 440
    Top = 7
  end
  object qryFeesBilledYTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(sum(amount),0)'
      '   FROM fee'
      '   WHERE nmemo is not null '
      
        '   and trunc(invoicedate) between :year_start_date and :year_end' +
        '_date'
      ''
      '/*'
      'SELECT nvl(sum(amount),0)'
      '   FROM fee f'
      '   WHERE  billed = '#39'Y'#39
      'and f.type <> '#39'wo'#39
      'and billtype = '#39'Billable'#39
      
        '   and trunc(invoicedate) between :year_start_date and :year_end' +
        '_date'
      '*/')
    Left = 287
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
    object qryFeesBilledYTDNVLSUMAMOUNT0: TFloatField
      FieldName = 'NVL(SUM(AMOUNT),0)'
      currency = True
    end
  end
  object dsFeesBilledYTD: TUniDataSource
    DataSet = qryFeesBilledYTD
    Left = 357
    Top = 67
  end
  object qryWipGeneratedBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select nvl(sum(wip),0) as month_budget from budget'
      
        'where month = cast(to_char(:month_start_date,'#39'MM'#39') as integer) a' +
        'nd calendar_year = cast(to_char(:month_start_date,'#39'YYYY'#39')as inte' +
        'ger)) c,'
      '(select nvl(sum(wip),0) as year_budget from budget'
      
        'where to_date(month||'#39'-'#39'||calendar_year,'#39'MM-YYYY'#39') between :year' +
        '_start_date and :year_end_date) d')
    Left = 205
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
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
  object qryWIPFigures: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  sum(c.apaid0)+sum(c.apaid1)+sum(c.apaid2)+sum(c.apaid3)+sum(c.' +
        'apaid10) as totalwip,'
      '  sum(c.apaid0) AS adj0,'
      '  sum(c.apaid1) AS adj1,'
      '  sum(c.apaid2) AS adj2,'
      '  sum(c.apaid3) AS adj3,'
      '  sum(c.apaid10) AS adj10'
      'from ('
      '   SELECT '
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - ' +
        ':p1, TRUNC(SYSDATE),             NVL(FEE.AMOUNT,0))),0) as apaid' +
        '0,  '
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - ' +
        ':p2, TRUNC(SYSDATE) - (:p1 + 1), NVL(FEE.AMOUNT,0))),0) as apaid' +
        '1, '
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - ' +
        ':p3, TRUNC(SYSDATE) - (:p2 + 1), NVL(FEE.AMOUNT,0))),0) as apaid' +
        '2, '
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - ' +
        ':p4, TRUNC(SYSDATE) - (:p3 + 1), NVL(FEE.AMOUNT,0))),0) as apaid' +
        '3,  '
      
        '      nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(TO_DATE('#39'01' +
        '/01/1800'#39','#39'DD/MM/YYYY'#39')), TRUNC(SYSDATE) - (:p4 + 1), NVL(FEE.AM' +
        'OUNT,0))),0) as apaid10 '
      '   FROM FEE'
      '      WHERE FEE.BILLTYPE = '#39'Billable'#39' '
      '   AND FEE.BILLED = '#39'N'#39
      '   AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39') ) c'
      ''
      ''
      '/*'
      'SELECT '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TO_DATE(TO_CHAR(SYSDATE' +
        ','#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p1, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/' +
        'MM/YYYY'#39'),'#39'DD/MM/YYYY'#39'),             NVL(FEE.AMOUNT,0)+NVL(FEE.T' +
        'AX,0))),0) "0days", '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TO_DATE(TO_CHAR(SYSDATE' +
        ','#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p2, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/' +
        'MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p1 + 1), NVL(FEE.AMOUNT,0)+NVL(FEE.T' +
        'AX,0))),0) "30days", '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TO_DATE(TO_CHAR(SYSDATE' +
        ','#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p3, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/' +
        'MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p2 + 1), NVL(FEE.AMOUNT,0)+NVL(FEE.T' +
        'AX,0))),0) "60days", '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TO_DATE(TO_CHAR(SYSDATE' +
        ','#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p4, TO_DATE(TO_CHAR(SYSDATE,'#39'DD/' +
        'MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p3 + 1), NVL(FEE.AMOUNT,0)+NVL(FEE.T' +
        'AX,0))),0) "90days", '
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TO_DATE(SYSDATE,'#39'DD/MM/' +
        'YYYY'#39'),                           TO_DATE(TO_CHAR(SYSDATE,'#39'DD/MM' +
        '/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p4 + 1),   NVL(FEE.AMOUNT,0)+NVL(FEE.T' +
        'AX,0))),0) "120days" '
      'FROM MATTER, FEE'
      'WHERE MATTER.NMATTER = FEE.NMATTER'
      'AND FEE.AMOUNT > 0  '
      'AND FEE.BILLTYPE = '#39'Billable'#39' '
      'AND FEE.BILLED = '#39'N'#39
      '*/')
    Left = 35
    Top = 97
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
      end
      item
        DataType = ftUnknown
        Name = 'p2'
      end
      item
        DataType = ftUnknown
        Name = 'p3'
      end
      item
        DataType = ftUnknown
        Name = 'p4'
      end>
    object qryWIPFiguresTOTALWIP: TFloatField
      FieldName = 'TOTALWIP'
      currency = True
    end
    object qryWIPFiguresADJ0: TFloatField
      FieldName = 'ADJ0'
      currency = True
    end
    object qryWIPFiguresADJ1: TFloatField
      FieldName = 'ADJ1'
      currency = True
    end
    object qryWIPFiguresADJ2: TFloatField
      FieldName = 'ADJ2'
      currency = True
    end
    object qryWIPFiguresADJ3: TFloatField
      FieldName = 'ADJ3'
      currency = True
    end
    object qryWIPFiguresADJ10: TFloatField
      FieldName = 'ADJ10'
      currency = True
    end
  end
  object dsWIPFigures: TUniDataSource
    DataSet = qryWIPFigures
    Left = 97
    Top = 85
  end
  object qryWIPGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT 1,'#39'Current'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p1, T' +
        'RUNC(SYSDATE),             NVL(FEE.AMOUNT,0))),0) as apaid0'
      'FROM FEE'
      'WHERE NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 2,'#39'30'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p2, T' +
        'RUNC(SYSDATE) - (:p1 + 1), NVL(FEE.AMOUNT,0))),0) "30days"'
      'FROM FEE'
      'WHERE FEE.AMOUNT > 0'
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'union'
      'SELECT 3,'#39'60'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p3, T' +
        'RUNC(SYSDATE) - (:p2 + 1), NVL(FEE.AMOUNT,0))),0) "60days"'
      'FROM FEE'
      'WHERE NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 4,'#39'90'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(SYSDATE) - :p4, T' +
        'RUNC(SYSDATE) - (:p3 + 1), NVL(FEE.AMOUNT,0))),0) "90days"'
      'FROM FEE'
      'WHERE NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      'SELECT 5,'#39'120+'#39','
      
        'nvl(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED), TRUNC(TO_DATE('#39'01/01/18' +
        '00'#39','#39'DD/MM/YYYY'#39')), TRUNC(SYSDATE) - (:p4 + 1),   NVL(FEE.AMOUNT' +
        ',0))),0) "120days"   '
      'FROM FEE'
      'WHERE NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      ''
      '/*'
      'SELECT 1,'#39'Current'#39' as period_name,aged0'
      'FROM VW_UNBILLWIP'
      'union'
      'SELECT 2,'#39'30'#39' as period_name, aged30'
      'FROM VW_UNBILLWIP'
      'union'
      'SELECT 3,'#39'60'#39' as period_name, aged60'
      'FROM VW_UNBILLWIP'
      'union'
      'SELECT 4,'#39'90'#39' as period_name, aged90'
      'FROM VW_UNBILLWIP'
      'union'
      'SELECT 5,'#39'120+'#39' as period_name, aged120   '
      'FROM VW_UNBILLWIP'
      '*/')
    Left = 76
    Top = 227
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
      end
      item
        DataType = ftUnknown
        Name = 'p2'
      end
      item
        DataType = ftUnknown
        Name = 'p3'
      end
      item
        DataType = ftUnknown
        Name = 'p4'
      end>
    object qryWIPGraphDSDesigner1: TFloatField
      FieldName = '1'
    end
    object qryWIPGraphCURRENT: TStringField
      FieldName = #39'CURRENT'#39
      Size = 7
    end
    object qryWIPGraphAPAID0: TFloatField
      FieldName = 'APAID0'
    end
  end
  object qryBFeesReceivedBudgetGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(receivedfees ) Fees_budget,'
      '   LPAD(month,2,'#39'0'#39')||'#39'-'#39'||calendar_year as rpt_period, period'
      '  from budget'
      '  where TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39')'
      '  BETWEEN :year_start_date and :year_end_date '
      '  group by month,calendar_year,period'
      '  order by 3'
      ''
      '')
    Left = 509
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
  end
  object dsAgedDebtorsMatterCnt: TUniDataSource
    DataSet = qryAgedDebtorsMatterCnt
    Left = 596
    Top = 4
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
      '      WHERE n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      
        '      AND ((n.refno NOT LIKE '#39'%CN'#39') AND (n.refno NOT LIKE '#39'%RV'#39')' +
        ') '
      '      AND n.owing <> 0 '
      '      AND dispatched IS NOT NULL '
      'union all'
      'SELECT'
      '      '#39'30 Days'#39','
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSD' +
        'ATE) - :P2, TRUNC(SYSDATE) - (:P1 + 1), n.owing)),0)) AS "30 Day' +
        's"'
      '      FROM  matter m, nmemo n'
      '      WHERE n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      
        '      AND ((n.refno NOT LIKE '#39'%CN'#39') AND (n.refno NOT LIKE '#39'%RV'#39')' +
        ') '
      '      AND n.owing <> 0 '
      '      AND dispatched IS NOT NULL '#9
      'union all'
      'SELECT'
      '      '#39'60 Days'#39','
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSD' +
        'ATE) - :P3, TRUNC(SYSDATE) - (:P2 + 1), n.owing)),0)) AS "60 Day' +
        's"'
      '      FROM  matter m, nmemo n'
      '      WHERE n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      
        '      AND ((n.refno NOT LIKE '#39'%CN'#39') AND (n.refno NOT LIKE '#39'%RV'#39')' +
        ') '
      '      AND n.owing <> 0 '
      '      AND dispatched IS NOT NULL '
      'union all'
      'SELECT'
      '      '#39'90 Days'#39','
      
        #9'  abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) ' +
        '- :P4, TRUNC(SYSDATE) - (:P3 + 1), n.owing)),0)) AS "90 Days"'
      '      FROM  matter m, nmemo n'
      '      WHERE n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      
        '      AND ((n.refno NOT LIKE '#39'%CN'#39') AND (n.refno NOT LIKE '#39'%RV'#39')' +
        ') '
      '      AND n.owing <> 0 '
      '      AND dispatched IS NOT NULL '
      'union all'
      'SELECT'
      '      '#39'120+ Days'#39','
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched),TRUNC(TO_DA' +
        'TE('#39'01/01/1900'#39','#39'dd/mm/yyyy'#39')), TRUNC(SYSDATE) - (:P4 + 1),   n.' +
        'owing)),0)) AS "120 +"'
      '      FROM  matter m, nmemo n'
      '      WHERE n.nmatter = m.nmatter'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      
        '      AND ((n.refno NOT LIKE '#39'%CN'#39') AND (n.refno NOT LIKE '#39'%RV'#39')' +
        ') '
      '      AND n.owing <> 0 '
      '      AND dispatched IS NOT NULL '
      ''
      ''
      '/*'
      ' SELECT 1,'
      '       '#39'Current'#39' as per,'
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p1, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39'),             (nvl((n.fees -' +
        ' n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund -' +
        ' n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcred' +
        ' - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0)) A' +
        'S apaid0'
      '      FROM matter m, nmemo n'
      '      WHERE m.nmatter = n.nmatter'
      '      AND dispatched IS NOT NULL'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39
      '      union'
      '      SELECT 2,'
      #9'  '#39'30'#39' as per, '
      
        '          abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(' +
        'TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p2, TO_DATE(TO_CH' +
        'AR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p1 + 1), (nvl((n.fees' +
        ' - n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund' +
        ' - n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcr' +
        'ed - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0))' +
        ' AS apaid1'
      '      FROM matter m, nmemo n'
      '      WHERE m.nmatter = n.nmatter'
      '      AND dispatched IS NOT NULL'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39'      '
      '      union'
      '      SELECT 3,'
      #9#39'60'#39' as per, '
      
        '         abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(T' +
        'O_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p3, TO_DATE(TO_CHA' +
        'R(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p2 + 1), (nvl((n.fees ' +
        '- n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund ' +
        '- n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcre' +
        'd - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0)) ' +
        'AS apaid2'
      '      FROM matter m, nmemo n'
      '      WHERE m.nmatter = n.nmatter'
      '      AND dispatched IS NOT NULL'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39'      '
      '      union'
      '      SELECT 4,'
      #9#39'90'#39' as per, '
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(TO' +
        '_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - :p4, TO_DATE(TO_CHAR' +
        '(SYSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p3 + 1), (nvl((n.fees -' +
        ' n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund -' +
        ' n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcred' +
        ' - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0)) A' +
        'S apaid3'
      '      FROM matter m, nmemo n'
      '      WHERE m.nmatter = n.nmatter'
      '      AND dispatched IS NOT NULL'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39'      '
      '      union'
      '      SELECT 5,'
      #9#39'120+'#39' as per,  '
      
        '        abs(nvl(SUM(DATE_BETWEEN(TRUNC(n.dispatched), TO_DATE(SY' +
        'SDATE,'#39'DD/MM/YYYY'#39'),                           TO_DATE(TO_CHAR(S' +
        'YSDATE,'#39'DD/MM/YYYY'#39'),'#39'DD/MM/YYYY'#39') - (:p4 + 1),   (nvl((n.fees -' +
        ' n.fees_paid),0) + nvl((n.disb - n.disb_paid),0) + nvl((n.sund -' +
        ' n.sund_paid),0) + nvl((n.antd - n.antd_paid),0) + nvl((n.upcred' +
        ' - n.upcred_paid), 0) + nvl((n.tax - n.tax_paid),0)) *-1)),0)) A' +
        'S apaid10   '
      '      FROM matter m, nmemo n'
      '      WHERE m.nmatter = n.nmatter'
      '      AND dispatched IS NOT NULL'
      '      AND n.refno <> '#39'DRAFT'#39
      '      AND n.rv_type <> '#39'D'#39'  */')
    Left = 643
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
      end
      item
        DataType = ftUnknown
        Name = 'P2'
      end
      item
        DataType = ftUnknown
        Name = 'P3'
      end
      item
        DataType = ftUnknown
        Name = 'P4'
      end>
  end
  object dsFeeReceivedMonth: TUniDataSource
    DataSet = qryFeeReceivedMonth
    Left = 372
    Top = 150
  end
  object qryFeeReceivedMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT    SUM (feereceipt * feeshare) AS fe_receipt'
      '    FROM (SELECT   nmemo,'
      '                   SUM (fee) AS feereceipt'
      '              FROM alloc'
      '             WHERE nmemo IS NOT NULL'
      '               AND (nreceipt > 0)'
      
        '               AND TRUNC (created)  between :month_start_date an' +
        'd :month_end_date'
      '          GROUP BY nmemo'
      '                 ) rec,'
      '         (SELECT fe.nmemo, author, fe_fee, billfees,'
      
        '                 fe_fee / billfees * billfees / billfeesinctax A' +
        'S feeshare,'
      '                 billfeesinctax'
      
        '            FROM (SELECT   nmemo, author, SUM (NVL (amount, 0)) ' +
        'AS fe_fee'
      '                      FROM fee'
      '                     WHERE nmemo IS NOT NULL'
      '                       AND author IS NOT NULL'
      '                       AND TYPE <> '#39'wo'#39
      '                  GROUP BY nmemo, author) fe,'
      '                 (SELECT nmemo, fees AS billfees,'
      '                         fees + feestax AS billfeesinctax'
      '                    FROM nmemo'
      '                   WHERE refno NOT LIKE '#39'%RV%'#39
      '                     AND refno NOT LIKE '#39'%CN%'#39
      '                     AND refno <> '#39'DRAFT'#39
      '                     AND NVL (fees, 0) <> 0) bills'
      '           WHERE bills.nmemo = fe.nmemo) fa'
      '   WHERE rec.nmemo = fa.nmemo'
      ''
      '/*'
      'select  nvl(sum(feereceipt*feeshare),0) as FE_Receipt '
      'from (select nmemo'
      ', sum(fee) as FeeReceipt '
      'from alloc '
      'where '
      '--nmemo is not null and'
      ' nreceipt IS NOT NULL'
      ' AND nreceipt <> 0'
      ' AND fee <> 0 '
      'and trunc(created) between :month_start_date and :month_end_date'
      'group by nmemo) REC,'
      
        ' (select fe.nmemo, fe_fee, FeesBilled, fe_fee/feesbilled as fees' +
        'hare from '
      
        ' (select nmemo, sum(nvl(amount,0)) as FE_Fee from fee where nmem' +
        'o is not null and author is not null group by nmemo) FE,'
      ' (select nmemo, nvl(fees,0) as FeesBilled from nmemo '
      
        ' where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and refno' +
        ' <>'#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      ' where bills.nmemo=fe.nmemo ) fa '
      ' where REC.nmemo =FA.nmemo'
      ''
      '*/'
      ''
      '/*'
      'select nvl(sum(fees_paid ),0) Fees_paid'
      'from nmemo n,alloc a'
      'where a.trust = '#39'G'#39' '
      'and a.nmemo = n.nmemo'
      'and rv_nmemo is null'
      'and nreceipt is not null'
      
        'and trunc(system_date) between :month_start_date and :month_end_' +
        'date '
      '*/')
    Left = 285
    Top = 161
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
      end>
    object qryFeeReceivedMonthFE_RECEIPT: TFloatField
      FieldName = 'FE_RECEIPT'
      currency = True
    end
  end
  object qryFeeReceivedYear: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT    SUM (feereceipt * feeshare) AS fe_receipt'
      '    FROM (SELECT   nmemo,'
      '                   SUM (fee) AS feereceipt'
      '              FROM alloc'
      '             WHERE nmemo IS NOT NULL'
      '               AND (nreceipt > 0)'
      
        '               AND TRUNC (created)  between :year_start_date and' +
        ' :year_end_date'
      '          GROUP BY nmemo'
      '                 ) rec,'
      '         (SELECT fe.nmemo, author, fe_fee, billfees,'
      
        '                 fe_fee / billfees * billfees / billfeesinctax A' +
        'S feeshare,'
      '                 billfeesinctax'
      
        '            FROM (SELECT   nmemo, author, SUM (NVL (amount, 0)) ' +
        'AS fe_fee'
      '                      FROM fee'
      '                     WHERE nmemo IS NOT NULL'
      '                       AND author IS NOT NULL'
      '                       AND TYPE <> '#39'wo'#39
      '                  GROUP BY nmemo, author) fe,'
      '                 (SELECT nmemo, fees AS billfees,'
      '                         fees + feestax AS billfeesinctax'
      '                    FROM nmemo'
      '                   WHERE refno NOT LIKE '#39'%RV%'#39
      '                     AND refno NOT LIKE '#39'%CN%'#39
      '                     AND refno <> '#39'DRAFT'#39
      '                     AND NVL (fees, 0) <> 0) bills'
      '           WHERE bills.nmemo = fe.nmemo) fa'
      '   WHERE rec.nmemo = fa.nmemo'
      ''
      ''
      '/*'
      'select  nvl(sum(feereceipt*feeshare),0) as FE_Receipt '
      'from (select nmemo'
      ', sum(fee) as FeeReceipt '
      'from alloc '
      'where '
      '--nmemo is not null and'
      ' nreceipt IS NOT NULL'
      ' AND nreceipt <> 0'
      ' AND fee <> 0 '
      ' and trunc(created) between :year_start_date and :year_end_date'
      'group by nmemo) REC,'
      
        ' (select fe.nmemo, fe_fee, FeesBilled, fe_fee/feesbilled as fees' +
        'hare from '
      
        ' (select nmemo, sum(nvl(amount,0)) as FE_Fee from fee where nmem' +
        'o is not null and author is not null group by nmemo) FE,'
      ' (select nmemo, nvl(fees,0) as FeesBilled from nmemo '
      
        ' where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and refno' +
        ' <>'#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      ' where bills.nmemo=fe.nmemo ) fa '
      ' where REC.nmemo =FA.nmemo'
      '*/'
      ''
      '/*'
      'select nvl(sum(fees_paid ),0) Fees_paid'
      'from matter m, nmemo n,alloc a'
      'where a.trust = '#39'G'#39' '
      'and a.nmemo = n.nmemo'
      'and a.nmatter = m.nmatter'
      'and rv_nmemo is null'
      'and nreceipt is not null'
      
        'and trunc(system_date) between :year_start_date and :year_end_da' +
        'te '
      '*/')
    Left = 415
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
    object qryFeeReceivedYearFE_RECEIPT: TFloatField
      FieldName = 'FE_RECEIPT'
      currency = True
    end
  end
  object dsFeeReceivedYear: TUniDataSource
    DataSet = qryFeeReceivedYear
    Left = 510
    Top = 140
  end
  object qryEstimatedfees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.estimatedfee as mtd, b.estimatedfee as ytd'
      'from'
      '(select nvl(sum(estimatedfee),0) as estimatedfee from matter'
      'where closed = 0'
      'and opened between :firstdate and :lastdate) a,'
      '(select nvl(sum(estimatedfee),0) as estimatedfee from matter'
      'where closed = 0'
      'and opened between :year_start_date and :year_end_date)b')
    Left = 598
    Top = 126
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'firstdate'
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
    object qryEstimatedfeesMTD: TFloatField
      FieldName = 'MTD'
      currency = True
    end
    object qryEstimatedfeesYTD: TFloatField
      FieldName = 'YTD'
      currency = True
    end
  end
  object dsEstimatedfees: TUniDataSource
    DataSet = qryEstimatedfees
    Left = 623
    Top = 177
  end
  object dsTopClients: TUniDataSource
    DataSet = qryTopClients
    Left = 781
    Top = 123
  end
  object dsTopReferrers: TUniDataSource
    DataSet = qryTopReferrers
    Left = 731
    Top = 240
  end
  object qryTopReferrers: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * '
      'FROM'
      '('
      'SELECT p2.name, SUM(amount) total'
      'FROM MATTER m, PHONEBOOK p1, PHONEBOOK p2, FEE f'
      'WHERE m.nmatter = f.nmatter'
      'AND m.NCLIENT = p1.nclient '
      'AND p2.nclient = p1.referredby_nclient'
      'AND billed = '#39'Y'#39
      
        'AND f.invoicedate BETWEEN TRUNC(SYSDATE) - 365 AND TRUNC(SYSDATE' +
        ')'
      'GROUP BY p2.name'
      'UNION'
      'SELECT p2.name, SUM(amount) total'
      'FROM MATTER m, PHONEBOOK p1, PHONEBOOK p2, FEE'
      'WHERE m.NCLIENT = p1.nclient'
      'AND FEE.nmatter = m.nmatter '
      'AND p2.nname = p1.referredby_nname'
      'AND billed = '#39'Y'#39
      
        'AND FEE.invoicedate BETWEEN TRUNC(SYSDATE) - 365 AND TRUNC(SYSDA' +
        'TE)'
      'GROUP BY p2.name'
      'UNION'
      'SELECT e.name, SUM(amount) total'
      'FROM MATTER m, EMPLOYEE e, PHONEBOOK p1, FEE'
      'WHERE p1.referredby_emp = e.code'
      'AND FEE.nmatter = m.nmatter'
      'AND m.nclient = p1.nclient'
      'AND billed = '#39'Y'#39
      
        'AND FEE.invoicedate BETWEEN TRUNC(SYSDATE) - 365 AND TRUNC(SYSDA' +
        'TE)'
      'GROUP BY e.name'
      'ORDER BY total DESC'
      ')'
      'WHERE '
      'total <> 0'
      'AND ROWNUM <= 10')
    Left = 651
    Top = 234
  end
  object dsClientCountMTD: TUniDataSource
    DataSet = qryClientCountMTD
    Left = 587
    Top = 312
  end
  object qryClientCountMTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct count(client.nclient)'
      'from client'
      'where introduced between :month_start_date and :month_end_date')
    Left = 522
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
      end>
  end
  object dsClientCountYTD: TUniDataSource
    DataSet = qryClientCountYTD
    Left = 538
    Top = 223
  end
  object qryClientCountYTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct count(client.nclient)'
      'from client '
      'where introduced between :year_start_date and :year_end_date')
    Left = 447
    Top = 197
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
  end
  object dsTotalMatters: TUniDataSource
    DataSet = qryTotalMatters
    Left = 321
    Top = 298
  end
  object qryTotalMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.matts, b.closed'
      'from ('
      'select count(nmatter) as matts '
      'from matter '
      'where nvl(closed,0) = 0'
      'and opened between :firstdate and :lastdate) a,'
      '(select count(nmatter) as closed '
      'from matter '
      'where nvl(closed,0) = 1) b')
    Left = 269
    Top = 287
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'firstdate'
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
      end>
  end
  object qryGraphWIPGenerated: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  NVL(b.unbilled,0) AS unbilled, '
      '  b.PERIOD,'
      '   b.YEAR,  '
      
        '  TO_CHAR(TO_DATE(b.cal_MONTH || '#39'-'#39' || b.cal_YEAR,'#39'Mon-yy'#39'),'#39'Mo' +
        'n-yy'#39') AS viewdate'
      'FROM'
      '  ('
      '    SELECT NVL(SUM(amount),0) AS unbilled, year AS YEAR,'
      '--    CAST(GET_FIN_YEAR(trunc(FEE.created)) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(FEE.created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,1' +
        '1,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS PERIOD,'
      '      cast(to_char(fee.created,'#39'yyyy'#39') as integer) AS cal_year,'
      '      TO_CHAR(created,'#39'Mon'#39') AS cal_month'
      '    FROM FEE, CALENDAR'
      '    WHERE billtype = '#39'Billable'#39
      '    AND TYPE NOT IN ('#39'wo'#39','#39'ia'#39')'
      '    AND TIME_TYPE = '#39'M'#39
      '    AND fin_period = PERIOD'
      
        '    AND fin_year = CAST(GET_FIN_YEAR(trunc(FEE.created)) AS INTE' +
        'GER)'
      '    GROUP BY '
      '--    CAST(GET_FIN_YEAR(trunc(FEE.created)) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(FEE.created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,1' +
        '1,6,12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      '      cast(to_char(fee.created,'#39'yyyy'#39') as integer),'
      '      year,'
      '      TO_CHAR(created,'#39'Mon'#39')'
      '   ) b'
      'WHERE'
      '   TRUNC(TO_DATE(b.cal_MONTH || '#39'-'#39' || b.cal_YEAR, '#39'Mon-YY'#39'))'
      '  BETWEEN :firstdate AND :lastdate'
      'UNION'
      'SELECT 0, fin_period, fin_year, '
      
        '  TO_CHAR(TO_DATE(DECODE(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'O' +
        'ct'#39',5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12' +
        ','#39'Jun'#39') ||'
      
        '  '#39'-'#39' || DECODE(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'mm-yyyy'#39'),'#39'Mon-yy'#39') '
      'FROM CALENDAR '
      'WHERE   NOT EXISTS(SELECT 1 FROM FEE WHERE  '
      
        '    PERIOD = fin_period AND YEAR = fin_year AND billtype = '#39'Bill' +
        'able'#39
      '    AND TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      '    AND TIME_TYPE = '#39'M'#39')'
      '    AND '
      
        '    TRUNC(TO_DATE(DECODE(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'O' +
        'ct'#39',5,'#39'Nov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12' +
        ','#39'Jun'#39') ||'
      
        '  '#39'-'#39' || DECODE(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'mm-yy'#39')) '
      '   BETWEEN :firstdate AND :lastdate'
      'ORDER BY 3,2'
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
      '    WHERE billtype = '#39'Billable'#39
      '    AND billed = '#39'N'#39
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER)'
      '   ) b,'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      #9'  CALENDAR_YEAR   AS CAL_YEAR,'
      #9'  LPAD(MONTH,2,'#39'0'#39') AS CAL_MONTH'
      '    FROM BUDGET'
      
        '    GROUP BY PERIOD, NVL(financial_year,YEAR),CALENDAR_YEAR,MONT' +
        'H'
      '  ) m'
      'WHERE b.MONTH(+)    = m.MONTH'
      'AND b.YEAR(+)     = m.YEAR'
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
      '    WHERE billtype = '#39'Billable'#39
      '    AND billed = '#39'N'#39
      '    GROUP BY author, CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39'),'
      '      LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) a,'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip,'
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      '    GROUP BY PERIOD, NVL(financial_year,YEAR)'
      '  ) b'
      'WHERE'
      '    b.MONTH(+)    = a.MONTH'
      'AND b.YEAR(+)     = a.YEAR'
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
      '    SELECT nvl(SUM(amount),0) AS unbilled, '
      '     CAST(GET_FIN_YEAR(created) AS INTEGER) AS YEAR,'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER) AS MONTH,'
      #9'  TO_CHAR(created,'#39'YYYY'#39') AS CAL_YEAR,'
      #9'  LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39') AS CAL_MONTH'
      '    FROM FEE '
      '    WHERE billtype = '#39'Billable'#39
      '    AND billed = '#39'N'#39
      '    GROUP BY CAST(GET_FIN_YEAR(created) AS INTEGER),'
      
        '      CAST(DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,' +
        '12,7,1,8,2,9,3,10,4,11,5,12,6) AS INTEGER),'
      #9'  TO_CHAR(created,'#39'YYYY'#39') ,LPAD(TO_CHAR(created,'#39'MM'#39'),2,'#39'0'#39')'
      '  ) m,'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip, '
      '      financial_year AS YEAR,'
      '      PERIOD AS MONTH'
      '    FROM BUDGET'
      '    GROUP BY PERIOD, financial_year'
      '  ) b'
      'WHERE m.MONTH    = b.MONTH(+)'
      'AND m.YEAR     = b.YEAR(+)'
      'AND TO_DATE(m.MONTH || '#39'-'#39' || m.YEAR, '#39'MM-YYYY'#39') '
      
        '  BETWEEN TO_DATE(GET_FIN_YEAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39')) ||' +
        ' '#39'-'#39' || DECODE(TO_CHAR(TO_DATE(:firstdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2' +
        ',8,3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39') '
      
        '  AND     TO_DATE(GET_FIN_YEAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39')) || ' +
        #39'-'#39' || DECODE(TO_CHAR(TO_DATE(:lastdate,'#39'MM-YYYY'#39'),'#39'MM'#39'),1,7,2,8' +
        ',3,9,4,10,5,11,6,12,7,1,8,2,9,3,10,4,11,5,12,6),'#39'YYYY-MM'#39')'
      'ORDER BY YEAR,MONTH'
      '*/')
    AutoCalcFields = False
    Left = 177
    Top = 237
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'firstdate'
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
      end>
    object qryGraphWIPGeneratedUNBILLED: TFloatField
      FieldName = 'UNBILLED'
    end
    object qryGraphWIPGeneratedVIEWDATE: TStringField
      FieldName = 'VIEWDATE'
      Size = 6
    end
  end
  object dsWIPLockup: TUniDataSource
    DataSet = qryWIPLockup
    Left = 118
    Top = 293
  end
  object qryWIPLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(month_total) as total'
      'from('
      'select abs(nvl(sum(amount),0)) as month_total '
      'from fee'
      'where billed = '#39'N'#39
      'and billtype = '#39'Billable'#39
      'AND TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'and trunc(fee.created) between :start_date and :end_date'
      'union all'
      'SELECT  nvl(sum(nvl(amount * -1,0)),0) as unbill_disb'
      'FROM alloc a'
      'WHERE  nvl(billed, '#39'N'#39') = '#39'N'#39
      '   AND nvl(TRUST, '#39'G'#39') <> '#39'T'#39
      '   AND (nvl(ncheque,0) > 0'
      '        or'
      '        (nvl(njournal,0) > 0 and a.type = '#39'J2'#39')'
      '       )'
      '   AND trunc(a.created) between :start_date and :end_date'
      'union all'
      'SELECT  abs(nvl(sum(amt), 0)) as debtor_amount'
      '   FROM'
      '   ('
      '      SELECT (nvl(alloc.amount, 0) + nvl(alloc.tax,0)) as amt'
      '      FROM alloc'
      '      WHERE alloc.trust <> '#39'T'#39
      '      AND alloc.type <> '#39'DR'#39
      
        '      AND (alloc.nreceipt <> 0 OR alloc.type = '#39'J1'#39' OR alloc.typ' +
        'e = '#39'RF'#39')'
      '      AND trunc(alloc.created) between :start_date and :end_date'
      '      UNION ALL'
      
        '      SELECT (nvl(fees,0) + nvl(disb,0) + nvl(sund,0) + nvl(antd' +
        ',0) + nvl(upcred, 0) + nvl(tax,0)) *-1'
      '      as amt'
      '      FROM nmemo'
      '      WHERE dispatched IS NOT NULL'
      '      AND refno <> '#39'DRAFT'#39
      '      AND rv_type <> '#39'D'#39
      
        '      AND trunc(nmemo.generated) between :start_date and :end_da' +
        'te'
      '   )'
      ')')
    AutoCalcFields = False
    Left = 32
    Top = 290
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'start_date'
      end
      item
        DataType = ftUnknown
        Name = 'end_date'
      end>
  end
  object qryUnbilledDisbs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(sum(nvl(amount * -1,0)),0) as unbill_disb'
      'FROM alloc a, matter m'
      'WHERE a.nmatter = m.nmatter   '
      '   AND nvl(billed, '#39'N'#39') = '#39'N'#39
      '   AND nvl(TRUST, '#39'G'#39') <> '#39'T'#39
      '   AND (nvl(ncheque,0) > 0'
      '        or'
      '        (nvl(njournal,0) > 0 and a.type = '#39'J2'#39')'
      '       )'
      '   AND trunc(a.created) between :start_date and :end_date')
    Left = 34
    Top = 365
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'start_date'
      end
      item
        DataType = ftUnknown
        Name = 'end_date'
      end>
    object qryUnbilledDisbsUNBILL_DISB: TFloatField
      FieldName = 'UNBILL_DISB'
      currency = True
    end
  end
  object dsUnbilledDisbs: TUniDataSource
    DataSet = qryUnbilledDisbs
    Left = 106
    Top = 396
  end
  object qrytotal_wip: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select aged0+aged30+aged60+aged90+aged120 as total_wip from vw_u' +
        'nbillwip')
    Left = 42
    Top = 493
    object qrytotal_wipTOTAL_WIP: TFloatField
      FieldName = 'TOTAL_WIP'
      currency = True
    end
  end
  object dstotal_wip: TUniDataSource
    DataSet = qrytotal_wip
    Left = 91
    Top = 518
  end
  object qryLockupGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '#39'WIP'#39' as lockup, abs(nvl(sum(amount),0)) as month_total '
      'from fee'
      'where billed = '#39'N'#39
      'and billtype = '#39'Billable'#39
      'AND TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      'union'
      
        'SELECT '#39'Unbilled disbs'#39' as lockup, nvl(sum(nvl(amount * -1,0)),0' +
        ') as unbill_disb'
      'FROM alloc a, matter m'
      'WHERE a.nmatter = m.nmatter'
      '   AND  nvl(billed, '#39'N'#39') = '#39'N'#39
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
      '      AND  alloc.trust <> '#39'T'#39
      '      AND alloc.type <> '#39'DR'#39
      
        '      AND (alloc.nreceipt <> 0 OR alloc.type = '#39'J1'#39' OR alloc.typ' +
        'e = '#39'RF'#39')'
      '      UNION ALL'
      
        '      SELECT (nvl(fees,0) + nvl(disb,0) + nvl(sund,0) + nvl(antd' +
        ',0) + nvl(upcred, 0) + nvl(tax,0)) *-1'
      '      as amt'
      '      FROM nmemo, matter'
      '      WHERE nmemo.nmatter = matter.nmatter     '
      '      AND dispatched IS NOT NULL'
      '      AND refno <> '#39'DRAFT'#39
      '      AND rv_type <> '#39'D'#39
      '   )'
      'union'
      
        'SELECT '#39'Creditors'#39' as lockup, NVL(SUM(a.amount * -1),0) as cred_' +
        'month_total  '
      'FROM ALLOC a'
      'WHERE a.ninvoice IS NOT NULL'
      'AND a.billed = '#39'N'#39
      'union'
      
        'SELECT '#39'Sundries'#39' as lockup, NVL(SUM(NVL(amount,0)), 0) as sund_' +
        'month_total '
      'FROM SUNDRY s'
      'WHERE Billed = '#39'N'#39)
    Left = 89
    Top = 445
  end
  object qryDebtorLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(sum(amt), 0) as debtor_amount'
      '   FROM'
      '   ('
      '      SELECT (nvl(alloc.amount, 0) + nvl(alloc.tax,0)) as amt'
      '      FROM alloc, matter'
      '      WHERE alloc.nmatter = matter.nmatter     '
      '      AND alloc.trust <> '#39'T'#39
      '      AND alloc.type <> '#39'DR'#39
      
        '      AND (alloc.nreceipt <> 0 OR alloc.type = '#39'J1'#39' OR alloc.typ' +
        'e = '#39'RF'#39')'
      '      AND trunc(alloc.created) between :start_date and :end_date'
      '      UNION ALL'
      
        '      SELECT (nvl(fees,0) + nvl(disb,0) + nvl(sund,0) + nvl(antd' +
        ',0) + nvl(upcred, 0) + nvl(tax,0)) *-1'
      '      as amt'
      '      FROM nmemo, matter'
      '      WHERE nmemo.nmatter = matter.nmatter'
      '      AND dispatched IS NOT NULL'
      '      AND refno <> '#39'DRAFT'#39
      '      AND rv_type <> '#39'D'#39
      
        '      AND trunc(nmemo.generated) between :start_date and :end_da' +
        'te'
      '   )')
    Left = 159
    Top = 350
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'start_date'
      end
      item
        DataType = ftUnknown
        Name = 'end_date'
      end>
    object qryDebtorLockupDEBTOR_AMOUNT: TFloatField
      FieldName = 'DEBTOR_AMOUNT'
      currency = True
    end
  end
  object dsDebtorLockup: TUniDataSource
    DataSet = qryDebtorLockup
    Left = 223
    Top = 330
  end
  object qryProfit_Loss: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '#39'Income'#39', sum(amount) as amount'
      'from transitem t, chart c, charttype ct'
      'where t.chart = c.code'
      'and t.ACCT = c.bank'
      'and c.type = ct.CODE'
      'and ct.chart_category = '#39'I'#39
      'and trunc(t.created) between :start_date and :end_date'
      'UNION'
      'select '#39'Expense'#39', sum(amount) as amount'
      'from transitem t, chart c, charttype ct '
      'where chart = c.code'
      'and ACCT = c.bank'
      'and c.type = ct.CODE'
      'and chart_category = '#39'E'#39
      'and trunc(t.created) between :start_date and :end_date')
    Left = 258
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'start_date'
      end
      item
        DataType = ftUnknown
        Name = 'end_date'
      end>
  end
  object dsProfit_Loss: TUniDataSource
    DataSet = qryProfit_Loss
    Left = 208
    Top = 511
  end
  object qryChargeSummary: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select 1 as id,trunc(created) created, '#39'Chargeable - '#39'||to_char(' +
        'sum(units)) units, 3 as eventtype from fee'
      'where billtype = '#39'Billable'#39' and time_type = '#39'M'#39
      'group by trunc(created)'
      'union'
      
        'select 2 as id, trunc(created) created, '#39'Non Chargeable - '#39'||to_' +
        'char(sum(units)) units, 2 as eventtype from fee'
      'where billtype = '#39'Billable'#39' and time_type = '#39'O'#39
      'group by trunc(created)'
      'union'
      
        'select 3 as id, trunc(created) created, '#39'Total - '#39'||to_char(sum(' +
        'units)) units, 1 as eventtype from fee'
      'where billtype = '#39'Billable'#39' and time_type in ('#39'M'#39','#39'O'#39')'
      'group by trunc(created)'
      'order by 2,1')
    Left = 379
    Top = 438
  end
  object dsChargeSummary: TUniDataSource
    DataSet = qryChargeSummary
    Left = 483
    Top = 437
  end
  object qryFirmCreditors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(SUM(owing ),0)'
      '   FROM  invoice')
    Left = 511
    Top = 492
    object qryFirmCreditorsNVLSUMOWING0: TFloatField
      FieldName = 'NVL(SUM(OWING),0)'
      currency = True
    end
  end
  object dsFirmCreditors: TUniDataSource
    DataSet = qryFirmCreditors
    Left = 572
    Top = 511
  end
  object qryTrustCashFlow: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select receipt_amount - cheque_amount as trust'
      'from '
      
        ' (select sum(amount) as receipt_amount from receipt where trust ' +
        '= '#39'T'#39'),'
      
        ' (select sum(amount) as cheque_amount from cheque where trust = ' +
        #39'T'#39')')
    Left = 731
    Top = 443
  end
  object dsMatterProfitability: TUniDataSource
    DataSet = qryMatterProfitability
    Left = 799
    Top = 372
  end
  object qryMatterProfitability: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mattertype.descr, '
      'sum(fee.amount)- nvl(sum(notional_cost),0) total'
      'from mattertype, fee, matter'
      'where matter.nmatter = fee.nmatter'
      'and matter.type = mattertype.code'
      'and billtype = '#39'Billable'#39' '
      'and billed = '#39'Y'#39
      'and trunc(invoicedate) >= (trunc(sysdate) - 365) '
      'group by mattertype.descr'
      'order by total desc')
    Left = 696
    Top = 368
  end
  object qryPercMatterProfitabilityPercent: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mattertype.descr, '
      
        'trunc((sum(fee.amount)- nvl(sum(notional_cost),1))/decode(sum(fe' +
        'e.amount),0,1,sum(fee.amount)) * 100) total'
      'from mattertype, fee, matter'
      'where matter.nmatter = fee.nmatter'
      'and matter.type = mattertype.code'
      'and billtype = '#39'Billable'#39' '
      'and billed = '#39'Y'#39
      'and trunc(invoicedate) >= (trunc(sysdate) - 365) '
      'group by mattertype.descr'
      'order by total desc')
    Left = 738
    Top = 309
  end
  object qryCashflow: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(a.acct_type,b.acct_type) acct_type, nvl(a.trust,b.tru' +
        'st) trust, (receipt + cheque) total '
      'from'
      '('
      
        'select sum(amount) * -1 cheque,  cheque.trust, cheque.acct, acct' +
        '_type '
      'from cheque, bank'
      'where cheque.acct = bank.ACCT'
      'group by cheque.acct, cheque.trust, acct_type) a,'
      '('
      
        'select sum(amount) receipt, receipt.trust, receipt.acct, acct_ty' +
        'pe '
      'from receipt, bank'
      'where receipt.acct = bank.ACCT'
      'group by receipt.acct, receipt.trust, acct_type'
      ') b'
      'where'
      'a.trust = b.trust'
      'and'
      'a.acct = b.acct'
      ''
      ''
      '/*'
      
        'select b.acct_type, t.acct as entity,b.acct as bank, sum(amount)' +
        ' * -1 as total '
      'from transitem t, bank b, CHART C'
      'where t.ACCT = b.entity'
      'and t.acct = c.bank'
      'AND C.CODE = t.chart'
      'and c.charttype = '#39'BANK'#39
      'group by b.acct_type, b.acct, t.acct'
      '*/')
    Left = 651
    Top = 290
  end
  object qryTopClients: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      '('
      'select phonebook.NAME, sum(amount) total'
      'from fee, matter, phonebook'
      'where fee.nmatter = matter.nmatter'
      'and fee.NCLIENT = phonebook.NCLIENT'
      'and billed = '#39'Y'#39
      
        'and trunc(fee.invoicedate) between trunc(sysdate) - 365 and trun' +
        'c(sysdate)'
      'group by name'
      'order by total desc'
      ')'
      'where '
      'total <> 0 and'
      'rownum <= 10')
    Left = 699
    Top = 121
  end
  object qryWIPGenerated: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select a.month_total, b.year_total from'
      '(select nvl(sum(amount),0) as month_total from fee'
      'where billtype = '#39'Billable'#39
      '    AND TYPE NOT IN ('#39'wo'#39','#39'ia'#39')'
      '    AND TIME_TYPE = '#39'M'#39
      
        'and trunc(created) between :month_start_date and :month_end_date' +
        ' ) a,'
      '(select nvl(sum(amount),0) as year_total from fee'
      'where billtype = '#39'Billable'#39
      '    AND TYPE NOT IN ('#39'wo'#39','#39'ia'#39')'
      '    AND TIME_TYPE = '#39'M'#39
      
        'and trunc(created) between :year_start_date and :year_end_date) ' +
        'b'
      ''
      '')
    Left = 34
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
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
  object dsWIPGenerated: TUniDataSource
    DataSet = qryWIPGenerated
    Left = 119
    Top = 169
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
      '    SELECT nvl(SUM(wip),0) AS wip, '
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      '      CALENDAR_YEAR   AS CAL_YEAR,'
      
        '      decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39',11,'#39'Nov'#39',12,' +
        #39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Jun'#39') AS CAL_MO' +
        'NTH'
      '    FROM BUDGET'
      
        '    GROUP BY PERIOD, NVL(financial_year,YEAR),CALENDAR_YEAR,MONT' +
        'H'
      '  ) m'
      '  WHERE  TO_DATE(m.CAL_MONTH || '#39'-'#39' || m.CAL_YEAR, '#39'MM-YY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      'ORDER BY YEAR,MONTH'
      ''
      ''
      ''
      '/*'
      '  union'
      '  SELECT '
      '  NVL(b.wip,0) AS wipbudget, '
      '  b.MONTH, b.YEAR,'
      '  b.CAL_MONTH || '#39'-'#39' || substr(b.CAL_YEAR,3,2) AS viewdate'
      'FROM'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip,'
      '      NVL(financial_year,YEAR) AS YEAR,'
      '      PERIOD AS MONTH,'
      '      CALENDAR_YEAR   AS CAL_YEAR,'
      
        '      decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39',11,'#39'Nov'#39',12,' +
        #39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Jun'#39') AS CAL_MO' +
        'NTH'
      '    FROM BUDGET    '
      
        '    GROUP BY department, month, calendar_year, PERIOD, NVL(finan' +
        'cial_year,YEAR)'
      '  ) b'
      '  WHERE TO_DATE(b.CAL_MONTH || '#39'-'#39' || b.CAL_YEAR, '#39'MM-YY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      '  union'
      '  SELECT '
      '  NVL(b.wip,0) AS wipbudget, '
      '  b.MONTH, b.YEAR, '
      '  b.CAL_MONTH || '#39'-'#39' || substr(b.CAL_YEAR,3,2) AS viewdate'
      'FROM'
      '  ('
      '    SELECT nvl(SUM(wip),0) AS wip, department as dept,'
      '      financial_year AS YEAR,'
      '      PERIOD AS MONTH,'
      '      CALENDAR_YEAR   AS CAL_YEAR,'
      
        '      decode(MONTH,7,'#39'Jul'#39',8,'#39'Aug'#39',9,'#39'Sep'#39',10,'#39'Oct'#39',11,'#39'Nov'#39',12,' +
        #39'Dec'#39',1,'#39'Jan'#39',2,'#39'Feb'#39',3,'#39'Mar'#39',4,'#39'Apr'#39',5,'#39'May'#39',6,'#39'Jun'#39') AS CAL_MO' +
        'NTH'
      '    FROM BUDGET'
      
        '    GROUP BY department, month, calendar_year, PERIOD, financial' +
        '_year'
      '  ) b  '
      'WHERE '
      '    TO_DATE(b.CAL_MONTH || '#39'-'#39' || b.CAL_YEAR, '#39'MM-YY'#39') '
      '  BETWEEN :firstdate AND :lastdate'
      'ORDER BY YEAR,MONTH'
      '*/')
    Left = 197
    Top = 186
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'firstdate'
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
      end>
  end
  object qryClientMilestones: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mattertype.descr, '
      '  case'
      '      when max(notional_cost) is null then 0'
      '      when max(notional_cost) = 0 then 0'
      '      else trunc(sum(notional_cost)/sum(fee.amount) * 100)'
      '  end as total'
      'from mattertype, fee, matter'
      'where matter.nmatter = fee.nmatter'
      'and matter.type = mattertype.code'
      'group by mattertype.descr'
      'order by total desc'
      '')
    Left = 312
    Top = 216
  end
  object dsClientMilestones: TUniDataSource
    DataSet = qryClientMilestones
    Left = 382
    Top = 254
  end
  object qryMattersOpened: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mtd, ytd'
      'from ('
      'select count(nmatter) as mtd from matter'
      'where trunc(opened) between :firstdate and :lastdate) a,'
      '(select count(nmatter) as ytd from matter'
      
        'where trunc(opened) between :year_start_date and :year_end_date)' +
        'b')
    Left = 289
    Top = 356
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'firstdate'
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
    object qryMattersOpenedMTD: TFloatField
      FieldName = 'MTD'
    end
    object qryMattersOpenedYTD: TFloatField
      FieldName = 'YTD'
    end
  end
  object dsMattersOpened: TUniDataSource
    DataSet = qryMattersOpened
    Left = 354
    Top = 378
  end
  object qryClientTotalAmountMTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nvl(sum(estimatedfee),0)'
      'from matter m'
      'where exists (select 1 from client c'
      '          where c.nclient = m.nclient'
      
        '          and nvl(introduced, created) between :month_start_date' +
        ' and :month_end_date)'
      '')
    Left = 405
    Top = 310
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
      end>
    object qryClientTotalAmountMTDNVLSUMESTIMATEDFEE0: TFloatField
      FieldName = 'NVL(SUM(ESTIMATEDFEE),0)'
      currency = True
    end
  end
  object dsClientTotalAmountMTD: TUniDataSource
    DataSet = qryClientTotalAmountMTD
    Left = 494
    Top = 327
  end
  object qryClientTotalAmountYTD: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nvl(sum(estimatedfee),0)'
      'from matter m'
      'where exists (select 1 from client c'
      '          where c.nclient = m.nclient'
      
        '          and nvl(introduced, created) between :year_start_date ' +
        'and :year_end_date )'
      ''
      '')
    Left = 487
    Top = 377
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
    object qryClientTotalAmountYTDNVLSUMESTIMATEDFEE0: TFloatField
      FieldName = 'NVL(SUM(ESTIMATEDFEE),0)'
      currency = True
    end
  end
  object dsClientTotalAmountYTD: TUniDataSource
    DataSet = qryClientTotalAmountYTD
    Left = 591
    Top = 394
  end
  object qryFeesReceivedGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT    fin_year, mnth, period,  disp_period,'
      '         SUM (feereceipt * feeshare) AS fees_paid'
      
        '    FROM (SELECT   nmemo, to_char(created,'#39'Mon-YY'#39') as disp_peri' +
        'od,'
      
        '                   (DECODE (CAST (TO_CHAR (created, '#39'mm'#39') AS INT' +
        'EGER),'
      
        '                            7, CAST (TO_CHAR (created, '#39'yyyy'#39') A' +
        'S INTEGER) + 1,'
      
        '                            8, CAST (TO_CHAR (created, '#39'yyyy'#39') A' +
        'S INTEGER) + 1,'
      
        '                            9, CAST (TO_CHAR (created, '#39'yyyy'#39') A' +
        'S INTEGER) + 1,'
      
        '                            10, CAST (TO_CHAR (created, '#39'yyyy'#39') ' +
        'AS INTEGER)'
      '                             + 1,'
      
        '                            11, CAST (TO_CHAR (created, '#39'yyyy'#39') ' +
        'AS INTEGER)'
      '                             + 1,'
      
        '                            12, CAST (TO_CHAR (created, '#39'yyyy'#39') ' +
        'AS INTEGER)'
      '                             + 1,'
      
        '                            CAST (TO_CHAR (created, '#39'yyyy'#39') AS I' +
        'NTEGER)'
      '                           )'
      '                   ) AS fin_year,'
      
        '                   (DECODE (CAST (TO_CHAR (created, '#39'mm'#39') AS INT' +
        'EGER),'
      '                            7, 1,'
      '                            8, 2,'
      '                            9, 3,'
      '                            10, 4,'
      '                            11, 5,'
      '                            12, 6,'
      '                            1, 7,'
      '                            2, 8,'
      '                            3, 9,'
      '                            4, 10,'
      '                            5, 11,'
      '                            6, 12'
      '                           )'
      '                   ) AS period,'
      
        '                   ((CAST (TO_CHAR (created, '#39'mm'#39') AS INTEGER)))' +
        ' AS mnth,'
      '                   SUM (fee) AS feereceipt'
      '              FROM alloc'
      '             WHERE nmemo IS NOT NULL'
      '               AND (nreceipt > 0)'
      
        '               AND TRUNC (created) BETWEEN :year_start_date and ' +
        ':year_end_date'
      '          GROUP BY nmemo, to_char(created,'#39'Mon-YY'#39') ,'
      
        '                   (DECODE (CAST (TO_CHAR (created, '#39'mm'#39') AS INT' +
        'EGER),'
      '                            7, 1,'
      '                            8, 2,'
      '                            9, 3,'
      '                            10, 4,'
      '                            11, 5,'
      '                            12, 6,'
      '                            1, 7,'
      '                            2, 8,'
      '                            3, 9,'
      '                            4, 10,'
      '                            5, 11,'
      '                            6, 12'
      '                           )'
      '                   ),'
      
        '                   DECODE (CAST (TO_CHAR (created, '#39'mm'#39') AS INTE' +
        'GER),'
      
        '                           7, CAST (TO_CHAR (created, '#39'yyyy'#39') AS' +
        ' INTEGER) + 1,'
      
        '                           8, CAST (TO_CHAR (created, '#39'yyyy'#39') AS' +
        ' INTEGER) + 1,'
      
        '                           9, CAST (TO_CHAR (created, '#39'yyyy'#39') AS' +
        ' INTEGER) + 1,'
      
        '                           10, CAST (TO_CHAR (created, '#39'yyyy'#39') A' +
        'S INTEGER) + 1,'
      
        '                           11, CAST (TO_CHAR (created, '#39'yyyy'#39') A' +
        'S INTEGER) + 1,'
      
        '                           12, CAST (TO_CHAR (created, '#39'yyyy'#39') A' +
        'S INTEGER) + 1,'
      
        '                           CAST (TO_CHAR (created, '#39'yyyy'#39') AS IN' +
        'TEGER)'
      '                          ),'
      
        '                   ((CAST (TO_CHAR (created, '#39'mm'#39') AS INTEGER)))' +
        ') rec,'
      '         (SELECT fe.nmemo,  fe_fee, billfees,'
      
        '                 fe_fee / billfees * billfees / billfeesinctax A' +
        'S feeshare,'
      '                 billfeesinctax'
      
        '            FROM (SELECT   nmemo,  SUM (NVL (amount, 0)) AS fe_f' +
        'ee'
      '                      FROM fee'
      '                     WHERE nmemo IS NOT NULL'
      '                       AND author IS NOT NULL'
      '                       AND TYPE <> '#39'wo'#39
      '                  GROUP BY nmemo) fe,'
      '                 (SELECT nmemo, fees AS billfees,'
      '                         fees + feestax AS billfeesinctax'
      '                    FROM nmemo'
      '                   WHERE refno NOT LIKE '#39'%RV%'#39
      '                     AND refno NOT LIKE '#39'%CN%'#39
      '                     AND refno <> '#39'DRAFT'#39
      '                     AND NVL (fees, 0) <> 0) bills'
      '           WHERE bills.nmemo = fe.nmemo) fa'
      '   WHERE rec.nmemo = fa.nmemo'
      'GROUP BY  mnth, period, fin_year, disp_period'
      'order by period'
      ''
      '/*'
      
        'select  sum(feereceipt*feeshare) as fees_paid, disp_period, Peri' +
        'od from (select nmemo'
      ',to_char(created,'#39'Mon-YY'#39') as disp_period'
      
        ',DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1,8,2' +
        ',9,3,10,4,11,5,12,6) as period '
      ', sum(fee) as FeeReceipt '
      'from alloc '
      'where nmemo is not null and (nreceipt > 0 ) and trunc(created) '
      'between :year_start_date and :year_end_date'
      'group by nmemo,to_char(created,'#39'Mon-YY'#39')'
      
        ',DECODE(TO_CHAR(created,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1,8,2' +
        ',9,3,10,4,11,5,12,6)) REC,'
      
        ' (select fe.nmemo, fe_fee, FeesBilled, fe_fee/feesbilled as fees' +
        'hare from '
      
        ' (select nmemo, sum(nvl(amount,0)) as FE_Fee from fee where nmem' +
        'o is not null and author is not null group by nmemo) FE,'
      ' (select nmemo, nvl(fees,0) as FeesBilled from nmemo '
      
        ' where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and refno' +
        ' <>'#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      ' where bills.nmemo=fe.nmemo ) fa '
      ' where REC.nmemo =FA.nmemo'
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
      'order by 3'
      '*/')
    Left = 647
    Top = 468
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
  end
  object dsWipGeneratedBudget: TUniDataSource
    DataSet = qryWipGeneratedBudget
    Left = 211
    Top = 126
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
      'where nmemo is not null'
      '--billed = '#39'Y'#39
      '--and type <> '#39'wo'#39
      '--and billtype = '#39'Billable'#39
      
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
      'where   not exists(select 1 from fee where '
      ' INV_period = fin_period and inv_year = fin_year '
      '-- AND billtype = '#39'Billable'#39
      '-- AND billed = '#39'Y'#39' and type <> '#39'wo'#39
      '--and billtype = '#39'Billable'#39
      '  and nmemo is not null'
      ')'
      'And '
      
        '  to_date(decode(fin_period,1,'#39'Jul'#39',2,'#39'Aug'#39',3,'#39'Sep'#39',4,'#39'Oct'#39',5,'#39'N' +
        'ov'#39',6,'#39'Dec'#39',7,'#39'Jan'#39',8,'#39'Feb'#39',9,'#39'Mar'#39',10,'#39'Apr'#39',11,'#39'May'#39',12,'#39'Jun'#39') ' +
        '||'
      
        '  '#39'-'#39' || decode(fin_period, 1, fin_year - 1,2, fin_year - 1,3, f' +
        'in_year - 1,4, fin_year - 1,5, fin_year - 1,6, fin_year - 1,fin_' +
        'year),'#39'mm-yy'#39') '
      '   BETWEEN :year_start_date and :year_end_date'
      'order by 3,4')
    Left = 705
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
  end
  object qryFeesBilledBudgetGraph: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(billedfees ) Fees_budget,'
      '   LPAD(month,2,'#39'0'#39')||'#39'-'#39'||calendar_year as rpt_period, period'
      '  from budget'
      '  where TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39') '
      '  BETWEEN :year_start_date AND :year_end_date'
      '  group by month,calendar_year,period'
      '  order by 3')
    Left = 785
    Top = 29
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
  end
  object dsLockupGraph: TUniDataSource
    DataSet = qryLockupGraph
    Left = 172
    Top = 442
  end
  object qryFeesReceivedBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select sum(receivedFEES) as month_budget from budget'
      '  where TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39')'
      '  BETWEEN :month_start_date and :month_end_date) c,'
      '(select sum(receivedFEES) year_budget'
      '  from budget where'
      '  TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39')'
      '  BETWEEN :year_start_date and :year_end_date ) D'
      ''
      ''
      ''
      ''
      '')
    Left = 336
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
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
  object qryBilledFeesBudget: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(c.month_budget,0) as month_budget,nvl(d.year_budget,0' +
        ') as year_budget'
      'from'
      '(select nvl(sum(BILLEDFEES),0) as month_budget from budget'
      
        '  where month = cast(to_char(:month_start_date,'#39'MM'#39') as integer)' +
        ' '
      
        '  and calendar_year = cast(to_char(:month_start_date,'#39'YYYY'#39')as i' +
        'nteger)'
      '  group by month, year) c,'
      '(select nvl(sum(BILLEDFEES),0) year_budget'
      '  from budget'
      '  where TO_DATE(MONTH || '#39'-'#39' || calendar_YEAR, '#39'MM-YYYY'#39')'
      '  BETWEEN :year_start_date and :year_end_date) D'
      'group by month_budget, year_budget')
    Left = 655
    Top = 530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
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
  object dsBilledFeesBudget: TUniDataSource
    DataSet = qryBilledFeesBudget
    Left = 770
    Top = 524
  end
  object dsFeesReceivedBudget: TUniDataSource
    DataSet = qryFeesReceivedBudget
    Left = 331
    Top = 537
  end
  object qryMattersClosed: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select mtd, ytd'
      'from ('
      'select count(nmatter) as mtd from matter'
      'where trunc(completed) between :firstdate and :lastdate) a,'
      '(select count(nmatter) as ytd from matter'
      
        'where trunc(completed) between :year_start_date and :year_end_da' +
        'te)b')
    Left = 432
    Top = 515
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'firstdate'
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
      end
      item
        DataType = ftUnknown
        Name = 'year_start_date'
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
      end>
  end
  object dsMattersclosed: TUniDataSource
    DataSet = qryMattersClosed
    Left = 510
    Top = 568
  end
  object dsGraphWIPGenerated: TUniDataSource
    DataSet = qryGraphWIPGenerated
    Left = 183
    Top = 284
  end
end
