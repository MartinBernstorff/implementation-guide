Profile: ehealth-practitioner
Id: ehealth-practitioner
Parent: DkCorePractitioner
* name 1..1
* qualification.issuer only Reference(ehealth-organization)
* qualification.issuer ^type.aggregation = #referenced
