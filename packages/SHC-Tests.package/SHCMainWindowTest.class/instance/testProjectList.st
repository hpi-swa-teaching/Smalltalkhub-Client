running
testProjectList
	self loginInstance showProjects: 'ShcTestUser'.
	self assert: (self loginInstance projects size = 2).
	self assert: ((self loginInstance projects at: 1) = 'ShcTestProject0').
	self assert: ((self loginInstance projects at: 2) = 'ShcTestProject1')
	