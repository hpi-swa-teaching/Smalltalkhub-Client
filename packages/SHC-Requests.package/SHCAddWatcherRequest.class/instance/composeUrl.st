as yet unclassified
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/watch'.
	^ url