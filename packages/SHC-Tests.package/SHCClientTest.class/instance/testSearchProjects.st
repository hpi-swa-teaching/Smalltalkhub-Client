tests
testSearchProjects
	| result |	
	"disabled until sth fixes their search - at the moment we get a 500 server error"
	"result := self clientInstance fetchSearchProjects: 'ShcTestProject1'.
	self assert: (result size = 1).
	self assert: ((result at: 2) = 'ShcTestUser1/ShcTestProject1')"