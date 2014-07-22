as yet unclassified
testGetTeamsList
	| response parsedResponse |
	
	self expectedConfiguration teamsList do:
	[:team|	team members do:
		[:teamMember|
			Transcript show: teamMember name, ': '.
			self requestInstance username: teamMember name.
			self requestInstance execute.
			response := self requestInstance responseContent.
			parsedResponse := WebUtils jsonDecode: (ReadStream on: response).
						
			self assert: (parsedResponse anySatisfy: [:teamsDict| (teamsDict at: 'name' ifAbsent: [nil]) = team name]).
		]
	]
	