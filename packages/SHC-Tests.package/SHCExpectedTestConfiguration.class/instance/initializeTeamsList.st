as yet unclassified
initializeTeamsList

	| tmpTeam |
	self teamsList: OrderedCollection new.
	
	tmpTeam := SHCTeam new.
	tmpTeam
		name: 'ShcTestTeam0';
		members: self usersList.
		
	self teamsList add: tmpTeam.