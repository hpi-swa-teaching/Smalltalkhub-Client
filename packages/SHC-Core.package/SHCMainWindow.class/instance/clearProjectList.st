ui-actions
clearProjectList
	self projectNames: Array new.
	self projectDetails: OrderedCollection new.
	self changed: #projectNames