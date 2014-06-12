utilities
parseUser: aDecodedJsonUser
	| u |
	u := SHCUser new.
	u name: (aDecodedJsonUser at: 'username').
	^ u