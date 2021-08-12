Extension:   ehealth-intendedAudience
Title:       "intendedAudience"
Description: "Specifies that the resource is only intended for use in the specified organisations. Leave blank if the resource is intended for global use."
* . ^short = "The intended audience of the resource"
* value[x] only Reference(ehealth-organization)
* valueReference only Reference(ehealth-organization)
* valueReference 1..1
