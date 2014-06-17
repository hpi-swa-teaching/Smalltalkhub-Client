api-calls
login
	| request |
	request := SHCLoginRequest withWebClient: self webclient.
	request username: self username.
	request password: self password.
	^ request execute.
	
 