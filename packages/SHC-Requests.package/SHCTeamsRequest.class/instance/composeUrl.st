configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/teams'.
	^ url