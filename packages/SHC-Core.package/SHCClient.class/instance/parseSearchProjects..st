utilities
parseSearchProjects: aDecodedJsonArray
	| col |
	col := OrderedCollection new.
	aDecodedJsonArray do: [:each | col add: (self parseSearchProject: each)].
	^ col sortBy:[:a :b | a name < b name]