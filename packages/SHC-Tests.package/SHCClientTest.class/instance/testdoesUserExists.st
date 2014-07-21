tests
testdoesUserExists
	| result |
	result := self clientInstance doesUserExist: 'ShcTestUser'.
	self assert: result.
	result := self clientInstance doesUserExist: 'ShcTestTeam0'.
	self assert: result not.