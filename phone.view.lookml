- view: phone
  sql_table_name: Phone
  fields:

  - dimension: phone_id
    primary_key: true
    sql: ${TABLE}.PhoneID

  - dimension: area_code
    sql: ${TABLE}.AreaCode

  - dimension: country_code
    sql: ${TABLE}.CountryCode

  - dimension: dial_number
    sql: ${TABLE}.DialNumber

  - dimension: ext
    sql: ${TABLE}.Ext

  - dimension: party_id
    # hidden: true
    sql: ${TABLE}.PartyID

  - dimension: phone_country_tc
    type: int
    sql: ${TABLE}.PhoneCountryTC

  - dimension: phone_key
    sql: ${TABLE}.PhoneKey

  - dimension: phone_type_code
    type: int
    sql: ${TABLE}.PhoneTypeCode

  - dimension: pref_phone
    sql: ${TABLE}.PrefPhone

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - measure: count
    type: count
    drill_fields: [phone_id, party.party_id, party.full_name]

