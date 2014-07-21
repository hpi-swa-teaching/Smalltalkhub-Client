api-calls
searchProjects: aSearchTerm
	| projectArray |
	projectArray := self fetchSearchProjects: aSearchTerm.
	projectArray ifNil: [^ #() ].
	^ self parseSearchProjects: projectArray