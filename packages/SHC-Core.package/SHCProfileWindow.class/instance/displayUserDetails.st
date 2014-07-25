ui-actions
displayUserDetails
	| user |
	user := self client listUser: self user.
	
	self window setLabel: 'Profile: ~', self user.
	self usernameLabel contents: '~', self user.
	self displayNameLabel contents: user fullName.
	self emailLabel contents: 'E-Mail: ', user email.
	self locationLabel contents: 'Location: ', user location.
	self websiteLabel contents: 'Website: ', user website