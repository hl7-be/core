Profile: BeConsent 
Parent: Consent
Id: be-Consent
* patient only Reference(BePatient)
* performer only Reference(BeOrganization or BePatient or BePractitioner or RelatedPerson or BePractitionerRole)
* provision.actor.reference only Reference(Device or Group or CareTeam or BeOrganization or BePatient or BePractitioner or RelatedPerson or BePractitionerRole)
* verification.verifiedWith only 	Reference(BePatient or RelatedPerson)