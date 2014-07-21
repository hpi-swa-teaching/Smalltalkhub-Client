initialization
withWebClient: aWebClient
	| request |
	request := SHCLogoutRequest new.
	request webclient: aWebClient.
	^ request 