initialization
showWithClient: aSHCClient and: aActiveProject
	| w |
	w := self showWithClient: aSHCClient.
	w activeProject: aActiveProject.
	w update.
	^ w