utilities
parseSearchUser: aString
	| user |
	user := SHCUser new.
	user name: aString.
	^ user.