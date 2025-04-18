ValueSet: BeVSRole
Id: be-vs-role
Title: "BeVSRole"
Description: "Legal relationships"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (SNOMED International), and distributed by agreement between SNOMED International and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^compose.include[+].version = "http://snomed.info/sct/11000172109"
* ^compose.include[=].system = "http://snomed.info/sct"
* ^compose.include[=].filter[0].property = #"concept"
* ^compose.include[=].filter[=].op = #"is-a"
* ^compose.include[=].filter[=].value = "410603005"
