ui-actions
displayTeams
	self teams: (self client listTeams: self user).
	self changed: #teamNames;
		 changed: #teamsIndex
							