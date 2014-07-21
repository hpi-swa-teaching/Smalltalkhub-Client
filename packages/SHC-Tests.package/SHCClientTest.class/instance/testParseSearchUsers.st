tests
testParseSearchUsers
	| usr |
	usr := self clientInstance searchUsers: 	'ShcTestUser'.
	self assert: (usr size = 1).						
	self assert: ((usr at:1) name = 'ShcTestUser').
			
