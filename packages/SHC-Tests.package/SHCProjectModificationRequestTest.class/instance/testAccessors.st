as yet unclassified
testAccessors 
	| p |
	p := SHCProject new.
	self requestInstance updatedProject: p.
	self assert: (self requestInstance updatedProject = p buildJson).