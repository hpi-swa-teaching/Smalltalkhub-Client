initialization
newWithClient: aSHCClient user: aUserName
	| w |
	w := self newWithClient: aSHCClient.
	w user: aUserName.
	w update.
	^ w