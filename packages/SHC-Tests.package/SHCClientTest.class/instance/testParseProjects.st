tests
testParseProjects
	| json list |
	json := self clientInstance listProjects: 'ShcTestUser'.
	list := self clientInstance parseProjects: json.
	self assert: (list size = 2).
	self assert: ((list at: 1) name = 'ShcTestProject0').
	self assert: ((list at: 1) path = '~ShcTestUser/ShcTestProject0').
	self assert: ((list at: 1) ownerUid = 'f943d5e0-889e-4108-85de-3cc4c0da0997').
	self assert: ((list at: 1) owner = 'ShcTestUser').
	self assert: ((list at: 2) name = 'ShcTestProject1').