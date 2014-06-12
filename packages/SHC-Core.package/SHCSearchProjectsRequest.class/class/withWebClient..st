as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCSearchProjectsRequest new.
	request webclient: aWebClient.
	^ request 