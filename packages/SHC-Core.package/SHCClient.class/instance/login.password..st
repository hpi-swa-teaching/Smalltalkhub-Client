api-calls
login: aUserName password: aPassword
	| request |
	self username: aUserName.
	
	request := SHCLoginRequest withWebClient: self webclient.
	request username: aUserName.
	request password: aPassword.
	^ request execute.
	
 