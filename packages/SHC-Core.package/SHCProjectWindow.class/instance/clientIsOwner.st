ui-actions
clientIsOwner
	^ (self client username = self activeProject owner)