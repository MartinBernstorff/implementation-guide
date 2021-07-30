Profile: ehealth-activitydefinition
Id: ehealth-activitydefinition
Parent: ActivityDefinition
* extension contains ehealth-reuseCriteria named reuseCriteria 0..1
* extension contains ehealth-recommendation named recommendation 0..1
* extension contains ehealth-intendedAudience named intendedAudience 0..*
* extension contains ehealth-referenceRange named referenceRange 0..*
* extension contains ehealth-modifier-role named modifierRole 1..*
* extension contains ehealth-quality named quality 0..*
* extension contains ehealth-sharingPolicy named sharingPolicy 1..1
* version 1..1
* jurisdiction from ehealth-jurisdiction
* topic from ehealth-topic-type
* topic 1..1
//* library only Reference(ehealth-library)
* code from ehealth-activitydefinition-code
* code 1..1
* location only Reference(Location)

Extension:   ehealth-reuseCriteria
Title:       "reuseCriteria"
* extension contains
    allowed 1..1 and
    situationQuality 1..1 and
    usageQuality 1..1 and
    deviceMeasuringQuality 1..1 and
    dataActuality 1..1
* extension[allowed].value[x] only boolean
* extension[situationQuality].value[x] only CodeableConcept
* extension[usageQuality].value[x] only CodeableConcept
* extension[deviceMeasuringQuality].value[x] only CodeableConcept
* extension[dataActuality].value[x] only Duration

Extension:   ehealth-recommendation
Title:       "recommendation"
* value[x] only CodeableConcept
* valueCodeableConcept from ehealth-plandefinition-recommendation
* valueCodeableConcept 1..1

Extension:   ehealth-intendedAudience
Title:       "intendedAudience"
* value[x] only Reference(ehealth-organization)
* valueReference only Reference(ehealth-organization)
* valueReference 1..1

Extension:   ehealth-referenceRange
Title:       "referenceRange"
* extension contains
    low 1..1 and
    high 1..1 and
    type 1..1
* extension[low].value[x] only SimpleQuantity
* extension[high].value[x] only SimpleQuantity
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from ehealth-reference-range-type

Extension: ehealth-modifier-role
Title:     "Modified role"
* extension contains
    reference 1..1 and
    role 1..1
* extension[reference].value[x] only Reference(ehealth-organization)
* extension[reference].valueReference 1..1
* extension[role].value[x] only CodeableConcept
* extension[role].valueCodeableConcept from ehealth-modifier-role
* extension[role].valueCodeableConcept 1..1

Extension: ehealth-quality
Title:     "quality"
* extension contains
    qualityType 1..1 and
    qualityCode 1..1
* extension[qualityType].value[x] only CodeableConcept
* extension[qualityType].valueCodeableConcept from ehealth-quality-types
* extension[qualityCode].value[x] only CodeableConcept // cannot reference three value sets as below. Build into one?
//* extension[qualityCode].valueCodeableConcept from ehealth-device-measuring-quality or ehealth-quality-types or ehealth-situation-quality

Extension: ehealth-sharingPolicy
Title:     "sharingPolicy"
* value[x] only CodeableConcept
* valueCodeableConcept from ehealth-measurement-sharing-policies
