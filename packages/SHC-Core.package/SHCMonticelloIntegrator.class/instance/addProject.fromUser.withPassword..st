monticello
addProject: aProjectNameString fromUser: aUserNameString withPassword: aPasswordString
	| urlstring repository |
	urlstring := self buildHttpString: aProjectNameString withUser: aUserNameString.
	repository := self createHttpRepository: urlstring withUser: aUserNameString andPassword: aPasswordString.
	
	self addLocalPackage: aProjectNameString.
	^ self addRepository: repository toPackage: aProjectNameString