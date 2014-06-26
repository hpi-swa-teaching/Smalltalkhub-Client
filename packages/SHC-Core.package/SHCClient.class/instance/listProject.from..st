api-calls
listProject: aProjectName from: aUserName
	| request array result |
	request := SHCProjectRequest withWebClient: self webclient.
	request username: aUserName.
	request projectname: aProjectName.
	result := request execute.
	
	result ifTrue: [array := WebUtils jsonDecode: (ReadStream on: request responseContent). 	^ array] ifFalse: [^ nil]