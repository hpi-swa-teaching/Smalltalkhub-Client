as yet unclassified
testGetUserData
	| response parsedResponse parsedUser |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	parsedResponse := WebUtils jsonDecode: (ReadStream on: response).
	parsedUser := SHCUser parseFromJson: parsedResponse.
	
	self assert: (parsedUser name = 'ShcTestUser').
	self assert: (parsedUser email = 'test@user.com').
	self assert: (parsedUser location = 'IN DA CLOUD').
	self assert: (parsedUser website = 'http://hpi.de').
	self assert: (parsedUser fullName = 'ShcTestUser').