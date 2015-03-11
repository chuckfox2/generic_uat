- view: adm_trans
  sql_table_name: AdmTrans
  fields:

  - dimension: adm_subscription_guid
    sql: ${TABLE}.admSubscriptionGUID
    hidden: true

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID
    primary_key: true
    hidden: true

  - dimension: adm_trans_stage
    type: int
    sql: ${TABLE}.AdmTransStage

  - dimension: bfversion
    sql: ${TABLE}.BFVersion
    hidden: true

  - dimension: copied_from_trans_identifier
    sql: ${TABLE}.CopiedFromTransIdentifier

  - dimension: correlation_guid
    sql: ${TABLE}.CorrelationGUID
    hidden: true

  - dimension: direction
    type: int
    sql: ${TABLE}.Direction
    hidden: true

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EndDate
    hidden: true

  - dimension: external_trans_id1
    sql: ${TABLE}.ExternalTransID1
    hidden: true

  - dimension: external_trans_id2
    sql: ${TABLE}.ExternalTransID2
    hidden: true

  - dimension: external_trans_id3
    sql: ${TABLE}.ExternalTransID3
    hidden: true

  - dimension: external_trans_id4
    sql: ${TABLE}.ExternalTransID4
    hidden: true

  - dimension: external_trans_id5
    sql: ${TABLE}.ExternalTransID5
    hidden: true

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LastUpdated

  - dimension: last_updated_by
    sql: ${TABLE}.LastUpdatedBy

  - dimension: originator_code
    sql: ${TABLE}.OriginatorCode

  - dimension: originator_sub_code
    sql: ${TABLE}.OriginatorSubCode

  - dimension: primary_party_id
    sql: ${TABLE}.PrimaryPartyID
    hidden: true

  - dimension: primary_policy_product_id
    sql: ${TABLE}.PrimaryPolicyProductID
    hidden: true

  - dimension: related_admtrans_guid
    sql: ${TABLE}.RelatedADMTransGUID
    hidden: true

  - dimension: result_code
    type: int
    sql: ${TABLE}.ResultCode
    hidden: true

  - dimension: source_id
    sql: ${TABLE}.SourceId
    hidden: true

  - dimension_group: stage
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StageDate

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StartDate
    hidden: true

  - dimension: test_ind
    sql: ${TABLE}.TestInd
    hidden: true

  - dimension: trans_code
    sql: ${TABLE}.TransCode

  - dimension_group: trans_eff
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TransEffDate
    hidden: true

  - dimension_group: trans_exe
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TransExeDate

  - dimension: trans_family
    sql: ${TABLE}.TransFamily
    hidden: true

  - dimension: trans_identifier
    sql: ${TABLE}.TransIdentifier

  - dimension: trans_process
    sql: ${TABLE}.TransProcess
    hidden: true

  - dimension: trans_user
    sql: ${TABLE}.TransUser
    hidden: true

  - dimension: transaction_flavor
    sql: ${TABLE}.TransactionFlavor
    hidden: true

  - dimension: transaction_version
    sql: ${TABLE}.TransactionVersion
    hidden: true

  - dimension: tx_life_confirmation_id
    sql: ${TABLE}.TxLife_ConfirmationID
    hidden: true

  - dimension: tx_life_correlation_trans_ref_guid
    sql: ${TABLE}.TxLife_CorrelationTransRefGUID
    hidden: true

  - dimension: tx_life_primary_object_id
    sql: ${TABLE}.TxLife_PrimaryObjectID
    hidden: true

  - dimension: tx_life_trans_mode
    type: int
    sql: ${TABLE}.TxLife_TransMode
    hidden: true

  - dimension: tx_life_trans_sub_type
    type: int
    sql: ${TABLE}.TxLife_TransSubType
    hidden: true

  - dimension: tx_life_trans_type
    type: int
    sql: ${TABLE}.TxLife_TransType
    hidden: true

  - dimension: txlife_version
    sql: ${TABLE}.TXLife_Version
    hidden: true

  - dimension: version_note
    sql: ${TABLE}.VersionNote
    hidden: true

  - measure: count
    type: count
    drill_fields: []

