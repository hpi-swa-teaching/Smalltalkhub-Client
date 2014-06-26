ui-actions
loginAndShowProjects
	self username: (usernameField contents asString).
	self password: (passwordField contents asString).

	(self client login: (self username) password: (self password))
	ifTrue:  [
		self showProjects.
		self applyLoggedInUi.
		"loginButton color: Color green"
	]
	ifFalse: [loginButton color: Color red]