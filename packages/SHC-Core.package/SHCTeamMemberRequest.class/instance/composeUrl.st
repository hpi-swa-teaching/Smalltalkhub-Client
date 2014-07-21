configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/members'.
	^ url