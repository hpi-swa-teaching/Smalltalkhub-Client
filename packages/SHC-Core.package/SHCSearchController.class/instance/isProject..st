search
isProject: aSelectedIndex
	| i |
	i := self projectListIndex: aSelectedIndex.
	(i = 0) ifTrue: [^ false].
	^ true