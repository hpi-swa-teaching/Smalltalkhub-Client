accessing
updatedProject: aProject	
	updatedProject := aProject buildJson.
	self username: aProject owner.
	self projectname: aProject name.