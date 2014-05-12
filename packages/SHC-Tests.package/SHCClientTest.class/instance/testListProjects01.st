tests
testListProjects01
	| jsondecoded |
	jsondecoded := self clientInstance listProjects: 'ShcTestUser'.
	self assert: (jsondecoded size = 2)
	