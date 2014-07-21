api-calls
createTeam: aTeamName
	| request |
	request := SHCCreateTeamRequest withWebClient: self webclient.
	request team: aTeamName.
	^ request execute