ui-events
projectsListClick
	| selectedproject |

	(self projectsIndex = 0) ifTrue: [^ nil].
	selectedproject := self team projects at: (self projectsIndex).	
	SHCProjectWindow newWith: (self client) and: selectedproject.
	
