search
searchAll: aSearchTerm
	| projectJsonArray userJsonArray |
	(aSearchTerm size < self minimalSearchTermLength) 
		ifTrue: [self projectSearchResults: #().
				self userSearchResults: #().
				^ self].
			
	projectJsonArray := self client searchProjects: aSearchTerm.
	userJsonArray := self client searchUsers: aSearchTerm.
	self projectSearchResults: (self client parseSearchProjects: projectJsonArray).
	self userSearchResults: (self client parseSearchUsers: userJsonArray).
			
	