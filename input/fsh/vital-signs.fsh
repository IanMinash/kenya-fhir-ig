Profile: VitalSigns
Parent: Observation
Id: vital-signs
Title: "Vital Signs"
Description: "Vital Signs Profile"
* status 1..1 MS
* category 1..1 
* category = $ObservationCategoryCodes#vital-signs
* code = $NHDDUrl#47971
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component contains 
    systolic 0..1 and 
    diastolic 0..1 and 
    temperature 0..1 and
    height 0..1 and
    weight 0..1 and
    bloodsugar 0..1
* component[systolic].code = $NHDDUrl#13550
* component[systolic].value[x] only Quantity
* component[systolic].valueQuantity = $UCUM#mm[Hg]
* component[systolic].valueQuantity.unit = "mmHg"
* component[systolic].valueQuantity.value 1..1
* component[diastolic].code = $NHDDUrl#13547
* component[diastolic].value[x] only Quantity
* component[diastolic].valueQuantity = $UCUM#mm[Hg]
* component[diastolic].valueQuantity.unit = "mmHg"
* component[diastolic].valueQuantity.value 1..1
* component[temperature].code = $NHDDUrl#13543
* component[temperature].value[x] only Quantity
* component[temperature].valueQuantity = $UCUM#Cel
* component[temperature].valueQuantity.unit = "C"
* component[temperature].valueQuantity.value 1..1
* component[height].code = $NHDDUrl#13538
* component[height].value[x] only Quantity
* component[height].valueQuantity = $UCUM#cm
* component[height].valueQuantity.unit = "cm"
* component[height].valueQuantity.value 1..1
* component[weight].code = $NHDDUrl#13541
* component[weight].value[x] only Quantity
* component[weight].valueQuantity = $UCUM#kg
* component[weight].valueQuantity.unit = "kg"
* component[weight].valueQuantity.value 1..1
* component[bloodsugar].code = $NHDDUrl#851
* component[bloodsugar].value[x] only Quantity
* component[bloodsugar].valueQuantity = $UCUM#mg/dL
* component[bloodsugar].valueQuantity.unit = "mg/dL"
* component[bloodsugar].valueQuantity.value 1..1
* subject 1..1 MS
* subject only Reference(Patient)
* subject.identifier.system 1..1 MS
* subject.identifier.system = $CRUrl
* subject.identifier.value 1..1
* subject.type = #Patient

Instance: VitalSignsExample
InstanceOf: VitalSigns
Usage: #example
Title: "Vital Signs Example"
Description: "An example of vital signs with BP and body temperature captured"
* status = #final
* category.coding = $ObservationCategoryCodes#vital-signs
* code.coding = $NHDDUrl#47971 "Vital signs"
* component[0].code = $NHDDUrl#13550
* component[0].valueQuantity = $UCUM#mm[Hg]
* component[0].valueQuantity.value = 120
* component[0].valueQuantity.unit = "mmHg"
* component[1].code = $NHDDUrl#13547
* component[1].valueQuantity = $UCUM#mm[Hg]
* component[1].valueQuantity.value = 89
* component[1].valueQuantity.unit = "mmHg"
* component[2].code = $NHDDUrl#13543
* component[2].valueQuantity = $UCUM#Cel
* component[2].valueQuantity.value = 36.8
* component[2].valueQuantity.unit = "C"
* subject.reference = "Patient/MOHJ3NG4K1TU"