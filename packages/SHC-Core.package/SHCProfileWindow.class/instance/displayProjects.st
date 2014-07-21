ui-actions
displayProjects
	self projects: (self client listProjects: self user).
	self changed: #projectNames;
             changed: #projectsIndex.