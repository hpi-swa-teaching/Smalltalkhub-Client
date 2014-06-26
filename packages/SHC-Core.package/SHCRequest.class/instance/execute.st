executing
execute
	| url result |
	url := self composeUrl.
	
	self class requestType = 'GET' ifTrue: [ result := self executeGet: url ].
	self class requestType = 'POST' ifTrue: [ result := self executePost: url content: (self composeContent )].
	self class requestType = 'PUT' ifTrue: [ result := self executePut: url content: (self composeContent)].
	(result isNil) ifTrue: [ ^ false].
	
	self responseSuccess: result isSuccess. 
	self responseContent: result content.
	
	^ self responseSuccess