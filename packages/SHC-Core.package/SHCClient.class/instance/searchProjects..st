api-calls
searchProjects: aSearchTerm
	| result array request |
	request := SHCSearchProjectsRequest withWebClient: self webclient.
	request searchTerm: aSearchTerm.
	result := request execute.
	
	result ifTrue: [array := WebUtils jsonDecode: (ReadStream on: request responseContent). 	^ array] ifFalse: [^ nil]