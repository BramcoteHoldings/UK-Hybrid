object frmDebtorNotesEntry: TfrmDebtorNotesEntry
  Left = 846
  Top = 316
  Caption = 'Debtor Notes'
  ClientHeight = 546
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    899
    546)
  PixelsPerInch = 96
  TextHeight = 15
  object btnSave: TcxButton
    Left = 719
    Top = 516
    Width = 73
    Height = 25
    Action = actSave
    Anchors = [akRight, akBottom]
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00AB4F4F00964F4C00AB4F4F00C6C4C600C6C4C600C6C4C600C6C4C600C6C4
      C600C4C4C400AB4F4F00AB4F4F00AB4F4F00FF00FF00FF00FF00FF00FF00B584
      7400AB4F4F00CD676400964F4C00C3A2A900C49C9400DCDADB00FFFCFF00E9EA
      E900DCDADB0096363500AB4F4F00CD676400964F4C00FF00FF00FF00FF00B584
      7400CD676400CD676400964F4C00C3B5B400AB4F4F00C2907D00C4C4C400FFFC
      FF00E9EAE90096363500AB4F4F00CD676400964F4C00FF00FF00FF00FF00B584
      7400CD676400CD6764009B4F5400DBCBC70096363500AB4F4F00AE837A00C6C4
      C600FFFCFF0096363500BC6B6D00CD676400964F4C00FF00FF00FF00FF00B584
      7400CD676400CD6764009B4F5400DBCBC700DBCBC700DBCBC700C3B5B400C6C4
      C600DCDADB0096363500AB4F4F00CD676400964F4C00FF00FF00FF00FF00B584
      7400CD676400CD676400BC6B6D00C2907D00C2907D00C2907D00C2907D00BC6B
      6D00FF618300AB4F4F00CD676400CD676400964F4C00FF00FF00FF00FF00B584
      7400CD676400CD676400CD676400CD676400CD676400CD676400CD676400CD67
      6400CD676400CD676400CD676400CD676400964F4C00FF00FF00FF00FF00B584
      7400CE676D00FF618300FFA5AC00FFA5AC00FFA5AC00FFA5AC00FFA5AC00FFA5
      AC00FFA5AC00FF618300AB4F4F00CE676D00964F4C00FF00FF00FF00FF00B584
      7400CD676400964F4C00F6F3F600F6F3F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFA5AC00CD676400CE676D00964F4C00FF00FF00FF00FF00B584
      7400CE676D00AB4F4F00F6F3F600C6C4C600C6C4C600C6C4C600C6C4C600C6C4
      C600F6F3F600FFA5AC00AB4F4F00CE676D00964F4C00FF00FF00FF00FF00B584
      7400CE676D00AB4F4F00F6F3F600F6F3F600F6F3F600F6F3F600FFFFFF00FFFF
      FF00FFFFFF00FFA5AC00AB4F4F00CE676D00964F4C00FF00FF00FF00FF00B584
      7400CE676D00964F4C00F6F3F600C6C4C600C6C4C600C6C4C600C6C4C600C6C4
      C600F6F3F600FFA5AC00BC6B6D00CE676D00964F4C00FF00FF00FF00FF00B584
      7400CE676D00AB4F4F00F6F3F600F6F3F600F6F3F600F6F3F600F6F3F600F6F3
      F600FFFFFF00FFA5AC00AB4F4F00CE676D00964F4C00FF00FF00FF00FF00B584
      7400964F4C0096363500C6C4C600C6C4C600C6C4C600C6C4C600C6C4C600C6C4
      C600C6C4C600FF61830096363500964F4C00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 4
    ExplicitLeft = 449
  end
  object btnClose: TcxButton
    Left = 797
    Top = 516
    Width = 74
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.Data = {
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
    TabOrder = 5
    OnClick = btnCloseClick
    ExplicitLeft = 527
  end
  object teNMemo: TcxButtonEdit
    Left = 59
    Top = 55
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Visible = False
    Width = 113
  end
  object cxLabel1: TcxLabel
    Left = 13
    Top = 8
    Caption = 'Matter'
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 58
    Caption = 'Bill'
    Transparent = True
  end
  object cbCloseForm: TcxCheckBox
    Left = 21
    Top = 517
    Anchors = [akLeft, akBottom]
    Caption = 'Leave form open after saving?'
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 8
    Transparent = True
    Width = 215
  end
  object cmbMatterFind: TcxLookupComboBox
    Left = 59
    Top = 7
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsEditList
    Properties.DropDownRows = 20
    Properties.DropDownWidth = 500
    Properties.KeyFieldNames = 'FILEID'
    Properties.ListColumns = <
      item
        Width = 62
        FieldName = 'FILEID'
      end
      item
        Width = 160
        FieldName = 'SEARCH'
      end
      item
        Caption = 'Description'
        FieldName = 'SHORTDESCR'
      end>
    Properties.ListOptions.GridLines = glVertical
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMRUList
    Properties.OnCloseUp = cmbMatterFindPropertiesCloseUp
    Properties.OnInitPopup = cmbMatterFindPropertiesInitPopup
    Properties.OnValidate = cmbMatterFindPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = clGray
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleFocused.TextColor = clWindowText
    StyleHot.LookAndFeel.NativeStyle = True
    StyleHot.TextColor = clWindowText
    TabOrder = 0
    Width = 129
  end
  object lblMatterDesc: TcxLabel
    Left = 191
    Top = 7
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.ShowAccelChar = False
    Properties.WordWrap = True
    Height = 21
    Width = 419
  end
  object lblClient: TcxLabel
    Left = 59
    Top = 32
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.ShowAccelChar = False
    Height = 20
    Width = 551
  end
  object cmbBillRef: TcxLookupComboBox
    Left = 59
    Top = 55
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'NMEMO'
    Properties.ListColumns = <
      item
        FieldName = 'REFNO'
      end
      item
        FieldName = 'BILL_TO'
      end
      item
        FieldName = 'DISPATCHED'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsNMemo
    Properties.OnInitPopup = cmbBillRefPropertiesInitPopup
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 145
  end
  object meDebtorNotes: TcxRichEdit
    Left = 59
    Top = 81
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    ExplicitWidth = 541
    Height = 431
    Width = 811
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT trim(M.FILEID) as FILEID,trim(P.SEARCH) AS SEARCH, trim(M' +
        '.SHORTDESCR) AS SHORTDESCR, idx'
      'FROM MATTER M, PHONEBOOK P,OPENLIST O'
      'WHERE O.AUTHOR = :P_Author'
      'AND O.TYPE = :P_Type'
      'AND O.CODE = M.FILEID'
      'AND M.NCLIENT = P.NCLIENT'
      'union'
      'SELECT '#39'Search...'#39','#39#39','#39#39',999'
      'FROM dual'
      'ORDER BY 3')
    Left = 490
    Top = 41
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Type'
        Value = nil
      end>
  end
  object dsMRUList: TUniDataSource
    DataSet = qryMRUList
    Left = 529
    Top = 21
  end
  object dsDebtorNotes: TUniDataSource
    DataSet = qryDebtorNotes
    Left = 39
    Top = 123
  end
  object qryMaxSequence: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nvl(max(nvl(sequence,0))+1,1) as newsequence from debtorn' +
        'otes'
      'where nmatter = :nmatter')
    Left = 38
    Top = 165
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
    object qryMaxSequenceNEWSEQUENCE: TFloatField
      FieldName = 'NEWSEQUENCE'
    end
  end
  object ActionManager1: TActionManager
    Images = dmAxiom.ilstToolbar
    Left = 457
    Top = 103
    StyleName = 'XP Style'
    object actSave: TAction
      Caption = '&Save'
      Enabled = False
      ImageIndex = 19
      ShortCut = 16467
      OnExecute = actSaveExecute
      OnUpdate = actSaveUpdate
    end
  end
  object qryNmemo: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select refno, nmemo, bill_to,dispatched from nmemo'
      'where'
      'nmatter = :nmatter'
      'and'
      'refno <> '#39'DRAFT'#39)
    Left = 23
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsNMemo: TUniDataSource
    DataSet = qryNmemo
    Left = 72
    Top = 240
  end
  object qryDebtorNotes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO DEBTORNOTES'
      
        '  (NMATTER, CREATED, CREATEDBY, NOTE, REVIEW_DATE, SEQUENCE, NME' +
        'MO, COLLECTION_CODE, NDEBTORTASK, REFNO)'
      'VALUES'
      
        '  (:NMATTER, :CREATED, :CREATEDBY, :NOTE, :REVIEW_DATE, :SEQUENC' +
        'E, :NMEMO, :COLLECTION_CODE, :NDEBTORTASK, :REFNO)')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT Debtornotes.*'
      'FROM Debtornotes')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'Oracle.ExtendedFieldsInfo=True')
    Left = 2
    Top = 122
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 14
    Top = 335
  end
end
