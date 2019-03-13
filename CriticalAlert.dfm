object frmCritialAlert: TfrmCritialAlert
  Left = 560
  Top = 193
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Critical Alerts'
  ClientHeight = 563
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  GlassFrame.SheetOfGlass = True
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 532
    Width = 478
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnHide: TBitBtn
      Left = 84
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Hide'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A60033000000000033003300330033330000161616001C1C1C00222222002929
        2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
        CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
        00000033330000336600003399000033CC000033FF0000660000006633000066
        6600006699000066CC000066FF00009900000099330000996600009999000099
        CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
        660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
        FF00FF3300003333330033336600333399003333CC003333FF00336600003366
        330033666600336699003366CC003366FF003399000033993300339966003399
        99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
        FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
        6600660099006600CC006600FF00663300006633330066336600663399006633
        CC006633FF00666600006666330066666600666699006666CC00669900006699
        330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
        CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
        000099339900990099009900CC009900000099333300990066009933CC009900
        FF00996600009966330099336600996699009966CC009933FF00999933009999
        6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
        CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
        000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
        9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
        FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
        3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
        9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
        6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC0404040404ECFFFFFFFFFFFFFFEC0404
        CFCFCFCFCF0404ECFFFFFFFFEC04CFCFCFCFCFCFCFCF8C04ECFFFFFF04CFCFCF
        CFCF8C8C8CCFCF8C04FFFFEC04CFCFCF07FFFFFF078CCF8C04ECFF04AFCFCF07
        FFFFFFFFFF078CCF8C04FF04AFCFCFFFFF07ECFFFFFF8CCF8C04FF04AFAFCFFF
        ECEC00FFFFFF8CCF8C04FF04B5AFCFFFFFFF00FFFFFF8CCF8C04FF04AFAFCF07
        FFFFECFFFF078CCF8C04FFEC04B5AFAF07FF07FF078CCF8C04ECFFFF04AFB5AF
        CFCFCFCFCFCFCF8C04FFFFFFEC04AFB5AFAFCFCFCFCF8C04ECFFFFFFFFEC0404
        B5B5AFAFCF0404ECFFFFFFFFFFFFFFEC0404040404ECFFFFFFFF}
      TabOrder = 0
      OnClick = btnHideClick
    end
    object btnClose: TBitBtn
      Left = 4
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Ignore'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E6E6E619B2B2B24D9292926D8D8D8D729B9B
        9B64C7C7C738F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FCFCFC0391919F6E2B2B6BD4050563FA000065FF000060FF0000
        4FFF16163DE96262629DD4D4D42BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F4F4F40B6060909F000084FF00008EFF00008EFF00008FFF00008CFF0000
        88FF000081FF010154FF34343CCBC2C2C23DFFFFFF00FFFFFF00FFFFFF00FDFD
        FD025A5A9AA5000096FF000097FF00009BFF00009FFF0000A0FF00009DFF0000
        97FF00008FFF000088FF000062FF36363EC9D6D6D629FFFFFF00FFFFFF008F8F
        B7700101A3FF08089EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848
        B8FFB7B7E3FF2727A5FF00008CFF010152FF7171718EFFFFFF00DDDDEF222828
        ABD90000ABFF2828A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7
        ECFFFFFFF7FF5E5EB7FF00009AFF020287FF2E2E45D1FFFFFF009797E5690606
        B0FD0303B9FF0000C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFF
        F1FF7575B9FF0606B1FF0101ABFF0202A0FF12135DEDFFFFFF005859D0AB0808
        BBFF0707C8FF0505D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575
        C9FF0000BEFF0101C3FF0303B8FF0303ACFF0F0F6EF2FFFFFF004B4BD2BC0C0C
        C9FF0D0DD8FF0B0BDCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858
        DBFF0000CAFF0303CBFF0606C5FF0606B8FF111178F1FFFFFF007272E6931414
        D8FF1717EAFF0B0BF1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFE
        FFFF6363E5FF0303D7FF0A0ACFFF0A0AC3FF21217FE2FFFFFF00BBBBF7452525
        E5F22222FBFF3F3FE9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3
        D6FFFFFFFEFF6161E5FF0808DBFF0F0FCAFF4F4F85B2FFFFFF00F3F3FD0C5E5E
        F1AF3232FFFF5252EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252
        B4FFADADB0FF4D4DE1FF1818EDFF1818B1F5B6B6B949FFFFFF00FFFFFF00D6D6
        FC293E3EFBE75353FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838
        FCFF4242EBFF3232FFFF1F1FE9FF7E7EA784FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00C2C2FC404848FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767
        FFFF5151FFFF3030FBFD7C7CB488FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00DCDCFE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353
        FFFF5151F2D2A6A6CD5CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAA
        FD5DE1E1F81EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 478
    Height = 532
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object grdCriticalDates: TcxGrid
      Left = 0
      Top = 0
      Width = 478
      Height = 532
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object tvCriticalDates: TcxGridDBTableView
        OnDblClick = tvCriticalDatesDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsCriticalAlert
        DataController.KeyFieldNames = 'NMATTER'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        Styles.Header = cxStyle1
        OnColumnHeaderClick = tvCriticalDatesColumnHeaderClick
        object tvCriticalDatesDATETOCOMPLETE: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'DATETOCOMPLETE'
          Options.Grouping = False
          Width = 80
        end
        object tvCriticalDatesTASKDESCRIPTION: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'TASKDESCRIPTION'
          Width = 157
        end
        object tvCriticalDatesFILEID: TcxGridDBColumn
          Caption = 'Matter'
          DataBinding.FieldName = 'FILEID'
          Width = 120
        end
        object tvCriticalDatesNMATTER: TcxGridDBColumn
          DataBinding.FieldName = 'NMATTER'
          Visible = False
        end
        object tvCriticalDatesCLIENT: TcxGridDBColumn
          Caption = 'Client'
          DataBinding.FieldName = 'CLIENT'
          Width = 91
        end
      end
      object grdCriticalDatesLevel1: TcxGridLevel
        GridView = tvCriticalDates
      end
    end
  end
  object qryCriticalAlert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT W.DATETOCOMPLETE,'
      '       W.TASKDESCRIPTION,'
      '       W.NMATTER,'
      '       m.fileid || '#39' - '#39' || Get_FileDescr(w.nmatter) as fileid,'
      
        '       GetClientCode(m.nclient) || '#39' - '#39' || GetClientName(m.ncli' +
        'ent) as client'
      'FROM WORKFLOWTASKS w, matter m'
      'WHERE w.assignedto = :AUTHOR'
      'AND w.critical_alert = '#39'Y'#39
      'AND w.completed IS NULL'
      'AND w.datetocomplete <= SYSDATE'
      'and w.nmatter = m.nmatter')
    Left = 220
    Top = 33
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end>
  end
  object dsCriticalAlert: TUniDataSource
    DataSet = qryCriticalAlert
    Left = 319
    Top = 42
  end
  object tmShow: TTimer
    Enabled = False
    OnTimer = tmShowTimer
    Left = 284
    Top = 121
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 31
    Top = 46
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
end
