api-calls
logout
	| request |
	request := SHCLogoutRequest withWebClient: self webclient.	
	^ request execute.