ui-actions
fetchTeamDetails
	self team: SHCTeam new.
	self team 
		 name: (self teamname);
		 members: (self client listTeamMembers: self teamname); 
		 projects: (self client listTeamProjects: self teamname).