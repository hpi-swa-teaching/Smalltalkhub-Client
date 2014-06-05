as yet unclassified
showProfile: aUserName
	| pw |
	pw := SHCProfileWindow newWithClient: (self client) user: aUserName. 