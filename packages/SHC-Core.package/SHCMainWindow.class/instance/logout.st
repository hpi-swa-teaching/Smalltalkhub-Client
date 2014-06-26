ui-actions
logout
	self clearProjectList.
	self applyLoggedOutUi.
	^ self client logout