tests
testUpdateProject
	| project |
	project := self clientInstance listProject: 'ShcTestProject1' from: 'ShcTestUser1'.
	
	self clientInstance 
		username: 'ShcTestUser1';
		password: 'ShcTestPW';
		login.
		
	self assert: (self clientInstance updateProject: project). 
	
	project 
		owner: 'Moose';
		name: 'HashTable'.
	
	self assert: (self clientInstance updateProject: project )not.
	
	