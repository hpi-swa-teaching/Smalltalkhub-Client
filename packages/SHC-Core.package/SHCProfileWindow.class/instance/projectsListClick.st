accessing
projectsListClick
	| selectedproject|
	
	(self projectsIndex = 0) ifTrue: [^ nil].
	selectedproject := self projects at: (self projectsIndex).	
	SHCProjectWindow showWithClient: (self client) and: selectedproject.
