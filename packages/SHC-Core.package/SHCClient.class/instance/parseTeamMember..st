utilities
parseTeamMember: aDecodedJsonTeam
	| TM |
	TM := SHCTeam new.
	TM members: (aDecodedJsonTeam collect: [:dict | dict at: 'username']).
	^ TM