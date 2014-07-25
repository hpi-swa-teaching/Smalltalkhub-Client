utilities
usernamesAsString: aUserList
	| namesList |
	namesList := OrderedCollection new.
	aUserList do: [:element | namesList add: (element name) ].
	^ namesList