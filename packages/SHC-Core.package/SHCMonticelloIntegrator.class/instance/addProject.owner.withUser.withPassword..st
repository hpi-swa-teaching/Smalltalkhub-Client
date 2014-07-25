monticello
addProject: aProjectNameString owner: aOwnerName withUser: aUserName withPassword: aPassword
	| urlstring repository |
	urlstring := self buildHttpString: aProjectNameString withUser: aOwnerName.
	repository := self createHttpRepository: urlstring withUser: aUserName andPassword: aPassword.
	
	self addLocalPackage: aProjectNameString.
	^ self addRepository: repository toPackage: aProjectNameString