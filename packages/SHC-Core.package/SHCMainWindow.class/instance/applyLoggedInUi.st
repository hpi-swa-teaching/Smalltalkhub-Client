ui-actions
applyLoggedInUi
	"Changes the UI to the state where the user is already logged in"
	self usernameField hide.
	self passwordField hide.
	self loginButton hide.
	self logoutButton show.
	self showProfileButton show.
	self myProjectsTextMorph show.
	self myProjectsListMorph show.
	self window setLabel: 'SmalltalkHub Client - Logged in as ', self username.

	