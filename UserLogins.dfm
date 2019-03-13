object frmUserSessions: TfrmUserSessions
  Left = 457
  Top = 332
  Caption = 'User Sessions'
  ClientHeight = 511
  ClientWidth = 924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object grdUserSession: TcxGrid
    Left = 0
    Top = 28
    Width = 924
    Height = 483
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    RootLevelOptions.DetailTabsPosition = dtpTop
    object tvUserSession: TcxGridDBTableView
      PopupMenu = dxBarPopupMenu1
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsUserSessions
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object tvUserSessionColumn1: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CODE'
        Width = 50
      end
      object tvUserSessionUSERNAME: TcxGridDBColumn
        Caption = 'User Name'
        DataBinding.FieldName = 'USERNAME'
        Width = 60
      end
      object tvUserSessionNAME: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'NAME'
        Width = 98
      end
      object tvUserSessionPHONE: TcxGridDBColumn
        Caption = 'Phone'
        DataBinding.FieldName = 'PHONE'
        Width = 74
      end
      object tvUserSessionSID: TcxGridDBColumn
        DataBinding.FieldName = 'SID'
        Width = 24
      end
      object tvUserSessionOSUSER: TcxGridDBColumn
        Caption = 'OS User'
        DataBinding.FieldName = 'OSUSER'
        Width = 74
      end
      object tvUserSessionMACHINE: TcxGridDBColumn
        Caption = 'Computer'
        DataBinding.FieldName = 'MACHINE'
        Width = 108
      end
      object tvUserSessionSTATUS: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        Width = 41
      end
      object tvUserSessionLOGON_TIME: TcxGridDBColumn
        Caption = 'Logon Time'
        DataBinding.FieldName = 'LOGON_TIME'
        Width = 61
      end
      object tvUserSessionPROGRAM: TcxGridDBColumn
        Caption = 'Program'
        DataBinding.FieldName = 'PROGRAM'
        Width = 128
      end
      object tvUserSessionSERIAL: TcxGridDBColumn
        Caption = 'Serial #'
        DataBinding.FieldName = 'SERIAL#'
        Width = 49
      end
    end
    object tvTransactionLocks: TcxGridDBTableView
      PopupMenu = dxBarPopupMenu2
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsLocks
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      object tvTransactionLocksOSUSER: TcxGridDBColumn
        DataBinding.FieldName = 'OSUSER'
        Width = 59
      end
      object tvTransactionLocksUSERNAME: TcxGridDBColumn
        DataBinding.FieldName = 'USERNAME'
        Width = 70
      end
      object tvTransactionLocksLOCKTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'LOCKTYPE'
        Width = 62
      end
      object tvTransactionLocksOBJECT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'OBJECT_NAME'
        Width = 404
      end
      object tvTransactionLocksHELD: TcxGridDBColumn
        DataBinding.FieldName = 'HELD'
        Width = 60
      end
      object tvTransactionLocksREQUEST: TcxGridDBColumn
        DataBinding.FieldName = 'REQUEST'
        Width = 66
      end
      object tvTransactionLocksSID: TcxGridDBColumn
        DataBinding.FieldName = 'SID'
        Width = 64
      end
      object tvTransactionLocksSERIAL: TcxGridDBColumn
        DataBinding.FieldName = 'SERIAL#'
        Width = 64
      end
    end
    object grdUserSessionLevel1: TcxGridLevel
      Caption = 'User Sessions'
      GridView = tvUserSession
    end
    object grdUserSessionLevel2: TcxGridLevel
      Caption = 'Transaction Locks'
      GridView = tvTransactionLocks
    end
  end
  object qryUserSessions: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select code, username, name, phone, sid, osuser, machine, status' +
        ', logon_time, program, serial#'
      'from v$session v, employee'
      'where username is not null'
      'and username <> '#39'AXIOM'#39
      'and upper(username) = upper(user_name)')
    Left = 144
    Top = 167
  end
  object dsUserSessions: TUniDataSource
    DataSet = qryUserSessions
    Left = 229
    Top = 173
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Transaction Locks'
      'User Sessions'
      'Default')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 267
    Top = 66
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Kill Session'
      Category = 0
      Hint = 'Kill Session'
      Visible = ivAlways
      ImageIndex = 31
      OnClick = dxBarButton4Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Send Message'
      Category = 1
      Hint = 'Send Message'
      Visible = ivAlways
      ImageIndex = 30
      OnClick = dxBarButton3Click
    end
    object btnKillUserSession: TdxBarButton
      Caption = 'Kill Session'
      Category = 1
      Hint = 'Kill Session'
      Visible = ivAlways
      ImageIndex = 32
      OnClick = btnKillUserSessionClick
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 2
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Refresh'
      Category = 2
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 21
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnKillUserSession'
      end>
    UseOwnFont = False
    Left = 359
    Top = 113
  end
  object spKillSession: TUniStoredProc
    StoredProcName = 'axiom.KILL_SESSION'
    Connection = dmAxiom.uniInsight
    Left = 595
    Top = 223
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_SID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_SERIAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_USER'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'axiom.KILL_SESSION'
  end
  object qryLocks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select rpad(osuser, 9)||lpad(p.spid, 5) osuser,'
      
        #9'rpad(s.username,8)||lpad(s.sid, 4)||lpad(s.serial#, 5) username' +
        ','
      #9'decode(l.type, '
      #9#9#39'MR'#39', '#39'Media Reco'#39', '
      #9#9#39'RT'#39', '#39'Redo Thred'#39','
      #9#9#39'UN'#39', '#39'User Name'#39','
      #9#9#39'TX'#39', '#39'Trans'#39','
      #9#9#39'TM'#39', '#39'DML'#39','
      #9#9#39'UL'#39', '#39'PL/SQL Usr'#39','
      #9#9#39'DX'#39', '#39'Dist. Tran'#39','
      #9#9#39'CF'#39', '#39'Cntrl File'#39','
      #9#9#39'IS'#39', '#39'Inst State'#39','
      #9#9#39'FS'#39', '#39'File Set'#39','
      #9#9#39'IR'#39', '#39'Inst Reco'#39','
      #9#9#39'ST'#39', '#39'Disk Space'#39','
      #9#9#39'TS'#39', '#39'Temp Seg'#39','
      #9#9#39'IV'#39', '#39'Cache Inv'#39','
      #9#9#39'LS'#39', '#39'Log Switch'#39','
      #9#9#39'RW'#39', '#39'Row Wait'#39','
      #9#9#39'SQ'#39', '#39'Seq Number'#39','
      #9#9#39'TE'#39', '#39'Extend Tbl'#39','
      #9#9#39'TT'#39', '#39'Temp Table'#39','
      #9#9'l.type) locktype,'
      #9#39' '#39' object_name,'
      #9'decode(lmode,1,Null,2,'#39'Row Share'#39',3,'#39'Row Excl'#39',4,'#39'Share'#39','
      #9#9'5,'#39'Sh Row Ex'#39',6,'#39'Exclusive'#39','#39' '#39') held,'
      #9'decode(request,1,Null,2,'#39'Row Share'#39',3,'#39'Row Excl'#39',4,'#39'Share'#39','
      #9#9'5,'#39'Sh Row Ex'#39',6,'#39'Exclusive'#39','#39' '#39') request,'
      's.sid,s.serial#'
      #9'from v$lock l, v$session s, v$process p'
      #9'where s.sid = l.sid and'
      #9#9's.username <> '#39' '#39' and'
      #9#9's.paddr = p.addr and'
      #9#9'l.type <> '#39'TM'#39' and'
      #9#9'(l.type <> '#39'TX'#39' or l.type = '#39'TX'#39' and l.lmode <> 6)'
      'union'
      'select rpad(osuser, 9)||lpad(p.spid, 5) osuser,'
      
        #9'rpad(s.username,8)||lpad(s.sid, 4)||lpad(s.serial#, 5) username' +
        ','
      #9'decode(l.type, '
      #9#9#39'MR'#39', '#39'Media Reco'#39', '
      #9#9#39'RT'#39', '#39'Redo Thred'#39','
      #9#9#39'UN'#39', '#39'User Name'#39','
      #9#9#39'TX'#39', '#39'Trans'#39','
      #9#9#39'TM'#39', '#39'DML'#39','
      #9#9#39'UL'#39', '#39'PL/SQL Usr'#39','
      #9#9#39'DX'#39', '#39'Dist. Tran'#39','
      #9#9#39'CF'#39', '#39'Cntrl File'#39','
      #9#9#39'IS'#39', '#39'Inst State'#39','
      #9#9#39'FS'#39', '#39'File Set'#39','
      #9#9#39'IR'#39', '#39'Inst Reco'#39','
      #9#9#39'ST'#39', '#39'Disk Space'#39','
      #9#9#39'TS'#39', '#39'Temp Seg'#39','
      #9#9#39'IV'#39', '#39'Cache Inv'#39','
      #9#9#39'LS'#39', '#39'Log Switch'#39','
      #9#9#39'RW'#39', '#39'Row Wait'#39','
      #9#9#39'SQ'#39', '#39'Seq Number'#39','
      #9#9#39'TE'#39', '#39'Extend Tbl'#39','
      #9#9#39'TT'#39', '#39'Temp Table'#39','
      #9#9'l.type) locktype,'
      #9'object_name,'
      #9'decode(lmode,1,NULL,2,'#39'Row Share'#39',3,'#39'Row Excl'#39',4,'#39'Share'#39','
      #9#9'5,'#39'Sh Row Ex'#39',6,'#39'Exclusive'#39',NULL) held,'
      #9'decode(request,1,NULL,2,'#39'Row Share'#39',3,'#39'Row Excl'#39',4,'#39'Share'#39','
      #9#9'5,'#39'Sh Row Ex'#39',6,'#39'Exclusive'#39',NULL) request,'
      's.sid,s.serial#'
      #9'from v$lock l, v$session s, v$process p, sys.dba_objects o'
      #9'where s.sid = l.sid and'
      #9#9'o.object_id = l.id1 and'
      #9#9'l.type = '#39'TM'#39' and'
      #9#9's.username <> '#39' '#39' and'
      #9#9's.paddr = p.addr'
      'union'
      'select rpad(osuser, 9)||lpad(p.spid, 5) osuser,'
      
        #9'rpad(s.username,8)||lpad(s.sid, 4)||lpad(s.serial#, 5) username' +
        ','
      #9'decode(l.type, '
      #9#9#39'MR'#39', '#39'Media Reco'#39', '
      #9#9#39'RT'#39', '#39'Redo Thred'#39','
      #9#9#39'UN'#39', '#39'User Name'#39','
      #9#9#39'TX'#39', '#39'Trans'#39','
      #9#9#39'TM'#39', '#39'DML'#39','
      #9#9#39'UL'#39', '#39'PL/SQL Usr'#39','
      #9#9#39'DX'#39', '#39'Dist. Tran'#39','
      #9#9#39'CF'#39', '#39'Cntrl File'#39','
      #9#9#39'IS'#39', '#39'Inst State'#39','
      #9#9#39'FS'#39', '#39'File Set'#39','
      #9#9#39'IR'#39', '#39'Inst Reco'#39','
      #9#9#39'ST'#39', '#39'Disk Space'#39','
      #9#9#39'TS'#39', '#39'Temp Seg'#39','
      #9#9#39'IV'#39', '#39'Cache Inv'#39','
      #9#9#39'LS'#39', '#39'Log Switch'#39','
      #9#9#39'RW'#39', '#39'Row Wait'#39','
      #9#9#39'SQ'#39', '#39'Seq Number'#39','
      #9#9#39'TE'#39', '#39'Extend Tbl'#39','
      #9#9#39'TT'#39', '#39'Temp Table'#39','
      #9#9'l.type) locktype,'
      #9#39'(Rollback='#39'||rtrim(r.name)||'#39')'#39' object_name,'
      #9'decode(lmode,1,NULL,2,'#39'Row Share'#39',3,'#39'Row Excl'#39',4,'#39'Share'#39','
      #9#9'5,'#39'Sh Row Ex'#39',6,'#39'Exclusive'#39',NULL) held,'
      #9'decode(request,1,NULL,2,'#39'Row Share'#39',3,'#39'Row Excl'#39',4,'#39'Share'#39','
      #9#9'5,'#39'Sh Row Ex'#39',6,'#39'Exclusive'#39',NULL) request,'
      's.sid,s.serial#'
      #9'from v$lock l, v$session s, v$process p, v$rollname r'
      #9'where s.sid = l.sid and'
      #9#9'l.type = '#39'TX'#39' and'
      #9#9'l.lmode = 6 and'
      #9#9'trunc(l.id1/65536) = r.usn and'
      #9#9's.username <> '#39' '#39' and'
      #9#9's.paddr = p.addr'
      #9'order by 5, 6')
    Left = 138
    Top = 275
  end
  object dsLocks: TUniDataSource
    DataSet = qryLocks
    Left = 256
    Top = 275
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 523
    Top = 111
  end
end
