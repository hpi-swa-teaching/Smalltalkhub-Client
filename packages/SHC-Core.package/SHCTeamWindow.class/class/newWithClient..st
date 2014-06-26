initialization
newWithClient: aShcClient
	| w |
	w := SHCTeamWindow new.
	w client: aShcClient.
	^ w