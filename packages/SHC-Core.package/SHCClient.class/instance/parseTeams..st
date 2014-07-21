utilities
parseTeams: anArray
	| col |
	col := OrderedCollection new.
	anArray do: [:element |  col add: (SHCTeam parseFromJson: element)].
	^ col