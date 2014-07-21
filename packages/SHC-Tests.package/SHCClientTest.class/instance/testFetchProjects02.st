tests
testFetchProjects02
	| jsondecoded namesList |
	jsondecoded := self clientInstance fetchProjects: 'ShcTestUser'.
	
	namesList := OrderedCollection new.
	jsondecoded do: [:element | namesList add: (element at: 'name') ].
	
	namesList := namesList sortBy: [:a :b | a < b].
	
	self assert: (namesList size = 2).
	self assert: ((namesList at: 1) = 'ShcTestProject0').
	self assert: ((namesList at: 2) = 'ShcTestProject1')
	