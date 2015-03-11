- view: audit_info
  sql_table_name: AuditInfo
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: application_name
    sql: ${TABLE}.ApplicationName

  - dimension_group: audit
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.AuditDate

  - dimension: audit_info_guid
    sql: ${TABLE}.AuditInfoGUID

  - dimension: audit_info_stage_code
    type: int
    sql: ${TABLE}.AuditInfoStageCode

  - dimension_group: audit_info_stage
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.AuditInfoStageDate

  - dimension: component_name
    sql: ${TABLE}.ComponentName

  - dimension: component_type_code
    type: int
    sql: ${TABLE}.ComponentTypeCode

  - dimension: component_version
    sql: ${TABLE}.ComponentVersion

  - dimension: description
    sql: ${TABLE}.Description

  - dimension: server_name
    sql: ${TABLE}.ServerName

  - dimension: user_name
    sql: ${TABLE}.UserName

  - measure: count
    type: count
    drill_fields: [component_name, user_name, application_name, server_name]

