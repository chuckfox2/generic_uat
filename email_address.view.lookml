- view: email_address
  sql_table_name: EMailAddress
  fields:

  - dimension: addr_line
    sql: ${TABLE}.AddrLine

  - dimension: email_address_key
    sql: ${TABLE}.EMailAddressKey

  - dimension: email_id
    sql: ${TABLE}.EMailID

  - dimension: email_type
    type: int
    sql: ${TABLE}.EMailType

  - dimension: party_id
    # hidden: true
    sql: ${TABLE}.PartyID

  - dimension: pref_email_addr
    sql: ${TABLE}.PrefEMailAddr

  - measure: count
    type: count
    drill_fields: [party.party_id, party.full_name]

