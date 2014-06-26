as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCWatchingRequest new.
	request webclient: aWebClient.
	^ request 