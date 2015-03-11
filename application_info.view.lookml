- view: application_info
  sql_table_name: ApplicationInfo
  fields:

  - dimension: advantages_on_existing
    sql: ${TABLE}.AdvantagesOnExisting

  - dimension_group: agent_cwadate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.AgentCWADate

  - dimension_group: app_request
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.AppRequestDate

  - dimension_group: application_collection
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ApplicationCollectionDate

  - dimension: application_collection_time
    sql: ${TABLE}.ApplicationCollectionTime

  - dimension: application_country
    type: int
    sql: ${TABLE}.ApplicationCountry

  - dimension: application_county
    sql: ${TABLE}.ApplicationCounty

  - dimension: application_county_tc
    type: int
    sql: ${TABLE}.ApplicationCountyTC

  - dimension: application_jurisdiction
    type: int
    sql: ${TABLE}.ApplicationJurisdiction

  - dimension: application_origin
    type: int
    sql: ${TABLE}.ApplicationOrigin

  - dimension: application_signature_type
    type: int
    sql: ${TABLE}.ApplicationSignatureType

  - dimension: application_type
    type: int
    sql: ${TABLE}.ApplicationType

  - dimension: blanket_authorization_ind
    sql: ${TABLE}.BlanketAuthorizationInd

  - dimension: client_materials_ind
    sql: ${TABLE}.ClientMaterialsInd

  - dimension: collateral_policy
    sql: ${TABLE}.CollateralPolicy

  - dimension: consumer_info_ind
    sql: ${TABLE}.ConsumerInfoInd

  - dimension: continued_policy
    sql: ${TABLE}.ContinuedPolicy

  - dimension: counter_offer_ok
    sql: ${TABLE}.CounterOfferOK

  - dimension: cwaamt
    sql: ${TABLE}.CWAAmt

  - dimension: default_enrollment_ind
    sql: ${TABLE}.DefaultEnrollmentInd

  - dimension: disclosure_ind
    sql: ${TABLE}.DisclosureInd

  - dimension: existing_policies
    type: int
    sql: ${TABLE}.Existing_Policies

  - dimension: existing_withdraw
    type: int
    sql: ${TABLE}.Existing_Withdraw

  - dimension: extensions
    sql: ${TABLE}.Extensions

  - dimension: formal_app_ind
    sql: ${TABLE}.FormalAppInd

  - dimension: hivconsent_auth_ind
    sql: ${TABLE}.HIVConsentAuthInd

  - dimension: hoapp_form_number
    sql: ${TABLE}.HOAppFormNumber

  - dimension: hoassigned_app_number
    sql: ${TABLE}.HOAssignedAppNumber

  - dimension: holding_id
    # hidden: true
    sql: ${TABLE}.HoldingID

  - dimension: home_office_purchase_ind
    sql: ${TABLE}.HomeOfficePurchaseInd

  - dimension_group: horeceipt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.HOReceiptDate

  - dimension: illustration_confirmation_num
    sql: ${TABLE}.IllustrationConfirmationNum

  - dimension: integer_250
    type: int
    sql: ${TABLE}.Integer_250

  - dimension: integer_570
    type: int
    sql: ${TABLE}.Integer_570

  - dimension: integer_580
    type: int
    sql: ${TABLE}.Integer_580

  - dimension: integer_590
    type: int
    sql: ${TABLE}.Integer_590

  - dimension: invest_immediate_var_sub
    type: int
    sql: ${TABLE}.Invest_ImmediateVarSub

  - dimension_group: mmextension_solicitation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MMExtensionSolicitationDate

  - dimension: modified_policy
    sql: ${TABLE}.ModifiedPolicy

  - dimension: new_surrender_charge_rate
    type: number
    sql: ${TABLE}.NewSurrenderChargeRate

  - dimension_group: original_application_collection
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.OriginalApplicationCollectionDate

  - dimension: original_application_collection_time
    sql: ${TABLE}.OriginalApplicationCollectionTime

  - dimension: payment_form
    type: int
    sql: ${TABLE}.PaymentForm

  - dimension_group: placement_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PlacementEndDate

  - dimension: pref_language
    type: int
    sql: ${TABLE}.PrefLanguage

  - dimension: primary_reason
    sql: ${TABLE}.PrimaryReason

  - dimension: reason_objective_cannot_be_met
    sql: ${TABLE}.ReasonObjectiveCannotBeMet

  - dimension: reduced_policy
    sql: ${TABLE}.ReducedPolicy

  - dimension: reissued_policy
    sql: ${TABLE}.ReissuedPolicy

  - dimension: replacement_ind
    sql: ${TABLE}.ReplacementInd

  - dimension: replacement_involved
    sql: ${TABLE}.ReplacementInvolved

  - dimension: req_policy_delivery_method
    type: int
    sql: ${TABLE}.ReqPolicyDeliveryMethod

  - dimension_group: requested_issue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RequestedIssueDate

  - dimension_group: requested_pol
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RequestedPolDate

  - dimension: sales_material_ind
    sql: ${TABLE}.SalesMaterialInd

  - dimension_group: signed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SignedDate

  - dimension_group: submission
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SubmissionDate

  - dimension: submission_time
    sql: ${TABLE}.SubmissionTime

  - dimension: submission_type
    type: int
    sql: ${TABLE}.SubmissionType

  - dimension: suitabilty_performed_ind
    sql: ${TABLE}.SuitabiltyPerformedInd

  - dimension: surrender_charge_amt
    sql: ${TABLE}.SurrenderCharge_Amt

  - dimension: surrender_charge_ind
    sql: ${TABLE}.SurrenderChargeInd

  - dimension: surrender_charge_percent
    type: number
    sql: ${TABLE}.SurrenderCharge_Percent

  - dimension: terminated_policy
    sql: ${TABLE}.TerminatedPolicy

  - dimension_group: tiasigned
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TIASignedDate

  - dimension: total_cwaamt
    sql: ${TABLE}.TotalCWAAmt

  - dimension: tracking_id
    sql: ${TABLE}.TrackingID

  - measure: count
    type: count
    drill_fields: [holding.holding_id, holding.holding_name, identity_verification.count]

