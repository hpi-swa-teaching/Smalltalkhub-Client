api-calls
listTeams: aUserName
	| teamsArray | 
	teamsArray := self fetchTeams: aUserName.
	teamsArray ifNil: [ ^ #() ].
	^self parseTeams: teamsArray.