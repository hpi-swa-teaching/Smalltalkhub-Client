running
testLogin
	self loginInstance logout.
	self loginInstance usernameField contents: 'ShcTestUser'.
	self loginInstance passwordField contents: 'HurfDurf'.
	self loginInstance loginButton doButtonAction.
	
	self assert: (self loginInstance passwordField visible) not.
	self assert: (self loginInstance loginButton visible) not.
	self assert: (self loginInstance myProjectsListMorph visible).