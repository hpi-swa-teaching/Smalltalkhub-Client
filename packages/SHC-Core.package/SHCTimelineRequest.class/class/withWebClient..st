initialization
withWebClient: aWebClient
	| request |
	request := SHCTimelineRequest new.
	request webclient: aWebClient.
	^ request 