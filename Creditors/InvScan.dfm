object Form1: TForm1
  Left = 630
  Top = 472
  Width = 258
  Height = 141
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnAcquireDoc: TcxButton
    Left = 58
    Top = 48
    Width = 122
    Height = 22
    Caption = 'Scan Document'
    TabOrder = 0
    OnClick = btnAcquireDocClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F0000000000F
      FFFF777777777777FFFF7F88888888770FFF7FA28888888770FF7FFFFFFFFFF7
      870F7777777777778770F78FFF88E8E87870FF78888E8E8EE770FFF78888888E
      8E70FFFF777000000000FFFFF77777777770FFFF78887877770FFFF788888787
      80FFFF78888888880FFFF78888888880FFFF77777777700FFFFF}
    LookAndFeel.NativeStyle = True
  end
  object TwainInvoice: TDelphiTwain
    OnTwainAcquire = TwainInvoiceTwainAcquire
    TransferMode = ttmMemory
    SourceCount = 0
    Info.MajorVersion = 1
    Info.MinorVersion = 0
    Info.Language = tlUserLocale
    Info.CountryCode = 61
    Info.Groups = [tgControl, tgImage]
    Info.VersionInfo = 'Application name'
    Info.Manufacturer = 'Application manufacturer'
    Info.ProductFamily = 'App product family'
    Info.ProductName = 'App product name'
    LibraryLoaded = False
    SourceManagerLoaded = False
    Left = 203
    Top = 14
  end
end
