initialization
withWebClient: aWebClient
	| request |
	request := SHCTeamMemberRequest new.
	request webclient: aWebClient.
	^ request 