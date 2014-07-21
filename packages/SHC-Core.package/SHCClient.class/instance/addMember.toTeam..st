api-calls
addMember: aMemberName toTeam: aTeamName
	| request |
	request := SHCAddMemberRequest withWebClient: self webclient.
	request username: aMemberName.
	request teamname: aTeamName.
	^ request execute