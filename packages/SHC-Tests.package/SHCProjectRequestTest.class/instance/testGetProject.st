as yet unclassified
testGetProject
	| response decodedResponse parsedProject|
	
	self expectedConfiguration projectsList do:
	[:project |
		self requestInstance username: project owner.
		self requestInstance projectname: project name.
		self requestInstance execute.
		response := self requestInstance responseContent.
		self assert: (response isNil) not.
		
		decodedResponse := WebUtils jsonDecode: (ReadStream on: response).	
		parsedProject := SHCProject parseFromJson: decodedResponse.
		self assert: (parsedProject tags) = project tags.
		self assert: (parsedProject website) = project website.
		self assert: (parsedProject description) = project description.
		self assert: (parsedProject path) = project path.
		self assert: (parsedProject license) = project license.
		self assert: (parsedProject name) = project name.
		self assert: (parsedProject owner) = project owner.
	]
