tests
testProjectNamesAsString 
	| projects stringCollection |
	projects := self clientInstance listProjects: 'ShcTestUser'.
	stringCollection := self clientInstance projectNamesAsString: projects.
	self assert: (stringCollection size = 2).
	self assert: ((stringCollection at: 1) = 'ShcTestProject0').
	self assert: ((stringCollection at: 2) = 'ShcTestProject1')