configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/',(self username),'/',(self projectName).
	^ url