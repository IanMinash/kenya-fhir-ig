Alias: $RequestIntentCodes = http://hl7.org/fhir/request-intent
Alias: $NHDDUrl = http://nhdd.health.go.ke

Profile: CommunityFacilityReferral
Parent: ServiceRequest
Id: community-facility-referral
Title: "Community Facility Referral"
Description: "Profile for referrals made from Community Health Units to Health Facilities."
* identifier 1..*
* identifier ^short = "Internal identifiers for the system creating the ServiceRequest"
* status 1..1 MS
* intent = $RequestIntentCodes#order
* priority 1..1 MS
* subject 1..1
* subject only Reference(Patient)
* occurrence[x] only Period
* occurrencePeriod 1..1
* authoredOn 1..1
* requester 1..1
* requester only Reference(Organization)
* requester ^short = "Reference to the CHU initiating this referral."
* requester.display 1..1
* performer 1..1
* performer only Reference(Organization)
* performer ^short = "Reference to the Health Facility that will receive this referral."
* reasonCode 1..*
* reasonCode.coding.system = $NHDDUrl
* reasonCode.coding.code 1..1
* note 0..*
* note ^short = "Any supporting information in Markdown"

