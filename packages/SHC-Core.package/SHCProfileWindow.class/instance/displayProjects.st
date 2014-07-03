ui-actions
displayProjects
	| projects |
	projects := self client listProjects: self user.
	(projects isEmpty)
	ifFalse: [self projects: (self client parseProjects: projects)]
	ifTrue: [self projects: (nil) ].
	self changed: #projectNames;
             changed: #projectsIndex.