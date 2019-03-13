inherited frmSignature: TfrmSignature
  Left = 375
  Top = 212
  Caption = 'Signature'
  ClientHeight = 163
  ClientWidth = 292
  OldCreateOrder = True
  ExplicitWidth = 298
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 61
    Width = 28
    Height = 13
    Caption = 'Name'
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 79
    Width = 45
    Height = 13
    Caption = 'Signature'
  end
  object DBEdit1: TDBEdit [2]
    Left = 80
    Top = 56
    Width = 121
    Height = 21
    DataField = 'CODE'
    DataSource = dsSource
    TabOrder = 2
  end
  object dbSignature: TDBImage [3]
    Left = 80
    Top = 80
    Width = 121
    Height = 73
    DataField = 'IMAGE'
    DataSource = dsSource
    Stretch = True
    TabOrder = 3
  end
  object BitBtn1: TBitBtn [4]
    Left = 205
    Top = 67
    Width = 20
    Height = 20
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888000000000008888800333333333088880B033333333308880FB033333333
      30880BFB0333333333080FBFB000000000000BFBFBFBFB0888880FBFBFBFBF08
      88880BFB00000008888880008888888800088888888888888008888888880888
      0808888888888000888888888888888888888888888888888888}
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  inherited ilstToolbar: TImageList
    Left = 402
    Top = 32
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT S.*, S.ROWID'
      'FROM SIGNATURE S'
      'ORDER BY S.CODE')
  end
  inherited bmMain: TdxBarManager
    DockControlHeights = (
      0
      0
      53
      0)
    inherited bmMainBar1: TdxBar
      IsMainMenu = True
      MultiLine = True
      OldName = 'Main Menu1'
      Visible = True
      WholeRow = True
    end
    inherited bmMainBar2: TdxBar
      DockedTop = 25
      IsMainMenu = False
      MultiLine = False
      OldName = 'Toolbar1'
      Row = 1
      WholeRow = False
    end
  end
  inherited rpMaintReport: TppReport
    DataPipelineName = 'plSource'
    inherited ppMaintHeaderBand: TppHeaderBand
      inherited ppLine1: TppLine [0]
        LayerName = Foreground
      end
      inherited ppSystemVariable1: TppSystemVariable [1]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppSystemVariable2: TppSystemVariable [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblEntity: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblTitle: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppMaintDetailBand: TppDetailBand
      mmHeight = 14552
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CODE'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 5556
        mmTop = 794
        mmWidth = 53975
        BandType = 4
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        DataField = 'IMAGE'
        DataPipeline = plSource
        GraphicType = 'Bitmap'
        DataPipelineName = 'plSource'
        mmHeight = 13229
        mmLeft = 67998
        mmTop = 529
        mmWidth = 60325
        BandType = 4
      end
    end
    inherited ppMaintSummaryBand: TppSummaryBand
      inherited ppLine2: TppLine
        LayerName = Foreground
      end
    end
  end
  inherited plSource: TppDBPipeline
    object plSourceppField1: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'IMAGE'
      FieldName = 'IMAGE'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plSourceppField3: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 2
    end
  end
  object loadPicture: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 248
    Top = 104
  end
end
