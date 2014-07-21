running
testLogin
	self loginInstance logout.
	self loginInstance usernameField contents: 'ShcTestUser'.
	self loginInstance passwordField contents: 'HurfDurf'.
	self loginInstance loginButton doButtonAction.
	
	self assert: (self loginInstance passwordField visible) not.
	self assert: (self loginInstance loginButton visible) not.
	self assert: (self loginInstance myProjectsListMorph visible).
	
	self assert: (self loginInstance username = 'ShcTestUser').
	self assert: (self loginInstance password = 'HurfDurf').
	self assert: (self loginInstance client username  = 'ShcTestUser').
	self assert: (self loginInstance client password  = 'HurfDurf').
	self assert: (self loginInstance window label = 'SmalltalkHub Client - Logged in as ShcTestUser')