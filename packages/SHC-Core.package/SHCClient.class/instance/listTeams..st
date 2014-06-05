api-calls
listTeams: aUserName
	|teamsRequest result |
	teamsRequest := SHCTeamsRequest withWebClient: self webclient.
	teamsRequest username: self username.
	result := teamsRequest execute.
	result ifTrue: [^ WebUtils jsonDecode: (ReadStream on: teamsRequest responseContent)]
	ifFalse: [ ^ nil]
