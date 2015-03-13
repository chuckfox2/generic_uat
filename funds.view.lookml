- view: funds
  sql_table_name: Funds
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: commission_amt
    sql: ${TABLE}.CommissionAmt

  - dimension: death_benefit_amount
    sql: ${TABLE}.DeathBenefitAmount

  - dimension: fund_desc
    sql: ${TABLE}.FundDesc

  - dimension: fund_type
    type: int
    sql: ${TABLE}.FundType

  - dimension: invest_amt
    sql: ${TABLE}.InvestAmt

  - dimension: living_benefit_rider_existed
    sql: ${TABLE}.LivingBenefitRiderExisted

  - dimension: loss_of_death_benefit
    sql: ${TABLE}.LossOfDeathBenefit

  - dimension: order_id
    # hidden: true
    sql: ${TABLE}.OrderID

  - dimension: original_purchase_date_code
    type: int
    sql: ${TABLE}.OriginalPurchaseDateCode

  - dimension: payment_desc
    sql: ${TABLE}.PaymentDesc

  - dimension: payment_form
    type: int
    sql: ${TABLE}.PaymentForm

  - dimension: reference_no
    sql: ${TABLE}.ReferenceNo

  - dimension: sequence
    type: number
    sql: ${TABLE}.Sequence

  - dimension: surrender_charge
    sql: ${TABLE}.SurrenderCharge

  - dimension: surrender_charge_prospectus
    type: number
    sql: ${TABLE}.SurrenderChargeProspectus

  - dimension: surrendered_plan_name
    sql: ${TABLE}.SurrenderedPlanName

  - dimension_group: surrendered_policy_effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SurrenderedPolicyEffectiveDate

  - dimension: surrendered_product_type_code
    type: int
    sql: ${TABLE}.SurrenderedProductTypeCode

  - dimension: surrendering_carrier_name
    sql: ${TABLE}.SurrenderingCarrierName

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - surrendering_carrier_name
    - surrendered_plan_name
    - orders.order_id
    - orders.carrier_full_name
    - orders.carrier_abbr_name
    - orders.plan_name

