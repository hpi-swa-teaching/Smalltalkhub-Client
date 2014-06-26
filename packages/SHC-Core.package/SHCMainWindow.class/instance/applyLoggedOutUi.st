ui-actions
applyLoggedOutUi
	"Changes the UI to the state where the user is logged out"
	usernameField show.
	passwordField show.
	loginButton show.
	logoutButton hide.
	showProfileButton hide.
	myProjectsTextMorph hide.
	self myProjectsListMorph hide.
	self setLabel: 'SmalltalkHub Client'.