running
testLogout
	self assert: (self loginInstance logout).
	self assert: (self loginInstance window label = 'SmalltalkHub Client')