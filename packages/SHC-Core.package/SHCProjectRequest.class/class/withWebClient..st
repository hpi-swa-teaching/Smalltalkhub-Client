as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCProjectRequest new.
	request webclient: aWebClient.
	^ request 