as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCProjectContributorRequest new.
	request webclient: aWebClient.
	^ request 