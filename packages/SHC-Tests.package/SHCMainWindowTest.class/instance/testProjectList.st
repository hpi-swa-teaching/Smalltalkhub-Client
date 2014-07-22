running
testProjectList
	self loginInstance showProjects: 'ShcTestUser1'.
	self assert: (self loginInstance projectDetails size = 1).
	self assert: (self loginInstance projectNames size = 1).
	self assert: ((self loginInstance projectNames at: 1) = 'ShcTestProject1').
	