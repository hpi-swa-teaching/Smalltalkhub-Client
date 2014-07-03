ui-events
teamsListClick
	| index selectedteam |

	index := self teamsIndex.
	(index = 0) ifTrue: [^ nil].
	
	selectedteam := self teams at: (index).
	SHCTeamWindow newWithClient: (self client) team: selectedteam.