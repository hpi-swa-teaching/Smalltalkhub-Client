as yet unclassified
update
	| projectdetails contributordetails watcherdetails |
	
	projectdetails := self client listProject: (self activeProject name) from: (self activeProject owner).
	self activeProject: (self client parseProject: projectdetails).
	
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
	
	self ownerLabel label: ('~', (self activeProject owner)).
	self licenseField contents: (self activeProject license).
	self websiteField contents: (self activeProject website).
	self tagsField contents: (self activeProject tags).
	self descriptionField contents: (self activeProject description).
	
	self setLabel: self activeProject name.
	self projectNameLabel
		contents: self activeProject name.	
self updateMonticelloUi.	(self client username = self activeProject owner) 
			ifTrue: [	self saveButton position: self position + (353@330).
				     	self cancelButton position: self position + (300@330).
					self addMorph: self saveButton; 
						 addMorph: self cancelButton.]
			ifFalse: [self watcherLabel position: self position + (205@330).
					self contributorLabel position: self position + (10@330).
					(self watcherListMorph) 	position: self position + (205@350);
												height: 120.
					(self contributorListMorph) position: self position + (10@350);
												height: 120.
					(self descriptionField findA: TextMorph) lock.
					(self tagsField findA: TextMorph) lock.
					(self websiteField findA: TextMorph) lock.
					(self licenseField findA: TextMorph) lock.]