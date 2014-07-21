as yet unclassified
testGetProject
	| response decodedResponse parsedProject |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance projectname: 'ShcTestProject0'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	self assert: (response isNil) not.
	
	decodedResponse := WebUtils jsonDecode: (ReadStream on: response).	
	parsedProject := SHCProject parseFromJson: decodedResponse.
	self assert: (parsedProject tags) = 'swt1'.
	self assert: (parsedProject website) = 'https://github.com/SWTI2014/SWTI2014-Project-04'.
	self assert: (parsedProject description) = 'Testdescription.'.
	self assert: (parsedProject path) = '~ShcTestUser/ShcTestProject0'.
	self assert: (parsedProject license) = 'MIT'.
	self assert: (parsedProject name) = 'ShcTestProject0'.
	self assert: (parsedProject owner) = 'ShcTestUser'.
