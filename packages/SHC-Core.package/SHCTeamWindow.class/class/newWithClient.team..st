initialization
newWithClient: aShcClient team: aTeamName
	| w |
	w := SHCTeamWindow new.
	w client: aShcClient.
	w user: aTeamName.
	w update.
	^ w