tests
testParesSearchProjects
	| pros pro1 |
	pros := self clientInstance parseSearchProjects: (self clientInstance searchProjects: 'ShcTestProject').
	self assert: (pros size = 2).
	pro1 := pros at: 1.
	self assert: (pro1 name ='ShcTestProject0').
	self assert: (pro1 owner = 'ShcTestUser').
	self assert: ((pros at: 2) name = 'ShcTestProject1')