initialization
newWithClient: aSHCClient and: aActiveProject
	| w |
	w := self newWithClient: aSHCClient.
	w activeProject: aActiveProject.
	w update.
	^ w