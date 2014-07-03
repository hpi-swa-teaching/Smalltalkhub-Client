as yet unclassified
testInit
	|team|
	team := SHCTeam new.
	
	self assert: (team name notNil).
	self assert: (team members notNil).
	self assert: (team projects notNil).