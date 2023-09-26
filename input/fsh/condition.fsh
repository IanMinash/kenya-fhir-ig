Profile: EncounterDiagnosis
Parent: Condition
Id: encounter-diagnosis
Title: "Encounter Diagnosis"
Description: "Profile for a Diagnosis made during an encounter."
* code 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "coding.system"
* code.coding ^slicing.rules = #closed
* code.coding ^slicing.description = "Only allow NHDD or ICD11 codes"
* code.coding ^slicing.ordered = false
* code.coding contains 
    nhddDiagnosis 0..1 and
    icd11Diagnosis 0..1
* code.coding.code 1..1
* code.coding[nhddDiagnosis].system = $NHDDUrl
* code.coding[icd11Diagnosis].system = $ICD11Url
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* subject 1..1
* subject only Reference(Patient)
* subject.identifier.system 1..1 MS
* subject.identifier.system = $CRUrl
* subject.identifier.value 1..1
* subject.type = #Patient
* onset[x] only dateTime
* onsetDateTime 1..1 MS
* encounter 1..1 MS


Instance: EncounterDiagnosisExample
InstanceOf: EncounterDiagnosis
Usage: #example
Title: "Encounter Diagnosis Example"
Description: "An example of a diagnosis recorded during an encounter"
* code.coding[nhddDiagnosis] = $NHDDUrl#43323 "Malaria"
* code.coding[icd11Diagnosis] = $ICD11Url#1F4Z "Malaria, unspecified"
* clinicalStatus.coding = $ClinicalStatusCodes#active
* verificationStatus.coding = $VerificationStatusCodes#confirmed
* onsetDateTime = "2023-09-19T08:00:00+03:00"
* encounter.reference = "Encounter/a1f9c031-f15e-420d-a736-0fb83cea1a32"
* subject.identifier.system = $CRUrl
* subject.identifier.value = #MOHJ3NG4K1TU"
* subject.type = #Patient