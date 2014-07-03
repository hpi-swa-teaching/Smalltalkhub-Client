ui-actions
displayWatching
	|watching|
	watching := self client listWatching: self user.
	(watching isEmpty)
	ifFalse: [self watching: watching]
	ifTrue: [self watching: nil ].
	self changed: #watching;
	       changed: #watchingIndex.