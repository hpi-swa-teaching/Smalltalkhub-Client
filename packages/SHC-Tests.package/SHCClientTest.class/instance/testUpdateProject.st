tests
testUpdateProject
	| project |
	project := self clientInstance listProject: 'ShcTestProject1' from: 'ShcTestUser'.
	project := self clientInstance parseProject: project.
	
	self clientInstance 
		username: 'ShcTestUser';
		password: 'HurfDurf';
		login.
		
	self assert: (self clientInstance updateProject: project). 
	
	project 
		owner: 'Moose';
		name: 'HashTable'.
	
	self assert: (self clientInstance updateProject: project )not.
	
	