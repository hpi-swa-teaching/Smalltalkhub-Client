tests
testLoginWithSavedCredentials
	self clientInstance logout.
	self clientInstance username: 'ShcTestUser'.
	self clientInstance password: 'HurfDurf'.
	
	self assert: (self clientInstance login).