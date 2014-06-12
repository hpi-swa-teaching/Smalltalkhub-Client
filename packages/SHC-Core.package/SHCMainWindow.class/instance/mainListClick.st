as yet unclassified
mainListClick
	(self searchController isProject: self mainListMorphIndex) 
		ifTrue: ["Open Project"].
	(self searchController isUser: self mainListMorphIndex)
		ifTrue: ["Open Profile Window"]