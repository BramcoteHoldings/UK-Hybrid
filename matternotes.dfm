object frmNotesMatter: TfrmNotesMatter
  Left = 799
  Top = 287
  Caption = 'Matter Notes'
  ClientHeight = 349
  ClientWidth = 502
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
  TextHeight = 13
  object dxStatusBar: TdxStatusBar
    Left = 0
    Top = 331
    Width = 502
    Height = 18
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 232
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 232
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end>
    PaintStyle = stpsXP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object RichEdit1: TcxRichEdit
    Left = 0
    Top = 28
    Align = alClient
    Lines.Strings = (
      'RichEdit1')
    TabOrder = 5
    ExplicitLeft = 37
    ExplicitTop = 42
    ExplicitWidth = 185
    ExplicitHeight = 89
    Height = 303
    Width = 502
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
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 202
    Top = 98
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Toolbar'
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
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonSave'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButtonUndo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSpellCheck'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      MultiLine = True
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButtonSave: TdxBarButton
      Caption = 'Save && Close'
      Category = 0
      Enabled = False
      Hint = 'Save & Close Notes'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButtonSaveClick
    end
    object dxBarButtonUndo: TdxBarButton
      Caption = 'Undo'
      Category = 0
      Enabled = False
      Hint = 'Undo'
      Visible = ivAlways
      ImageIndex = 20
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButtonUndoClick
    end
    object btnSpellCheck: TdxBarButton
      Caption = 'Spell Check'
      Category = 0
      Hint = 'Spell Check'
      Visible = ivAlways
      ImageIndex = 28
      ShortCut = 118
      OnClick = btnSpellCheckClick
    end
    object btnPrint: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF806060FF806060FFFF00FFFFFF00FFFF806060FF806060FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF806060FFA4A0A0FFA4A0A0FF806060FF806060FF806060FFF0FBFFFF8060
        60FF806060FF806060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8060
        60FFC0DCC0FFA4A0A0FFA4A0A0FFA4A0A0FF404040FF404040FF806060FFC0C0
        C0FFF0FBFFFFC0C0C0FF806060FF806060FF806060FFFFFFFFFF806060FFC0DC
        C0FFC0C0C0FFA4A0A0FFA4A0A0FFA4A0A0FF404040FF000000FF000000FF0000
        00FF000000FF808080FFC0C0C0FF806060FFFF00FFFF806060FFC0C0C0FFC0C0
        C0FFA4A0A0FFC0DCC0FFC0C0C0FFC0C0C0FFC0C0C0FFA4A0A0FFA4A0A0FF4060
        60FF000000FF000000FF000000FF806060FF808080FF806060FFC0C0C0FFA4A0
        A0FFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFC0DCC0FFC0DCC0FFC0C0C0FFC0C0
        C0FFC0C0C0FFA4A0A0FF406060FF808080FF808080FF806060FFA4A0A0FFF0FB
        FFFFF0FBFFFFF0FBFFFFC0DCC0FFA4A0A0FFA4A0A0FFC0C0C0FFC0C0C0FFC0DC
        C0FFC0DCC0FFC0C0C0FFC0C0C0FFA4A0A0FF806060FFFFFFFFFF806060FF8060
        60FFF0FBFFFFC0C0C0FF808080FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0
        A0FFA4A0A0FFC0C0C0FFC0C0C0FFC0C0C0FF806060FFFFFFFFFFFFFFFFFFFFFF
        FFFF806060FFC0A060FF806060FF806060FF808080FF806060FF808080FFA4A0
        A0FFA4A0A0FFC0C0C0FFC0C0C0FF806060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC0A060FFF0CAA6FFF0CAA6FFF0CAA6FFC0A060FFC0A060FFC0A0
        60FF808080FF806060FF806060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC0A060FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0A0
        60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC0A060FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0A060FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC0A060FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0A060FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A0
        60FFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0A060FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A0
        60FFC0A060FFC0A060FFF0FBFFFFF0CAA6FFF0CAA6FFC0A060FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC0A060FFC0A060FFC0A060FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnPrintClick
    end
  end
  object qryMatterNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select matter.notes, matter.rowid '
      'from '
      ' matter '
      'where'
      ' nmatter = :nmatter')
    CachedUpdates = True
    Left = 103
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object qryDocNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select doc.doc_notes, doc.rowid '
      'from '
      ' doc'
      'where'
      ' docid = :docid')
    CachedUpdates = True
    Left = 122
    Top = 181
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
end
