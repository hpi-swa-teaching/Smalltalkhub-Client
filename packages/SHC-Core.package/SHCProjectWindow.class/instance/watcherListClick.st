ui-events
watcherListClick
	| index selectedwatcher |

	index := self watcherListMorphIndex.
	(index = 0) ifTrue: [^ nil].
	
	selectedwatcher := self watcher at: (index).
	SHCProfileWindow showWithClient: (self client) user: selectedwatcher.