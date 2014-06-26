configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/',(self username), '/watching'.
	^ url