Profile: ehealth-careteam
Id: ehealth-careteam
Parent: CareTeam
* status 1..1
* name 1..1
* subject 0..0
* participant.role from ehealth-careteam-participant-role
* participant.member only Reference(ehealth-practitioner or ehealth-practitionerrole or ehealth-relatedperson or ehealth-patient or ehealth-organization or ehealth-careteam)
* participant.member ^type.aggregation = #referenced
* participant.member 1..1
* participant.onBehalfOf only Reference(ehealth-organization)
* participant.onBehalfOf ^type.aggregation = #referenced
* reasonCode from ehealth-conditions
* reasonCode 1..*
* reasonReference 0..0
* managingOrganization only Reference(ehealth-organization)
* managingOrganization ^type.aggregation = #referenced
* note.authorReference only Reference(ehealth-practitioner or ehealth-patient or ehealth-relatedperson)
* note.authorString only string
* telecom.system from ehealth-contactpoint-system
* telecom.value 1..1
