utilities
projectNamesAsString: aDecodedJsonArray
	| namesList |
	namesList := OrderedCollection new.
	aDecodedJsonArray do: [:element | namesList add: (element at: 'name') ].
	^ namesList.