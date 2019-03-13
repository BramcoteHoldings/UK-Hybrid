object qrWorkFlowToDoReport: TqrWorkFlowToDoReport
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
      Top = 1
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
        2.645833333333333000
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
    Top = 211
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
      DataSet = qryWorkFlowTaskReport
      DataField = 'FULLSEQUENCE'
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object tTaskDescription: TQRDBText
      Left = 151
      Top = 0
      Width = 299
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        400.000000000000000000
        0.000000000000000000
        790.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryWorkFlowTaskReport
      DataField = 'TASKDESCRIPTION'
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
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
        1200.000000000000000000
        0.000000000000000000
        190.000000000000000000)
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
        1610.000000000000000000
        0.000000000000000000
        190.000000000000000000)
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
        1400.000000000000000000
        0.000000000000000000
        200.000000000000000000)
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
  end
  object PageFooterBand1: TQRBand
    Left = 57
    Top = 228
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
    Height = 55
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
      145.520833333333300000
      1801.812500000000000000)
    Expression = 'NMATTER'
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
      DataSet = qryWorkFlowTaskReport
      DataField = 'NMATTER'
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
      DataSet = qryWorkFlowTaskReport
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
      DataSet = qryWorkFlowTaskReport
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
    object QRLabel1: TQRLabel
      Left = 0
      Top = 38
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
        100.000000000000000000
        390.000000000000000000)
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
      Top = 38
      Width = 299
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        400.000000000000000000
        100.000000000000000000
        790.000000000000000000)
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
      Left = 454
      Top = 38
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1200.000000000000000000
        100.000000000000000000
        190.000000000000000000)
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
      Top = 38
      Width = 76
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1400.000000000000000000
        100.000000000000000000
        200.000000000000000000)
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
      Top = 38
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1610.000000000000000000
        100.000000000000000000
        190.000000000000000000)
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
      'SELECT   w.workflowtask,'
      '         DECODE'
      '            (w.repetition,'
      
        '             0, workflowtaskfunctions.gettasksequencematter (w.t' +
        'emplatelineid,'
      
        '                                                             w.n' +
        'matter'
      '                                                            ),'
      
        '                workflowtaskfunctions.gettasksequencematter (w.t' +
        'emplatelineid,'
      
        '                                                             w.n' +
        'matter'
      '                                                            )'
      '             || '#39' ('#39
      '             || w.repetition'
      '             || '#39')'#39
      '            ) AS fullsequence,'
      '            workflowtaskfunctions.gettasksequenceordermatter'
      '                                              (w.templatelineid,'
      '                                               w.nmatter'
      '                                              )'
      '         || w.repetition AS taskorder,'
      
        '         w.nmatter, w.templatelineid, w.repetition, w.repetition' +
        'base,'
      
        '         w.custom, w.started, w.startedby, es.NAME startedbyname' +
        ','
      
        '         w.workflowtypecode, w.seqno, w.parentlineid, w.taskdesc' +
        'ription,'
      '         w.tasknote, w.completedays,'
      '         TRUNC (w.datetocomplete) AS completebydate,'
      '         CAST (DECODE (w.datetocomplete,'
      '                       NULL, NULL,'
      
        '                       (TO_DATE (:startdate) - TRUNC (w.datetoco' +
        'mplete)'
      '                       )'
      '                      ) AS INTEGER'
      '              ) AS daysoverdue,'
      '         m.shortdescr, m.fileid, wt.descr AS workflowtype,'
      '         (SELECT COUNT (*)'
      '            FROM workflowtaskdoclink'
      '           WHERE tasklineid = w.templatelineid) AS hasdocuments,'
      '         (SELECT COUNT (*)'
      '            FROM workflowtasknotes'
      '           WHERE workflowtask = w.workflowtask) AS hasnotes,'
      '         c.NAME AS clientname'
      
        '    FROM workflowtasks w, matter m, workflowtype wt, employee es' +
        ', client c'
      '   WHERE w.started IS NOT NULL'
      '     AND (w.completed IS NULL AND w.skipped IS NULL)'
      '     AND (w.assignedto = :emp)'
      '     AND m.nmatter = w.nmatter'
      '     AND wt.code = m.workflow'
      '     AND es.code(+) = w.startedby'
      '     AND c.nclient = m.nclient'
      '     AND w.critical_date = NVL (:critical_date, w.critical_date)'
      
        '     AND (   TRUNC (w.datetocomplete) BETWEEN :startdate AND :en' +
        'ddate'
      '          OR TRUNC (w.datetocomplete) < :startdate'
      '         )'
      'ORDER BY nmatter, workflowtask')
    Left = 44
    Top = 10
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
end
