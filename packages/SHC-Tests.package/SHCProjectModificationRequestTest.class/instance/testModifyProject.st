as yet unclassified
testModifyProject
	| project result updatedJson updatedProject|

	project := SHCProject new.
	project 
		owner: 'ShcTestUser';
		name: 'ShcTestProject1';
		description: 'TestChangedDescription';
		ownerUid: 'f943d5e0-889e-4108-85de-3cc4c0da0997';
		website: 'TestWebSite';
		license: 'BSD';
		tags: 'testtags,tag'.

	self requestInstance updatedProject: project.
	result := self requestInstance execute.
	
	self assert: result.
	
	updatedJson := self clientInstance listProject: 'ShcTestProject1' from: 'ShcTestUser'.
      updatedProject := self clientInstance parseProject: updatedJson.

	self assert: (project name = updatedProject name);
		assert: (project description = updatedProject description);
		assert: (project website = updatedProject website);
		assert: (project license  = updatedProject license);
		assert: (project tags = updatedProject tags).
	
		