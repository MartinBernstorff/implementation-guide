Extension: ehealth-participant
Title: "Participant"
Description: "Practitioner or Patient who is participating"
* . ^short = "Participating Practitioner or Patient"
* extension contains
    type 0..1 and
    function 0..1 and
    actor 0..1 and
    actorReference 0..1
* extension[type].value[x] only code from http://ehealth.sundhed.dk/vs/participant-types (required)
* extension[function].value[x] only CodeableConcept from http://ehealth.sundhed.dk/vs/participant-function (required)
* extension[actor].value[x] ^type.aggregation = #referenced
* extension[actorReference].value[x] only Reference(CareTeam | Organization | Patient | Practitioner | RelatedPerson)
