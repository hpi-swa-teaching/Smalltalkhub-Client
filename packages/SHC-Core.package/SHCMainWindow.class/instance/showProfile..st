ui-actions
showProfile: aUserName
	| pw |
	pw := SHCProfileWindow newWithClient: (self client) user: aUserName. 