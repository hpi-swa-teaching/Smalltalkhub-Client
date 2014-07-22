tests
testParseProjects
	| json list |
	json := self clientInstance fetchProjects: 'ShcTestUser1'.
	list := self clientInstance parseProjects: json.
	self assert: (list size = 1).
	self assert: ((list at: 1) name = 'ShcTestProject1').
	self assert: ((list at: 1) path = '~ShcTestUser1/ShcTestProject1').