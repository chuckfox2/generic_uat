- view: organization
  sql_table_name: Organization
  fields:

  - dimension: abbr_name
    sql: ${TABLE}.AbbrName

  - dimension: branch
    sql: ${TABLE}.Branch

  - dimension: business_desc
    sql: ${TABLE}.BusinessDesc

  - dimension: dba
    sql: ${TABLE}.DBA

  - dimension: division
    sql: ${TABLE}.Division

  - dimension: dtccmember_code
    sql: ${TABLE}.DTCCMemberCode

  - dimension: dunsnumber
    sql: ${TABLE}.DUNSNumber

  - dimension_group: estab
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EstabDate

  - dimension: extensions
    sql: ${TABLE}.Extensions

  - dimension: irrevokable_ind
    sql: ${TABLE}.IrrevokableInd

  - dimension: nature_category
    type: int
    sql: ${TABLE}.NatureCategory

  - dimension: org_code
    sql: ${TABLE}.OrgCode

  - dimension: org_form
    type: int
    sql: ${TABLE}.OrgForm

  - dimension: organization_key
    sql: ${TABLE}.OrganizationKey

  - dimension: party_id
    # hidden: true
    sql: ${TABLE}.PartyID

  - dimension: profit_objective
    type: int
    sql: ${TABLE}.ProfitObjective

  - dimension: region
    sql: ${TABLE}.Region

  - dimension: sector
    sql: ${TABLE}.Sector

  - dimension: trust_ssnsource
    type: int
    sql: ${TABLE}.TrustSSNSource

  - dimension: trust_type
    type: int
    sql: ${TABLE}.TrustType

  - measure: count
    type: count
    drill_fields: [abbr_name, party.party_id, party.full_name, situs_info.count]

