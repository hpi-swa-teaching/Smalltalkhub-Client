configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/watchers'.
	^ url