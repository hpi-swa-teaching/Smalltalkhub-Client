initialization
newWithClient: aShcClient
	| w |
	w := SHCWindow new.
	w webclient: aShcClient.
	^ w