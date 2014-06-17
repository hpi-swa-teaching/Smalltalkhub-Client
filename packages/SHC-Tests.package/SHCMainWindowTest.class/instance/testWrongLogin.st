running
testWrongLogin
	self loginInstance logout.
	self loginInstance usernameField contents: 'ShcTestUser'.
	self loginInstance passwordField contents: 'Wrong Password'.
	self loginInstance loginButton doButtonAction.
	
	self assert: (self loginInstance passwordField visible).
	self assert: (self loginInstance loginButton visible).
	self assert: (self loginInstance myProjectsListMorph visible) not.