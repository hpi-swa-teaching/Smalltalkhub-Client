as yet unclassified
testSearch2
	| results |
	self searchinstance searchAll: 'ShcTestProject'.
	results := self searchinstance readableSearchResults.
	self assert: (results size >= 4).