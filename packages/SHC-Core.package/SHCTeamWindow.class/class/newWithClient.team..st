initialization
newWithClient: aSHCClient team: aTeamName
	| w |
	w := self newWithClient: aSHCClient.
	w teamname: aTeamName.
	w update.
	^ w