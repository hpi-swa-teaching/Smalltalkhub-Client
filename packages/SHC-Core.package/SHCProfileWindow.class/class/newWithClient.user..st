initialization
newWithClient: aShcClient user: aUserName
	| w |
	w := SHCProfileWindow new.
	w webclient: aShcClient.
	w user: aUserName.
	^ w