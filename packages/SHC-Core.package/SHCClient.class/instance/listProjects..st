api-calls
listProjects: aUserName
	| projectsArray |
	projectsArray := self fetchProjects: aUserName.
	projectsArray ifNil: [ ^#() ].
	^ self parseProjects: projectsArray