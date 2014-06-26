search
readableSearchResults
	| list indent |
	indent := '   '.
	list := OrderedCollection new.
	list add: 'Projects:'.
	self projectSearchResults do: [:each | list add: (indent, each name)].
	list add: 'Users:'.
	self userSearchResults do: [:each | list add: (indent, each name)].
	^ list.