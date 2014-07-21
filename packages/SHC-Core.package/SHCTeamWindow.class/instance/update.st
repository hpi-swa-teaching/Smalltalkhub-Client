ui-actions
update
	self fetchTeamDetails.
	
	self window setLabel: 'Team: ~', self team name.
	self teamNameLabel contents: self team name.
					
	self displayTeamMembers.
	self displayProjects 