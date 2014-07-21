initialization
withWebClient: aWebClient
	| request |
	request := SHCSearchProjectsRequest new.
	request webclient: aWebClient.
	^ request 