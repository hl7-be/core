Invariant:   be-inv-CBE
Description: "CBE is 10 digits long without interpunction, the first one is 0 or 1"
Expression:  "Identifier.where(system = 'https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/cbe').where(value.extension.empty() or value.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').empty()).value.select($this.matches('^[0-1]\\\\d{9}$')).allTrue()"
Severity:    #warning