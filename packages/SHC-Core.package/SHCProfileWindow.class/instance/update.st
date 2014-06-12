as yet unclassified
update
	|shcUser teamsJSON watchingJSON timelineJSON projectsJSON errorNotification|
	
	errorNotification := Dictionary new.
	errorNotification at: 'emptyJSON' put: 'no record found.. :('.
	
	shcUser := self client parseUser: (self client listUser: self user).
	
	self setLabel: 'Profile: ~', self user.
	self usernameLabel contents: '~', self user.
	self displayNameLabel contents: shcUser fullName.
	self emailLabel contents: 'E-Mail: ', shcUser email.
	self locationLabel contents: 'Location: ', shcUser location.
	self websiteLabel contents: 'Website: ', shcUser website.

	teamsJSON := self client listTeams: self user.
	(teamsJSON isEmpty) 
	ifFalse: [self teams: (teamsJSON collect: [:dict | dict at: 'name'])]
	ifTrue: [self teams: (errorNotification at: 'emptyJSON') ].
	self changed: #teams;
		 changed: #teamsIndex.
							
	watchingJSON := self client listWatching: self user.
	(watchingJSON isEmpty)
	ifFalse: [self watching: (watchingJSON collect: [:dict | dict at: 'project'])]
	ifTrue: [self teams: (errorNotification at: 'emptyJSON') ].
	self changed: #watching;
	       changed: #watchingIndex.
	
	timelineJSON := self client listTimeline: self user.
	(timelineJSON isEmpty)
	ifFalse: [ self timeline:
		(timelineJSON collect: [:dict|
			(dict at: 'username'), ' ', (dict at: 'title'), ' ', (dict at: 'project')])]
	ifTrue: [self teams: (errorNotification at: 'emptyJSON') ].
	self changed: #timeline;
	       changed: #timelineIndex.
	
	projectsJSON := self client listProjects: self user.
	(projectsJSON isEmpty)
	ifFalse: [self projects: (projectsJSON collect: [:dict | dict at: 'name'])]
	ifTrue: [self teams: (errorNotification at: 'emptyJSON') ].
	self changed: #projects;
             changed: #projectsIndex.