api-calls
doesUserExist: aName
	| userRequest |
	userRequest := SHCUserRequest withWebClient: self webclient.
	userRequest username: aName.
	^ userRequest execute