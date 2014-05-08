accessing
testWebClient
	| client url request result|
	
	url := 'http://smalltalkhub.com/'.
	
	client := WebClient new initializeFromUrl: url.
	request := client requestWithUrl: url.
	request method: 'GET'.
	request headerAt: 'Content-Length' put: 0.
	request headerAt: 'Content-Type' put: 'application/x-www-form-urlencoded'.
	"request headerAt: 'Cookie' put: '_smalltalkhub_u1=; _smalltalkhub_u2='"
	
	request content: ''.
	result := client sendRequest: request.	
		
	self break.
	^ result
 