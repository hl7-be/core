Invariant:   be-inv-NIHDI
Description: "NIHDI contains 11 or 8 (deprecated) digits without interpunction"
Expression:  "Identifier.where(system = 'https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi' or system = 'https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-organization' or system = 'https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-professional').where(value.extension.empty() or value.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').empty()).value.select($this.matches('\\\\d{11}|\\\\d{8}')).allTrue()"
Severity:    #error