initialization
withWebClient: aWebClient
	| request |
	request := self new.
	request webclient: aWebClient.
	^ request 