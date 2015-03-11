- view: annuity
  sql_table_name: Annuity
  fields:

  - dimension: annuitant_is_owner_ind
    sql: ${TABLE}.AnnuitantIsOwnerInd

  - dimension: annuity_key
    sql: ${TABLE}.AnnuityKey

  - dimension: death_benefit_amt
    sql: ${TABLE}.DeathBenefitAmt

  - dimension: death_benefit_payment_option
    type: int
    sql: ${TABLE}.DeathBenefitPaymentOption

  - dimension: extensions
    sql: ${TABLE}.Extensions

  - dimension_group: guar_int_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.GuarIntEndDate

  - dimension: guar_int_rate
    type: number
    sql: ${TABLE}.GuarIntRate

  - dimension: holding_id
    # hidden: true
    sql: ${TABLE}.HoldingID

  - dimension: init_deposit_amt
    sql: ${TABLE}.InitDepositAmt

  - dimension_group: init_deposit
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.InitDepositDate

  - dimension: init_payment_amt
    sql: ${TABLE}.InitPaymentAmt

  - dimension: living_benefit_amt
    sql: ${TABLE}.LivingBenefitAmt

  - dimension: locked_in_ind
    sql: ${TABLE}.LockedInInd

  - dimension: loiroaamt
    sql: ${TABLE}.LOIROAAmt

  - dimension: loiroaref_num
    sql: ${TABLE}.LOIROARefNum

  - dimension: loiroaref_num_type
    type: int
    sql: ${TABLE}.LOIROARefNumType

  - dimension: loiroatype
    type: int
    sql: ${TABLE}.LOIROAType

  - dimension: market_val_adj
    sql: ${TABLE}.MarketValAdj

  - dimension: market_val_adj_ind
    type: int
    sql: ${TABLE}.MarketValAdjInd

  - dimension: mssbiracode
    type: int
    sql: ${TABLE}.MSSBIRACode

  - dimension: net_death_benefit_amt
    sql: ${TABLE}.NetDeathBenefitAmt

  - dimension: payout_type
    type: int
    sql: ${TABLE}.PayoutType

  - dimension: prem_type
    type: int
    sql: ${TABLE}.PremType

  - dimension: qual_plan_sub_type
    type: int
    sql: ${TABLE}.QualPlanSubType

  - dimension: qual_plan_type
    type: int
    sql: ${TABLE}.QualPlanType

  - dimension: requested_maturity_age
    type: int
    sql: ${TABLE}.RequestedMaturityAge

  - dimension_group: requested_maturity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RequestedMaturityDate

  - dimension: requested_maturity_dur
    type: int
    sql: ${TABLE}.RequestedMaturityDur

  - dimension: roth_ira_net_contribution_amt
    sql: ${TABLE}.RothIraNetContributionAmt

  - dimension: source_of_funds
    sql: ${TABLE}.SourceOfFunds

  - dimension: surrender_charge
    sql: ${TABLE}.SurrenderCharge

  - dimension: surrender_value
    sql: ${TABLE}.SurrenderValue

  - measure: count
    type: count
    drill_fields: [holding.holding_id, holding.holding_name]

