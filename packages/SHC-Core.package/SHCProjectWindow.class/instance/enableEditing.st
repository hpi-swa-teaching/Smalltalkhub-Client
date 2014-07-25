ui-actions
enableEditing
		self saveButton position: self window position + (353@350).
     	self cancelButton position: self window position + (300@350).
		self window addMorph: self saveButton.
		self window addMorph: self cancelButton