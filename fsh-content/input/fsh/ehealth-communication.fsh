Profile: ehealth-communication
Id: ehealth-communication
Parent: Communication
* extension contains ehealth-communication-recipientCareTeam named recipientCareTeam 0..*
* extension contains ehealth-communication-senderCareTeam named senderCareTeam 0..*
* extension contains ehealth-restriction-category named restrictionCategory 0..*
// not in R4: * definition only Reference(ehealth-plandefinition or ehealth-activitydefinition)
* basedOn only Reference(Resource)
* partOf only Reference(Resource)
* category 1..*
* category from ehealth-communication-category
* subject 1..1
* subject only Reference(ehealth-patient)
* recipient only Reference(ehealth-device or ehealth-patient or ehealth-practitioner or ehealth-relatedperson)
// is CodeableConcept in R4: * topic only Reference(Resource)
* sender only Reference(ehealth-device or ehealth-patient or ehealth-practitioner or ehealth-relatedperson)
* reasonReference only Reference(ehealth-condition or ehealth-observation)
* payload.contentString 1..1
* payload.contentString only string

Extension: ehealth-communication-recipientCareTeam
Title: "Recipient careteam"
* valueReference only Reference(ehealth-careteam)

Extension: ehealth-communication-senderCareTeam
Title: "Sender careteam"
* valueReference only Reference(ehealth-careteam)

Extension: ehealth-restriction-category
Title: "Restriction category"
* value[x] only CodeableConcept
* valueCodeableConcept from ehealth-restriction-category
