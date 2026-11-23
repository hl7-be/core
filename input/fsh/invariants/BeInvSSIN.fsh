Invariant:   be-inv-SSIN
Description: "SSIN is 11 digits long without interpunction"
Expression:  "Identifier.where(system = 'https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin').where(value.extension.empty() or value.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').empty()).value.select($this.matches('^\\\\d{11}$')).allTrue()"
Severity:    #error