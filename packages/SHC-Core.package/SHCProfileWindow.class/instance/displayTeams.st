ui-actions
displayTeams
	| teams |
	teams := self client listTeams: self user.
	(teams isEmpty) 
	ifFalse: [self teams: (teams collect: [:dict | dict at: 'name'])]
	ifTrue: [self teams: (nil) ].
	self changed: #teams;
		 changed: #teamsIndex.
							