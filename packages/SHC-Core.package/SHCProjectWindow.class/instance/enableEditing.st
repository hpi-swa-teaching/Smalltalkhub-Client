ui-actions
enableEditing
		self saveButton position: self position + (353@330).
	     	self cancelButton position: self position + (300@330).
		self addMorph: self saveButton; 
			 addMorph: self cancelButton.