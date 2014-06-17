as yet unclassified
testProjectFromResult
	| project string |
	self searchinstance searchAll: 'ShcTestProject'.
	string := self searchinstance readableSearchResults at: 2.
	self assert: (string = '   ShcTestProject0').
	project := self searchinstance projectFromResult: 2.
	self assert: (project name = 'ShcTestProject0').
	self assert: (project owner = 'ShcTestUser').