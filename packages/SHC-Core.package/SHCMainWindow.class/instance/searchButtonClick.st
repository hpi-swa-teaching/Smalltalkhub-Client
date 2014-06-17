ui-events
searchButtonClick
	self searchController searchAll: (self searchField contents).
	self mainListMorphIndex: 0.
	self changed: #mainListMorphIndex.
	self changed: #searchResults.