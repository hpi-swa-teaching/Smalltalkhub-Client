as yet unclassified
parseFromJson: aDictionary	
	| u |
	u := SHCUser new.
	u name: (aDictionary at: 'username').
	u fullName: (aDictionary at: 'fullName').
	u email: (aDictionary at: 'email').
	u location: (aDictionary at: 'location').
	u website: (aDictionary at: 'website').
	u memberSince: (aDictionary at: 'created').
	u admin: (aDictionary at: 'admin').
	u watching: (aDictionary at: 'watching').
	^ u