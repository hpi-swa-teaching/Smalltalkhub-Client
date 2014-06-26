as yet unclassified
update
	|shcTeam teamsJSON  projectsJSON|
	
	shcTeam := self client parseTeamMember: (self client listTeamMember: self teamname).
	
	self setLabel: 'Team: ~', self teamname.

	self teamNameLabel contents: shcTeam teamname.


	teamsJSON := self client listTeams: self user.
	(teamsJSON isEmpty) 
	ifFalse: [self teams: (teamsJSON collect: [:dict | dict at: 'name'])]
	ifTrue: [self teams: (nil) ].
	self changed: #teams;
		 changed: #teamsIndex.
					
	projectsJSON := self client listProjects: self user.
	(projectsJSON isEmpty)
	ifFalse: [self projects: (projectsJSON collect: [:dict | dict at: 'name'])]
	ifTrue: [self teams: (nil) ].
	self changed: #projects;
             changed: #projectsIndex.