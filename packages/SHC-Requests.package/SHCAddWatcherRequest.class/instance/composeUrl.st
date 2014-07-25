configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/watch'.
	^ url