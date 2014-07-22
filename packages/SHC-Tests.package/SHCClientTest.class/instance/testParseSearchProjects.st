tests
testParseSearchProjects
	| pros pro1 |
	pros := self clientInstance searchProjects: 'ShcTestProject1'.
	self assert: (pros size = 1).
	pro1 := pros at: 1.
	self assert: (pro1 name ='ShcTestProject1').
	self assert: (pro1 owner = 'ShcTestUser1').