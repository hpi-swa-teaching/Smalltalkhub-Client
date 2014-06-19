as yet unclassified
tearDown
	| project |
	project := SHCProject new.
	project 
		owner: 'ShcTestUser';
		name: 'ShcTestProject1';
		description: '';
		ownerUid: 'f943d5e0-889e-4108-85de-3cc4c0da0997';
		website: '';
		license: 'MIT';
		tags: ''.
		
	self requestInstance updatedProject: project.
	self requestInstance execute