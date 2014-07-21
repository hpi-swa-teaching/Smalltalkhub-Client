utilities
parseSearchProject: aString
	| project |
	project := SHCProject new.
	project path: '~',aString.
	^ project