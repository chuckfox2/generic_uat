- view: holding
  sql_table_name: Holding
  fields:

  - dimension: holding_id
    primary_key: true
    sql: ${TABLE}.HoldingID

  - dimension: account_designation
    type: int
    sql: ${TABLE}.AccountDesignation

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension_group: as_of
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.AsOfDate

  - dimension_group: as_of
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.AsOfTime

  - dimension: asset_value
    sql: ${TABLE}.AssetValue

  - dimension: assignment_code
    type: int
    sql: ${TABLE}.AssignmentCode

  - dimension: carrier_admin_system
    sql: ${TABLE}.CarrierAdminSystem

  - dimension: component_of_package
    sql: ${TABLE}.ComponentOfPackage

  - dimension: configuration
    sql: ${TABLE}.Configuration

  - dimension: cost_basis
    sql: ${TABLE}.CostBasis

  - dimension: currency_type_code
    type: int
    sql: ${TABLE}.CurrencyTypeCode

  - dimension: distributor_client_acct_num
    sql: ${TABLE}.DistributorClientAcctNum

  - dimension: extensions
    sql: ${TABLE}.Extensions

  - dimension: holding_form
    type: int
    sql: ${TABLE}.HoldingForm

  - dimension: holding_key
    sql: ${TABLE}.HoldingKey

  - dimension: holding_name
    sql: ${TABLE}.HoldingName

  - dimension: holding_status
    type: int
    sql: ${TABLE}.HoldingStatus

  - dimension: holding_type_code
    type: int
    sql: ${TABLE}.HoldingTypeCode

  - dimension: liability_value
    sql: ${TABLE}.LiabilityValue

  - dimension: ownership_type_code
    type: int
    sql: ${TABLE}.OwnershipTypeCode

  - dimension: purpose
    type: int
    sql: ${TABLE}.Purpose

  - dimension: qualified_code
    type: int
    sql: ${TABLE}.QualifiedCode

  - dimension: restriction_code
    type: int
    sql: ${TABLE}.RestrictionCode

  - dimension: share_class
    type: int
    sql: ${TABLE}.ShareClass

  - dimension: suitab1_storage
    sql: ${TABLE}.Suitab1Storage

  - dimension: suitab2_storage
    sql: ${TABLE}.Suitab2Storage

  - dimension: suitab4_storage
    sql: ${TABLE}.Suitab4Storage

  - dimension: surrender_charge_amt
    sql: ${TABLE}.SurrenderChargeAmt

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - holding_id
    - holding_name
    - annuity.count
    - annuity_usa.count
    - application_info.count
    - arrangement.count
    - arr_destination.count
    - attachment.count
    - banking.count
    - bfauthorization.count
    - fee.count
    - financial_activity.count
    - intent.count
    - investment.count
    - life.count
    - payment.count
    - payout.count
    - policy.count
    - requirement_info.count
    - rider.count
    - signature_info.count
    - sub_account.count
    - suitab1.count
    - suitab2.count
    - suitab4.count
    - system_message.count

