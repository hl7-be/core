Logical: BeModelRelatedPerson
* identifier 0..* Identifier "Business identifier of the related person (Please be aware that a person can be a related person to many patients, and that for each of these there will be a separate related person instance, so the SSIN will not be a unique identifier for this resource)"
* patient 1..1 Identifier "Patient this person is the related person for"
* relationship 0..1 CodeableConcept "The type of relationship to the patient, e.g. family tie, acquaintance,..."
* role 0..* BackboneElement "role taken up by the related person"
* role.type 0..1 CodeableConcept "The (legal/care related) role taken up by the related person"
* role.period 0..1 Period "The period during which the role was valid" 