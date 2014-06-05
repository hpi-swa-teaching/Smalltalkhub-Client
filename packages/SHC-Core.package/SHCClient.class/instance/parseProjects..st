utilities
parseProjects: aDecodedJsonArray
	| col |
	col := OrderedCollection new.
	aDecodedJsonArray do: [:element |  col add: (self parseProject: element)].
	^ col