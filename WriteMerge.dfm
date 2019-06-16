object frmWriteMerge: TfrmWriteMerge
  Left = 529
  Top = 164
  BorderStyle = bsDialog
  Caption = 'Create merge file'
  ClientHeight = 378
  ClientWidth = 463
  Color = clBtnFace
  Constraints.MinHeight = 372
  Constraints.MinWidth = 420
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlBottom: TPanel
    Left = 0
    Top = 345
    Width = 463
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      463
      33)
    object btnMerge: TBitBtn
      Left = 304
      Top = 1
      Width = 72
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = '&Merge'
      Default = True
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555066000000
        00005550660E0FFFFFF0550660EE000777F0550660EE0EE0FFF050660EEE0EE0
        77F050660E0EEEE0FFF00660EE0EEEE077F00000E00EE0E0FFF00666060EE0E0
        77F05000000E00E0FFF05550666060E077F05550000000E0FFF05550FFF0660F
        00005550F77000070F055550FFFFFFFF00555550000000000555}
      TabOrder = 0
      OnClick = btnMergeClick
    end
    object bnCancel: TBitBtn
      Left = 380
      Top = 1
      Width = 72
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = '&Close'
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
      OnClick = bnCancelClick
    end
  end
  object pagMerge: TcxPageControl
    Left = 0
    Top = 0
    Width = 463
    Height = 345
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabOutput
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 341
    ClientRectLeft = 4
    ClientRectRight = 459
    ClientRectTop = 26
    object tabOutput: TcxTabSheet
      Caption = 'Output'
      ImageIndex = 0
      object Label3: TLabel
        Left = 27
        Top = 146
        Width = 54
        Height = 15
        Alignment = taRightJustify
        Caption = 'Export File'
      end
      object Label8: TLabel
        Left = 0
        Top = 194
        Width = 81
        Height = 15
        Alignment = taRightJustify
        Caption = 'Word Template'
      end
      object gbDelimiters: TGroupBox
        Left = 30
        Top = 3
        Width = 157
        Height = 102
        Caption = 'Delimiters'
        TabOrder = 0
        object Label1: TLabel
          Left = 31
          Top = 25
          Width = 25
          Height = 15
          Alignment = taRightJustify
          Caption = 'Field'
        end
        object Label2: TLabel
          Left = 19
          Top = 51
          Width = 37
          Height = 15
          Alignment = taRightJustify
          Caption = 'Record'
        end
        object cbField: TComboBox
          Left = 64
          Top = 22
          Width = 61
          Height = 23
          TabOrder = 0
          Items.Strings = (
            ','
            '~'
            '[TAB]')
        end
        object cbRecord: TComboBox
          Left = 64
          Top = 48
          Width = 61
          Height = 23
          TabOrder = 1
          Items.Strings = (
            '[CR]'
            '[LF]'
            '[CRLF]')
        end
        object chkQuote: TCheckBox
          Left = 7
          Top = 77
          Width = 128
          Height = 16
          Caption = 'Enclose text in quotes?'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
      object chkHeader: TCheckBox
        Left = 30
        Top = 111
        Width = 213
        Height = 16
        Caption = 'Output header row of field names?'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object feExportFile: TJvFilenameEdit
        Left = 91
        Top = 143
        Width = 216
        Height = 23
        OnBeforeDialog = feExportFileBeforeDialog
        OnAfterDialog = feExportFileAfterDialog
        DialogTitle = 'Browse Export File'
        ButtonWidth = 20
        TabOrder = 2
        Text = ''
        OnChange = feExportFileChange
      end
      object ckLaunchWord: TCheckBox
        Left = 11
        Top = 170
        Width = 93
        Height = 16
        Alignment = taLeftJustify
        Caption = 'Launch Word'
        TabOrder = 3
        OnClick = ckLaunchWordClick
      end
      object feWordTemplate: TJvFilenameEdit
        Left = 91
        Top = 191
        Width = 216
        Height = 23
        OnBeforeDialog = feWordTemplateBeforeDialog
        OnAfterDialog = feWordTemplateAfterDialog
        Filter = 
          'All files (*.*)|*.*|Word Templates (*.dot)|*.dot|Word Document (' +
          '*.doc)|*.doc'
        DialogTitle = 'Browse Word Template'
        Enabled = False
        ButtonWidth = 20
        TabOrder = 4
        Text = ''
        OnChange = feExportFileChange
      end
    end
    object tabFields: TcxTabSheet
      Caption = 'Fields'
      ImageIndex = 1
      OnShow = tabFieldsShow
      object gbFieldOrder: TGroupBox
        Left = 5
        Top = 10
        Width = 442
        Height = 304
        Caption = 'Fields to output (in sequence)'
        TabOrder = 0
        object Label6: TLabel
          Left = 7
          Top = 15
          Width = 48
          Height = 15
          Caption = 'Available'
        end
        object Label7: TLabel
          Left = 257
          Top = 15
          Width = 38
          Height = 15
          Caption = 'Output'
        end
        object lbFieldsAvailable: TListBox
          Left = 5
          Top = 30
          Width = 180
          Height = 239
          ItemHeight = 15
          MultiSelect = True
          Sorted = True
          TabOrder = 0
          OnDblClick = btnSelectClick
        end
        object lbFieldsOutput: TListBox
          Left = 257
          Top = 30
          Width = 180
          Height = 239
          ItemHeight = 15
          MultiSelect = True
          TabOrder = 1
          OnDblClick = btnUnselectClick
        end
        object btnSelect: TBitBtn
          Left = 187
          Top = 52
          Width = 68
          Height = 23
          Caption = 'Output'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            88888A888888888888888AA88888888888888AAA8888888888888AAAA8888888
            88888AAAAA88888888888AAAAAA8888888888AAAAAAA888888888AAAAAA88888
            88888AAAAA88888888888AAAA888888888888AAA8888888888888AA888888888
            88888A8888888888888888888888888888888888888888888888}
          Layout = blGlyphRight
          TabOrder = 2
          OnClick = btnSelectClick
        end
        object btnUnselect: TBitBtn
          Left = 187
          Top = 163
          Width = 68
          Height = 24
          Caption = 'Ignore'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888898888888888888899888888888888899988888888888899
            9988888888888999998888888888999999888888888999999988888888889999
            9988888888888999998888888888889999888888888888899988888888888888
            9988888888888888898888888888888888888888888888888888}
          TabOrder = 3
          OnClick = btnUnselectClick
        end
        object btnUp: TBitBtn
          Left = 257
          Top = 272
          Width = 53
          Height = 24
          Caption = 'Up'
          TabOrder = 4
          OnClick = btnUpClick
        end
        object btnDown: TBitBtn
          Left = 321
          Top = 272
          Width = 53
          Height = 24
          Caption = 'Down'
          TabOrder = 5
          OnClick = btnDownClick
        end
      end
    end
    object tabSortBy: TcxTabSheet
      Caption = 'Sort By'
      ImageIndex = 2
      object Label4: TLabel
        Left = 2
        Top = 7
        Width = 81
        Height = 15
        Caption = 'Available Fields'
      end
      object Label5: TLabel
        Left = 265
        Top = 7
        Width = 52
        Height = 15
        Caption = 'Sort order'
      end
      object lbAllFields: TListBox
        Left = 2
        Top = 22
        Width = 180
        Height = 287
        ItemHeight = 15
        MultiSelect = True
        Sorted = True
        TabOrder = 0
        OnDblClick = btnFieldsSelectClick
      end
      object lbSortBy: TListBox
        Left = 265
        Top = 22
        Width = 180
        Height = 287
        ItemHeight = 15
        MultiSelect = True
        TabOrder = 1
        OnDblClick = btnFieldsUnselectClick
      end
      object btnFieldsAll: TBitBtn
        Left = 184
        Top = 45
        Width = 80
        Height = 24
        Caption = 'All'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888A888888A88888888AA88888AA8888888AAA8888AAA888888AAAA888AAAA
          88888AAAAA88AAAAA8888AAAAAA8AAAAAA888AAAAAAAAAAAAAA88AAAAAA8AAAA
          AA888AAAAA88AAAAA8888AAAA888AAAA88888AAA8888AAA888888AA88888AA88
          88888A888888A888888888888888888888888888888888888888}
        Layout = blGlyphRight
        TabOrder = 2
        OnClick = btnFieldsAllClick
      end
      object btnFieldsSelect: TBitBtn
        Left = 184
        Top = 74
        Width = 80
        Height = 24
        Caption = 'Select'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888A888888888888888AA88888888888888AAA8888888888888AAAA8888888
          88888AAAAA88888888888AAAAAA8888888888AAAAAAA888888888AAAAAA88888
          88888AAAAA88888888888AAAA888888888888AAA8888888888888AA888888888
          88888A8888888888888888888888888888888888888888888888}
        Layout = blGlyphRight
        TabOrder = 3
        OnClick = btnFieldsSelectClick
      end
      object btnFieldsUnselect: TBitBtn
        Left = 184
        Top = 171
        Width = 80
        Height = 24
        Caption = 'Unselect'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888898888888888888899888888888888899988888888888899
          9988888888888999998888888888999999888888888999999988888888889999
          9988888888888999998888888888889999888888888888899988888888888888
          9988888888888888898888888888888888888888888888888888}
        TabOrder = 4
        OnClick = btnFieldsUnselectClick
      end
      object btnFieldsNone: TBitBtn
        Left = 184
        Top = 201
        Width = 80
        Height = 24
        Caption = 'None'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888988888898888888998888899888888999888899988888999988899
          9988889999988999998889999998999999889999999999999988899999989999
          9988889999988999998888899998889999888888999888899988888889988888
          9988888888988888898888888888888888888888888888888888}
        TabOrder = 5
        OnClick = btnFieldsNoneClick
      end
    end
    object tsNotes: TcxTabSheet
      Caption = 'Notes'
      ImageIndex = 3
      object ckAddContactNote: TCheckBox
        Left = 9
        Top = 10
        Width = 216
        Height = 16
        Caption = 'Add Following Note to Each Contact'
        TabOrder = 0
        OnClick = ckAddContactNoteClick
      end
      object mContactNote: TMemo
        Left = 9
        Top = 29
        Width = 434
        Height = 280
        TabOrder = 1
      end
    end
  end
  object qryMerge: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 257
    Top = 58
  end
  object qAddNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'insert into diary (start_dt, reminder_for, entered_by, descr, CR' +
        'EATION_DATE, nname)'
      
        'values (:start_dt, :entered_by, :entered_by, :descr, :CREATION_D' +
        'ATE, :nname)')
    Left = 256
    Top = 118
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'start_dt'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'entered_by'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'descr'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATION_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
end
