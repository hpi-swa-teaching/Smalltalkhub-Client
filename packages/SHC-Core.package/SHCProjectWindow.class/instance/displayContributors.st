ui-actions
displayContributors
	| contributordetails |
	contributordetails := self client parseUsers: (self client listContributorsFromProject: (self activeProject name) from: (self activeProject owner)).	
	self contributor: (self client usernamesAsString: contributordetails).	
	self contributorListMorphIndex: 0.
	self changed: #contributorListMorphIndex.
	self changed: #contributor.
	