Logical: BeModelPatientDocumentReference
Description: "Data about a patient related document"
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* patient 1..1 Identifier "The subject of the document"
* author 1..1 Identifier "The author of the document, either Practitioner or Organization"
* category 0..* CodeableConcept "A number of classifiers for the document, each code refines the previous one"
* document 1..1 BackboneElement "Document information"
* document.content 0..1 Binary "The content of the document as such"
* document.mimetype 1..1 string "The technical type of the document"
* document.url 0..1 uri "If the document is not in the content, the reference to the document"
* context 0..* Element "Any related resources or elements that provide context for the document, such as institution, encounter,..."