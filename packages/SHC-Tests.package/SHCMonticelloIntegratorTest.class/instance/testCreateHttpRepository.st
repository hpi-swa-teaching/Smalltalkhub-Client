running
testCreateHttpRepository
	| repo |
	repo := self mcinstance createHttpRepository: 'testUrl' withUser: 'user'  andPassword: 'pw'.
	self assert: (repo user = 'user').
	self assert: (repo password = 'pw').
	self assert: (repo locationWithTrailingSlash = 'testUrl/').