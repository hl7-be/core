Extension: BeExtRecorder
Id: be-ext-recorder
Title: "BeExtRecorder"
Description: "The recorder of the information - note that this may not always be the same as the asserter - when a patient reports to a nurse and the nurse enters the data, the asserter is the patient, but the recorder is the nurse"
* ^version = "1.0.0"
* ^date = "2021-01-10T10:59:49+00:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* ^jurisdiction.coding[0] = $m49.htm#056
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* value[x] only CodeableConcept or Reference
* valueReference 0..1
* valueReference only Reference(BePatient or BePractitioner or BeOrganization)