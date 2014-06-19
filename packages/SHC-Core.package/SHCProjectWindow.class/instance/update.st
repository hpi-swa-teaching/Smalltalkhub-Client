as yet unclassified
update
	| projectdetails parsedprojectdetails contributordetails watcherdetails |
	
	projectdetails := self client listProject: (self activeProject name) from: (self activeProject owner).
	parsedprojectdetails := self client parseProject: projectdetails.
	
	contributordetails := self client parseUsers: (self client listContributorsFromProject: (self activeProject name) from: (self activeProject owner)).
	watcherdetails := self client parseUsers: (self client listWatcherFromProject: (self activeProject name) from: (self activeProject owner)).
	
	self contributor: (self client usernamesAsString: contributordetails).
	
	self contributorListMorphIndex: 0.
	self changed: #contributorListMorphIndex.
	self changed: #contributor.
	
	self watcher: (self client usernamesAsString: watcherdetails).
	
	self watcherListMorphIndex: 0.
	self changed: #watcherListMorphIndex.
	self changed: #watcher.
	
	self licenseField contents: (parsedprojectdetails license).
	self websiteField contents: (parsedprojectdetails website).
	self tagsField contents: (parsedprojectdetails tags).
	self descriptionField contents: (parsedprojectdetails description).
	
	self setLabel: self activeProject name.
	self projectNameLabel
		contents: self activeProject name.	
		