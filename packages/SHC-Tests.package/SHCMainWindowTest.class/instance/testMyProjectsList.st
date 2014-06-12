running
testMyProjectsList
	self assert: ((self myProjectsListMorph enabled)not).
	
	self loginInstance usernameField contents: 'ShcTestUser'.
	self loginInstance passwordField contents: 'HurfDurf'.
	self loginInstance loginButton doButtonAction.
	
	self assert: (self myProjectsListMorph enabled).