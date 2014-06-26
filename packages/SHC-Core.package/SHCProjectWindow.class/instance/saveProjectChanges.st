as yet unclassified
saveProjectChanges	
	| result |
	
	(self activeProject owner = self username) 
		ifFalse: [ self saveButton color: Color red. self cancelProjectChanges. ^nil ].
		
	self activeProject license: self licenseField contents.
	self activeProject website: self websiteField contents.
	self activeProject tags: self tagsField contents.
	self activeProject description: self descriptionField contents.
	
	result := self client updateProject: self activeProject.
	result ifFalse:[ self saveButton color: Color red ] ifTrue:[ self saveButton color: Color green ]
	