object qrWorkFlowToDoReportSequence: TqrWorkFlowToDoReportSequence
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  AfterPrint = QuickRepAfterPrint
  BeforePrint = QuickRepBeforePrint
  DataSet = qryWorkFlowTaskReport
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE')
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = A4
  Page.Values = (
    150.000000000000000000
    2970.000000000000000000
    150.000000000000000000
    2100.000000000000000000
    150.000000000000000000
    150.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object PageHeaderBand1: TQRBand
    Left = 57
    Top = 57
    Width = 681
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = PageHeaderBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      44.979166666666670000
      1801.812500000000000000)
    BandType = rbPageHeader
    object qrlAxiomation: TQRLabel
      Left = 0
      Top = 0
      Width = 102
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        0.000000000000000000
        269.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'Insight WorkFlow'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lEntity: TQRLabel
      Left = 608
      Top = 0
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        0.000000000000000000
        193.145833333333300000)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'Somewhere'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object DetailBandTasks: TQRBand
    Left = 57
    Top = 212
    Width = 681
    Height = 41
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = DetailBandTasksBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      108.479166666666700000
      1801.812500000000000000)
    BandType = rbDetail
    object tStarted: TQRDBText
      Left = 454
      Top = 0
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1201.208333333330000000
        0.000000000000000000
        190.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'STARTED'
      OnPrint = tStartedPrint
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tDaysOverdue: TQRDBText
      Left = 609
      Top = 0
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1611.312500000000000000
        0.000000000000000000
        190.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'DAYSOVERDUE'
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tCompleteBy: TQRDBText
      Left = 529
      Top = 0
      Width = 76
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1399.645833333330000000
        0.000000000000000000
        201.083333333333000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'COMPLETEBYDATE'
      OnPrint = tCompleteByPrint
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tNMatter: TQRDBText
      Left = 2
      Top = 0
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        5.291666666666670000
        0.000000000000000000
        209.020833333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'NMATTER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tShortDescr: TQRDBText
      Left = 83
      Top = -1
      Width = 369
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        219.604166666667000000
        -2.645833333333330000
        976.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'SHORTDESCR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tClientName: TQRDBText
      Left = 52
      Top = 20
      Width = 87
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        137.583333333333300000
        52.916666666666670000
        230.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'CLIENTNAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object lClient: TQRLabel
      Left = 3
      Top = 20
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        7.937500000000000000
        52.916666666666700000
        119.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Client:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  object PageFooterBand1: TQRBand
    Left = 57
    Top = 253
    Width = 681
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      44.979166666666670000
      1801.812500000000000000)
    BandType = rbPageFooter
    object QRSysData1: TQRSysData
      Left = 0
      Top = 0
      Width = 121
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        0.000000000000000000
        320.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsDateTime
      Text = 'Printed: '
      Transparent = False
      FontSize = 10
    end
    object QRSysData2: TQRSysData
      Left = 596
      Top = 0
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1576.916666666667000000
        0.000000000000000000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsPageNumber
      Text = 'Page:'
      Transparent = False
      FontSize = 10
    end
  end
  object QRGroupMatter: TQRGroup
    Left = 57
    Top = 156
    Width = 681
    Height = 56
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRGroupMatterBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      148.166666666666700000
      1801.812500000000000000)
    Expression = 'FULLSEQUENCE'
    Master = Owner
    ReprintOnNewPage = False
    object QRShape1: TQRShape
      Left = -38
      Top = 38
      Width = 756
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        45.000000000000000000
        -100.000000000000000000
        100.000000000000000000
        2000.000000000000000000)
      Pen.Style = psClear
      Shape = qrsRectangle
    end
    object QRLabel1: TQRLabel
      Left = 0
      Top = 2
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        0.000000000000000000
        5.291666666666670000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Task:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 2
      Top = 20
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psClear
      Size.Values = (
        44.979166666666700000
        5.291666666666670000
        52.916666666666700000
        206.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Description:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 454
      Top = 37
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1201.208333333330000000
        97.895833333333300000
        190.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Started'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 529
      Top = 37
      Width = 76
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1399.645833333330000000
        97.895833333333300000
        201.083333333333000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Due By'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 609
      Top = 37
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1611.312500000000000000
        97.895833333333300000
        190.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Over Due'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tFullSequence: TQRDBText
      Left = 79
      Top = -1
      Width = 147
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        209.020833333333000000
        -2.645833333333330000
        388.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'FULLSEQUENCE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = False
      FontSize = 10
    end
    object lMatter: TQRLabel
      Left = 2
      Top = 37
      Width = 452
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        5.291666666666670000
        97.895833333333300000
        1195.916666666670000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Matter'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tTaskDescription: TQRDBText
      Left = 79
      Top = 20
      Width = 412
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        209.020833333333000000
        52.916666666666700000
        1090.083333333330000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'TASKDESCRIPTION'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  object TitleBand: TQRBand
    Left = 57
    Top = 74
    Width = 681
    Height = 82
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = TitleBandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      216.958333333333300000
      1801.812500000000000000)
    BandType = rbTitle
    object QRLabel6: TQRLabel
      Left = 235
      Top = 0
      Width = 211
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        87.312500000000000000
        621.770833333333300000
        0.000000000000000000
        558.270833333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'WorkFlow ToDo'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 20
    end
    object lEmployee: TQRLabel
      Left = 311
      Top = 33
      Width = 59
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        822.854166666666700000
        87.312500000000000000
        156.104166666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'Matter:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
    object lDates: TQRLabel
      Left = 311
      Top = 56
      Width = 59
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        822.854166666666700000
        148.166666666666700000
        156.104166666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'Matter:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
  end
  object qryWorkFlowTaskReport: TOraQuery
    SQL.Strings = (
      'SELECT '
      '  w.workflowtask, '
      '  w.fullsequence,'
      '  intorder, '
      '  w.taskorder, '
      '  w.nmatter, '
      '  w.templatelineid, '
      '  w.repetition, '
      '  w.repetitionbase, '
      '  w.custom, '
      '  w.started, '
      '  w.startedby, '
      '  w.startedbyname, '
      '  w.workflowtypecode, '
      '  w.seqno, '
      '  w.parentlineid, '
      '  w.taskdescription, '
      '  w.tasknote, '
      '  w.completedays, '
      '  w.completebydate, '
      '  CAST(DECODE( '
      '    w.completebydate, '
      
        '    NULL,NULL, (TO_DATE(:startdate) - TRUNC(w.completebydate))) ' +
        'AS INTEGER) AS daysoverdue, '
      '  w.shortdescr, '
      '  w.fileid, '
      '  w.workflowtype, '
      '  w.hasdocuments, '
      '  w.hasnotes, '
      '  w.clientname '
      'FROM vw_tmp_tasks w '
      'WHERE '
      '  (w.assignedto = :emp ) '
      '  AND (TRUNC(w.datetocomplete) between :startdate AND :enddate '
      '    OR TRUNC(w.datetocomplete) < :startdate) '
      'AND w.critical_Date = nvl(:critical_date, w.critical_date)'
      'ORDER BY intorder,nmatter, completebydate desc')
    Left = 64
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'startdate'
      end
      item
        DataType = ftUnknown
        Name = 'emp'
      end
      item
        DataType = ftUnknown
        Name = 'enddate'
      end
      item
        DataType = ftUnknown
        Name = 'critical_date'
      end>
    object qryWorkFlowTaskReportWORKFLOWTASK: TFloatField
      FieldName = 'WORKFLOWTASK'
      Required = True
    end
    object qryWorkFlowTaskReportFULLSEQUENCE: TStringField
      FieldName = 'FULLSEQUENCE'
      Size = 4000
    end
    object qryWorkFlowTaskReportTASKORDER: TStringField
      FieldName = 'TASKORDER'
      Size = 80
    end
    object qryWorkFlowTaskReportNMATTER: TFloatField
      FieldName = 'NMATTER'
      Required = True
    end
    object qryWorkFlowTaskReportTEMPLATELINEID: TFloatField
      FieldName = 'TEMPLATELINEID'
      Required = True
    end
    object qryWorkFlowTaskReportREPETITION: TFloatField
      FieldName = 'REPETITION'
      Required = True
    end
    object qryWorkFlowTaskReportREPETITIONBASE: TStringField
      FieldName = 'REPETITIONBASE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryWorkFlowTaskReportCUSTOM: TStringField
      FieldName = 'CUSTOM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryWorkFlowTaskReportSTARTED: TDateTimeField
      FieldName = 'STARTED'
    end
    object qryWorkFlowTaskReportSTARTEDBY: TStringField
      FieldName = 'STARTEDBY'
      Size = 3
    end
    object qryWorkFlowTaskReportSTARTEDBYNAME: TStringField
      FieldName = 'STARTEDBYNAME'
      Size = 40
    end
    object qryWorkFlowTaskReportWORKFLOWTYPECODE: TStringField
      FieldName = 'WORKFLOWTYPECODE'
      Required = True
      Size = 11
    end
    object qryWorkFlowTaskReportSEQNO: TFloatField
      FieldName = 'SEQNO'
      Required = True
    end
    object qryWorkFlowTaskReportPARENTLINEID: TFloatField
      FieldName = 'PARENTLINEID'
    end
    object qryWorkFlowTaskReportTASKDESCRIPTION: TStringField
      FieldName = 'TASKDESCRIPTION'
      Required = True
      Size = 200
    end
    object qryWorkFlowTaskReportTASKNOTE: TStringField
      FieldName = 'TASKNOTE'
      Size = 200
    end
    object qryWorkFlowTaskReportCOMPLETEDAYS: TFloatField
      FieldName = 'COMPLETEDAYS'
    end
    object qryWorkFlowTaskReportCOMPLETEBYDATE: TDateTimeField
      FieldName = 'COMPLETEBYDATE'
    end
    object qryWorkFlowTaskReportDAYSOVERDUE: TFloatField
      FieldName = 'DAYSOVERDUE'
    end
    object qryWorkFlowTaskReportSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qryWorkFlowTaskReportFILEID: TStringField
      FieldName = 'FILEID'
      Required = True
    end
    object qryWorkFlowTaskReportWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      Required = True
      Size = 60
    end
    object qryWorkFlowTaskReportHASDOCUMENTS: TFloatField
      FieldName = 'HASDOCUMENTS'
    end
    object qryWorkFlowTaskReportHASNOTES: TFloatField
      FieldName = 'HASNOTES'
    end
    object qryWorkFlowTaskReportCLIENTNAME: TStringField
      FieldName = 'CLIENTNAME'
      Size = 40
    end
  end
  object OraQuery1: TOraQuery
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
      '  c.name AS clientname'
      'FROM workflowtasks w,'
      '  matter m,'
      '  workflowtype wt,'
      '  employee es,'
      '  client c'
      'WHERE w.started IS NOT NULL'
      '  AND (w.completed IS NULL AND w.skipped IS NULL)'
      '  AND (w.assignedto = :emp )'
      '  AND m.nmatter = w.nmatter'
      '  AND wt.code = m.workflow'
      '  AND es.code(+) = w.startedby'
      '  AND c.nclient = m.nclient'
      'AND w.critical_Date = nvl(:critical_date, w.critical_date)'
      '  AND (TRUNC(w.datetocomplete) between :startdate AND :enddate'
      '    OR TRUNC(w.datetocomplete) < :startdate)'
      
        'ORDER BY w.parentlineid, w.seqno, w.repetition,nmatter, w.dateto' +
        'complete desc'
      '')
    Left = 231
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'startdate'
      end
      item
        DataType = ftUnknown
        Name = 'emp'
      end
      item
        DataType = ftUnknown
        Name = 'critical_date'
      end
      item
        DataType = ftUnknown
        Name = 'enddate'
      end>
  end
end
