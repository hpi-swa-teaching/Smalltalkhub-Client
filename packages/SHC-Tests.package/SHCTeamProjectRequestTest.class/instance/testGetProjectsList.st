as yet unclassified
testGetProjectsList
	| response parsedResponse |
	self requestInstance teamname: 'SWT'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	parsedResponse := WebUtils jsonDecode: (ReadStream on: response).

	self assert: (parsedResponse size = 2).
	self assert: ((parsedResponse at: 1) at: 'name') = 'L33TPr0j3ct'.
	self assert: ((parsedResponse at: 2) at: 'name') = 'SmalltalkHubClient'.