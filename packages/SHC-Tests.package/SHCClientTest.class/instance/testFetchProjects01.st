tests
testFetchProjects01
	| jsondecoded |
	jsondecoded := self clientInstance fetchProjects: 'ShcTestUser'.
	self assert: (jsondecoded size = 2)
	