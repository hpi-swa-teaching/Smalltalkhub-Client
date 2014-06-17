utilities
parseSearchUsers: aDecodedJsonArray
	| col |
	col := OrderedCollection new.
	aDecodedJsonArray do: [:each | col add: (self parseSearchUser: each)].
	^ col sortBy:[:a :b | a name < b name]