as yet unclassified
update
	|teamsJSON watchingJSON timelineJSON projectsJSON|
	teamsJSON := self client listTeams: self user.
	self teams: (teamsJSON collect: [:dict | dict at: 'name']).
	self changed: #teams.
	self changed: #teamsIndex.
	
	watchingJSON := self client listWatching: self user.
	self watching: (watchingJSON collect: [:dict | dict at: 'project']).
	self changed: #watching.
	self changed: #watchingIndex.
	
	timelineJSON := self client listTimeline: self user.
	self timeline: (timelineJSON collect: [:dict | dict at: 'title']).
	self changed: #timeline.
	self changed: #timelineIndex.
	
	projectsJSON := self client listProjects: self user.
	self projects: (projectsJSON collect: [:dict | dict at: 'name']).
	self changed: #projects.
	self changed: #projectsIndex.
	
