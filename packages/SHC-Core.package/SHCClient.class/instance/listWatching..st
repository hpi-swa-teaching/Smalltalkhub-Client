api-calls
listWatching: aUserName
	| watchingRequest result |
	watchingRequest := SHCWatchingRequest withWebClient: self webclient.
	watchingRequest username: aUserName.
	result := watchingRequest execute.
	result ifTrue: [^ WebUtils jsonDecode: (ReadStream on: watchingRequest responseContent)]
	ifFalse: [ ^ nil]
