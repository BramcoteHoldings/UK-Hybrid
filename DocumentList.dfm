object frmDocumentList: TfrmDocumentList
  Left = 196
  Top = 247
  Caption = 'Document List'
  ClientHeight = 602
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 582
    Width = 929
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ExplicitTop = 586
    ExplicitWidth = 937
  end
  object pagDocuments: TcxPageControl
    Left = 0
    Top = 28
    Width = 929
    Height = 554
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = True
    OnChange = pagDocumentsChange
    ExplicitWidth = 937
    ExplicitHeight = 558
    ClientRectBottom = 550
    ClientRectLeft = 4
    ClientRectRight = 925
    ClientRectTop = 24
    object tabDocuments: TcxTabSheet
      Caption = 'Documents'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdDocList: TcxGrid
        Left = 0
        Top = 0
        Width = 931
        Height = 532
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvDocList: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsDocs
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          object tvDocListDOC_NAME: TcxGridDBColumn
            Caption = 'Document Name'
            DataBinding.FieldName = 'DOC_NAME'
            Width = 190
          end
          object tvDocListSEARCH: TcxGridDBColumn
            DataBinding.FieldName = 'SEARCH'
            Width = 179
          end
          object tvDocListDOC_CODE: TcxGridDBColumn
            DataBinding.FieldName = 'DOC_CODE'
            Width = 142
          end
          object tvDocListD_CREATE: TcxGridDBColumn
            Caption = 'Created'
            DataBinding.FieldName = 'D_CREATE'
            Width = 129
          end
          object tvDocListAUTH1: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTH1'
            Width = 43
          end
          object tvDocListPATH: TcxGridDBColumn
            Caption = 'Path'
            DataBinding.FieldName = 'PATH'
            Width = 304
          end
          object tvDocListDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            Width = 188
          end
          object tvDocListFILEID: TcxGridDBColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
          end
          object tvDocListDOCUMENT: TcxGridDBColumn
            DataBinding.FieldName = 'DOCUMENT'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekBlob
            Width = 94
          end
        end
        object grdDocListLevel1: TcxGridLevel
          GridView = tvDocList
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    PopupMenuLinks = <>
    Style = bmsXP
    UseSystemFont = True
    Left = 456
    Top = 22
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Tollbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OldName = 'Tollbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object qryDoc: TUniQuery
    DataTypeMap = <>
    SQL.Strings = (
      'select * '
      'from doc d, matter m'
      'where d.nmatter = m.nmatter')
    Left = 64
    Top = 146
  end
  object dsDocs: TUniDataSource
    DataSet = qryDoc
    Left = 128
    Top = 162
  end
end
