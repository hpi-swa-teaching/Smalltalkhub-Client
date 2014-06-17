search
searchAll: aSearchTerm
	(aSearchTerm size < self minimalSearchTermLength) 
		ifTrue: [self projectSearchResults: #().
				self userSearchResults: #().
				^ self].
			
	self projectSearchResults: (self client searchProjects: aSearchTerm).
	self userSearchResults: (self client searchUsers: aSearchTerm)
			
	