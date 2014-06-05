utilities
parseNameFromPath: aProjectPath
	| substr |
	substr := aProjectPath subStrings: '~/'.
	^ substr at: 1