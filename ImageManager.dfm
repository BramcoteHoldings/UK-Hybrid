object frmImageManager: TfrmImageManager
  Left = 356
  Top = 206
  Caption = 'Image Manager'
  ClientHeight = 273
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 254
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object lvImages: TListView
      Left = 4
      Top = 4
      Width = 411
      Height = 246
      Align = alClient
      Columns = <>
      HotTrack = True
      HotTrackStyles = [htUnderlineHot]
      IconOptions.AutoArrange = True
      LargeImages = dmAxiom.ilPrecCategory
      PopupMenu = pmManageImages
      SmallImages = dmAxiom.ilPrecCategory
      TabOrder = 0
      OnDblClick = lvImagesDblClick
    end
  end
  object sbImageManager: TStatusBar
    Left = 0
    Top = 254
    Width = 419
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object pmManageImages: TPopupMenu
    Left = 8
    Top = 8
    object miAddImage: TMenuItem
      Caption = '&Add Image'
      OnClick = miAddImageClick
    end
    object miBulkAdd: TMenuItem
      Caption = '&Bulk Add'
      OnClick = miBulkAddClick
    end
  end
  object qryImageUpdate: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT IL.*, IL.ROWID'
      'FROM IMAGELIST IL')
    Left = 38
    Top = 8
  end
  object openImage: TOpenPictureDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmap files (*.bmp)|*.bmp'
    Options = [ofReadOnly, ofHideReadOnly, ofEnableSizing]
    Title = 'Select image to add to precedent categories list'
    Left = 68
    Top = 8
  end
end
