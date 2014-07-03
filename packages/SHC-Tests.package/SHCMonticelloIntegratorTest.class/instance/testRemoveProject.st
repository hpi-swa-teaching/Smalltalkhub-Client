running
testRemoveProject
	| project |
	project := SHCProject new.
	project name: 'TestRunnerTestProject1337'.
	project owner: 'TestUser'.
	
	self assert: ((self mcinstance isProjectInMonticello: project) not).
	
	self mcinstance addProject: project withUser: 'TestAccessUser' withPassword: 'TestPasswird'.
	
	 self assert: (self mcinstance isProjectInMonticello: project).
	
	self mcinstance removeProject: project.
	
	self assert: ((self mcinstance isProjectInMonticello: project) not).