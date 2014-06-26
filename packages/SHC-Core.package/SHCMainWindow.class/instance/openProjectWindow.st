ui-actions
openProjectWindow 
	SHCProjectWindow newWith: self client and: (self projectNames at: self mainListMorphIndex).
