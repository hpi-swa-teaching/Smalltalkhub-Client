running
testMyProjectsList
	self assert: ((self loginInstance myProjectsListMorph visible)not).
	
	self loginInstance usernameField contents: 'ShcTestUser'.
	self loginInstance passwordField contents: 'HurfDurf'.
	self loginInstance loginButton doButtonAction.
	
	self assert: (self loginInstance myProjectsListMorph visible).