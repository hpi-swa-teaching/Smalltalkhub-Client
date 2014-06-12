utilities
parseUser: aDecodedJsonUser
	| u |
	u := SHCUser new.
	u name: (aDecodedJsonUser at: 'username').
	u fullName: (aDecodedJsonUser at: 'fullName').
	u email: (aDecodedJsonUser at: 'email').
	u location: (aDecodedJsonUser at: 'location').
	u website: (aDecodedJsonUser at: 'website').
	u memberSince: (aDecodedJsonUser at: 'created').
	u admin: (aDecodedJsonUser at: 'admin').
	u watching: (aDecodedJsonUser at: 'watching').
	^ u