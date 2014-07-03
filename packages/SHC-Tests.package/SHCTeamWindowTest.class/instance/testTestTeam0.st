running
testTestTeam0
	self instance teamname: 'ShcTestTeam0'.
	self instance update.
	
	self assert: (self instance teamMemberNames size = 1).
	self assert: ((self instance team members at: 1) name = 'ShcTestUser').	

	self assert: (self instance projectNames size = 1).
	self assert: ((self instance team projects at: 1) name = 'ShcTestProject2').