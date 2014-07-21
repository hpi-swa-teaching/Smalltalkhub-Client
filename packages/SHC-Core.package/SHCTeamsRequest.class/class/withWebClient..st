initialization
withWebClient: aWebClient
	| request |
	request := SHCTeamsRequest new.
	request webclient: aWebClient.
	^ request 