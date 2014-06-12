api-calls
listUser: aUserName
	|userRequest result |
	userRequest := SHCUserRequest withWebClient: self webclient.
	userRequest username: aUserName.
	result := userRequest execute.
	result ifTrue: [^ WebUtils jsonDecode: (ReadStream on: userRequest responseContent)]
	ifFalse: [ ^ nil]
