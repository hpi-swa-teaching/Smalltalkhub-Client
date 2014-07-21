as yet unclassified
initializeUsersList
	| tmpUser |
	self usersList: OrderedCollection new.

	tmpUser := SHCUser new.
	tmpUser
		name: 'ShcTestUser0';
		fullName: 'ShcTestUser0';
		email: 'shctestuser0@swt.hpi'.
		
	self usersList add: tmpUser.
	
	tmpUser := SHCUser new.
	tmpUser
		name: 'ShcTestUser1';
		fullName: 'ShcTestUser1';
		email: 'shctestuser1@swt.hpi'.
		
	self usersList add: tmpUser.