as yet unclassified
testEmptySearch
	| results |
	self sthSanity ifFalse: [ ^ nil ].
	self searchinstance searchAll: ''.
	results := self searchinstance readableSearchResults.
	self assert: (results size = 2).