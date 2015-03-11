- view: requirement_info
  sql_table_name: RequirementInfo
  fields:

  - dimension: admtrans_guid
    sql: ${TABLE}.ADMTransGUID

  - dimension: applies_to_party_id
    sql: ${TABLE}.AppliesToPartyID

  - dimension: applies_to_party_type
    type: int
    sql: ${TABLE}.AppliesToPartyType

  - dimension: appt_obj_id
    sql: ${TABLE}.ApptObjID

  - dimension: configuration
    sql: ${TABLE}.Configuration

  - dimension: data_rep
    sql: ${TABLE}.DataRep

  - dimension_group: due
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DueDate

  - dimension: due_time
    sql: ${TABLE}.DueTime

  - dimension: form_no
    sql: ${TABLE}.FormNo

  - dimension: form_recieved_with_app_ind
    sql: ${TABLE}.FormRecievedWithAppInd

  - dimension_group: fulfilled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FulfilledDate

  - dimension: fulfilled_time
    sql: ${TABLE}.FulfilledTime

  - dimension: fulfiller_party_id
    sql: ${TABLE}.FulfillerPartyID

  - dimension_group: history_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.HistoryEndDate

  - dimension_group: history_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.HistoryStartDate

  - dimension: holding_id
    # hidden: true
    sql: ${TABLE}.HoldingID

  - dimension: horequirement_ref_id
    sql: ${TABLE}.HORequirementRefID

  - dimension: license_obj_id
    sql: ${TABLE}.LicenseObjID

  - dimension: mibinquiry_reason
    type: int
    sql: ${TABLE}.MIBInquiryReason

  - dimension_group: order_received
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.OrderReceivedDate

  - dimension: provider_order_num
    sql: ${TABLE}.ProviderOrderNum

  - dimension: provider_service_code
    sql: ${TABLE}.ProviderServiceCode

  - dimension: queue_sequence
    type: int
    sql: ${TABLE}.QueueSequence

  - dimension_group: re_requested
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReRequestedDate

  - dimension_group: received_at_location
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReceivedAtLocationDate

  - dimension_group: received
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReceivedDate

  - dimension: received_party_id
    sql: ${TABLE}.ReceivedPartyID

  - dimension: received_party_org_code
    sql: ${TABLE}.ReceivedPartyOrgCode

  - dimension_group: referred
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReferredDate

  - dimension: referred_party_id
    sql: ${TABLE}.ReferredPartyID

  - dimension: referred_party_org_code
    sql: ${TABLE}.ReferredPartyOrgCode

  - dimension: registration_id
    # hidden: true
    sql: ${TABLE}.RegistrationID

  - dimension: release_party_org_code
    sql: ${TABLE}.ReleasePartyOrgCode

  - dimension: req_category
    type: int
    sql: ${TABLE}.ReqCategory

  - dimension: req_code
    type: int
    sql: ${TABLE}.ReqCode

  - dimension: req_status
    type: int
    sql: ${TABLE}.ReqStatus

  - dimension: req_sub_status
    type: int
    sql: ${TABLE}.ReqSubStatus

  - dimension: requested_address_id
    sql: ${TABLE}.RequestedAddressId

  - dimension_group: requested
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RequestedDate

  - dimension_group: requested_schedule
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RequestedScheduleDate

  - dimension: requested_schedule_time_end
    sql: ${TABLE}.RequestedScheduleTimeEnd

  - dimension: requested_schedule_time_start
    sql: ${TABLE}.RequestedScheduleTimeStart

  - dimension: requester_party_id
    sql: ${TABLE}.RequesterPartyID

  - dimension: requester_party_org_code
    sql: ${TABLE}.RequesterPartyOrgCode

  - dimension: requestor_contact_party_id
    sql: ${TABLE}.RequestorContactPartyID

  - dimension: requirement_acct_num
    sql: ${TABLE}.RequirementAcctNum

  - dimension: requirement_details
    sql: ${TABLE}.RequirementDetails

  - dimension: requirement_id
    sql: ${TABLE}.RequirementId

  - dimension: requirement_info_key
    sql: ${TABLE}.RequirementInfoKey

  - dimension: requirement_info_unique_id
    sql: ${TABLE}.RequirementInfoUniqueID

  - dimension: requirement_status_reason
    sql: ${TABLE}.RequirementStatusReason

  - dimension: responsible_party_type
    type: int
    sql: ${TABLE}.ResponsiblePartyType

  - dimension: restrict_issue_code
    type: int
    sql: ${TABLE}.RestrictIssueCode

  - dimension_group: scheduled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ScheduledDate

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - dimension_group: status
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StatusDate

  - dimension: status_time
    sql: ${TABLE}.StatusTime

  - dimension: user_code
    sql: ${TABLE}.UserCode

  - measure: count
    type: count
    drill_fields: [holding.holding_id, holding.holding_name, registration.registration_id, registration.firm_name]

