as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCProjectWatcherRequest new.
	request webclient: aWebClient.
	^ request