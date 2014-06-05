utilities
parseProject: aDecodedJsonProject
	| p |
	p := SHCProject new.
	p name: (aDecodedJsonProject at: 'name').
	p ownerUid: (aDecodedJsonProject at: 'owner').
	p path: (aDecodedJsonProject at: 'path').
	^ p