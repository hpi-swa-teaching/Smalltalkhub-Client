utilities
projectInformation: aKey asStringFrom: aDecodedJsonArray
	| informationList |
	informationList := OrderedCollection new.
	aDecodedJsonArray do: [:element | informationList add: (element at: aKey) ].
	^ informationList.