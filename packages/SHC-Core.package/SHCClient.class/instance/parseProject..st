utilities
parseProject: aDecodedJsonProject
	| p |
	p := SHCProject new.
	p name: (aDecodedJsonProject at: 'name').
	p ownerUid: (aDecodedJsonProject at: 'owner').
	p path: (aDecodedJsonProject at: 'path').
	p license: (aDecodedJsonProject at: 'license').
	p tags: (aDecodedJsonProject at: 'tagsString').
	p description: (aDecodedJsonProject at: 'projectDescription').
	p website: (aDecodedJsonProject at: 'website').
	p ownerIsUser: (self testUser: p owner).
	^ p