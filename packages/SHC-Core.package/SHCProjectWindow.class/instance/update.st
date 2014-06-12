as yet unclassified
update
	| projectdetails |
	
	projectdetails := self client listProject: (self activeProject name) from: (self activeProject owner).
	
	self contributor: (self client parseUsers: (self client listContributorsFromProject: (self activeProject name) from: (self activeProject owner))).
	
	self contributorListMorphIndex: 0.
	self changed: #contributorListMorphIndex.
	self changed: #contributor.
	
	self watcher: (self client parseUsers: (self client listContributorsFromProject: (self activeProject name) from: (self activeProject owner))).
	
	self watcherListMorphIndex: 0.
	self changed: #watcherListMorphIndex.
	self changed: #watcher.
	
	self licenseLabel contents: ((self licenseLabel contents) , ((self client parseProject: projectdetails) license)).
	self websiteLabel contents: ((self websiteLabel contents) , ((self client parseProject: projectdetails) website)).
	self tagsLabel contents: ((self tagsLabel contents) , ((self client parseProject: projectdetails) tags)).
	self descriptionLabel contents: ((self descriptionLabel contents) , ((self client parseProject: projectdetails) description)).
	self projectNameLabel contents: self activeProject name.