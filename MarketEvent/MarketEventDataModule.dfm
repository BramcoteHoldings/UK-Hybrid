object dmMarketEventDataModule: TdmMarketEventDataModule
  OldCreateOrder = False
  Height = 319
  Width = 624
  object tbEventTypes: TUniTable
    TableName = 'EVENT_TYPES'
    OrderFields = 'EVENT_TYPE_ID'
    Connection = dmAxiom.uniInsight
    OnNewRecord = tbEventTypesNewRecord
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SEQ_EVENTTYPES'
      'Oracle.FetchAll=True')
    Left = 33
    Top = 17
  end
  object dsEventTypes: TUniDataSource
    AutoEdit = False
    DataSet = tbEventTypes
    Left = 32
    Top = 70
  end
  object qryEvent: TUniQuery
    UpdatingTable = 'EVENT'
    KeyFields = 'event_id'
    SQLInsert.Strings = (
      'INSERT INTO EVENT'
      
        '  (EVENT_ID, EVENT, EVENT_TYPE, COORDINATOR, EVENT_LOCATION, EVE' +
        'NT_DATE, EVENT_TIME, DESCRIPTION, EVENT_BUDGET, COST_PER_PERSON)'
      'VALUES'
      
        '  (:EVENT_ID, :EVENT, :EVENT_TYPE, :COORDINATOR, :EVENT_LOCATION' +
        ', :EVENT_DATE, :EVENT_TIME, :DESCRIPTION, :EVENT_BUDGET, :COST_P' +
        'ER_PERSON)')
    SQLDelete.Strings = (
      'DELETE FROM EVENT'
      'WHERE'
      '  EVENT_ID = :Old_EVENT_ID')
    SQLUpdate.Strings = (
      'UPDATE EVENT'
      'SET'
      
        '  EVENT_ID = :EVENT_ID, EVENT = :EVENT, EVENT_TYPE = :EVENT_TYPE' +
        ', COORDINATOR = :COORDINATOR, EVENT_LOCATION = :EVENT_LOCATION, ' +
        'EVENT_DATE = :EVENT_DATE, EVENT_TIME = :EVENT_TIME, DESCRIPTION ' +
        '= :DESCRIPTION, EVENT_BUDGET = :EVENT_BUDGET, COST_PER_PERSON = ' +
        ':COST_PER_PERSON'
      'WHERE'
      '  EVENT_ID = :Old_EVENT_ID')
    SQLLock.Strings = (
      
        'SELECT EVENT_ID, EVENT, EVENT_TYPE, COORDINATOR, EVENT_LOCATION,' +
        ' EVENT_DATE, EVENT_TIME, DESCRIPTION, EVENT_BUDGET, COST_PER_PER' +
        'SON FROM EVENT'
      'WHERE'
      '  EVENT_ID = :Old_EVENT_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT EVENT_ID, EVENT, EVENT_TYPE, COORDINATOR, EVENT_LOCATION,' +
        ' EVENT_DATE, EVENT_TIME, DESCRIPTION, EVENT_BUDGET, COST_PER_PER' +
        'SON FROM EVENT'
      'WHERE'
      '  EVENT_ID = :EVENT_ID')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM EVENT'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select et.event_type_descr, e.*, e.rowid'
      'from'
      'event e, event_types et'
      'where'
      'e.event_type = et.event_type_id')
    IndexFieldNames = 'EVENT_ID'
    Left = 128
    Top = 17
  end
  object dsEvent: TUniDataSource
    DataSet = qryEvent
    Left = 128
    Top = 67
  end
  object qryEventParticipants: TUniQuery
    UpdatingTable = 'event_participant'
    KeyFields = 'EVENT_PART_ID'
    SQLInsert.Strings = (
      'INSERT INTO event_participant'
      
        '  (EVENT_PART_ID, EVENT_ID, NNAME, ATTENDED, ACCEPTED, DECLINED,' +
        ' PRINTED, ALT_NAME, NOTES, SEARCH, ALT_SEARCH)'
      'VALUES'
      
        '  (:EVENT_PART_ID, :EVENT_ID, :NNAME, :ATTENDED, :ACCEPTED, :DEC' +
        'LINED, :PRINTED, :ALT_NAME, :NOTES, :SEARCH, :ALT_SEARCH)')
    SQLDelete.Strings = (
      'DELETE FROM event_participant'
      'WHERE'
      '  EVENT_PART_ID = :EVENT_PART_ID')
    SQLUpdate.Strings = (
      'UPDATE event_participant'
      'SET'
      '  EVENT_ID = :EVENT_ID,'
      '  NNAME = :NNAME,'
      '  ATTENDED = :ATTENDED,'
      '  ACCEPTED = :ACCEPTED,'
      '  DECLINED = :DECLINED,'
      '  PRINTED = :PRINTED,'
      '  ALT_NAME = :ALT_NAME,'
      '  NOTES = :NOTES,'
      '  SEARCH = :SEARCH,'
      '  ALT_SEARCH = :ALT_SEARCH'
      'WHERE'
      '  EVENT_PART_ID = :OLD_EVENT_PART_ID')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      '  event_participant.event_part_id,event_participant.attended,'
      '  event_participant.accepted,event_participant.declined,'
      '  event_participant.printed,event_participant.nname,'
      '  event_participant.alt_name,'
      '  p.search "p_search",'
      '  p1.search "alt_search",'
      '  event_participant.notes, '
      '  event_participant.event_id,'
      '  event_participant.search,'
      '  p.email,'
      '  p.salutation,'
      '  p.givennames,'
      '  p.lastname,'
      '  p.workphone,'
      '  event_participant.rowid'
      'from  '
      '  event_participant,'
      '  phonebook p,'
      '  phonebook p1 '
      'where event_participant.event_id = :event_id'
      'and event_participant.nname = p.nname'
      'and event_participant.alt_name = p1.nname (+)')
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SEQ_EVENT_PARTIC_ID')
    IndexFieldNames = 'EVENT_PART_ID'
    BeforePost = qryEventParticipantsBeforePost
    Left = 241
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'event_id'
        Value = nil
      end>
  end
  object dsEventParticipants: TUniDataSource
    DataSet = qryEventParticipants
    Left = 240
    Top = 65
  end
  object tbEvent: TUniTable
    TableName = 'EVENT'
    Connection = dmAxiom.uniInsight
    KeyFields = 'EVENT_ID'
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SEQ_EVENT_ID')
    Left = 31
    Top = 122
  end
  object dstbEvent: TUniDataSource
    DataSet = tbEvent
    Left = 32
    Top = 166
  end
  object dsParticipantEvents: TUniDataSource
    DataSet = qryParticipantEvents
    Left = 130
    Top = 177
  end
  object qryParticipantEvents: TUniQuery
    KeyFields = 'EVENT_PART_ID'
    SQLDelete.Strings = (
      'DELETE FROM event_participant'
      'WHERE'
      '  EVENT_PART_ID = :EVENT_PART_ID')
    SQLUpdate.Strings = (
      'UPDATE event_participant'
      'SET'
      '  ATTENDED = :ATTENDED,'
      '  ACCEPTED = :ACCEPTED,'
      '  DECLINED = :DECLINED,'
      '  PRINTED = :PRINTED'
      'WHERE'
      '  EVENT_PART_ID = :OLD_EVENT_PART_ID')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select event.event,event.event_date,event.event_time,'
      
        'event_participant.attended,event_participant.accepted,event_part' +
        'icipant.declined,event_participant.printed,'
      
        'phonebook.search,event_participant.notes,event_participant.event' +
        '_part_id,event_participant.rowid'
      'from'
      'event_participant, event, phonebook'
      'where event.event_id = event_participant.event_id'
      'and event_participant.nname = :nname'
      'and event_participant.alt_name = phonebook.nname (+)')
    IndexFieldNames = 'EVENT_PART_ID'
    Left = 126
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qryEventDetails: TUniQuery
    LocalUpdate = True
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select ep.*,p.search as alt_namesearch'
      'from event_participant ep, phonebook p'
      'where ep.event_part_id = :event_part_id'
      'and ep.alt_name = p.nname(+)')
    Left = 249
    Top = 123
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'event_part_id'
        Value = nil
      end>
  end
  object dsEventDetails: TUniDataSource
    DataSet = qryEventDetails
    Left = 251
    Top = 174
  end
  object qryEventDtls: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select et.event_type_descr, e.*'
      'from event e, event_types et'
      'where e.event_type = et.event_type_id'
      'and e.event_id = :event_id')
    Left = 37
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'event_id'
        Value = nil
      end>
  end
  object dsEventDtls: TUniDataSource
    DataSet = qryEventDtls
    Left = 507
    Top = 127
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select name, code from employee where active = '#39'Y'#39)
    Left = 368
    Top = 17
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 431
    Top = 16
  end
  object qryEventParticipantsList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select ep.nname'
      'from'
      'event e, event_participant ep'
      'where '
      'e.event_id = ep.event_id'
      'and '
      '')
    Left = 387
    Top = 91
  end
  object qryPartyDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT p.nname AS nname,'
      '       NVL (p.givennames, m.givennames) AS partygivennames,'
      
        '       NVL (p.lastname, m.lastname) AS partylastname, p.search A' +
        'S partysearch,'
      '       p.title AS partytitle, p.gender AS partygender,'
      '       TRIM (DECODE (p.whichaddress,'
      '                     '#39'S'#39', NVL (p.address, m.address)'
      '                      || CHR (13)'
      '                      || CHR (10)'
      '                      || DECODE (p.address,'
      '                                 NULL, NVL (p.suburb, m.suburb),'
      '                                 p.suburb'
      '                                )'
      '                      || '#39' '#39
      '                      || DECODE (p.address,'
      '                                 NULL, NVL (p.state, m.state),'
      '                                 p.state'
      '                                )'
      '                      || '#39' '#39
      '                      || DECODE (p.address,'
      
        '                                 NULL, NVL (p.postcode, m.postco' +
        'de),'
      '                                 p.postcode'
      '                                )'
      '                      || DECODE (DECODE (p.address,'
      
        '                                         NULL, NVL (p.country, m' +
        '.country),'
      '                                         p.country'
      '                                        ),'
      '                                 NULL, '#39#39','
      '                                    CHR (13)'
      '                                 || CHR (10)'
      '                                 || DECODE (p.address,'
      
        '                                            NULL, NVL (p.country' +
        ', m.country),'
      '                                            p.country'
      '                                           )'
      '                                ),'
      '                     NULL, NVL (p.address, m.address)'
      '                      || CHR (13)'
      '                      || CHR (10)'
      '                      || DECODE (p.address,'
      '                                 NULL, NVL (p.suburb, m.suburb),'
      '                                 p.suburb'
      '                                )'
      '                      || '#39' '#39
      '                      || DECODE (p.address,'
      '                                 NULL, NVL (p.state, m.state),'
      '                                 p.state'
      '                                )'
      '                      || '#39' '#39
      '                      || DECODE (p.address,'
      
        '                                 NULL, NVL (p.postcode, m.postco' +
        'de),'
      '                                 p.postcode'
      '                                )'
      '                      || DECODE (DECODE (p.address,'
      
        '                                         NULL, NVL (p.country, m' +
        '.country),'
      '                                         p.country'
      '                                        ),'
      '                                 NULL, '#39#39','
      '                                    CHR (13)'
      '                                 || CHR (10)'
      '                                 || NVL (p.country, m.country)'
      '                                ),'
      '                     '#39'P'#39', NVL (p.postaladdress, m.postaladdress)'
      '                      || CHR (13)'
      '                      || CHR (10)'
      '                      || DECODE (p.postaladdress,'
      
        '                                 NULL, NVL (p.postalsuburb, m.po' +
        'stalsuburb),'
      '                                 p.postalsuburb'
      '                                )'
      '                      || '#39' '#39
      '                      || DECODE (p.postaladdress,'
      
        '                                 NULL, NVL (p.postalstate, m.pos' +
        'talstate),'
      '                                 p.postalstate'
      '                                )'
      '                      || '#39' '#39
      '                      || DECODE (p.postaladdress,'
      '                                 NULL, NVL (p.postalpostcode,'
      '                                            m.postalpostcode),'
      '                                 p.postalpostcode'
      '                                )'
      '                      || DECODE (DECODE (p.postaladdress,'
      
        '                                         NULL, NVL (p.postalcoun' +
        'try,'
      
        '                                                    m.postalcoun' +
        'try'
      '                                                   ),'
      '                                         p.postalcountry'
      '                                        ),'
      '                                 NULL, '#39#39','
      '                                    CHR (13)'
      '                                 || CHR (10)'
      '                                 || DECODE (p.postaladdress,'
      
        '                                            NULL, NVL (p.postalc' +
        'ountry,'
      
        '                                                       m.postalc' +
        'ountry'
      '                                                      ),'
      '                                            p.postalcountry'
      '                                           )'
      '                                ),'
      '                     '#39'C'#39', NVL (p.cust_address, m.cust_address)'
      '                      || CHR (13)'
      '                      || CHR (10)'
      '                      || DECODE (p.cust_address,'
      
        '                                 NULL, NVL (p.cust_suburb, m.cus' +
        't_suburb),'
      '                                 p.cust_suburb'
      '                                )'
      '                      || '#39' '#39
      '                      || DECODE (p.cust_address,'
      
        '                                 NULL, NVL (p.cust_state, m.cust' +
        '_state),'
      '                                 p.cust_state'
      '                                )'
      '                      || '#39' '#39
      '                      || DECODE (p.cust_address,'
      
        '                                 NULL, NVL (p.cust_postcode, m.c' +
        'ust_postcode),'
      '                                 p.cust_postcode'
      '                                )'
      '                      || DECODE (DECODE (p.cust_address,'
      
        '                                         NULL, NVL (p.cust_count' +
        'ry,'
      
        '                                                    m.cust_count' +
        'ry'
      '                                                   ),'
      '                                         p.cust_country'
      '                                        ),'
      '                                 NULL, '#39#39','
      '                                    CHR (13)'
      '                                 || CHR (10)'
      '                                 || DECODE (p.cust_address,'
      
        '                                            NULL, NVL (p.cust_co' +
        'untry,'
      
        '                                                       m.cust_co' +
        'untry'
      '                                                      ),'
      '                                            p.cust_country'
      '                                           )'
      '                                ),'
      '                     '#39'D'#39', '#39'DX '#39
      '                      || NVL (p.dx, m.dx)'
      '                      || CHR (13)'
      '                      || CHR (10)'
      '                      || NVL (p.dxloc, m.dxloc)'
      '                    )'
      '            ) AS partyaddress,'
      '       NVL (p.salutation, m.salutation) AS partysalutation,'
      '       NVL (p.workphone, m.workphone) AS partyworkphone,'
      '       NVL (p.homephone, m.homephone) AS partyhomephone,'
      
        '       NVL (p.dx, m.dx) AS partydx, NVL (p.dxloc, m.dxloc) AS pa' +
        'rtydxloc,'
      '       NVL (p.fax, m.fax) AS partyfax, p.code AS partycode,'
      '       p.sparty AS partysparty, p.solicitor AS partysolicitor,'
      
        '       p.real_estate AS partyreal_estate, p.referrals AS partyre' +
        'ferrals,'
      '       p.note AS partynote, NVL (p.NAME, m.NAME) AS partyname,'
      '       NVL (p.shortname, m.shortname) AS partyshortname,'
      '       NVL (p.longname, m.longname) AS partylongname,'
      '       p.mod_date AS partymod_date, p.mod_by AS partymod_by,'
      
        '       p.TYPE AS partytype, NVL (p.country, m.country) AS partyc' +
        'ountry,'
      
        '       p.acn AS partyacn, p.occupation AS partyoccupation, p.dob' +
        ' AS partydob,'
      
        '       NVL (p.email, m.email) AS partyemail, NVL (p.www, m.www) ' +
        'AS partywww,'
      '       NVL (p.mobile, m.mobile) AS partymobile,'
      '       NVL (p.address, m.address) AS address,'
      '       DECODE (p.address,'
      '               NULL, NVL (p.suburb, m.suburb),'
      '               p.suburb'
      '              ) AS suburb,'
      
        '       DECODE (p.address, NULL, NVL (p.state, m.state), p.state)' +
        ' AS state,'
      '       DECODE (p.address,'
      '               NULL, NVL (p.postcode, m.postcode),'
      '               p.postcode'
      '              ) AS postcode,'
      '       DECODE (p.address,'
      '               NULL, NVL (p.country, m.country),'
      '               p.country'
      '              ) AS country,'
      '       NVL (p.postaladdress, m.postaladdress) AS postaladdress,'
      '       DECODE (p.postaladdress,'
      '               NULL, NVL (p.postalsuburb, m.postalsuburb),'
      '               p.postalsuburb'
      '              ) AS postalsuburb,'
      '       DECODE (p.postaladdress,'
      '               NULL, NVL (p.postalstate, m.postalstate),'
      '               p.postalstate'
      '              ) AS postalstate,'
      '       DECODE (p.postaladdress,'
      '               NULL, NVL (p.postalpostcode, m.postalpostcode),'
      '               p.postalpostcode'
      '              ) AS postalpostcode,'
      '       DECODE (p.postaladdress,'
      '               NULL, NVL (p.postalcountry, m.postalcountry),'
      '               p.postalcountry'
      '              ) AS postalcountry,'
      '       p.whichaddress AS whichaddress,'
      '       DECODE (p.gender, '#39'M'#39', '#39'he'#39', '#39'F'#39', '#39'she'#39', '#39'It'#39') AS heshe,'
      
        '       DECODE (p.gender, '#39'M'#39', '#39'him'#39', '#39'F'#39', '#39'her'#39', '#39'It'#39') AS himher' +
        ','
      
        '       DECODE (p.gender, '#39'M'#39', '#39'his'#39', '#39'F'#39', '#39'her'#39', NULL) AS hisher' +
        ','
      
        '       DECODE (p.gender, '#39'M'#39', '#39'Sir'#39', '#39'F'#39', '#39'Madam'#39', NULL) AS sirm' +
        'adam,'
      '       p.abn AS partyabn, m.NAME AS parent_partyname,'
      '       m.shortname AS parent_partyshortname,'
      '       m.longname AS parent_partylongname,'
      '       m.solicitor AS parent_partysolicitor,'
      
        '       NVL (p.cust_address, m.cust_address) AS party_cust_addres' +
        's,'
      '       NVL (p.cust_suburb, m.cust_suburb) AS part_cust_suburb,'
      '       NVL (p.cust_state, m.cust_state) AS party_cust_state,'
      
        '       NVL (p.cust_postcode, m.cust_postcode) AS party_cust_post' +
        'code,'
      
        '       NVL (p.cust_country, m.cust_country) AS party_cust_countr' +
        'y'
      '  FROM phonebook p, phonebook m, event_participant ep'
      ' WHERE p.nnamemaster = m.nname(+)'
      '   AND ep.event_id = :event_id'
      '   AND ep.nname = p.nname')
    Left = 388
    Top = 163
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'event_id'
        Value = nil
      end>
  end
  object qryInsertParticipants: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO EVENT_PARTICIPANT ('
      '   EVENT_ID, NNAME, '
      '   NOTES,SEARCH) '
      'VALUES ( :EVENT_ID, :NNAME, '
      '   :NOTES, :SEARCH)')
    SpecificOptions.Strings = (
      'Oracle.ExtendedFieldsInfo=True')
    Left = 514
    Top = 43
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EVENT_ID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOTES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEARCH'
        Value = nil
      end>
  end
end
