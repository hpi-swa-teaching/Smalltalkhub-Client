as yet unclassified
update
	|teamsJSON|
	teamsJSON := self client listTeams: self user.
	self teams: (teamsJSON collect: [:dict | dict at: 'name']).
	self changed: #teams.
	self changed: #teamsIndex.