Instance: relatedperson
InstanceOf: BeRelatedPerson
* identifier[SSIN][+].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier[SSIN][=].value = "79121137740"
* patient = Reference(patient1)
* relationship[relation] = $sct#25211005
* relationship[role][+] = $sct#58626002
* relationship[role][=].coding.extension[valid].valuePeriod.start = "2024-06-14"