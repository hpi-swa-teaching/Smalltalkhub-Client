accessing
projectListMorphIndex: anInteger
	mainListMorphIndex := anInteger min: (self projectNames size).
   self changed: #projectListMorphIndex.