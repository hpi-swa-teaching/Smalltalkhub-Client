as yet unclassified
testModifyProject
	| project result updatedProject|

	project := SHCProject new.
	project 
		owner: 'ShcTestUser';
		name: 'ShcTestProject1';
		description: 'TestChangedDescription';
		website: 'TestWebSite';
		license: 'BSD';
		tags: 'testtags,tag'.

	self requestInstance updatedProject: project.
	result := self requestInstance execute.
	
	self assert: result.
	
	updatedProject:= self clientInstance listProject: 'ShcTestProject1' from: 'ShcTestUser'.

	self assert: (project name = updatedProject name);
		assert: (project description = updatedProject description);
		assert: (project website = updatedProject website);
		assert: (project license  = updatedProject license);
		assert: (project tags = updatedProject tags).
	
		