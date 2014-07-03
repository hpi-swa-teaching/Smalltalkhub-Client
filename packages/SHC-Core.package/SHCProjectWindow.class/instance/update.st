ui-actions
update	
	self displayProjectDetails.
	self displayWatchers.
	self displayContributors.	
	self updateMonticelloUi.	
	
	(self clientIsOwner) 
			ifTrue: [	self enableEditing]
			ifFalse: [self disableEditing]