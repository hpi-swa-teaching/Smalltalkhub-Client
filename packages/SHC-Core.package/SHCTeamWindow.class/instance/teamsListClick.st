as yet unclassified
teamsListClick
	| index selecteduser |

	index := self teamsIndex.
	(index = 0) ifTrue: [^ nil].
	
	selecteduser := self teamMember at: (index).
	SHCProfileWindow newWithClient: (self client) user: selecteduser.