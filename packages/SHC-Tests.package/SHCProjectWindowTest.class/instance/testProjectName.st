running
testProjectName
	| project |
	project  := self instance client listProject: 'ShcTestProject1' from: 'ShcTestUser1'.

	self instance activeProject: project.
	self instance update.
	
	self assert: self instance projectNameLabel contents = 'ShcTestProject1'.