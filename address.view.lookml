- view: address
  sql_table_name: Address
  fields:

  - dimension: address_id
    primary_key: true
    sql: ${TABLE}.AddressID

  - dimension: address_country
    sql: ${TABLE}.AddressCountry

  - dimension: address_country_tc
    type: int
    sql: ${TABLE}.AddressCountryTC

  - dimension: address_format_tc
    type: int
    sql: ${TABLE}.AddressFormatTC

  - dimension: address_key
    sql: ${TABLE}.AddressKey

  - dimension: address_state
    sql: ${TABLE}.AddressState

  - dimension: address_state_tc
    type: int
    sql: ${TABLE}.AddressStateTC

  - dimension: address_type_code
    type: int
    sql: ${TABLE}.AddressTypeCode

  - dimension: attention_line
    sql: ${TABLE}.AttentionLine

  - dimension: city
    sql: ${TABLE}.City

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EndDate

  - dimension: legal_address_ind
    sql: ${TABLE}.LegalAddressInd

  - dimension: line1
    sql: ${TABLE}.Line1

  - dimension: line2
    sql: ${TABLE}.Line2

  - dimension: line3
    sql: ${TABLE}.Line3

  - dimension: line4
    sql: ${TABLE}.Line4

  - dimension: line5
    sql: ${TABLE}.Line5

  - dimension: line6
    sql: ${TABLE}.Line6

  - dimension: party_id
    # hidden: true
    sql: ${TABLE}.PartyID

  - dimension: postal_drop_code
    sql: ${TABLE}.PostalDropCode

  - dimension: pref_addr
    sql: ${TABLE}.PrefAddr

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - dimension: solicitation_ind
    sql: ${TABLE}.SolicitationInd

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StartDate

  - dimension: zip
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: [address_id, party.party_id, party.full_name]

