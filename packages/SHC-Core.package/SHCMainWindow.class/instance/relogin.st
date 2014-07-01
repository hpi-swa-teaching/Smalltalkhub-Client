initialization
relogin
	| response |
	[response := self client login] on: Error do: [:ex | Transcript show: ex. ^ false].
	response ifTrue:
		[self usernameField contents: self client username.
		self passwordField contents: self client password.
		self loginAndShowProjects]