configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url, '/watching'.
	^ url