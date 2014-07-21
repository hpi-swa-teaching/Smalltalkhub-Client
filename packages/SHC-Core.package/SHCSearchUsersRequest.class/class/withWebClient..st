initialization
withWebClient: aWebClient
	| request |
	request := SHCSearchUsersRequest new.
	request webclient: aWebClient.
	^ request 