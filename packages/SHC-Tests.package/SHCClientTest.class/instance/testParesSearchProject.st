tests
testParesSearchProject
	| pro |
	pro := self clientInstance parseSearchProject: 'ShcTestUser/ShcTestProject'.
	self assert: (pro owner = 'ShcTestUser').
	self assert: (pro name = 'ShcTestProject').
	self assert: (pro path = '~ShcTestUser/ShcTestProject')