utilities
parseTeamMember: aDecodedJsonTeam
	| TM |
	TM := OrderedCollection new.
	aDecodedJsonTeam do: [:each | TM add: (self parseTeamMember: each)].
	^ TM