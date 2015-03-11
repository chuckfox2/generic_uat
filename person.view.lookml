- view: person
  sql_table_name: Person
  fields:

  - dimension: age
    type: int
    sql: ${TABLE}.Age

  - dimension: alternate_tax_id
    sql: ${TABLE}.AlternateTaxID

  - dimension: alternate_tax_idtc
    type: int
    sql: ${TABLE}.AlternateTaxIDTC

  - dimension: birth_city
    sql: ${TABLE}.BirthCity

  - dimension: birth_country
    type: int
    sql: ${TABLE}.BirthCountry

  - dimension_group: birth
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.BirthDate

  - dimension: birth_jurisdiction
    sql: ${TABLE}.BirthJurisdiction

  - dimension: birth_jurisdiction_tc
    type: int
    sql: ${TABLE}.BirthJurisdictionTC

  - dimension: citizenship
    type: int
    sql: ${TABLE}.Citizenship

  - dimension: data_rep
    sql: ${TABLE}.DataRep

  - dimension: dobestimated
    sql: ${TABLE}.DOBEstimated

  - dimension: drivers_license_country
    type: int
    sql: ${TABLE}.DriversLicenseCountry

  - dimension_group: drivers_license_exp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DriversLicenseExpDate

  - dimension_group: drivers_license_issue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DriversLicenseIssueDate

  - dimension: drivers_license_num
    sql: ${TABLE}.DriversLicenseNum

  - dimension: drivers_license_state
    type: int
    sql: ${TABLE}.DriversLicenseState

  - dimension_group: est_retire
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EstRetireDate

  - dimension: finraaffiliation
    type: int
    sql: ${TABLE}.FINRAAffiliation

  - dimension: first_name
    sql: ${TABLE}.FirstName

  - dimension: free_form_citizenship
    sql: ${TABLE}.FreeFormCitizenship

  - dimension: gender
    type: int
    sql: ${TABLE}.Gender

  - dimension: govt_immigration_no
    sql: ${TABLE}.GovtImmigrationNo

  - dimension: highest_education_level
    type: int
    sql: ${TABLE}.HighestEducationLevel

  - dimension: immigration_status
    type: int
    sql: ${TABLE}.ImmigrationStatus

  - dimension: is_of_legal_age
    type: int
    sql: ${TABLE}.IsOfLegalAge

  - dimension: last_name
    sql: ${TABLE}.LastName

  - dimension: mar_stat
    type: int
    sql: ${TABLE}.MarStat

  - dimension: middle_name
    sql: ${TABLE}.MiddleName

  - dimension: no_drivers_license_ind
    type: int
    sql: ${TABLE}.NoDriversLicenseInd

  - dimension: non_resident_alien_ind
    type: int
    sql: ${TABLE}.NonResidentAlienInd

  - dimension: number_of_dependents
    type: int
    sql: ${TABLE}.NumberOfDependents

  - dimension: party_id
    # hidden: true
    sql: ${TABLE}.PartyID

  - dimension: passport_no
    sql: ${TABLE}.PassportNo

  - dimension: person_key
    sql: ${TABLE}.PersonKey

  - dimension: political_figure_affiliation
    type: int
    sql: ${TABLE}.PoliticalFigureAffiliation

  - dimension: prefix
    sql: ${TABLE}.Prefix

  - dimension: suffix
    sql: ${TABLE}.Suffix

  - dimension: title
    sql: ${TABLE}.Title

  - dimension: visa_details
    sql: ${TABLE}.VisaDetails

  - dimension_group: visa_exp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.VisaExpDate

  - measure: count
    type: count
    drill_fields: [first_name, middle_name, last_name, party.party_id, party.full_name]

