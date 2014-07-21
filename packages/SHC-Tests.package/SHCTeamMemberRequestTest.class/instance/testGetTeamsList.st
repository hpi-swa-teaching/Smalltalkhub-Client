as yet unclassified
testGetTeamsList
	| response parsedList expectedTeam|
	
	expectedTeam := self expectedConfiguration teamsList at: 1.
	
	self requestInstance teamname: expectedTeam name.
	self requestInstance execute.
	response := self requestInstance responseContent.
	parsedList := WebUtils jsonDecode: (ReadStream on: response).

	self assert: (parsedList size = expectedTeam members size).
	expectedTeam members do: [:member | self assert: (parsedList includes: member)].