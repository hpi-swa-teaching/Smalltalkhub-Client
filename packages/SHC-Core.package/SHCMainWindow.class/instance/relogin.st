initialization
relogin
	(self client login) ifTrue:
		[self usernameField contents: self client username.
		self passwordField contents: self client password.
		self loginAndShowProjects]