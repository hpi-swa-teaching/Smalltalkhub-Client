initialization
showWithClient: aSHCClient team: aTeamName
	| w |
	w := self showWithClient: aSHCClient.
	w teamname: aTeamName.
	w update.
	^ w