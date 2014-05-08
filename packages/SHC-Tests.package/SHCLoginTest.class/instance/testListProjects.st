running
testListProjects
	| jsondecoded |
	jsondecoded := self loginInstance listProjects: 'ShcTestUser'.
	self assert: (jsondecoded size = 2)
	