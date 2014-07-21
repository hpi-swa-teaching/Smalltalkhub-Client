as yet unclassified
testGetProject
	| response decodedResponse parsedProject expectedProject|
	
	expectedProject := (self expectedConfiguration projectsList at: 1).
	
	self requestInstance username: expectedProject owner.
	self requestInstance projectname: expectedProject name.
	self requestInstance execute.
	response := self requestInstance responseContent.
	self assert: (response isNil) not.
	
	decodedResponse := WebUtils jsonDecode: (ReadStream on: response).	
	parsedProject := SHCProject parseFromJson: decodedResponse.
	self assert: (parsedProject tags) = expectedProject tags.
	self assert: (parsedProject website) = expectedProject website.
	self assert: (parsedProject description) = expectedProject description.
	self assert: (parsedProject path) = expectedProject path.
	self assert: (parsedProject license) = expectedProject license.
	self assert: (parsedProject name) = expectedProject name.
	self assert: (parsedProject owner) = expectedProject owner.
