as yet unclassified
testGetProjectsList
	| response parsedResponse expectedProjects returnedProjectNames|
	
	self expectedConfiguration teamsList do:
	[:expectedTeam | 
		expectedProjects := self expectedConfiguration projectsList select: [:project| project owner = expectedTeam name].
	
		self requestInstance teamname: expectedTeam name.
		self requestInstance execute.
		response := self requestInstance responseContent.
		parsedResponse := WebUtils jsonDecode: (ReadStream on: response).
		returnedProjectNames := parsedResponse collect: [:dict| dict at: 'name'].
		
		self assert: (parsedResponse size = expectedProjects size).
		expectedProjects do: [:project| self assert: (returnedProjectNames includes: project name)].
	].
	
	