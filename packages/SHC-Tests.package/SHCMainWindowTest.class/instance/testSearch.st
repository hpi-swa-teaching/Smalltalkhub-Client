running
testSearch
	self loginInstance searchField contents: 'ShcTest'.
	self loginInstance searchButton doButtonAction.
	self assert: (self loginInstance searchResults size = 5).