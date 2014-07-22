as yet unclassified
tearDown
	| project |
	project := SHCProject new.
	project 
		owner: 'ShcTestUser1';
		name: 'ShcTestProject1';
		description: 'shctestproject1 description';
		website: 'shctestproject1.website';
		license: 'MIT';
		tags: 'shctesttag0,shctesttag1'.
		
	self requestInstance updatedProject: project.
	self requestInstance execute