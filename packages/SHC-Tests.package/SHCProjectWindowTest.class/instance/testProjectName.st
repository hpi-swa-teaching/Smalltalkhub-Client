running
testProjectName
	| project |
	project  := self instance client listProject: 'ShcTestProject0' from: 'ShcTestUser'.

	self instance activeProject: project.
	self instance update.
	
	self assert: self instance projectNameLabel contents = 'ShcTestProject0'.