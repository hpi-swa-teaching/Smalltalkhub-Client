configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/contributors'.
	^ url