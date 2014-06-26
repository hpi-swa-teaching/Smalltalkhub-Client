search
projectListIndex: anInteger
	| i |
	i := anInteger - 1.
	(i > self projectSearchResults size) ifTrue: [i := 0].
	^ i.