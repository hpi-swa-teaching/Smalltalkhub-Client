as yet unclassified
update
	|teamsJSON watchingJSON timelineJSON projectsJSON errorNotification userJSON|
	
	self setLabel: 'Profile: ~', self user.
	self usernameLabel contents: '~', self user.
		
	userJSON := self client listUser: self user.
	self displayNameLabel contents: (userJSON collect: [:dict | dict at: 'fullName']).
	self locationLabel contents: (userJSON collect: [:dict | dict at: 'location']).
	self websiteLabel contents: (userJSON collect: [:dict | dict at: 'website']).
	self memberSinceLabel contents: (userJSON collect: [:dict | dict at: 'memberSince']).
	
	errorNotification := Dictionary new.
	errorNotification at: 'emptyJSON' put: 'no record found.. :('.
	errorNotification at: 'missionInternetConnection' put: 'no internet connection'.
	
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
"self timeline: ((timelineJSON collect: [:dict | dict at: 'title'])+' '+(timelineJSON collect: [:dict | dict at: 'project']))."
	(timelineJSON isEmpty)
	ifFalse: [self timeline: (timelineJSON collect: [:dict | dict at: 'title'])]
	ifTrue: [self teams: (errorNotification at: 'emptyJSON') ].
	self changed: #timeline;
	       changed: #timelineIndex.
	
	projectsJSON := self client listProjects: self user.
	(projectsJSON isEmpty)
	ifFalse: [self projects: (projectsJSON collect: [:dict | dict at: 'name'])]
	ifTrue: [self teams: (errorNotification at: 'emptyJSON') ].
	self changed: #projects;
             changed: #projectsIndex.
	
