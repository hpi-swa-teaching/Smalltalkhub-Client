configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/add-member/',(self username).
	^ url