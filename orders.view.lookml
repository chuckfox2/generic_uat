- view: orders
  fields:

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: adm_trans_guid
    primary_key: true
    sql: ${TABLE}.AdmTransGUID

  - dimension: carrier_abbr_name
    sql: ${TABLE}.CarrierAbbrName

  - dimension: carrier_code
    sql: ${TABLE}.CarrierCode

  - dimension: carrier_dtccmember_code
    sql: ${TABLE}.CarrierDTCCMemberCode

  - dimension: carrier_full_name
    sql: ${TABLE}.CarrierFullName

  - dimension: carrier_org_code
    sql: ${TABLE}.CarrierOrgCode

  - dimension: commission_amt
    sql: ${TABLE}.CommissionAmt

  - dimension: cusip_num
    sql: ${TABLE}.CusipNum

  - dimension: distributor_client_acct_num
    sql: ${TABLE}.DistributorClientAcctNum

  - dimension: distributor_org_code
    sql: ${TABLE}.DistributorOrgCode

  - dimension: invest_amt
    sql: ${TABLE}.InvestAmt

  - dimension: jurisdiction
    type: int
    sql: ${TABLE}.Jurisdiction

  - dimension_group: order_create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.OrderCreateDate

  - dimension_group: order_sign
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.OrderSignDate

  - dimension_group: order_trade
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.OrderTradeDate

  - dimension: plan_name
    sql: ${TABLE}.PlanName

  - dimension: pol_number
    sql: ${TABLE}.PolNumber

  - dimension: primary_holding_id
    sql: ${TABLE}.PrimaryHoldingID

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: product_type_code
    type: int
    sql: ${TABLE}.ProductTypeCode

  - dimension: product_type_desc
    sql: ${TABLE}.ProductTypeDesc

  - dimension: qual_plan_desc
    sql: ${TABLE}.QualPlanDesc

  - dimension: qual_plan_type
    type: int
    sql: ${TABLE}.QualPlanType

  - dimension: sales_region
    sql: ${TABLE}.SalesRegion

  - dimension: state_abbr
    sql: ${TABLE}.StateAbbr

  - dimension: status_code
    type: int
    sql: ${TABLE}.StatusCode

  - dimension_group: status
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StatusDate

  - dimension: status_desc
    sql: ${TABLE}.StatusDesc

  - dimension: surrender_amt
    type: number
    sql: ${TABLE}.SurrenderAmt

  - dimension: trans_code
    sql: ${TABLE}.TransCode

  - dimension: trans_type
    sql: ${TABLE}.TransType

  - measure: count
    type: count
    drill_fields: orders_drill_set_1*

  - measure: sum_invest_amt
    type: sum
    sql: ${invest_amt}
    decimals: 2
    drill_fields: orders_drill_set_1*
    html: ${{ rendered_value }}   

  - measure: sum_commission_amt
    type: sum
    sql: ${commission_amt}
    decimals: 2
    drill_fields: orders_drill_set_1*
    html: ${{ rendered_value }}   

### SETS ###

# Sets are a list of dimensions and measures that can be referenced collectively as a set, for functions like drill down.
# You reference a set with the set name, like 'export_set' or 'orders_drill_set_1' below. 

  sets:
    orders_drill_set_1:                               # Set names are explicitly defined by the user and included looker fields are tabbed below
      - order_id
      - trans_type
      - order_create_time
      - status_desc
      - status_time
      - carrier_full_name
      - state_abbr                                  
      - qual_plan_desc
      - invest_amt
      - commission_amt
