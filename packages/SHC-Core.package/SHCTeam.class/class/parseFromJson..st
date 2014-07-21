as yet unclassified
parseFromJson: aDictionary
	| team | 
	team := SHCTeam new.
	team name: (aDictionary at: 'name').
	^ team