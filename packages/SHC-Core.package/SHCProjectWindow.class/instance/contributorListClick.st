as yet unclassified
contributorListClick
	| index selectedcontributor |

	index := self contributorListMorphIndex.
	(index = 0) ifTrue: [^ nil].
	
	selectedcontributor := self contributor at: (index).
	SHCProfileWindow newWithClient: (self client) user: selectedcontributor.