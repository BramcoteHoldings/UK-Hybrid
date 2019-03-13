object qrFeeListAuthorSummaryReport: TqrFeeListAuthorSummaryReport
  Left = 0
  Top = 0
  ClientHeight = 1062
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  object qAuthorSummary: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT fee.author AS author, employee.name AS name, SUM(fee.unit' +
        's) AS units, SUM(fee.mins) AS mins, SUM(fee.amount) AS amount'
      'from fee, employee'
      'where fee.author = employee.code(+)'
      'group by fee.author, employee.name')
    Left = 78
    Top = 156
    object qAuthorSummaryAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qAuthorSummaryNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qAuthorSummaryUNITS: TFloatField
      FieldName = 'UNITS'
    end
    object qAuthorSummaryMINS: TFloatField
      FieldName = 'MINS'
    end
    object qAuthorSummaryAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
  end
end
