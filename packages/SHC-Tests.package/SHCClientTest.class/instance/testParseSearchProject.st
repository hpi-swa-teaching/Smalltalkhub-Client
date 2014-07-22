tests
testParseSearchProject
	| pro |
	pro := self clientInstance parseSearchProject: 'ShcTestUser1/ShcTestProject1'.
	self assert: (pro owner = 'ShcTestUser1').
	self assert: (pro name = 'ShcTestProject1').
	self assert: (pro path = '~ShcTestUser1/ShcTestProject1')