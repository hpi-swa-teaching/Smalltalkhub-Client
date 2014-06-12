as yet unclassified
testSearch1
	| results |
	self searchinstance searchAll: 'ShcTestUser'.
	results := self searchinstance readableSearchResults.
	self assert: (results size = 3).