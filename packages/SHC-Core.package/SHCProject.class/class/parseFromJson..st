parsing
parseFromJson: aDictionary
	| p |
	p := SHCProject new.
	p name: (aDictionary at: 'name').
	p ownerUid: (aDictionary at: 'owner').
	p path: (aDictionary at: 'path').
	p license: (aDictionary at: 'license').
	p tags: (aDictionary at: 'tagsString').
	p description: (aDictionary at: 'projectDescription').
	p website: (aDictionary at: 'website').
	p created: (aDictionary at: 'created').
	^ p