- view: party
  sql_table_name: Party
  fields:

  - dimension: party_id
    primary_key: true
    sql: ${TABLE}.PartyID

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: best_time_to_call_from
    sql: ${TABLE}.BestTimeToCallFrom

  - dimension: best_time_to_call_to
    sql: ${TABLE}.BestTimeToCallTo

  - dimension: bfversion
    sql: ${TABLE}.BFVersion

  - dimension: currency_type_code
    type: int
    sql: ${TABLE}.CurrencyTypeCode

  - dimension: data_rep
    sql: ${TABLE}.DataRep

  - dimension: est_net_worth
    sql: ${TABLE}.EstNetWorth

  - dimension: est_tot_assets_amt
    sql: ${TABLE}.EstTotAssetsAmt

  - dimension: extensions
    sql: ${TABLE}.Extensions

  - dimension: full_name
    sql: ${TABLE}.FullName

  - dimension: govt_id
    sql: ${TABLE}.GovtID

  - dimension: govt_idstat
    type: int
    sql: ${TABLE}.GovtIDStat

  - dimension: govt_idtc
    type: int
    sql: ${TABLE}.GovtIDTC

  - dimension: idreference_no
    sql: ${TABLE}.IDReferenceNo

  - dimension: idreference_type
    type: int
    sql: ${TABLE}.IDReferenceType

  - dimension: liquid_net_worth_amt
    sql: ${TABLE}.LiquidNetWorthAmt

  - dimension: party_key
    sql: ${TABLE}.PartyKey

  - dimension: party_type_code
    type: int
    sql: ${TABLE}.PartyTypeCode

  - dimension: pref_comm
    type: int
    sql: ${TABLE}.PrefComm

  - dimension: residence_country
    type: int
    sql: ${TABLE}.ResidenceCountry

  - dimension: residence_county
    sql: ${TABLE}.ResidenceCounty

  - dimension: residence_county_tc
    type: int
    sql: ${TABLE}.ResidenceCountyTC

  - dimension: residence_state
    type: int
    sql: ${TABLE}.ResidenceState

  - dimension: residence_zip
    sql: ${TABLE}.ResidenceZip

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - dimension: tax_office
    sql: ${TABLE}.TaxOffice

  - dimension_group: vesting_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.VestingStartDate

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - party_id
    - full_name
    - address.count
    - attachment.count
    - authorization_selection.count
    - bfauthorization.count
    - carrier.count
    - carrier_appointment.count
    - client.count
    - delivery_info.count
    - education.count
    - email_address.count
    - employment.count
    - financial_experience.count
    - govt_idinfo.count
    - intent.count
    - invest_product.count
    - jurisdiction_cc.count
    - license.count
    - military_exp.count
    - organization.count
    - partial_identification.count
    - participant.count
    - person.count
    - phone.count
    - policy_product.count
    - prior_name.count
    - producer.count
    - producer_agreement.count
    - rating_agency_info.count
    - registration.count
    - url.count
    - user_info.count

