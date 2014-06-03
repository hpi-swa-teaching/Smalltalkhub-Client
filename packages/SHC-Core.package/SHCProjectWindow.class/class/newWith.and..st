initialization
newWith: aSHCClient and: aActiveProject
	| w |
	w := SHCProjectWindow new.
	w webclient: aSHCClient.
	w activeProject: aActiveProject.
	w update.
	^ w