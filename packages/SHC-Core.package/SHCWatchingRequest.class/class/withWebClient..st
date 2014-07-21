initialization
withWebClient: aWebClient
	| request |
	request := SHCWatchingRequest new.
	request webclient: aWebClient.
	^ request 