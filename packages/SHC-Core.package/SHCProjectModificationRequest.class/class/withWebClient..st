as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCProjectModificationRequest new.
	request webclient: aWebClient.
	^ request 