utilities
parseUsers: aDecodedJsonArray
	| col |
	col := OrderedCollection new.
	aDecodedJsonArray do: [:element |  col add: (self parseUser: element)].
	
	"sorting is done because the api sometimes returns the users in random order"
	^ col sortBy:[:a :b | a name < b name]