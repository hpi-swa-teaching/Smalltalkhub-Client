tests
testTestUser 
	| result |
	result := self clientInstance testUser: 'ShcTestUser'.
	self assert: result.
	result := self clientInstance testUser: 'ShcTestTeam0'.
	self assert: result not.