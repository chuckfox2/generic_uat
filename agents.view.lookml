- view: agents
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.ID

  - dimension: address_line1
    sql: ${TABLE}.AddressLine1

  - dimension: address_line2
    sql: ${TABLE}.AddressLine2

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: city
    sql: ${TABLE}.City

  - dimension: email_address
    sql: ${TABLE}.EmailAddress

  - dimension: full_name
    sql: ${TABLE}.FullName

  - dimension: govt_id
    sql: ${TABLE}.GovtId

  - dimension: interest_percent
    type: number
    sql: ${TABLE}.InterestPercent

  - dimension: order_id
    # hidden: true
    sql: ${TABLE}.OrderID

  - dimension: state
    type: int
    sql: ${TABLE}.State

  - dimension: work_phone
    sql: ${TABLE}.WorkPhone

  - dimension: zip_code
    sql: ${TABLE}.ZipCode

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - full_name
    - email_address
    - orders.order_id
    - orders.carrier_full_name
    - orders.carrier_abbr_name
    - orders.plan_name
    - orders.invest_amt

