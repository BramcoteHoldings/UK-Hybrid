object frmDebtorDocumentMerge: TfrmDebtorDocumentMerge
  Left = 826
  Top = 337
  BorderStyle = bsDialog
  Caption = 'Merge'
  ClientHeight = 180
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcMerge: TcxPageControl
    Left = 0
    Top = 0
    Width = 584
    Height = 180
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Properties.ActivePage = tabWord
    Properties.CustomButtons.Buttons = <>
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 176
    ClientRectLeft = 4
    ClientRectRight = 580
    ClientRectTop = 24
    object tabWord: TcxTabSheet
      Caption = 'tabWord'
      ImageIndex = 0
      object cxEdOutfile: TcxTextEdit
        Left = 78
        Top = 7
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 304
      end
      object cxLabel1: TcxLabel
        Left = 7
        Top = 8
        Caption = 'Output File'
        Transparent = True
      end
      object cxBcShow: TcxCheckBox
        Left = 7
        Top = 30
        AutoSize = False
        Caption = 'Show File'
        Properties.Alignment = taRightJustify
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Transparent = True
        Height = 21
        Width = 88
      end
      object cxCbPrint: TcxCheckBox
        Left = 7
        Top = 52
        AutoSize = False
        Caption = 'Print File'
        Properties.Alignment = taRightJustify
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Transparent = True
        Height = 21
        Width = 88
      end
      object btnProcessWord: TBitBtn
        Left = 7
        Top = 93
        Width = 70
        Height = 23
        Caption = 'Process'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000008484000084840000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000848400008484000000000000FFFF
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000848400008484000000000000FFFF0000FFFF
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000848400008484000000000000FFFF0000FFFF
          000000000000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000848400008484000000000000FFFF0000FFFF0000FFFF
          000000000000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000848400008484000000000000FFFF000000000000FFFF
          0000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
          0000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000000000000000000000000000FFFF00000000000000000000FFFF
          0000FFFF000000000000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000848400008484000084840000000000008484000000000000FFFF
          0000FFFF000000000000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000000000FFFF
          00000000000000000000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000008484000084840000848400000000
          00008484000000000000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          00000000000000000000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000084840000848400000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000000000000000000000000000FF00FF00FF00FF00}
        TabOrder = 4
        OnClick = btnProcessWordClick
      end
    end
    object tabEmail: TcxTabSheet
      Caption = 'tabEmail'
      ImageIndex = 1
      DesignSize = (
        576
        152)
      object cxMemo1: TcxMemo
        Left = 186
        Top = 119
        Lines.Strings = (
          'cxMemo1')
        TabOrder = 0
        Height = 83
        Width = 172
      end
      object cxGroupBox1: TcxGroupBox
        Left = 7
        Top = 106
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Text'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 30
        Width = 562
        object mmEmail: TcxMemo
          Left = 2
          Top = 18
          Align = alClient
          Properties.ScrollBars = ssBoth
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 10
          Width = 558
        end
      end
      object cxLabel2: TcxLabel
        Left = 7
        Top = 31
        Caption = 'To'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 7
        Top = 54
        Caption = 'CC'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object edTo: TcxTextEdit
        Left = 52
        Top = 30
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 428
      end
      object edCC: TcxTextEdit
        Left = 52
        Top = 53
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 428
      end
      object cxLabel4: TcxLabel
        Left = 8
        Top = 77
        Caption = 'Subject'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object edSubject: TcxTextEdit
        Left = 52
        Top = 76
        Anchors = [akLeft, akTop, akRight]
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Width = 515
      end
      object edFrom: TcxTextEdit
        Left = 52
        Top = 7
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 211
      end
      object cxLabel5: TcxLabel
        Left = 8
        Top = 8
        Caption = 'From'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object btnSendEmail: TBitBtn
        Left = 7
        Top = 125
        Width = 70
        Height = 23
        Anchors = [akLeft, akBottom]
        Caption = 'Send'
        Glyph.Data = {
          56010000424D5601000000000000560000002800000010000000100000000100
          08000000000000010000C40E0000C40E00000800000008000000FF00FF00A79A
          420080800000CC666600FFFFFF00663333002222220080808000000000010607
          0707000000000000000000000001010607070707070000000000000000010102
          0607070707070707070006060606010202060707070707070707000505050505
          0505050505050505070000030404040404040404040404050700000304040404
          0404040404040405070000030404030303030304040404050700000304040404
          0404040404040405070000030404030303030304030304050700000304040404
          0404040403030405060000030404040404040404040404050206000303030303
          0303030303030303020200000000000000000000010202020200000000000000
          0000000000010202000000000000000000000000000001000000}
        TabOrder = 10
        OnClick = btnSendEmailClick
      end
    end
    object tabStatement: TcxTabSheet
      Caption = 'tabStatement'
      ImageIndex = 2
      object btnProcessStatement: TBitBtn
        Left = 7
        Top = 99
        Width = 70
        Height = 24
        Caption = 'Process'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF006633
          3300663333006633330066333300663333006633330066333300663333006633
          330066333300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00F8F8
          F800DDDDDD00D7D7D700D7D7D700CCCCCC00CCCCCC00C0C0C000CCCC9900CCCC
          990066333300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFF
          FF00CCCC9900CCCC9900CC999900FF00FF006633330066333300663333006633
          3300663333006633330066333300663333006633330066333300FF00FF00FFFF
          FF00FFFFFF00F8F8F800F1F1F100FF00FF00F8F8F800DDDDDD00D7D7D700D7D7
          D700CCCCCC00CCCCCC00C0C0C000CCCC9900CCCC990066333300B2B2B200FFFF
          FF00CCCCCC00CBCBCB00C0C0C000FF00FF00FFFFFF00CCCC9900CCCC9900CC99
          9900FFECCC00CC996600CC996600CC996600CCCC990066333300CC999900FFFF
          FF00FF00FF006633330066333300FF00FF00FFFFFF00FFFFFF00F8F8F800F1F1
          F100F1F1F100FFECCC00FFECCC00FFECCC00C0C0C00066333300CCCC9900FFFF
          FF00FF00FF00F8F8F800DDDDDD00B2B2B200FFFFFF00CCCCCC00CBCBCB00C0C0
          C000F8F8F800CC999900CC999900CC999900CCCCCC0066333300CCCC9900FFFF
          FF00FF00FF00FFFFFF00CCCC9900CC999900FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F8F8F800F1F1F100F1F1F100D7D7D70066333300FF999900FF99
          9900FF00FF00FFFFFF00FFFFFF00CCCC9900FFFFFF00CCCCCC00CCCCCC00CCCC
          CC00FFFFFF00CC999900CC999900CC999900DDDDDD0066333300FF999900F0CA
          A600B2B2B200FFFFFF00CCCCCC00CCCC9900FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F80066333300FF999900FF99
          9900CC999900FFFFFF00FFFFFF00FF999900FF999900FF996600FF996600CC99
          6600CC996600CC996600CC993300CC663300CC663300CC663300FFFFFF00FFFF
          FF00CCCC9900FFFFFF00CCCCCC00FF999900F0CAA600FFCC9900FFCC9900FFCC
          9900FF999900FF996600FF996600FF996600FF996600CC663300FFFFFF00FFFF
          FF00CCCC9900FFFFFF00FFFFFF00FF999900FF999900FF999900FF996600CC99
          6600CC996600CC996600CC996600CC663300CC663300CC663300FFFFFF00FFFF
          FF00FF999900FF999900FF996600FF996600CC996600CC996600CC996600CC99
          3300CC663300CC663300CC663300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FF999900F0CAA600FFCC9900FFCC9900FFCC9900FF999900FF996600FF99
          6600FF996600FF996600CC663300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FF999900FF999900FF999900FF996600CC996600CC996600CC996600CC99
          6600CC663300CC663300CC663300FFFFFF00FFFFFF00FFFFFF00}
        TabOrder = 0
        OnClick = btnProcessStatementClick
      end
      object cxLabel6: TcxLabel
        Left = 7
        Top = 7
        Caption = 'Output File'
        Transparent = True
      end
      object cxEdStmntOutfile: TcxTextEdit
        Left = 76
        Top = 7
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 304
      end
      object rgDestination: TcxRadioGroup
        Left = 7
        Top = 34
        Caption = 'Destination'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Open in Word'
          end
          item
            Caption = 'Preview'
          end>
        TabOrder = 3
        Transparent = True
        Height = 39
        Width = 273
      end
    end
  end
  object qryDataSource: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT :task_description AS task_description, c.NAME AS client_n' +
        'ame,'
      '       c.address AS client_address, c.suburb AS client_suburb,'
      '       c.state AS client_state, c.country AS client_country,'
      
        '       c.postcode AS client_postcode, c.homephone AS client_phon' +
        'e,'
      '       c.fax AS client_fax, c.email AS client_email,'
      
        '       c.longname AS client_longname, c.shortname AS client_shor' +
        'tname,'
      '       cm.address AS client_master_address,'
      '       cm.longname AS client_master_longname,'
      
        '       cm.shortname AS client_master_shortname, debtor.debtor_na' +
        'me,'
      
        '       debtor.debtor_address, debtor.debtor_suburb, debtor.debto' +
        'r_state,'
      
        '       debtor.debtor_country, debtor.debtor_postcode, debtor.deb' +
        'tor_phone,'
      
        '       debtor.debtor_fax, debtor.debtor_email, debtor.debtor_lon' +
        'gname,'
      '       debtor.debtor_shortname, debtor.debtor_master_address,'
      
        '       debtor.debtor_master_longname, debtor.debtor_master_short' +
        'name,'
      '       debtor.debtor_customaddress, debtor.debtor_customsuburb,'
      '       debtor.debtor_customstate, debtor.debtor_custompostcode,'
      '       debtor.debtor_customcountry, m.fileid AS matter_number,'
      '       m.longdescr AS matter_descr, m.contact AS matter_contact,'
      '       m.author AS matter_author, e.NAME AS matter_author_full,'
      '       m.partner AS matter_partner, m.OPERATOR AS matter_clerk,'
      
        '       m.controller AS matter_controller, m.paralegal AS matter_' +
        'paralegal,'
      '       m.clientid AS client_refno, n.refno AS bill_no,'
      '       n.dispatched AS bill_due_date,'
      '       TRIM (TO_CHAR (owing, '#39'999,999,999.00'#39')) AS bill_owing,'
      '       TRIM (TO_CHAR (total, '#39'999,999,999.00'#39')) AS bill_amount,'
      
        '       TRIM (TO_CHAR (matter_total.matter_owing, '#39'999,999,999.00' +
        #39')'
      '            ) AS matter_owing,'
      
        '       TRIM (TO_CHAR (matter_total.matter_amount, '#39'999,999,999.0' +
        '0'#39')'
      '            ) AS matter_amount,'
      '       gettrustbalamount (m.nmatter) AS trust_balance,'
      
        '       TO_CHAR (SYSDATE, '#39'ddmmyyyy'#39') AS system_date, n.inv_note ' +
        'AS bill_note,'
      '       p.NAME AS matter_partner_full'
      '  FROM phonebook c,'
      '       phonebook cm,'
      '       matter m,'
      '       employee e,'
      '       employee p,'
      '       nmemo n,'
      '       (SELECT SUM (owing) AS matter_owing,'
      '               SUM (  NVL (fees, 0)'
      '                    + NVL (disb, 0)'
      '                    + NVL (antd, 0)'
      '                    + NVL (sund, 0)'
      '                    + NVL (tax, 0)'
      '                    + NVL (upcred, 0)'
      '                   ) AS matter_amount'
      '          FROM nmemo, matter'
      
        '         WHERE matter.nmatter = nmemo.nmatter AND nmemo.nmemo = ' +
        ':nmemo) matter_total,'
      '       (SELECT NVL (p.NAME, pm.NAME) AS debtor_name,'
      '               NVL (DECODE (p.whichaddress,'
      '                            '#39'S'#39', p.address,'
      '                            '#39'P'#39', p.postaladdress,'
      '                            '#39'D'#39', p.dx'
      '                           ),'
      '                    DECODE (pm.whichaddress,'
      '                            '#39'S'#39', pm.address,'
      '                            '#39'P'#39', pm.postaladdress,'
      '                            '#39'D'#39', pm.dx'
      '                           )'
      '                   ) AS debtor_address,'
      '               NVL (DECODE (p.whichaddress,'
      '                            '#39'S'#39', p.suburb,'
      '                            '#39'P'#39', p.postalsuburb,'
      '                            '#39'D'#39', p.dxloc'
      '                           ),'
      '                    DECODE (pm.whichaddress,'
      '                            '#39'S'#39', pm.suburb,'
      '                            '#39'P'#39', pm.postalsuburb,'
      '                            '#39'D'#39', pm.dxloc'
      '                           )'
      '                   ) AS debtor_suburb,'
      
        '               NVL (DECODE (p.whichaddress, '#39'S'#39', p.state, '#39'P'#39', p' +
        '.postalstate),'
      '                    DECODE (pm.whichaddress,'
      '                            '#39'S'#39', pm.state,'
      '                            '#39'P'#39', pm.postalstate'
      '                           )'
      '                   ) AS debtor_state,'
      '               NVL (DECODE (p.whichaddress,'
      '                            '#39'S'#39', p.country,'
      '                            '#39'P'#39', p.postalcountry'
      '                           ),'
      '                    DECODE (pm.whichaddress,'
      '                            '#39'S'#39', pm.country,'
      '                            '#39'P'#39', pm.postalcountry'
      '                           )'
      '                   ) AS debtor_country,'
      '               NVL (DECODE (p.whichaddress,'
      '                            '#39'S'#39', p.postcode,'
      '                            '#39'P'#39', p.postalpostcode'
      '                           ),'
      '                    DECODE (pm.whichaddress,'
      '                            '#39'S'#39', pm.postcode,'
      '                            '#39'P'#39', pm.postalpostcode'
      '                           )'
      '                   ) AS debtor_postcode,'
      
        '               NVL (p.cust_address, pm.cust_address) AS debtor_c' +
        'ustomaddress,'
      
        '               NVL (p.cust_suburb, pm.cust_suburb) AS debtor_cus' +
        'tomsuburb,'
      
        '               NVL (p.cust_state, pm.cust_state) AS debtor_custo' +
        'mstate,'
      '               NVL (p.cust_postcode,'
      '                    pm.cust_postcode'
      '                   ) AS debtor_custompostcode,'
      
        '               NVL (p.cust_country, pm.cust_country) AS debtor_c' +
        'ustomcountry,'
      '               NVL (p.homephone, pm.homephone) AS debtor_phone,'
      '               NVL (p.fax, pm.fax) AS debtor_fax,'
      '               NVL (p.email, pm.email) AS debtor_email,'
      '               NVL (p.longname, pm.longname) AS debtor_longname,'
      
        '               NVL (p.shortname, pm.shortname) AS debtor_shortna' +
        'me,'
      '               pm.address AS debtor_master_address,'
      '               pm.longname AS debtor_master_longname,'
      '               pm.shortname AS debtor_master_shortname'
      '          FROM phonebook p, phonebook pm'
      '         WHERE p.nname IN ('
      
        '                        SELECT NVL (nmemo.nbill_to, matter.nbill' +
        '_to)'
      '                          FROM nmemo, matter'
      '                         WHERE nmemo = :nmemo'
      
        '                               AND nmemo.nmatter = matter.nmatte' +
        'r)'
      '           AND p.nnamemaster = pm.nname(+)) debtor'
      ' WHERE c.nclient = m.nclient'
      '   AND m.nmatter = n.nmatter'
      '   AND m.author = e.code'
      '   AND m.partner = p.code'
      '   AND c.nnamemaster = cm.nname(+)'
      '   AND n.nmemo = :nmemo')
    Left = 423
    Top = 69
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'task_description'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryDebtorNotesInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'insert into debtornotes(nmatter,created,createdby,note,nmemo,nde' +
        'btortask)'
      'values (:nmatter,sysdate,:createdby,:note,:nmemo,:ndebtortask)')
    Left = 456
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'createdby'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'note'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ndebtortask'
        Value = nil
      end>
  end
  object ppStatement: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = BillPrintBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 333
    Top = 81
    Version = '19.02'
    mmColumnWidth = 197300
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
