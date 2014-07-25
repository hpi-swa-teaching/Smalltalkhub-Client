configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/add-contributor',(self contributor).
	^ url