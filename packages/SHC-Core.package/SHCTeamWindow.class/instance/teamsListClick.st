ui-events
teamsListClick
	| selecteduser |
	(self teamsIndex <= 0) ifTrue: [^ nil].
	
	selecteduser := self team members at: (self teamsIndex).
	SHCProfileWindow newWithClient: (self client) user: (selecteduser name).