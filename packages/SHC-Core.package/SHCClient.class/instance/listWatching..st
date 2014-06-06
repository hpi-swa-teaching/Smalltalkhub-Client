api-calls
listWatching: aUserName
	|watchingResult result |
	watchingResult := SHCWatchingRequest withWebClient: self webclient.
	watchingResult username: self username.
	result := watchingResult execute.
	result ifTrue: [^ WebUtils jsonDecode: (ReadStream on: watchingResult responseContent)]
	ifFalse: [ ^ nil]
