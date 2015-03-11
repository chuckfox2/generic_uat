- view: financial_activity
  sql_table_name: FinancialActivity
  fields:

  - dimension: accounting_activity_type
    type: int
    sql: ${TABLE}.AccountingActivityType

  - dimension_group: auth_disclose_sign
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.AuthDiscloseSignDate

  - dimension: commission_amt
    sql: ${TABLE}.CommissionAmt

  - dimension: description
    sql: ${TABLE}.Description

  - dimension: extensions
    sql: ${TABLE}.Extensions

  - dimension_group: fin_activity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FinActivityDate

  - dimension: fin_activity_gross_amt
    sql: ${TABLE}.FinActivityGrossAmt

  - dimension: fin_activity_id
    sql: ${TABLE}.FinActivityID

  - dimension: fin_activity_net_amt
    sql: ${TABLE}.FinActivityNetAmt

  - dimension: fin_activity_pct
    type: number
    sql: ${TABLE}.FinActivityPct

  - dimension: fin_activity_status
    type: int
    sql: ${TABLE}.FinActivityStatus

  - dimension: fin_activity_sub_type
    type: int
    sql: ${TABLE}.FinActivitySubType

  - dimension: fin_activity_type
    type: int
    sql: ${TABLE}.FinActivityType

  - dimension_group: fin_eff
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FinEffDate

  - dimension: financial_activity_key
    sql: ${TABLE}.FinancialActivityKey

  - dimension: first_tax_year
    type: int
    sql: ${TABLE}.FirstTaxYear

  - dimension_group: grandfathered
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.GrandfatheredDate

  - dimension: holding_id
    # hidden: true
    sql: ${TABLE}.HoldingID

  - dimension_group: int_posting
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.IntPostingDate

  - dimension: int_posting_rate
    type: number
    sql: ${TABLE}.IntPostingRate

  - dimension: int_treatment_ind
    sql: ${TABLE}.IntTreatmentInd

  - dimension: liquidation_tc
    type: int
    sql: ${TABLE}.LiquidationTC

  - dimension_group: order
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.OrderDate

  - dimension: post_tefracost_basis_amt
    sql: ${TABLE}.PostTEFRACostBasisAmt

  - dimension: pre_tefracost_basis
    sql: ${TABLE}.PreTEFRACostBasis

  - dimension: reference_no
    sql: ${TABLE}.ReferenceNo

  - dimension: reporting_tax_year
    type: int
    sql: ${TABLE}.ReportingTaxYear

  - dimension: retained_commission_amt
    sql: ${TABLE}.RetainedCommissionAmt

  - dimension: rolllover_int_amt
    sql: ${TABLE}.RollloverIntAmt

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - dimension_group: settlement
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SettlementDate

  - dimension: sub_account_id
    # hidden: true
    sql: ${TABLE}.SubAccountID

  - dimension: trans_confirm_num
    sql: ${TABLE}.TransConfirmNum

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - sub_account.sub_account_id
    - sub_account.product_full_name
    - sub_account.acct_holder_name
    - sub_account.carrier_name
    - holding.holding_id
    - holding.holding_name

