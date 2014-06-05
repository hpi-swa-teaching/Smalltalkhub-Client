initialization
newWithClient: aShcClient
	| w |
	w := SHCWindow new.
	w client: aShcClient.
	^ w