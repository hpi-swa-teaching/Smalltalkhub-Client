as yet unclassified
cancelProjectChanges
	self licenseField contents: (self activeProject license).
	self websiteField contents: (self activeProject website).
	self tagsField contents: (self activeProject tags).
	self descriptionField contents: (self activeProject description).