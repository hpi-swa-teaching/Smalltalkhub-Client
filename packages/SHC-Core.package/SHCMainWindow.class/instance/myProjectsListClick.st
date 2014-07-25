ui-events
myProjectsListClick
	| index project |
	"opens the project window for the selected project"

	index := self myProjectsListMorphIndex.
	(index = 0) ifTrue: [^ nil].
	
	project := self projectDetails at: (index).
	SHCProjectWindow showWithClient: (self client) and: project