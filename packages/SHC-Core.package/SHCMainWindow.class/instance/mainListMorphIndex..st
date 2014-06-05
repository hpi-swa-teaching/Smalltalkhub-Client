accessing
mainListMorphIndex: anInteger
	mainListMorphIndex := anInteger min: (self projectNames size).
   self changed: #mainListMorphIndex.