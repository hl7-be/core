Instance: provenance1
InstanceOf: BeProvenance
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2019-06-27T08:39:24+02:00"
* target = Reference(Practitioner/practitioner1/_history/1)
* recorded = "2019-06-27T08:39:24+02:00"
* reason = $v3-ActReason#HOPERAT "Healthcare Operations"
* activity = $v3-DataOperation#CREATE
* agent.type = $provenance-participant-type#author
* agent.who = Reference(https://www.afhirserver.be/fhir/Organization/organization1) "Enterprise Hospital Ziekenhuis"