running
testLogout
	self assert: (self loginInstance logout).
	self assert: (self loginInstance label = 'SmalltalkHub Client')