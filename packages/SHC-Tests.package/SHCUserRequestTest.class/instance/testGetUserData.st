as yet unclassified
testGetUserData
	| response parsedResponse parsedUser |
	
	self expectedConfiguration usersList do:
	[:user|
		self requestInstance username: user name.
		self requestInstance execute.
		response := self requestInstance responseContent.
		parsedResponse := WebUtils jsonDecode: (ReadStream on: response).
		parsedUser := SHCUser parseFromJson: parsedResponse.
		
		self assert: (parsedUser name = user name).
		self assert: (parsedUser email = user email).
		self assert: (parsedUser location = user location).
		self assert: (parsedUser website = user website).
		self assert: (parsedUser fullName = user fullName).	
	]
	