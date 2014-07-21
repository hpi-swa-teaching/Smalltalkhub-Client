initialization
withWebClient: aWebClient
	| request |
	request := SHCListProjectsRequest new.
	request webclient: aWebClient.
	^ request 