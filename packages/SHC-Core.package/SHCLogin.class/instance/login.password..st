as yet unclassified
login: aUserName password: aPassword
	| client url content request result|
	self break.
	content := '{"username":"', aUserName, '","password":"', aPassword, '"}'.
	url := 'http://smalltalkhub.com/hub/login'.
	
	client := WebClient new initializeFromUrl: url.
	request := client requestWithUrl: url.
	request method: 'POST'.
	request headerAt: 'Content-Length' put: content size.
	request headerAt: 'Content-Type' put: 'text/json; charset=UTF-8'.
	request headerAt: 'Cookie' put: '_smalltalkhub_u1=; _smalltalkhub_u2='.
	
	request content: content.
	result := client sendRequest: request.	
		
	^ result
 