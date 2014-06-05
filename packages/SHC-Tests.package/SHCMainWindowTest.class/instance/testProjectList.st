running
testProjectList
	self loginInstance showProjects: 'ShcTestUser'.
	self assert: (self loginInstance projectDetails size = 2).
	self assert: (self loginInstance projectNames size = 2).
	self assert: ((self loginInstance projectNames at: 1) = 'ShcTestProject0').
	self assert: ((self loginInstance projectNames at: 2) = 'ShcTestProject1')
	