as yet unclassified
testCreation
	| w c |
	c := SHCClient new.
	w := SHCWindow showWithClient: c.
	self assert: (w notNil).
	self assert: (w client = c).