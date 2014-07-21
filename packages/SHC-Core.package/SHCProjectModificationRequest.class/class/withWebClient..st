initialization
withWebClient: aWebClient
	| request |
	request := SHCProjectModificationRequest new.
	request webclient: aWebClient.
	^ request 