accessing
projectsListClick
	| selectedproject json|
	
	(self projectsIndex = 0) ifTrue: [^ nil].
	selectedproject := self projects at: (self projectsIndex).	
	SHCProjectWindow newWith: (self client) and: selectedproject
