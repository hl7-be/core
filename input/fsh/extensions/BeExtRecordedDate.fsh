Extension: BeExtRecordedDate
Id: be-ext-recorded-date
Title: "BeExtRecordedDate"
Description: "Recording date by the Author or Recorder (date of last update). Coupled with the Business Identifier it enables CareSet history management, guaranteeing access to the latest version of the content."
* ^context.type = #element
* ^context.expression = "DomainResource"
* value[x] only dateTime
* value[x] 1..1
