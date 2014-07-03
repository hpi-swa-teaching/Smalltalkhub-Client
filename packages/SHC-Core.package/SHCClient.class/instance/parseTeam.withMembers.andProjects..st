utilities
parseTeam: aTeamName withMembers: decodedJsonUsers andProjects: decodedJsonProjects
	| TM |
	TM := SHCTeam new.
	TM members: (self parseUsers: decodedJsonUsers).
	TM projects: (self parseProjects: decodedJsonProjects).
	TM name: aTeamName.
	^ TM