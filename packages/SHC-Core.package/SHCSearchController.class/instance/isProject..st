as yet unclassified
isProject: aSelectedIndex
	| i listSize |
	i := aSelectedIndex - 1.
	(i = 0) ifTrue: [^ false].
	listSize := self projectSearchResults size.
	(listSize >= i) ifTrue: [^ true].
	^ false