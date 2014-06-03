initialization
newWithClient: aShcClient
	| w |
	w := SHCProfileWindow new.
	w webclient: aShcClient.
	^ w