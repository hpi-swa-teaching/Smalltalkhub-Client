as yet unclassified
isUser: aSelectedIndex
	| i listSize|
	i := aSelectedIndex - 1.
	i := i - self projectSearchResults size.
	i := i - 1.
	listSize := self userSearchResults size.
	(i < 1) ifTrue: [ ^ false ].
	(listSize >= i) ifTrue: [^ true].
	^ false