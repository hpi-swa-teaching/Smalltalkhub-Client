ui-events
ownerLabelClick
	self activeProject ownerIsUser 	ifTrue: [SHCProfileWindow newWithClient: self client user: self activeProject owner.]
												ifFalse: [SHCTeamWindow newWithClient: self client team: self activeProject owner.]