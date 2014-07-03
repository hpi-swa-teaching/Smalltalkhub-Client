initialization
showWithClient: aSHCClient user: aUserName
	| w |
	w := self showWithClient: aSHCClient.
	w user: aUserName.
	w update.
	^ w