api-calls internal
fetchTeamMembers: aTeamName
	| teamMemberRequest result |
	teamMemberRequest := SHCTeamMemberRequest withWebClient: self webclient.
	teamMemberRequest teamname: aTeamName.
	result := teamMemberRequest execute.
	result ifTrue: [^ WebUtils jsonDecode: (ReadStream on: teamMemberRequest responseContent)]
	ifFalse: [ ^ nil]
