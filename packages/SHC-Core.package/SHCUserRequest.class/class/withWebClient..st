initialization
withWebClient: aWebClient
	| request |
	request := SHCUserRequest new.
	request webclient: aWebClient.
	^ request 