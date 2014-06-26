accessing
projectSearchResults: aList
	(aList size > self maximalSearchResultAmount) 
		ifTrue: [ projectSearchResults := aList first: (self maximalSearchResultAmount). ^ self].
	projectSearchResults := aList