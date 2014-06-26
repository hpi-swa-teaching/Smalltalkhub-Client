initialization
newWithClient: aShcClient user: aUserName
	| w |
	w := SHCProfileWindow new.
	w client: aShcClient.
	w user: aUserName.
	w update.
	^ w