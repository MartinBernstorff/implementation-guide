Profile: ehealth-wounddimensions
Id: ehealth-wounddimensions
Parent: Observation
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare named episodeOfCare 1..1
* extension[episodeOfCare] ^type.aggregation = #referenced
* extension contains ehealth-quality named quality 0..*
* extension contains ehealth-resolved-timing named resolvedTiming 1..1
* basedOn 1..1
* basedOn only Reference(ehealth-servicerequest)
* basedOn ^type.aggregation = #referenced
* code = http://loinc.org#72287-6
* subject 1..1
* subject only Reference(ehealth-patient)
* subject ^type.aggregation = #referenced
* effective[x] 1..1
* performer 1..1
* performer only Reference(ehealth-practitioner or ehealth-organization or ehealth-patient or ehealth-relatedperson)
* performer ^type.aggregation = #referenced
* value[x] only Quantity or CodeableConcept
* device only Reference(ehealth-device)
* device ^type.aggregation = #referenced
* referenceRange.type from http://ehealth.sundhed.dk/vs/reference-range-type
// not in r4: * related.target only Reference(ehealth-observation or ehealth-questionnaireresponse or Sequence)
* component 0..5
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component contains woundWidth 0..1 and woundLength 0..1 and woundDepth 0..1 and woundArea 0..1 and woundVolume 0..1
* component[woundWidth].code.coding from http://loinc.org
* component[woundWidth].code.coding.code = #39125-0 (exactly) // Width of Wound
* component[woundWidth].value[x] only Quantity
* component[woundLength].code.coding from http://loinc.org
* component[woundLength].code.coding.code = #39126-8 (exactly) // Length of Wound
* component[woundLength].value[x] only Quantity
* component[woundDepth].code.coding from http://loinc.org
* component[woundDepth].code.coding.code = #39127-6 (exactly) // Depth of Wound
* component[woundDepth].value[x] only Quantity
* component[woundArea].code.coding from http://loinc.org
* component[woundArea].code.coding.code = #89260-4 (exactly) // Area of Wound
* component[woundArea].value[x] only Quantity
* component[woundVolume].code.coding from http://loinc.org
* component[woundVolume].code.coding.code = #94083-3 (exactly) // Wound volume
* component[woundVolume].value[x] only Quantity
* dataAbsentReason from http://ehealth.sundhed.dk/vs/data-absent-reason (required)
