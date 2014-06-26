as yet unclassified
update
	|shcTeam teamMemberJSON  projectsJSON|
	
	shcTeam := self client parseTeamMember: (self client listTeamMember: self teamname).
	
	self setLabel: 'Team: ~', self teamname.
	self teamNameLabel contents: self teamname.

	teamMemberJSON := self client listTeamMember: self teamname.
	(teamMemberJSON isEmpty) 
	ifFalse: [self teamMember: (teamMemberJSON collect: [:dict | dict at: 'username'])]
	ifTrue: [self teamMember: (nil) ].
	self changed: #teamMember;
		 changed: #teamsIndex.
					
	"projectsJSON := self client listProjects: self user.
	(projectsJSON isEmpty)
	ifFalse: [self projects: (projectsJSON collect: [:dict | dict at: 'name'])]
	ifTrue: [self teams: (nil) ].
	self changed: #projects;
             changed: #projectsIndex."