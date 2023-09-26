Profile: CommunityFacilityReferral
Parent: ServiceRequest
Id: community-facility-referral
Title: "Community to Facility Referral"
Description: "Profile for referrals made from Community Health Units to Health Facilities."
* identifier 0..*
* identifier ^short = "Internal identifiers for the system creating the ServiceRequest"
* status 1..1 MS
* category 1..1 MS
* category from ClinicCodesValueSet (required)
* intent = $RequestIntentCodes#order
* priority 1..1 MS
* subject 1..1
* subject only Reference(Patient)
* subject.identifier.system 1..1 MS
* subject.identifier.system = $CRUrl
* subject.identifier.value 1..1
* subject.type = #Patient
* occurrence[x] only Period
* occurrencePeriod 1..1
* authoredOn 1..1
* requester 1..1
* requester only Reference(Organization)
* requester ^short = "Reference to the CHU initiating this referral."
* requester.identifier.system = $KMHFLchus
* requester.identifier.system 1..1
* requester.identifier.value 1..1
* requester.display 1..1
* performer 1..1
* performer only Reference(Organization)
* performer.identifier.system = $KMHFLfacilities
* performer.identifier.system 1..1
* performer.identifier.value 1..1
* performer ^short = "Reference to the Health Facility that will receive this referral."
* reasonCode 1..*
* reasonCode.coding.system = $NHDDUrl
* reasonCode.coding.code 1..1
* note 0..*
* note ^short = "Any supporting information in Markdown"

ValueSet: ClinicCodesValueSet
Id: clinic-codes
Title: "Codes for Clinics"
Description:  "Codes for Clinics Validation"
* ^experimental = false
* include codes from system NHDDCodeSystem

CodeSystem: NHDD
Id: NHDDCodeSystem
Title: "NHDD Code System"
* ^caseSensitive = false
* ^experimental = false
* #28023 "Outpatient Department"
* #28175 "Orthopedic Department"
* #28183 "Psychiatry Department"
* #15170 "Inpatient Department"
* #54075 "Antenatal Clinic"
* #54076 "Family Planning Clinic"
* #54077 "Postnatal Clinic"
* #54078 "Dental Clinic"
* #54079 "Gynecology Clinic"
* #54080 "Pediatric Clinic"
* #54082 "Physiotherapy Clinic"
* #54084 "Nutrition Clinic"
* #54085 "Child Welfare Clinic"
* #54086 "SGBV Clinic"
* #25067 "CCC"

Instance: CommunityToFacilityReferralExample
InstanceOf: CommunityFacilityReferral
Usage: #example
Title: "Community To Facility Referral Example"
* status = #active
* intent = #order
* priority = #urgent
* category = NHDD#54076
* subject.identifier.system = $CRUrl
* subject.identifier.value = #MOHJ3NG4K1TU"
* subject.type = #Patient
* occurrencePeriod.start = "2023-08-27T08:00:00+03:00"
* occurrencePeriod.end = "2023-08-28T08:00:00+03:00"
* authoredOn = "2023-08-27T07:30:20+03:00"
* requester.identifier.use = #official
* requester.identifier.system = $KMHFLchus
* requester.identifier.value = #10001000
* requester.type = "Organization"
* requester.display = "My CHU"
* performer.identifier.use = #official
* performer.identifier.system = $KMHFLfacilities
* performer.identifier.value = #13023
* performer.type = "Organization"
* reasonCode[0].coding = $NHDDUrl#49168 "Vaginal Bleeding"
* reasonCode[1].coding = $NHDDUrl#40356 "Fits"