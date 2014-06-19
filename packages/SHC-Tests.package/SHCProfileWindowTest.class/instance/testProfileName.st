running
testProfileName

	self instance user: 'ShcTestUser'. 	
	self instance update.
	
	self assert: self instance usernameLabel contents = '~ShcTestUser'.