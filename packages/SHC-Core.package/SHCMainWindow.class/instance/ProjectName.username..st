depreceated
ProjectName: aProjectName username: aUserName
	| url content result |
	self username: aUserName.
	
	content := ''.
	url := 'http://smalltalkhub.com/hub/', aUserName, '/', aProjectName.

	result := self webclient httpPost: url content: content type: 'text/json'.
		
	^ result isSuccess
 