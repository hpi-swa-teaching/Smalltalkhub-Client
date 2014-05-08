as yet unclassified
login: aUserName password: aPassword
	| url content result |
	self username: aUserName.
	
	self webclient ifNil: [self webclient: WebClient new].
	
	content := '{"username":"', aUserName, '","password":"', aPassword, '"}'.
	url := 'http://smalltalkhub.com/hub/login'.

	result := self webclient httpPost: url content: content  type: 'text/json'.
		
	^ (result isSuccess)
 