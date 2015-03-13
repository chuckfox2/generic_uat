- view: investments
  fields:

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

  - dimension: trans_identifier
    sql: ${TABLE}.TransIdentifier

  - dimension: transfer_pct
    type: number
    sql: ${TABLE}.TransferPct

  - measure: count
    type: count
    drill_fields: [carrier_name, product_full_name]

