ui-actions
applyLoggedOutUi
	"Changes the UI to the state where the user is logged out"
	self usernameField show.
	self passwordField show.
	self loginButton show.
	self logoutButton hide.
	self showProfileButton hide.
	self myProjectsTextMorph hide.
	self myProjectsListMorph hide.
	self window setLabel: 'SmalltalkHub Client'