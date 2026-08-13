### Version history

[A list of changes](changes.html) to the specification since its initial release.

### Scope

With this FHIR Implementation Guide eHealth Platform publishes guidelines, specific profiles and underlying valuesets, codesystems etc. as a federal initiative.

As such, they are the base Belgian federal profiles and projects can use them, refer to them and build on them in their use cases.

When needed, eHealth Platform does these publications as downloadable technical profiles according to the FHIR specs as published in this Implementation Guide.  
As a general rule, the FHIR standard is used as close as possible to the basic HL7 published standard.  
As a consequence of this, when needed eHealth Platform will only focus on nuances and clarifications between the Belgian initiative and the published standard.

There will be no Belgian federal publications replacing or describing the overall base specifications of the HL7 FHIR standard – the pages by HL7 are considered to be sufficient.

Implementers are encouraged to study the descriptions of the various FHIR resources published by HL7, the published Belgian “be-“ profiles here and to signal [support@be-ehealth-standards.atlassian.net](mailto:support@be-ehealth-standards.atlassian.net) concerning any ambiguities or initiatives that go outside of that realm.

Implementers SHALL take note every instance of a resource SHALL always explicitely mark when a Belgian or other profile has been used. Implementers SHALL be aware resources using different technical profiles might follow different rules.

The Belgian profiling effort consists of an iterative approach. This first iteration (Q4 2019) contains a basic set of guidelines, profiled resources and their supporting coding systems and valuesets. In this first set, the profiled resources are Patient, Practitioner, PractitionerRole, Organization, Observation, Provenance and AllergyIntolerance.

Other profiles will be created and/or validated and added to this Belgian set on an ongoing use case driven basis.

This specification contains:

- Generalities on this page
- Content specifics on the [Guidance page](guidance.html)
- [Resource core profiles](artifacts.html#1), which constitute the basis for Belgian FHIR profiling and can be reused in other profiles
- [Data type core profiles](artifacts.html#2), which constitute the basis for Belgian FHIR profiling and can be reused in other profiles
- [Value Sets](artifacts.html#3), containing specific Belgian value sets
- [Code Systems](artifacts.html#4), containing specific Belgian code systems
- [Naming Systems](artifacts.html#5), containing specific Belgian naming systems
- [Examples](artifacts.html#6), note every effort has been made to ensure the examples are correct and useful, but they are not a normative part of the specification.

The implementation guide is structured to allow implementers to pick and choose the capabilities they need and combine them as necessary.

### Navigation

This implementation guide follows the FHIR pattern of being published as a web-based specification. This allows easy navigation between the Belgium-specific portion of the implementation guide and the resources, data types, value sets and other specification components leveraged from the FHIR core specification. This approach also allows implementers to easily navigate to the information needed to perform a task.

A [Table of Contents](toc.html) page is provided that lists all of the pages defined as part of this implementation guide. (Do be aware that some pages have multiple tabs.) A table of contents is also available for the full [FHIR specification]({{site.data.fhir.path}}toc.html) if you really want to read absolutely everything.

There's also an [Artifact index](artifacts.html) that lists all formal FHIR artifacts defined within this implementation guide.

General guidelines can be found on the [Guidance page](guidance.html) that lists all guidelines and attention points that are not explicitely linked to a specific profile.

The *Support* menu provides links to the HL7 standards used by this implementation guide as well as providing a [Downloads](downloads.html) link to retrieve a local copy of this implementation guide and/or particular subsets of it.

Breadcrumb navigation is provided in the gray bar just below the menu at the top of each page, allowing easy navigation back to the main page.

### Dependencies
This IG Contains the following dependencies on other IGs.

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% capture cross-version-analysis %}{% include cross-version-analysis.xhtml %}{% endcapture %}{{ cross-version-analysis | remove: '<p>' | remove: '</p>'}}

### Global Profiles

{% include globals-table.xhtml %}

### Intellectual Property Considerations

While this implementation guide and the underlying FHIR are licensed as public domain, this guide includes examples making use of terminologies such as LOINC, SNOMED CT and others which have more restrictive licensing requirements.

Implementers should make themselves familiar with licensing and any other constraints of terminologies, questionnaires, and other components used as part of their implementation process. In some cases, licensing requirements may limit the systems that data captured using certain questionnaires may be shared with.

{% include ip-statements.xhtml %}

### Disclaimer

The specification herewith documented is the first published version of the Belgian profiling initiative. Every effort has been made to remain within the FHIR standard and to be enabling in nature above all else. It is expected there will be further clarifications and guidelines in the future.

Should an implementation encounter ambiguities due to this guide, your feedback is most welcome on [support@be-ehealth-standards.atlassian.net](mailto:support@be-ehealth-standards.atlassian.net).