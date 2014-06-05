as yet unclassified
update
	|teamsRequest teamsJSON|
	"teams"
	teamsRequest := SHCTeamsRequest withWebClient: self webclient.
	teamsRequest
		username: self user;
		execute.
	teamsJSON := WebUtils jsonDecode: (ReadStream on: teamsRequest responseContent).
	self teams: (teamsJSON collect: [:dict | dict at: 'name']).
	self changed: #teams.
	self changed: #teamsIndex.