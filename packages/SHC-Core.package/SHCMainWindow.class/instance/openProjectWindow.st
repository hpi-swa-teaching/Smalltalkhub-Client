ui-actions
openProjectWindow 
	SHCProjectWindow showWithClient: self client and: (self projectNames at: self mainListMorphIndex)
