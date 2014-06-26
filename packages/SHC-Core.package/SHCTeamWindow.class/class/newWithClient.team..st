initialization
newWithClient: aShcClient team: aTeamName
	| w |
	w := SHCTeamWindow new.
	w client: aShcClient.
	w teamname: aTeamName.
	w update.
	^ w