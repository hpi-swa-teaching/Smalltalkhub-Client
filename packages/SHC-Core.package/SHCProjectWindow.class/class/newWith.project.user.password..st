initialization
newWith: aSHCClient project: aActiveProject user: aUserName password: aPassword
	| w |
	w := SHCProjectWindow new.
	w webclient: aSHCClient.
	w activeProject: aActiveProject.
	w username: aUserName.
	w password: aPassword.
	w update.
	^ w