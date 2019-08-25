object frmInvoiceSearch: TfrmInvoiceSearch
  Left = 567
  Top = 240
  Caption = 'Bill Selection'
  ClientHeight = 670
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    766
    670)
  PixelsPerInch = 96
  TextHeight = 15
  object pageSearch: TcxPageControl
    Left = 8
    Top = 8
    Width = 750
    Height = 654
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Properties.ActivePage = tabFilters
    Properties.CustomButtons.Buttons = <>
    OnChange = pageSearchChange
    ClientRectBottom = 650
    ClientRectLeft = 4
    ClientRectRight = 746
    ClientRectTop = 26
    object tabGrid: TcxTabSheet
      Caption = 'Bills'
      ImageIndex = 0
      DesignSize = (
        742
        624)
      object Label6: TLabel
        Left = 198
        Top = 589
        Width = 83
        Height = 30
        Anchors = [akLeft, akBottom]
        Caption = '&Search by Bill # or bPay code'
        FocusControl = tbBillNo
        WordWrap = True
      end
      object Label5: TLabel
        Left = 4
        Top = 596
        Width = 89
        Height = 15
        Anchors = [akLeft, akBottom]
        Caption = '&Search by Matter'
        FocusControl = tbMatterSearch
      end
      object dbgrInvoices: TcxGrid
        Left = 1
        Top = 0
        Width = 738
        Height = 583
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
        object tvInvoices: TcxGridDBTableView
          OnDblClick = dbgrInvoicesDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsInvoices
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OnColumnHeaderClick = tvInvoicesColumnHeaderClick
          object tvInvoicesREFNO: TcxGridDBColumn
            Caption = 'Bill'
            DataBinding.FieldName = 'REFNO'
            Styles.Header = cxStyle1
            Width = 50
          end
          object tvInvoicesTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taRightJustify
            Styles.Header = cxStyle2
            Width = 67
          end
          object tvInvoicesOWING: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            HeaderAlignmentHorz = taRightJustify
            Styles.Header = cxStyle3
            Width = 67
          end
          object tvInvoicesDISPATCHED: TcxGridDBColumn
            Caption = 'Dispatched'
            DataBinding.FieldName = 'DISPATCHED'
            Styles.Header = cxStyle4
            Width = 69
          end
          object tvInvoicesFILEID: TcxGridDBColumn
            Caption = 'File'
            DataBinding.FieldName = 'FILEID'
            Styles.Header = cxStyle5
            Width = 72
          end
          object tvInvoicesTITLE: TcxGridDBColumn
            Caption = 'Client'
            DataBinding.FieldName = 'TITLE'
            Styles.Header = cxStyle6
            Width = 125
          end
          object tvInvoicesSHORTDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'SHORTDESCR'
            Styles.Header = cxStyle7
            Width = 130
          end
          object tvInvoicesPARTNER: TcxGridDBColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'PARTNER'
            Styles.Header = cxStyle8
            Width = 40
          end
          object tvInvoicesAUTHOR: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTHOR'
            Styles.Header = cxStyle9
            Width = 40
          end
          object tvInvoicesTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            Styles.Header = cxStyle10
            Width = 35
          end
        end
        object dbgrInvoicesLevel1: TcxGridLevel
          GridView = tvInvoices
        end
      end
      object cbShowAll: TCheckBox
        Left = 401
        Top = 596
        Width = 69
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = 'Show All'
        TabOrder = 1
        Visible = False
        OnClick = cbShowAllClick
      end
      object tbMatterSearch: TEdit
        Left = 99
        Top = 593
        Width = 90
        Height = 23
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = EnableTimer
        OnKeyDown = tbMatterSearchKeyDown
      end
      object tbBillNo: TEdit
        Left = 289
        Top = 593
        Width = 91
        Height = 23
        Anchors = [akLeft, akBottom]
        TabOrder = 3
        OnChange = EnableTimer
        OnKeyDown = tbMatterSearchKeyDown
      end
      object btnOK: TBitBtn
        Left = 597
        Top = 590
        Width = 68
        Height = 24
        Anchors = [akRight, akBottom]
        Caption = '&OK'
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 4
      end
      object btnCancel: TBitBtn
        Left = 671
        Top = 590
        Width = 68
        Height = 24
        Anchors = [akRight, akBottom]
        Caption = '&Cancel'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 5
        OnClick = btnCancelClick
      end
    end
    object tabFilters: TcxTabSheet
      Caption = 'Filters'
      ImageIndex = 1
      DesignSize = (
        742
        624)
      object btnClearAll: TBitBtn
        Left = 643
        Top = 594
        Width = 87
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = 'Clear &All'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btnClearAllClick
      end
      object fraLike: TcxGroupBox
        Left = 7
        Top = 114
        Caption = 'Select Like'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Transparent = True
        Height = 75
        Width = 296
        object Label4: TLabel
          Left = 15
          Top = 23
          Width = 31
          Height = 15
          Caption = 'Client'
        end
        object Label7: TLabel
          Left = 14
          Top = 49
          Width = 65
          Height = 15
          Caption = 'File Number'
        end
        object tbClient: TEdit
          Left = 87
          Top = 20
          Width = 135
          Height = 23
          TabOrder = 0
        end
        object tbFile: TEdit
          Left = 87
          Top = 46
          Width = 90
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 1
        end
      end
      object fraEqual: TcxGroupBox
        Left = 7
        Top = 12
        Caption = 'Select Equal to'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Transparent = True
        Height = 96
        Width = 296
        object lblPartner: TLabel
          Left = 7
          Top = 22
          Width = 38
          Height = 15
          Caption = 'Partner'
        end
        object Label3: TLabel
          Left = 7
          Top = 70
          Width = 25
          Height = 15
          Caption = 'Type'
        end
        object lblAuthor: TLabel
          Left = 7
          Top = 46
          Width = 37
          Height = 15
          Caption = 'Author'
        end
        object cbPartner: TComboBox
          Left = 87
          Top = 19
          Width = 68
          Height = 23
          TabOrder = 0
        end
        object cbAuthor: TComboBox
          Left = 87
          Top = 43
          Width = 68
          Height = 23
          TabOrder = 1
        end
        object cbType: TComboBox
          Left = 87
          Top = 67
          Width = 68
          Height = 23
          TabOrder = 2
        end
      end
    end
  end
  object qryInvoices: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NMATTER.ACCT,NMEMO.REFNO, NMEMO.NMEMO, NMEMO.DISPATCHED, ' +
        '(NMEMO.FEES+NMEMO.DISB+NMEMO.SUND+NMEMO.ANTD+NMEMO.TAX) AS TOTAL' +
        ', NMEMO.FILEID, MATTER.TITLE, MATTER.SHORTDESCR, NMEMO.PARTNER, ' +
        'NMEMO.AUTHOR, MATTER.TYPE, '
      
        '              (NMEMO.FEES+NMEMO.DISB+NMEMO.SUND+NMEMO.ANTD+NMEMO' +
        '.TAX-(NMEMO.FEES_PAID+NMEMO.DISB_PAID+NMEMO.ANTD_PAID+NMEMO.SUND' +
        '_PAID+NMEMO.TAX_PAID)) AS OWING'
      'FROM NMEMO, MATTER WHERE NMEMO.NMATTER = MATTER.NMATTER'
      'ORDER BY NMEMO')
    Left = 542
    Top = 4
  end
  object dsInvoices: TUniDataSource
    AutoEdit = False
    DataSet = qryInvoices
    Left = 581
    Top = 4
  end
  object tmrSearch: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = tmrSearchTimer
    Left = 508
    Top = 8
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 530
    Top = 64
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
  end
end
