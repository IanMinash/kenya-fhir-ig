Alias: $NHDDUrl = http://nhdd.health.go.ke
Alias: $ICD11Url = http://id.who.int/icd11/mms

Profile: EncounterDiagnosis
Parent: Condition
Id: encounter-diagnosis
Title: "Encounter Diagnosis"
Description: "Profile for a Diagnosis made during an encounter."
* code 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "coding"
* code.coding ^slicing.rules = #closed
* code.coding ^slicing.description = "Only allow NHDD or ICD11 codes"
* code.coding ^slicing.ordered = false
* code.coding contains 
    nhddDiagnosis 0..1 and
    icd11Diagnosis 0..1
* code.coding[nhddDiagnosis].system = $NHDDUrl
* code.coding[icd11Diagnosis].system = $ICD11Url
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* subject 1..1
* subject only Reference(Patient)
* onset[x] only dateTime
* onsetDateTime 1..1 MS
* encounter 1..1 MS
