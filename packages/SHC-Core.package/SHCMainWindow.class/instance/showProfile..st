ui-actions
showProfile: aUserName
	| pw |
	pw := SHCProfileWindow showWithClient: (self client) user: aUserName. 