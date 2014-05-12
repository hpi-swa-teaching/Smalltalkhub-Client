api-calls
logout
	| request response |
	request := SHCLogoutRequest withWebClient: self webclient.	
	response := request execute.
   ^ response isSuccess