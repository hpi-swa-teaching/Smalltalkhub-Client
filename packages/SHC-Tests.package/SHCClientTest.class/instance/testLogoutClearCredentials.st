tests
testLogoutClearCredentials
	self clientInstance username: 'ShcTestUser'.
	self clientInstance password: 'HurfDurf'.
	
	self assert: self clientInstance username notNil.
	self assert: self clientInstance password notNil.
	
	self clientInstance logout.
	
	self assert: self clientInstance username isNil.
	self assert: self clientInstance password isNil.