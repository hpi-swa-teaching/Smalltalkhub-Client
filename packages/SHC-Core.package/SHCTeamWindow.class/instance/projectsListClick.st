as yet unclassified
projectsListClick
	| index selectedproject |

	index := self projectsIndex.
	(index = 0) ifTrue: [^ nil].
	
	selectedproject := self projects at: (index).
	SHCProjectWindow newWithClient: (self client) user: selectedproject.