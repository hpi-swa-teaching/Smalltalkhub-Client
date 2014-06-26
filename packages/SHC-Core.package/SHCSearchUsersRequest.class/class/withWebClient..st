as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCSearchUsersRequest new.
	request webclient: aWebClient.
	^ request 