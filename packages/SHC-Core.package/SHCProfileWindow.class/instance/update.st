as yet unclassified
update
	|teamsJSON watchingJSON timelineJSON projectsJSON errorNotification userJSON|
	
	errorNotification := Dictionary new.
	errorNotification at: 'emptyJSON' put: 'no record found.. :('.
	errorNotification at: 'missionInternetConnection' put: 'no internet connection'.
	errorNotification at: 'noWebsite' put: 'no website'.
	errorNotification at: 'noLocation' put: 'Anonymous Proxy Land'.
	
	self setLabel: 'Profile: ~', self user.
	self usernameLabel contents: '~', self user.
		
	userJSON := self client listUser: self user.
	self displayNameLabel contents: (userJSON at: 'fullName').
	self emailLabel contents: (userJSON at: 'email').
		
	((userJSON at: 'location') isEmpty not)
	ifTrue: [self locationLabel contents: (userJSON at: 'location')]
	ifFalse: [self locationLabel contents: (errorNotification at: 'noLocation')].

	((userJSON at: 'website') isEmpty not)
	ifTrue: [self websiteLabel contents: (userJSON at: 'website')]
	ifFalse: [self websiteLabel contents: (errorNotification at: 'noWebsite')].
		
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
	"ifFalse: [self timeline: (timelineJSON collect: [:dict | dict at: 'title'])]"
	ifFalse: [self timeline: 
		(Array streamContents: [:stream|
               (timelineJSON collect: [:dict | dict at: 'title']) with: (timelineJSON collect: [:dict | dict at: 'project']) do: [:x :y | stream nextPut: x; nextPut: y]] )]
	ifTrue: [self teams: (errorNotification at: 'emptyJSON') ].
	self changed: #timeline;
	       changed: #timelineIndex.
	
	projectsJSON := self client listProjects: self user.
	(projectsJSON isEmpty)
	ifFalse: [self projects: (projectsJSON collect: [:dict | dict at: 'name'])]
	ifTrue: [self teams: (errorNotification at: 'emptyJSON') ].
	self changed: #projects;
             changed: #projectsIndex.