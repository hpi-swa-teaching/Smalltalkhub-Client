as yet unclassified
projectsListClick
	| index selectedproject shcProject json|
	
	index := self projectsIndex.
	(index = 0) ifTrue: [^ nil].
	selectedproject := self projects at: (index).
	json := self client listProject: selectedproject from: self user.
	shcProject := self client parseProject: json.
	SHCProjectWindow newWith: (self client) and: shcProject.
