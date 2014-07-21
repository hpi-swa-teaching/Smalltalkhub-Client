configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/',(self projectname).
	^ url