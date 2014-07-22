tests
testParseSearchUsers
	| usr |
	usr := self clientInstance searchUsers: 'ShcTestUser1'.
	self assert: (usr size = 1).						
	self assert: ((usr at:1) name = 'ShcTestUser1').
			
