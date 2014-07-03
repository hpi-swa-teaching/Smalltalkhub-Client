ui-actions
fetchTeamDetails
	self team: 
		(self client parseTeam: (self teamname) 
				     withMembers: (self client listTeamMember: self teamname) 
				     andProjects: (self client listTeamProject: self teamname))