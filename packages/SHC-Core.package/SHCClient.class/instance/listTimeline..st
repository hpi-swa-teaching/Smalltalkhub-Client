api-calls
listTimeline: aUserName
	|timelineRequest result |
	timelineRequest := SHCTimelineRequest withWebClient: self webclient.
	timelineRequest username: self username.
	result := timelineRequest execute.
	result ifTrue: [^ WebUtils jsonDecode: (ReadStream on: timelineRequest responseContent)]
	ifFalse: [ ^ nil]
