Profile: BeRelatedPerson 
Parent: RelatedPerson
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "Business identifier of the related person "
* identifier contains SSIN 0..*
* identifier[SSIN] ^definition = "Please be aware that a person can be a related person to many patients, and that for each of these there will be a separate related person instance, so the SSIN will not be a unique identifier for this resource"
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin" (exactly)
* identifier[SSIN].value 1..1
* identifier obeys be-inv-SSIN
* relationship 0..* MS
* relationship ^slicing.discriminator.type = #value
* relationship ^slicing.discriminator.path = "coding"
* relationship ^slicing.rules = #open
* relationship ^definition = "Relationships of the related person "
* relationship contains relation  1..1 MS
    and role 0..*
* relationship[relation].coding from BeVSRelation
* relationship[role].coding from BeVSRole
* relationship[role].coding.extension contains BeExtPeriod named valid 0..1 MS 
* patient 1..1 MS 
* patient only Reference(BePatient)