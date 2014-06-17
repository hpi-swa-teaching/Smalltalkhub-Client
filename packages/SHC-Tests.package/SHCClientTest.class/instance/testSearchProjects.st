tests
testSearchProjects
	| result |
	result := self clientInstance searchProjects: 'ShcTestProject'.
	self assert: (result size = 2).
	self assert: ((result at: 1) = 'ShcTestUser/ShcTestProject1')