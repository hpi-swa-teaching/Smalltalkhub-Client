initialization
newWith: aSHCClient and: aActiveProject
	| w |
	w := SHCProjectWindow new.
	w client: aSHCClient.
	w activeProject: aActiveProject.
	w update.
	^ w