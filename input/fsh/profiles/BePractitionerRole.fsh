Profile: BePractitionerRole
Parent: PractitionerRole
Id: be-practitionerrole
Description: "Belgian federal profile for a practitioner role. Initially based on the functional description of the NIHDI."
* ^version = "1.0.0"
* ^status = #active
* practitioner only Reference(BePractitioner)
* organization only Reference(BeOrganization)
* code MS
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code ^definition = "Roles which this practitioner is authorized to perform for the organization.\r\n\r\nFor compatibility reasons, CD-HCPARTY is described here to express the role of the practitioner. Other coding systems remain allowed.\r\nTowards the future, the use of SNOMED-CT codes is also RECOMMENDED here. In the future, other ways to codfy might however be also proposed.\r\n\r\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* code contains
    CD-HCPARTY 0..* and
    SNOMED-CT 0..*
* code[CD-HCPARTY] ^definition = "Roles which this practitioner is authorized to perform for the organization."
* code[CD-HCPARTY].coding.system = "https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-hcparty" (exactly)
* code[CD-HCPARTY].coding.code 1..
* code[SNOMED-CT].coding.system = "http://snomed.info/sct" (exactly)
* code[SNOMED-CT].coding.code 1..
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty ^comment = "Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination.\r\n\r\nSpecial remarks for KMEHR users:\r\nAs the base preferred valueset is already coded in SNOMED-CT which is the reference Belgian coding also, the RECOMMENDED use is to use the SNOMED-CT code here and use a CD-HCPARTY code (or future equivalent) in the ‘.code’ element described supra."
* specialty contains SNOMED-CT 0..*
* specialty[SNOMED-CT].coding from PracticeSettingCodeValueSet (preferred)
* specialty[SNOMED-CT].coding ^binding.description = "base resource valueset"
* specialty[SNOMED-CT].coding.system = "http://snomed.info/sct" (exactly)
* specialty[SNOMED-CT].coding.code 1..
* specialty[SNOMED-CT].coding.code ^definition = "A symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination).\r\n\r\nIf needed codes can be used from a different system, SNOMED-CT is preferred."