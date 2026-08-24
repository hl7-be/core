Extension: BeExtCodeableReference
Id: be-ext-codeable-reference
Title: "BeExtCodeableReference"
Description: "Extension able to hold a reference and a concept (Temporary solution until https://jira.hl7.org/browse/FHIR-44661 is solved and see Zulip: https://chat.fhir.org/#narrow/stream/179280-fhir.2Finfrastructure-wg/topic/Backporting.20CodeableReference )"
* ^context.type = #element
* ^context.expression = "Element"
* extension contains
    reference 0..1 and
    concept 0..1
* extension[reference].value[x] only Reference
* extension[concept].value[x] only CodeableConcept
