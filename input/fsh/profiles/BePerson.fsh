Profile: BePerson
Parent: Person
Id: be-person
Title: "BePatient"
Description: "Belgian federal profile for a person."
* ^version = "1.0.1"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $patient-nationality named nationality 0..* and
    $patient-birthPlace named birthPlace 0..1 and
    http://hl7.org/fhir/StructureDefinition/patient-genderIdentity named socialGender 0..1 and
    BeExtGenderAtBirth named genderAtBirth 0..1 
* extension[nationality] ^definition = "The nationality of the patient.\r\n\r\nThis extension SHALL be used when needed to express the nationality of the patient."
//* extension[nationality].extension contains
//    code 0..1 and
//    period 0..1
* extension[nationality].extension[code].value[x] only CodeableConcept
* extension[nationality].extension[period].value[x] only Period
* extension[birthPlace] ^definition = "The birth place for a patient.\r\n\r\nThis extension SHALL be used when needed to express the place of birth of the patient."
* extension[birthPlace].value[x] only Address
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier for this patient.\r\n\r\nTypically, when SSIN is available it is used. Organizations will most likely want to also include a local identifier, using its own system. A type can be added if needed. When an identifier is given, a consumer SHALL NOT ignore it."
* identifier contains SSIN 0..*
* identifier[SSIN] ^definition = "An identifier for this patient according to SSIN (NISS-INSZ.)\r\n\r\nWhen needed to express a SSIN, it SHALL be done according to these guidelines. Other ways to identify a patient using coding systems remain also possible."
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin" (exactly)
* identifier[SSIN].value 1..1
* identifier obeys be-inv-SSIN
* name MS
* name ^definition = "A name associated with the individual. \n\nIt is RECOMMENDED to give at least one familyname and at least one given name when possible and define an 'official' use. When names are given, a consumer SHALL NOT ignore it."
* telecom ^definition = "A contact detail (e.g. a telephone number or an email address) by which the individual may be contacted.\n\nIt is RECOMMENDED to at least add one phone or email address with clear indication using the .use element whether it is home use, private use,..."
* gender ^comment = "This is primarily the administrative gender. The gender might not match the biological sex as determined by genetics or the individual's preferred identification. Note that for both humans and particularly animals, there are other legitimate possibilities than male and female, though the vast majority of systems and contexts only support male and female.  Systems providing decision support or enforcing business rules should ideally do this on the basis of Observations dealing with the specific sex or gender aspect of interest (anatomical, chromosomal, social, etc.)  However, because these observations are infrequently recorded, defaulting to the administrative gender is common practice.  Where such defaulting occurs, rule enforcement should allow for the variation between administrative and biological, chromosomal and other gender aspects.  For example, an alert about a hysterectomy on a male should be handled as a warning or overridable error, not a \"hard\" error.  See the Patient Gender and Sex section for additional information about communicating patient gender and sex.\n\nSpecial remarks for KMEHR users: \n\nPlease note gender in KMEHR is typically expressed using CD-SEX. The two values that do not map directly to the HL7 dataset are 'undefined' (use 'other') and 'changed' (use the actual gender)"
* birthDate ^definition = "The date of birth for the individual.\n\nIt is RECOMMENDED to give the birthdate when available."
* birthDate.extension ^slicing.discriminator.type = #value
* birthDate.extension ^slicing.discriminator.path = "url"
* birthDate.extension ^slicing.rules = #open
* birthDate.extension contains $patient-birthTime named birthTime 0..1
* birthDate.extension[birthTime].value[x] only dateTime
* address only BeAddress
* address ^definition = "An address for the individual. \n\nIt is RECOMMENDED to include an address when available. When needed to express the availablity of a Patient at home (e.g. only Wednesdays), another solution will be defined."
* managingOrganization only Reference(BeOrganization)
* managingOrganization ^definition = "Organization that is the custodian of the patient record.\n\nThis SHOULD be included when available.Please note this is an element of the Reference datatype. This means when it is available it will contain either a relative or absolute URL where this Organization can be found. Alternatively, there is only an internal reference and the Organization is included as a ‘contained resource’ (cfr. the HL7 FHIR specifications in what cases this applies)."
* managingOrganization ^comment = "There is only one managing organization for a specific patient record. Other organizations will have their own Patient record, and may use the Link property to join the records together (or a Person resource which can include confidence ratings for the association).\n\nSpecial remarks for KMEHR users:\n\nThe reference to the managing organization is the organization that is the custodian of the patient record. As there is no explicit ‘author of this record’ – like in a KMEHR message – this element functionally refers to the organization in charge. (Which might also be a GP practice of an individual.)"