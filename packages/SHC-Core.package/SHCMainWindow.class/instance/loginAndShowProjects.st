ui-actions
loginAndShowProjects
	self username: (self usernameField contents asString).
	self password: (self passwordField contents asString).

	(self client login: (self username) password: (self password))
	ifTrue:  [
		self showProjects.
		self applyLoggedInUi.
		"loginButton color: Color green"
	]
	ifFalse: [self loginButton color: Color red]