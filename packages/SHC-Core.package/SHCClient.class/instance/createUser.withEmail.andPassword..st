api-calls
createUser: aUserName withEmail: anEmailAdress andPassword: aPassword
	| request |
	request := SHCCreateUserRequest withWebClient: self webclient.
	request username: aUserName.
	request password: aPassword.
	request email: anEmailAdress.
	^ request execute