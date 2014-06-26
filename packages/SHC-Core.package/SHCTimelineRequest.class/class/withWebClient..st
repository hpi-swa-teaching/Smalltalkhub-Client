as yet unclassified
withWebClient: aWebClient
	| request |
	request := SHCTimelineRequest new.
	request webclient: aWebClient.
	^ request 