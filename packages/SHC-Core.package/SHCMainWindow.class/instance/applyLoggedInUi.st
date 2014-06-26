ui-actions
applyLoggedInUi
	"Changes the UI to the state where the user is already logged in"
	usernameField hide.
	passwordField hide.
	loginButton hide.
	logoutButton show.
	showProfileButton show.
	myProjectsTextMorph show.
	self myProjectsListMorph show.
	self setLabel: 'SmalltalkHub Client - Logged in as ', self username.

	