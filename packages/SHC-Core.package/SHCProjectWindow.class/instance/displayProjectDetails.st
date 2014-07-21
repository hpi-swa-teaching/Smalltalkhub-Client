ui-actions
displayProjectDetails
	| projectdetails |
	projectdetails := self client listProject: (self activeProject name) from: (self activeProject owner).
	self activeProject: (self client parseProject: projectdetails).
	
	self window setLabel: self activeProject name.
	self ownerLabel label: ('~', (self activeProject owner)).
	self licenseField contents: (self activeProject license).
	self websiteField contents: (self activeProject website).
	self tagsField contents: (self activeProject tags).
	self descriptionField contents: (self activeProject description).
	
	self projectNameLabel	contents: self activeProject name.	