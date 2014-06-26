utilities
parseProjects: aDecodedJsonArray
	| col |
	col := OrderedCollection new.
	aDecodedJsonArray do: [:element |  col add: (self parseProject: element)].
	
	"sorting is done because the api sometimes returns the projects in random order"
	^ col sortBy:[:a :b | a name < b name]