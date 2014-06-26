initialization
newWithClient: aShcClient
	| w |
	w := SHCProfileWindow new.
	w client: aShcClient.
	^ w