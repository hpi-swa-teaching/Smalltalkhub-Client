tests
testdoesUserExists
	| result |
	result := self clientInstance doesUserExist: 'ShcTestUser1'.
	self assert: result.
	result := self clientInstance doesUserExist: 'ShcTestTeam0'.
	self assert: result not.