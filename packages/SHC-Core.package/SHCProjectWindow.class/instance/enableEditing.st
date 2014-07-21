ui-actions
enableEditing
		self saveButton position: self window position + (353@330).
     	self cancelButton position: self window position + (300@330).
		self window addMorph: self saveButton.
		self window addMorph: self cancelButton.