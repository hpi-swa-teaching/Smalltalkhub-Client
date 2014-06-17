search
projectFromResult: anInteger
	"returns the project at index anInteger from the readableSearchResults list"
	| index |
	index := self projectListIndex: anInteger.
	(index = 0) ifTrue: [^ nil].
	^ self projectSearchResults at: index.
	