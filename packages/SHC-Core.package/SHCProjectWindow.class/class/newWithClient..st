initialization
newWithClient: aShcClient
	| w |
	w := SHCProjectWindow new.
	w webclient: aShcClient.
	^ w