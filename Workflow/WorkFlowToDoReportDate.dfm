object qrWorkFlowToDoReportDate: TqrWorkFlowToDoReportDate
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
  DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
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
    Top = 230
    Width = 681
    Height = 17
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
      44.979166666666670000
      1801.812500000000000000)
    BandType = rbDetail
    object tFullSequence: TQRDBText
      Left = 0
      Top = 0
      Width = 147
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        0.000000000000000000
        0.000000000000000000
        390.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
      DataField = 'FULLSEQUENCE'
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tTaskDescription: TQRDBText
      Left = 151
      Top = 0
      Width = 454
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        399.520833333333000000
        0.000000000000000000
        1201.208333333330000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
      DataField = 'TASKDESCRIPTION'
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tStarted: TQRDBText
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
      DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
      DataField = 'STARTED'
      OnPrint = tStartedPrint
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  object PageFooterBand1: TQRBand
    Left = 57
    Top = 285
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
  object TitleBand: TQRBand
    Left = 57
    Top = 74
    Width = 681
    Height = 100
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
      264.583333333333300000
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
    object QRLabel1: TQRLabel
      Left = 0
      Top = 80
      Width = 147
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        0.000000000000000000
        211.666666666667000000
        388.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Task'
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
      Left = 151
      Top = 80
      Width = 456
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        399.520833333333000000
        211.666666666667000000
        1206.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Description'
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
      Left = 609
      Top = 80
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
        211.666666666667000000
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
  end
  object QRGroupDueDate: TQRGroup
    Left = 57
    Top = 174
    Width = 681
    Height = 19
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clBlack
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1801.812500000000000000)
    Expression = 'COMPLETEBYDATE'
    FooterBand = QRBandDueDateFooter
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel7: TQRLabel
      Left = 0
      Top = 0
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        0.000000000000000000
        0.000000000000000000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Due Date:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tCompleteByDate: TQRDBText
      Left = 67
      Top = 0
      Width = 144
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        177.270833333333300000
        0.000000000000000000
        381.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clBlack
      DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
      DataField = 'COMPLETEBYDATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      OnPrint = tCompleteByPrint
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tDaysOverdue: TQRDBText
      Left = 547
      Top = 0
      Width = 129
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1447.270833333330000000
        0.000000000000000000
        341.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clBlack
      DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
      DataField = 'DAYSOVERDUE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      OnPrint = tDaysOverduePrint
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 418
      Top = 0
      Width = 124
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1105.958333333330000000
        0.000000000000000000
        328.083333333333000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Days Overdue:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  object QRGroupMatter: TQRGroup
    Left = 57
    Top = 193
    Width = 681
    Height = 37
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
      97.895833333333330000
      1801.812500000000000000)
    Expression = 'NMATTER'
    FooterBand = QRBandMatterFooter
    Master = Owner
    ReprintOnNewPage = False
    object tNMatter: TQRDBText
      Left = 57
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
        150.000000000000000000
        0.000000000000000000
        200.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
      DataField = 'FILEID'
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
    object lMatter: TQRLabel
      Left = 0
      Top = 0
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        0.000000000000000000
        0.000000000000000000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Matter:'
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
    object tShortDescr: TQRDBText
      Left = 151
      Top = 0
      Width = 107
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        399.520833333333300000
        0.000000000000000000
        283.104166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
      DataField = 'SHORTDESCR'
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
    object lClient: TQRLabel
      Left = 0
      Top = 17
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        0.000000000000000000
        44.979166666666700000
        120.000000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Client:'
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
    object tClientName: TQRDBText
      Left = 57
      Top = 17
      Width = 98
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        44.979166666666670000
        259.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = dmWorkFlowDataModuleRun.qToDoTasksDate
      DataField = 'CLIENTNAME'
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
  object QRBandDueDateFooter: TQRBand
    Left = 57
    Top = 266
    Width = 681
    Height = 19
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
      50.270833333333330000
      1801.812500000000000000)
    BandType = rbGroupFooter
  end
  object QRBandMatterFooter: TQRBand
    Left = 57
    Top = 247
    Width = 681
    Height = 19
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
      50.270833333333330000
      1801.812500000000000000)
    BandType = rbGroupFooter
  end
  object qToDoTasksDate: TOraQuery
    SQL.Strings = (
      '/*create nested table so we can filter on result*/'
      'SELECT a.* FROM '
      '(SELECT'
      '  w.workflowtask,'
      
        '  DECODE(w.repetition,0,Workflowtaskfunctions.GETTASKSEQUENCEMAT' +
        'TER(w.templatelineid, w.nmatter),Workflowtaskfunctions.GETTASKSE' +
        'QUENCEMATTER(w.templatelineid, w.nmatter) || '#39' ('#39' || w.repetitio' +
        'n || '#39')'#39') AS fullsequence,'
      
        '  Workflowtaskfunctions.GETTASKSEQUENCEORDERMATTER(w.templatelin' +
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
      '  w.datetocomplete,'
      '  w.critical_Date,'
      '  w.critical_Alert,'
      '  w.completed,'
      '  w.skipped,'
      '  TRUNC(w.datetocomplete) AS completebydate,'
      '  CAST(DECODE('
      '    TRUNC(w.datetocomplete),'
      
        '    NULL,NULL, (TO_DATE(:startdate) - TRUNC(w.datetocomplete))) ' +
        'AS INTEGER) AS daysoverdue,'
      '  m.shortdescr,'
      '  m.fileid,'
      '  wt.descr AS WORKFLOWTYPE,'
      
        '  (SELECT COUNT(*) FROM WORKFLOWTASKDOCLINK WHERE tasklineid = w' +
        '.templatelineid) AS hasdocuments,'
      
        '  (SELECT COUNT(*) FROM WORKFLOWTASKNOTES WHERE workflowtask = w' +
        '.workflowtask) AS hasnotes,'
      '  c.name AS clientname'
      'FROM WORKFLOWTASKS w,'
      '  MATTER m,'
      '  WORKFLOWTYPE wt,'
      '  EMPLOYEE es,'
      '  CLIENT c'
      'WHERE w.started IS NOT NULL'
      '  AND (w.completed IS NULL AND w.skipped IS NULL)'
      '  AND (w.assignedto = :emp)'
      '  AND m.nmatter = w.nmatter'
      '  AND wt.code = m.workflow'
      '  AND es.code(+) = w.startedby'
      '  AND c.nclient = m.nclient'
      '  AND w.critical_Date = nvl(:critical_date, w.critical_date) '
      '  AND (TRUNC(w.datetocomplete) BETWEEN :startdate AND :enddate'
      '    OR TRUNC(w.datetocomplete) < :startdate)) a'
      
        '  WHERE :seqno IS NULL OR  trim(SUBSTR(fullsequence,0,DECODE(INS' +
        'TR(fullsequence,'#39'.'#39'),0,999999,INSTR(fullsequence,'#39'.'#39')-1)))  = :s' +
        'eqno')
    Left = 54
    Top = 23
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
      end
      item
        DataType = ftUnknown
        Name = 'seqno'
      end>
  end
end
