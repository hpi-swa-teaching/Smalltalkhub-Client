tests
testSearchProjects
	| result |
	result := self clientInstance fetchSearchProjects: 'ShcTestProject'.
	self assert: (result size >= 2).
	self assert: ((result at: 2) = 'ShcTestUser/ShcTestProject1')