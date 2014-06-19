as yet unclassified
testCreation
	| w c |
	c := SHCClient new.
	w := SHCWindow newWithClient: c.
	self assert: (w notNil).
	self assert: (w client = c).