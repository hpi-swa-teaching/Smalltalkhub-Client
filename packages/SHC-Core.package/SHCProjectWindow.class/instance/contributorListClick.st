ui-events
contributorListClick
	| index selectedcontributor |

	index := self contributorListMorphIndex.
	(index = 0) ifTrue: [^ nil].
	
	selectedcontributor := self contributor at: (index).
	SHCProfileWindow showWithClient: (self client) user: selectedcontributor