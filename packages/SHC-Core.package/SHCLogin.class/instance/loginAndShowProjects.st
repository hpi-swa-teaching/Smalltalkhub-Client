accessing
loginAndShowProjects
	(self login: usernameField contents password: passwordField contents)
	ifTrue:  [self showProjects. loginButton color: Color green]
	ifFalse: [loginButton color: Color red]