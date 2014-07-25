search
userFromResult: anInteger
	"returns the user at index anInteger from the readableSearchResults list"
	| index |
	index := self userListIndex: anInteger.
	(index = 0) ifTrue: [^ nil].
	^ self userSearchResults at: index
	