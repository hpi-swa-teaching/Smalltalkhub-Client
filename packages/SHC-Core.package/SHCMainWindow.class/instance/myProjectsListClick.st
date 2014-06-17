ui-events
myProjectsListClick
	| index project |
	"opens the project window for the selected project"

	index := self myProjectsListMorphIndex.
	(index = 0) ifTrue: [^ nil].
	
	project := self projectDetails at: (index).
	SHCProjectWindow newWith: (self client) project: project user: (self username) password: (self password).