initialization
showWithClient: aSHCClient
	| w |
	w := self new.
	w client: aSHCClient.
	w openInHand.
	^ w