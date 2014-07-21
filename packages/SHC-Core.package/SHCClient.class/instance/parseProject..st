utilities
parseProject: aJsonDictionary
	| p |
	p := SHCProject parseFromJson: aJsonDictionary.
	p ownerIsUser: (self doesUserExist: p owner).
	^ p