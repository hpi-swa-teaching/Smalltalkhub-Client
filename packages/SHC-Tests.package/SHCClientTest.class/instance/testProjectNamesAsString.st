tests
testProjectNamesAsString 
	| projects stringCollection |
	projects := self clientInstance listProjects: 'ShcTestUser1'.
	stringCollection := self clientInstance projectNamesAsString: projects.
	self assert: (stringCollection size = 1).
	self assert: ((stringCollection at: 1) = 'ShcTestProject1').