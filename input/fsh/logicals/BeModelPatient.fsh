Logical: BeModelPatient
Description: "Data about a patient, according to the [National Register of Persons (Ministry of the Interior)](https://www.ibz.rrn.fgov.be/fileadmin/user_upload/nl/rr/bestand-rr/bestand-RR.pdf), and possibly other sources to be mentioned when used."
* names 0..* BackboneElement "Names"
* names.usage 0..1 CodeableConcept "Usage context of the name (e.g. NR 11, if the name is used as a pseudonym)"
* names.familyname 0..1 string "Surname (NR 10)"
* names.firstnames 0..1 string "Given names (NR 10)"
* names.title 0..1 string "Title of nobility (NR 12)"
* names.period 0..1 Period "Period of validity of the name (e.g. NR 13 Change of name, first names and title of nobility)"
* birth 0..1 BackboneElement "Birth data"
* birth.address 0..1 Address "Place of birth (NR 100 or NR 101)"
* birth.date 0..1 dateTime "Date of birth (NR 100 or NR 101)"
* gender 0..1 BackboneElement "Gender"
* gender.administrative 0..1 CodeableConcept "Gender (integrated in the identification no.: 000)"
* gender.atbirth 0..1 CodeableConcept "Gender at birth, accounts for gender changes and errors (NR 2 and NR 4)"
* gender.social 0..1 CodeableConcept "Gender the person identifies with"
* nationality 0..* CodeableConcept "Current nationality (and dual nationality) (NR 31, NR 32)"
* residence 0..* Address "Main and other residences (NR 1, 3, 5, 18, 19, 20,22, 23, 24, 26, 27). NR 252 will be covered by other privacy rules."
* death 0..1 BackboneElement "Date and state of death (place of death is not clinically relevant, and we only care about factual death, not absence (NR 151) or administrative/judicial death (NR 150))"
* death.date 0..1 dateTime "Date of death"
* death.deceased 0..1 boolean "The person is deceased"
* marital-status 0..1 CodeableConcept "Marital Status"