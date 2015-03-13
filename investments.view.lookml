- view: investments
  fields:

  - dimension: investments_pk
    sql: ${TABLE}.TransIdentifier + CAST( ${TABLE}.AdmTransGUID AS varchar(40) ) + RIGHT( '000000' + CAST( ${TABLE}.Sequence AS varchar(6) ), 6 )
    primary_key: true
    hidden: true

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: asset_class
    type: int
    sql: ${TABLE}.AssetClass

  - dimension: carrier_code
    sql: ${TABLE}.CarrierCode

  - dimension: carrier_name
    sql: ${TABLE}.CarrierName

  - dimension: cusip_num
    sql: ${TABLE}.CusipNum

  - dimension: invest_type
    type: int
    sql: ${TABLE}.InvestType

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: product_full_name
    sql: ${TABLE}.ProductFullName

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - dimension: sub_account_seq
    type: number
    sql: ${TABLE}.SubAccountSeq

  - dimension: order_id
    sql: ${TABLE}.TransIdentifier

  - dimension: transfer_pct
    type: number
    sql: ${TABLE}.TransferPct

  - measure: count
    type: count
    drill_fields: [order_id, sequence, carrier_name, product_full_name, invest_amt, carrier_code, product_code, cusip_num ]

  - measure: sum_invest_amt
    type: sum
    sql: ${orders.invest_amt} * ${transfer_pct}
    decimals: 2
    drill_fields: detail*
    html: ${{ rendered_value }}   
