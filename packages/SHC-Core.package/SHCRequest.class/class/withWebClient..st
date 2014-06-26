initialization
withWebClient: aWebClient
	| request |
	request := SHCRequest new.
	request webclient: aWebClient.
	^ request 