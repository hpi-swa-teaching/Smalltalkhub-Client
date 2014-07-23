as yet unclassified
testUserFromResult
	| user string |
	self sthSanity ifFalse: [ ^ nil ].
	self searchinstance searchAll: 'ShcTestUser'.
	string := self searchinstance readableSearchResults at: 3.
	self assert: (string = '   ShcTestUser').
	user := self searchinstance userFromResult: 3.
	self assert: (user name = 'ShcTestUser').