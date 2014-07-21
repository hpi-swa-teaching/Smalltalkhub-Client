as yet unclassified
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/add-member/',(self username).
	^ url