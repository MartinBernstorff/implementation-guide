Extension: ehealth-media-lowres
Title: "Media Low Resolution representation"
Description: "A downsampled version of a Media resource content"
* . ^short = "Media low resolution"
* extension contains
    sizeCategory 1..1 and
    content 1..1
* extension[sizeCategory].value[x] only Coding
* extension[sizeCategory].valueCoding from http://ehealth.sundhed.dk/vs/lowres-size-category
* extension[sizeCategory].valueCoding 1..1
* extension[content].value[x] only Attachment
* extension[content].valueAttachment 1..1
