configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/',(self teamname).
	^ url