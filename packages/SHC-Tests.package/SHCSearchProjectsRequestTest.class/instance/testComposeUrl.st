as yet unclassified
testComposeUrl
	| url |
	self requestInstance searchTerm: 'Shc'.
	url := self requestInstance composeUrl.
	self assert: (url = 'http://smalltalkhub.com/hub/projects/?term=Shc')