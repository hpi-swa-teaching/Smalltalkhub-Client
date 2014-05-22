running
testbuildHttpString
	| string reference |
	reference :='http://smalltalkhub.com/mc/User/Project/main'.	
	string := self mcinstance buildHttpString: 'Project' withUser: 'User'.
	self assert: (reference = string). 