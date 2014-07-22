running
testTestTeam0
	self instance teamname: 'ShcTestTeam0'.
	self instance update.
	
	self assert: (self instance teamMemberNames size = 2).
	self assert: ((self instance team members at: 1) name = 'ShcTestUser0').	
	self assert: ((self instance team members at: 2) name = 'ShcTestUser1').	

	self assert: (self instance projectNames size = 1).
	self assert: ((self instance team projects at: 1) name = 'ShcTestProject0').