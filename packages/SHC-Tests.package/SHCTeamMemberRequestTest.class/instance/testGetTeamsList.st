as yet unclassified
testGetTeamsList
	| response parsedList |
	self requestInstance teamname: 'SWT'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	parsedList := WebUtils jsonDecode: (ReadStream on: response).

	self assert: (parsedList size = 4).
	self assert: ((parsedList at:1) at: 'name') = 'adi64'.
	self assert: ((parsedList at:2) at: 'name') = 'AtiX'.
	self assert: ((parsedList at:3) at: 'name') = '1337haxx0r'.
	self assert: ((parsedList at:4) at: 'name') = 'roebrt'.

