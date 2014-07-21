tests
testParseProjects
	| json list |
	json := self clientInstance fetchProjects: 'ShcTestUser'.
	list := self clientInstance parseProjects: json.
	self assert: (list size = 2).
	self assert: ((list at: 1) name = 'ShcTestProject0').
	self assert: ((list at: 1) path = '~ShcTestUser/ShcTestProject0').
	self assert: ((list at: 1) owner = 'ShcTestUser').
	self assert: ((list at: 2) name = 'ShcTestProject1').