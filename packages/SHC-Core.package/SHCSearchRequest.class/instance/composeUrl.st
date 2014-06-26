configuration
composeUrl 
	| url |
	url := super composeUrl.
	url := url,'/?term=',(self searchTerm).
	^ url