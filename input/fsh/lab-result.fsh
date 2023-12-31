Profile: LabResult
Parent: DiagnosticReport
Id: lab-result
Title: "Lab Result"
Description: "A Diagnostic report for a lab test performed for a particular patient."
* basedOn 0..1 
* basedOn only Reference(ServiceRequest)
* subject only Reference(Patient)
* subject.identifier.system 1..1 MS
* subject.identifier.system = $CRUrl
* subject.identifier.value 1..1
* subject.type = #Patient
* encounter 0..1
* performer 1..1
* performer only Reference(Organization)