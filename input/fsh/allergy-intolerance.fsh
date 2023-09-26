Profile: KenyaAllergyIntolerance
Parent: AllergyIntolerance
Id: kenya-allergy-intolerance
Title: "Allergy Intolerance"
Description: "Profile for capturing of allergies"
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* category 1..1 MS
* code 1..1 MS
* patient 1..1 MS
* patient.identifier.system 1..1 MS
* patient.identifier.system = $CRUrl
* patient.identifier.value 1..1
* recordedDate 1..1 MS


Instance: KenyaAllergyIntoleranceExample
InstanceOf: KenyaAllergyIntolerance
Usage: #example
* clinicalStatus = $AllergyIntoleranceClinicalStatusCodes#active "Active"
* verificationStatus = $AllergyIntoleranceVerificationStatusCodes#confirmed "Confirmed"
* category = #medication
* criticality = #high
* code = $SCTUrl#7985000 "Sulfur isotope"
* recordedDate = "2023-08-24"
* patient.identifier.system = $CRUrl
* patient.identifier.value = "MOHJ3NG4K1TU"
* reaction.manifestation.coding = $NHDDUrl#48339 "Hives"
