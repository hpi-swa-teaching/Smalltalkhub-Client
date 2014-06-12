as yet unclassified
applyLoggedInUi
	"Changes the UI to the state where the user is already logged in"
	passwordField hide.
	loginButton hide.
	logoutButton show.
	showProfileButton show.
	showTeamsButton show.
	showProjectsButton show.
	self myProjectsListMorph show.
	