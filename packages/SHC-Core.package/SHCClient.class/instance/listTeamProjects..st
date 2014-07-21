api-calls
listTeamProjects: aTeamName
	| projectsDictionary |
	projectsDictionary := self fetchTeamProjects: aTeamName.
	projectsDictionary ifNil: [ ^#() ].
	^ self parseProjects: projectsDictionary