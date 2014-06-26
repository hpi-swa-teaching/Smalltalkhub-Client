as yet unclassified
testIndexClassification
	self searchinstance searchAll: 'ShcTest'.
	
	self assert: (self searchinstance isProject: 1) not.
	self assert: (self searchinstance isProject: 2).
	self assert: (self searchinstance isProject: 3).
	self assert: (self searchinstance isProject: 4).
	self assert: (self searchinstance isProject: 5) not.
	
	self assert: (self searchinstance isUser: 1) not.
	self assert: (self searchinstance isUser: 2) not.
	self assert: (self searchinstance isUser: 3) not.
	self assert: (self searchinstance isUser: 4) not.
	self assert: (self searchinstance isUser: 5) not.