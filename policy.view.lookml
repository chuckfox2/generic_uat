- view: policy
  sql_table_name: Policy
  fields:

  - dimension: annual_payment_amt
    sql: ${TABLE}.AnnualPaymentAmt

  - dimension: beneficiary_ind
    sql: ${TABLE}.BeneficiaryInd

  - dimension_group: billing_stop
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.BillingStopDate

  - dimension: careg620_ind
    sql: ${TABLE}.CAReg620Ind

  - dimension: carrier_admin_system
    sql: ${TABLE}.CarrierAdminSystem

  - dimension: carrier_code
    sql: ${TABLE}.CarrierCode

  - dimension: carrier_comm_code
    sql: ${TABLE}.CarrierCommCode

  - dimension: carrier_comm_code_description
    sql: ${TABLE}.CarrierCommCodeDescription

  - dimension: carrier_party_id
    sql: ${TABLE}.CarrierPartyID

  - dimension: certificate_no
    sql: ${TABLE}.CertificateNo

  - dimension: commission_annualized_ind
    sql: ${TABLE}.CommissionAnnualizedInd

  - dimension: commission_extension
    sql: ${TABLE}.CommissionExtension

  - dimension: commission_option_selected
    type: int
    sql: ${TABLE}.CommissionOptionSelected

  - dimension: cusip_num
    sql: ${TABLE}.CusipNum

  - dimension: distribution_agreement_code
    sql: ${TABLE}.DistributionAgreementCode

  - dimension: duration
    type: int
    sql: ${TABLE}.Duration

  - dimension_group: eff
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EffDate

  - dimension_group: eftend
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EFTEndDate

  - dimension: endorsement_ind
    sql: ${TABLE}.EndorsementInd

  - dimension: exchange_reason
    type: int
    sql: ${TABLE}.ExchangeReason

  - dimension: exchange_reason_code
    type: int
    sql: ${TABLE}.ExchangeReasonCode

  - dimension: first_bill_skip_month
    type: int
    sql: ${TABLE}.FirstBillSkipMonth

  - dimension: holding_id
    # hidden: true
    sql: ${TABLE}.HoldingID

  - dimension: invest_rule_user_election_ind
    sql: ${TABLE}.InvestRuleUserElectionInd

  - dimension_group: issue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.IssueDate

  - dimension: issue_nation
    type: int
    sql: ${TABLE}.IssueNation

  - dimension: issue_type
    type: int
    sql: ${TABLE}.IssueType

  - dimension: jurisdiction
    type: int
    sql: ${TABLE}.Jurisdiction

  - dimension: line_of_business
    type: int
    sql: ${TABLE}.LineOfBusiness

  - dimension: money_transfer_type
    type: int
    sql: ${TABLE}.MoneyTransferType

  - dimension: non_assignable_indicator
    sql: ${TABLE}.NonAssignableIndicator

  - dimension: non_std_comm_taken
    sql: ${TABLE}.NonStdCommTaken

  - dimension: other_insured_ind
    sql: ${TABLE}.OtherInsuredInd

  - dimension: paid_producer_comm_amt
    sql: ${TABLE}.PaidProducerCommAmt

  - dimension: payment_amt
    sql: ${TABLE}.PaymentAmt

  - dimension: payment_draft_day
    type: int
    sql: ${TABLE}.PaymentDraftDay

  - dimension: payment_method
    type: int
    sql: ${TABLE}.PaymentMethod

  - dimension: payment_mode
    type: int
    sql: ${TABLE}.PaymentMode

  - dimension: plan_name
    sql: ${TABLE}.PlanName

  - dimension: pol_number
    sql: ${TABLE}.PolNumber

  - dimension: policy_status
    type: int
    sql: ${TABLE}.PolicyStatus

  - dimension: policy_value
    sql: ${TABLE}.PolicyValue

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: product_type
    type: int
    sql: ${TABLE}.ProductType

  - dimension: product_version_code
    sql: ${TABLE}.ProductVersionCode

  - dimension: rated_ind
    sql: ${TABLE}.RatedInd

  - dimension: replaced_policy_physical_status
    type: int
    sql: ${TABLE}.ReplacedPolicyPhysicalStatus

  - dimension: replacement_type
    type: int
    sql: ${TABLE}.ReplacementType

  - dimension: share_class
    type: int
    sql: ${TABLE}.ShareClass

  - dimension: short_name
    sql: ${TABLE}.ShortName

  - dimension: sponsoring_plan_code
    sql: ${TABLE}.SponsoringPlanCode

  - dimension: status_reason
    type: int
    sql: ${TABLE}.StatusReason

  - dimension: tax_status
    type: int
    sql: ${TABLE}.TaxStatus

  - dimension_group: term
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TermDate

  - dimension: tot_comm_retained
    sql: ${TABLE}.TotCommRetained

  - measure: count
    type: count
    drill_fields: [plan_name, short_name, holding.holding_id, holding.holding_name]

