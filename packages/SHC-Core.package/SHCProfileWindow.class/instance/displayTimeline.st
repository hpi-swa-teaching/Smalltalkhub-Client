ui-actions
displayTimeline
	| timeline |
	timeline := self client listTimeline: self user.
	(timeline isEmpty)
	ifFalse: [self timeline: (timeline collect: [:dict|
			 (dict at: 'username'), ' ', (dict at: 'title'), ' ', (dict at: 'project')])]
	ifTrue: [self timeline: (nil) ].
	self changed: #timeline;
	       changed: #timelineIndex.