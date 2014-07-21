as yet unclassified
initializeProjectsList

	| tmpProject |
	self projectsList: OrderedCollection new.
	
	tmpProject := SHCProject new.
	tmpProject
		name: 'ShcTestProject0';
		owner: 'ShcTestTeam0';
		ownerIsUser: false;
		path: '~ShcTestTeam0/ShcTestProject0';
		license: 'MIT';
		website: 'shctestproject0.website';
		description: 'shctestproject0 description';
		tags: 'shctesttag0,shctesttag1'.
		
	self projectsList add: tmpProject.
	
	tmpProject := SHCProject new.
	tmpProject
		name: 'ShcTestProject1';
		owner: 'ShcTestUser1';
		ownerIsUser: true;
		path: '~ShcTestUser1/ShcTestProject1';
		license: 'MIT';
		website: 'shctestproject1.website';
		description: 'shctestproject1 description';
		tags: 'shctesttag0,shctesttag1'.
		
	self projectsList add: tmpProject.