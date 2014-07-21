utilities
parsePath: aProjectPath
	| substr |
	substr := aProjectPath subStrings: '~/'.
	self owner: (substr at: 1).
	self name: (substr at: 2)