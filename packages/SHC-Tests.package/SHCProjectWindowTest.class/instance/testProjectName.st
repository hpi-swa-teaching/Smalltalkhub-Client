running
testProjectName
	| json project |
	json := self instance client listProject: 'ShcTestProject0' from: 'ShcTestUser'.
	project := self instance client parseProject: json.

	self instance activeProject: project.
	self instance update.
	
	self assert: self instance projectNameLabel contents = 'ShcTestProject0'.