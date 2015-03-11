- view: rel_holding_party
  sql_table_name: RelHoldingParty
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: beneficiary_designation
    type: int
    sql: ${TABLE}.BeneficiaryDesignation

  - dimension: beneficiary_share_method
    type: int
    sql: ${TABLE}.BeneficiaryShareMethod

  - dimension: data_rep
    sql: ${TABLE}.DataRep

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EndDate

  - dimension: extensions
    sql: ${TABLE}.Extensions

  - dimension: interest_percent
    type: number
    sql: ${TABLE}.InterestPercent

  - dimension: irrevokable_ind
    sql: ${TABLE}.IrrevokableInd

  - dimension: originating_object_id
    sql: ${TABLE}.OriginatingObjectID

  - dimension: related_object_id
    sql: ${TABLE}.RelatedObjectID

  - dimension: related_ref_id
    sql: ${TABLE}.RelatedRefID

  - dimension: related_ref_idtype
    type: int
    sql: ${TABLE}.RelatedRefIDType

  - dimension: relation_description
    type: int
    sql: ${TABLE}.RelationDescription

  - dimension: relation_id
    sql: ${TABLE}.RelationID

  - dimension: relation_key
    sql: ${TABLE}.RelationKey

  - dimension: relation_role_code
    type: int
    sql: ${TABLE}.RelationRoleCode

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StartDate

  - measure: count
    type: count
    drill_fields: []

