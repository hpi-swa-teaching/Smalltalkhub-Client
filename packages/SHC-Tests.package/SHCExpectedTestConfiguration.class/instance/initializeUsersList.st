as yet unclassified
initializeUsersList
	| tmpUser |
	self usersList: Dictionary new.

	tmpUser := SHCUser new.
	tmpUser
		name: 'ShcTestUser0';
		fullName: 'ShcTestUser0';
		email: 'shctestuser0@swt.hpi';
		location: '';
		website: ''.
		
	self usersList at: tmpUser name put: tmpUser.
	
	tmpUser := SHCUser new.
	tmpUser
		name: 'ShcTestUser1';
		fullName: 'ShcTestUser1';
		email: 'shctestuser1@swt.hpi';
		location: '';
		website: ''.
		
	self usersList at: tmpUser name put: tmpUser.