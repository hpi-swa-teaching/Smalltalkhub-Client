ui-events
ownerLabelClick
	self activeProject ownerIsUser 	ifTrue: [SHCProfileWindow showWithClient: self client user: self activeProject owner.]
												ifFalse: [SHCTeamWindow showWithClient: self client team: self activeProject owner.]