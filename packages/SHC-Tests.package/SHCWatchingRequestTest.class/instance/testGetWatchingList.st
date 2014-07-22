as yet unclassified
testGetWatchingList
	| response parsedResponse fixedPath|
	
	self expectedConfiguration projectsList do:
	[:project|
		self expectedConfiguration watchingList at: project name ifPresent:
		[:watchingList|
			watchingList do:
			[:user|
				self requestInstance username: user name.
				self requestInstance execute.
				response := self requestInstance responseContent.
				parsedResponse := WebUtils jsonDecode: (ReadStream on: response).
				
				"SmalltalkHub is inconsistent here, normally a path starts with '~', here it doesn't so we strip our path"
				fixedPath := project path copyFrom: 2 to: project path size.
				self assert: (parsedResponse includes: fixedPath).
			]
		]
	]