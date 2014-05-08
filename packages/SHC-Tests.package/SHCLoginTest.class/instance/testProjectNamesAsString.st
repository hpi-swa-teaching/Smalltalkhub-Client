running
testProjectNamesAsString
	| jsondecoded stringCollection |
	jsondecoded := self loginInstance listProjects: 'ShcTestUser'.
	stringCollection := self loginInstance projectNamesAsString: jsondecoded.
	self assert: (stringCollection size = 2).
	self assert: ((stringCollection at: 1) = 'ShcTestProject0').
	self assert: ((stringCollection at: 2) = 'ShcTestProject1')
	