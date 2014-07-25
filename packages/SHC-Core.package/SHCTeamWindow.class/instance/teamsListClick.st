ui-events
teamsListClick
	| selecteduser |
	(self teamsIndex <= 0) ifTrue: [^ nil].
	
	selecteduser := self team members at: (self teamsIndex).
	SHCProfileWindow showWithClient: (self client) user: (selecteduser name)