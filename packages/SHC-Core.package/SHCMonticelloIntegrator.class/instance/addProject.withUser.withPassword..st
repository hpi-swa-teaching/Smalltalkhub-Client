monticello
addProject: aShcProject withUser: aUserName withPassword: aPassword
	| urlstring repository |
	urlstring := self buildHttpString: (aShcProject name) withUser: (aShcProject owner).
	repository := self createHttpRepository: urlstring withUser: aUserName andPassword: aPassword.
	
	self addLocalPackage:  (aShcProject name).
	^ self addRepository: repository toPackage:  (aShcProject name)