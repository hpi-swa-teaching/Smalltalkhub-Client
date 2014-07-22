as yet unclassified
testModifyProject
	| project result updatedProject|

	project := SHCProject new.
	project 
		owner: 'ShcTestUser1';
		name: 'ShcTestProject1';
		description: 'shctestproject9 description';
		website: 'shctestproject9.website';
		license: 'BSD';
		tags: 'shctesttag8,shctesttag9'.

	self requestInstance updatedProject: project.
	result := self requestInstance execute.
	
	self assert: result.
	
	updatedProject:= self clientInstance listProject: 'ShcTestProject1' from: 'ShcTestUser1'.

	self assert: (project name = updatedProject name);
		assert: (project description = updatedProject description);
		assert: (project website = updatedProject website);
		assert: (project license  = updatedProject license);
		assert: (project tags = updatedProject tags).
	
		