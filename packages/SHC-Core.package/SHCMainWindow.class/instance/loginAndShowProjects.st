as yet unclassified
loginAndShowProjects
	(self login: usernameField contents password: passwordField contents)
	ifTrue:  [
		self showProjects.
		Transcript show: self webclient cookies.
		loginButton color: Color green
	]
	ifFalse: [loginButton color: Color red]