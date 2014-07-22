tests
testFetchProjects01
	| jsondecoded |
	jsondecoded := self clientInstance fetchProjects: 'ShcTestUser1'.
	self assert: (jsondecoded size = 1)
	