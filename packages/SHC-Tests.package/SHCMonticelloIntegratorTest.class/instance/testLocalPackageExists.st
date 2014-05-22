running
testLocalPackageExists
	self assert: (self mcinstance localPackageExists: 'Collections').
	self assert: ((self mcinstance localPackageExists: 'NotExistentPackageNameHere') = false).