search
isUser: aSelectedIndex
	| i listSize|
	i := self userListIndex: aSelectedIndex.
	(i = 0) ifTrue: [ ^ false ].
	^ true