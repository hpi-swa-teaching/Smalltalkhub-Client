initialization
withWebClient: aWebClient
	| request |
	request := SHCTeamProjectRequest new.
	request webclient: aWebClient.
	^ request 