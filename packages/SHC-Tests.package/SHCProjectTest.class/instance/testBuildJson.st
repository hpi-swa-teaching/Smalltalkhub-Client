as yet unclassified
testBuildJson
	| project json |
	
	project := SHCProject new.
	project 
		owner: 'ShcTestUser';
		name: 'ShcTestProject1';
		description: 'TestChangedDescription';
		ownerUid: 'f943d5e0-889e-4108-85de-3cc4c0da0997';
		website: 'TestWebSite';
		license: 'BSD';
		tags: 'testtags,tag'.
			
	json := project buildJson.
	self assert: (json = '{"owner":"f943d5e0-889e-4108-85de-3cc4c0da0997","website":"TestWebSite","tagsString":"testtags,tag","projectDescription":"TestChangedDescription","name":"ShcTestProject1","license":"BSD"}')
	