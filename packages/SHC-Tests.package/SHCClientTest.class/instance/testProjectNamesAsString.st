tests
testProjectNamesAsString 	| jsondecoded stringCollection |
	jsondecoded := self clientInstance listProjects: 'ShcTestUser'.
	stringCollection := self clientInstance projectNamesAsString: jsondecoded.
	self assert: (stringCollection size = 2).
	self assert: ((stringCollection at: 1) = 'ShcTestProject0').
	self assert: ((stringCollection at: 2) = 'ShcTestProject1')