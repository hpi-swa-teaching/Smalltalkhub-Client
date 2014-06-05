as yet unclassified
showProfile: aUserName
	| pw |
	pw := SHCProfileWindow newWithClient: (self webclient) user: aUserName. 