utilities
parseSearchProject: aString
	| array project owner name |
	array := aString subStrings: '/'.
	owner := array at: 1.
	name := array at: 2.
	project := SHCProject new.
	project owner: owner.
	project name: name.
	project path: '~',owner,'/',name.
	^ project