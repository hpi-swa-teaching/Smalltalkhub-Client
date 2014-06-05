utilities
projectNamesAsString: aProjectList
	| namesList |
	namesList := OrderedCollection new.
	aProjectList do: [:element | namesList add: (element name) ].
	^ namesList.