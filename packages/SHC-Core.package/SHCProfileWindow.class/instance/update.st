as yet unclassified
update
	|teamsJSON watchingJSON|
	teamsJSON := self client listTeams: self user.
	self teams: (teamsJSON collect: [:dict | dict at: 'name']).
	self changed: #teams.
	self changed: #teamsIndex.
	
	watchingJSON := self client listWatching: self user.
	self watching: (watchingJSON collect: [:dict | dict at: 'project']).
	self changed: #watching.
	self changed: #watchingIndex.