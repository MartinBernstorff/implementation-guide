Profile: ehealth-servicerequest
Id: ehealth-servicerequest
Parent: ServiceRequest
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare named episodeOfCare 1..1
* extension[episodeOfCare] ^type.aggregation = #referenced
* extension contains ehealth-referenceRange named referenceRange 0..*
* extension contains ehealth-sharingPolicy named sharingPolicy 1..1
* extension contains ehealth-reuseCriteria named reuseCriteria 0..1

* instantiatesCanonical 1..1
* instantiatesCanonical only Canonical(ehealth-activitydefinition)
* basedOn 0..0
* replaces 0..0
* code from ehealth-activitydefinition-code
* subject only Reference(ehealth-patient)
* performer 0..1
* performer only Reference(ehealth-practitioner or ehealth-organization or ehealth-patient or ehealth-device or ehealth-relatedperson or HealthcareService)
* reasonReference only Reference(ehealth-condition or ehealth-observation)
* note.authorReference only Reference(ehealth-practitioner or ehealth-patient or ehealth-relatedperson)
* note.authorString only string
* relevantHistory only Reference(ehealth-provenance)
