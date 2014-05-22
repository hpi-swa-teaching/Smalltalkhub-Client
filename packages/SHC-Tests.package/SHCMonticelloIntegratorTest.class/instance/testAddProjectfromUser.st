running
testAddProjectfromUser
	| repo web |
	repo := self mcinstance addProject: 'ShcTestProject0' fromUser: 'ShcTestUser' withPassword: 'HurfDurf'.
	self assert: (repo packageName = 'ShcTestProject0').
	self assert: (repo repositoryGroup repositories size = 2).
	web := repo repositoryGroup repositories  at: 2.
	self assert: (web user = 'ShcTestUser').
	self assert: (web password = 'HurfDurf').
	self assert: (web locationWithTrailingSlash = 'http://smalltalkhub.com/mc/ShcTestUser/ShcTestProject0/main/').