as yet unclassified
tearDown
	| project |
	project := SHCProject new.
	project 
		owner: 'ShcTestUser';
		name: 'ShcTestProject1';
		description: '';
		website: '';
		license: 'MIT';
		tags: ''.
		
	self requestInstance updatedProject: project.
	self requestInstance execute