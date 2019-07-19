object frmInvoicePrint: TfrmInvoicePrint
  Left = 667
  Top = 200
  Caption = 'Invoice Print'
  ClientHeight = 620
  ClientWidth = 999
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pagReports: TPageControl
    Left = 22
    Top = 13
    Width = 721
    Height = 575
    ActivePage = tabInvoicePrint
    TabOrder = 0
    Visible = False
    object tabInvoicePrint: TTabSheet
      Caption = 'tabInvoicePrint'
    end
  end
  object qryInvoice: TUniQuery
    SQL.Strings = (
      
        'SELECT M.ROWID, M.REFNO, M.NMEMO, M.NMATTER, M.FILEID, m.dispatc' +
        'hed'
      'FROM NMEMO M'
      'WHERE M.NMEMO = :NMEMO')
    CachedUpdates = True
    Left = 400
    Top = 18
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryItems: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  1 AS type,'
      '  created,'
      '  author,'
      '  descr,'
      '  amount,'
      '  tax'
      'FROM'
      '  fee'
      'WHERE'
      '  nmatter = :nmatter AND'
      '  nmemo = :nmemo'
      'UNION ALL'
      'SELECT'
      '  1 AS type,'
      '  SYSDATE,'
      '  NULL AS author,'
      '  '#39'Fee Adjustment'#39','
      '  MAX(b.fees) - SUM(f.amount),'
      '  (MAX(b.fees) - SUM(f.amount)) / 10'
      'FROM'
      '  nmemo b,'
      '  fee f'
      'WHERE'
      '  b.nmatter = :nmatter AND'
      '  b.nmemo = :nmemo AND'
      '  f.nmatter = :nmatter AND'
      '  f.nmemo = :nmemo'
      'GROUP BY b.nmemo'
      'HAVING MAX(b.fees) <> SUM(f.amount)'
      'UNION ALL'
      'SELECT '
      '  2 AS type,'
      '  created,'
      '  sundrytype AS author,'
      '  descr, '
      '  (0 - amount) AS amount,'
      '    DECODE(alloc.billed,'
      '         '#39'Y'#39','
      '         0 - alloc.tax,'
      '         DECODE((r.rate-r.bill_rate),'
      '                '#39'0'#39','
      '                0 - alloc.tax,'
      '                ROUND((0 - alloc.amount) * ABS(r.rate)) / 100'
      '               )'
      '        ) AS tax'
      'FROM '
      '  alloc,'
      '  taxrate r'
      'WHERE'
      '  nmatter = :nmatter AND'
      '  nmemo = :nmemo AND'
      '  (ncheque > 0 OR type = '#39'J2'#39' OR type = '#39'DR'#39') AND'
      '  alloc.taxcode = r.taxcode(+)'
      'UNION ALL'
      'SELECT'
      '  3 AS type,'
      '  reqdate AS created,'
      '  sundrytype AS author,'
      '  descr,'
      '  amount,'
      '  tax'
      'FROM'
      '  cheqreq'
      'WHERE'
      '  fileid = :fileid AND'
      '  nmemo = :nmemo'
      'UNION ALL'
      'SELECT'
      '  4 AS type,'
      '  created,'
      '  type AS author,'
      '  descr,'
      '  amount,'
      '  tax'
      'FROM'
      '  sundry'
      'WHERE'
      '  nmatter = :nmatter AND'
      '  nmemo = :nmemo'
      'UNION ALL'
      'SELECT'
      '  5 AS type,'
      '  invoice_date AS created,'
      '  m.author AS author,'
      '  c.descr,'
      '  (a.amount * -1) AS amount,'
      '  (a.tax * -1) AS Tax'
      'FROM matter m, alloc a, invoice c'
      'WHERE m.nmatter = a.nmatter'
      'AND   a.ninvoice = c.ninvoice'
      'AND   a.nmemo = :nmemo'
      'AND   m.nmatter = :nmatter '
      'ORDER BY 1, 2')
    Left = 502
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end>
  end
  object qryPhonebook: TUniQuery
    SQL.Strings = (
      
        'SELECT title, name, address, suburb||'#39' '#39'||state||'#39' '#39'||postcode a' +
        's SSP FROM PHONEBOOK WHERE SEARCH = :Search')
    Left = 582
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Search'
        Value = nil
      end>
  end
  object qryMatter: TUniQuery
    SQL.Strings = (
      
        'SELECT BILL_TO, AUTHOR, LONGDESCR, FILEID FROM MATTER WHERE FILE' +
        'ID = :FILEID')
    Left = 568
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
end
