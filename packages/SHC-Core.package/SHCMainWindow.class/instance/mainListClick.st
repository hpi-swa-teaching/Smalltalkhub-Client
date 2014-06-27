ui-events
mainListClick
	(self searchController isProject: self mainListMorphIndex) 
		ifTrue: [ | p | p :=self searchController projectFromResult: (self mainListMorphIndex).
				SHCProjectWindow newWith: 
					(self client) and: p].				
	(self searchController isUser: self mainListMorphIndex)
		ifTrue: [| u | u := self searchController userFromResult: (self mainListMorphIndex).
			      SHCProfileWindow 
					newWithClient: (self client) user: (u name)].