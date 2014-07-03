as yet unclassified
projectsListClick
	| index selectedproject json shcProject|

	index := self projectsIndex.
	(index = 0) ifTrue: [^ nil].
	selectedproject := self projects at: (index).
	
	json := self client listProject: selectedproject from: self teamname.
	shcProject := self client parseProject: json.
	SHCProjectWindow showWithClient: (self client) and: shcProject.
	
