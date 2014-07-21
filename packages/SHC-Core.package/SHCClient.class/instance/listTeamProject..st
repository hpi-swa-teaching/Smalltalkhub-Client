api-calls
listTeamProject: aTeamName
	| teamProjectRequest result |
	teamProjectRequest := SHCTeamProjectRequest withWebClient: self webclient.
	teamProjectRequest teamname: aTeamName.
	result := teamProjectRequest execute.
	result ifTrue: [^ WebUtils jsonDecode: (ReadStream on: teamProjectRequest responseContent)]
	ifFalse: [ ^ nil]
