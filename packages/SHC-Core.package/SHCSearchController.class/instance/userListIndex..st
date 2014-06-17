search
userListIndex: anInteger
	| i |
	i := anInteger - 1.
	i := i - (self projectSearchResults size).
	i := i - 1.
	(i > self userSearchResults size) ifTrue: [i := 0].
	(i < 0) ifTrue: [i := 0].
	^ i.