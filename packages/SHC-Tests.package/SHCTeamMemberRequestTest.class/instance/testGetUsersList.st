as yet unclassified
testGetUsersList
	| response parsedList returnedUserNames |
	
	self expectedConfiguration teamsList do:
	[:team|
		self requestInstance teamname: team name.
		self requestInstance execute.
		response := self requestInstance responseContent.
		parsedList := WebUtils jsonDecode: (ReadStream on: response).	

		returnedUserNames := parsedList collect: [:dict| dict at: 'name' ifAbsent: [nil]].

		self assert: parsedList size = team members size.
		self assert: (team members allSatisfy: [:teamMember | returnedUserNames includes: teamMember name]).
	]
	