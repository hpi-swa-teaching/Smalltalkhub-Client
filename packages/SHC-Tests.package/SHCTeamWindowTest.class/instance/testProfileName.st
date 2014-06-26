running
testProfileName

	self instance teamname: 'SWT'. 	
	self instance update.
	
	self assert: self instance teamNameLabel contents = 'SWT'.