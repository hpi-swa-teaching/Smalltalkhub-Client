tests
testFetchProjects02
	| jsondecoded namesList |
	jsondecoded := self clientInstance fetchProjects: 'ShcTestUser1'.
	
	namesList := OrderedCollection new.
	jsondecoded do: [:element | namesList add: (element at: 'name') ].
	
	namesList := namesList sortBy: [:a :b | a < b].
	
	self assert: ((namesList at: 1) = 'ShcTestProject1').
	