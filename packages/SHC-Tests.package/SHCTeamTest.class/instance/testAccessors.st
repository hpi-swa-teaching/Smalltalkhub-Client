as yet unclassified
testAccessors
	| team |
	team := SHCTeam new.
	
	team members: #('A').
	team projects: #('B').
	team name: 'C'.
	
	self assert: ((team members at: 1) = 'A').
	self assert: ((team projects at:1) = 'B').
	self assert: (team name = 'C').