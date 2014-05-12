tests
testListProjects02
	| jsondecoded namesList |
	jsondecoded := self clientInstance listProjects: 'ShcTestUser'.
	
	namesList := OrderedCollection new.
	jsondecoded do: [:element | namesList add: (element at: 'name') ].
	
	self assert: (namesList size = 2).
	self assert: ((namesList at: 1) = 'ShcTestProject0').
	self assert: ((namesList at: 2) = 'ShcTestProject1')
	