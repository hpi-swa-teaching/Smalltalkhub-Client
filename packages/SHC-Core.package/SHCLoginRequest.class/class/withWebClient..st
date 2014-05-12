configuration
withWebClient: aWebClient
	| request |
	request := SHCLoginRequest new.
	request webclient: aWebClient.
	^ request 