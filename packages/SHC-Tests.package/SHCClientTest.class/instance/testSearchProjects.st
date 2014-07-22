tests
testSearchProjects
	| result |
	result := self clientInstance fetchSearchProjects: 'ShcTestProject1'.
	self assert: (result size = 1).
	self assert: ((result at: 2) = 'ShcTestUser1/ShcTestProject1')