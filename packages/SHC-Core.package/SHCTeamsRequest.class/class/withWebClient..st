as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCTeamsRequest new.
	request webclient: aWebClient.
	^ request 