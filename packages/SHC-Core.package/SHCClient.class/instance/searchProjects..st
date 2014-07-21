api-calls
searchProjects: aSearchTerm
	| projectArray |
	projectArray := self fetchSearchProjects: aSearchTerm.
	^ self parseSearchProjects: projectArray