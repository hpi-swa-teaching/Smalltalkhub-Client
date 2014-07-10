accessing
userSearchResults: aList
	(aList size > self maximalSearchResultAmount) 
		ifTrue: [ userSearchResults := aList first: (self maximalSearchResultAmount). ^ self].
	userSearchResults := aList