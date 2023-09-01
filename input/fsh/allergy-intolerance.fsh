Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $sct = http://snomed.info/sct
Alias: $NHDDUrl = http://nhdd.health.go.ke

Profile: KenyaAllergyIntolerance
Parent: AllergyIntolerance
Id: kenya-allergy-intolerance
Title: "Kenya Allergy Intolerance"
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* category 1..1 MS
* code 1..1 MS
* patient 1..1 MS
* recordedDate 1..1 MS


Instance: KenyaAllergyIntoleranceExample
InstanceOf: KenyaAllergyIntolerance
Usage: #example
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* category = #medication
* criticality = #high
* code = $sct#7985000 "Sulfur isotope"
* patient = Reference(Patient/MOHJ3NG4K1TU)
* recordedDate = "2023-08-24"
* reaction.manifestation.coding = $NHDDUrl#48339 "Hives"
