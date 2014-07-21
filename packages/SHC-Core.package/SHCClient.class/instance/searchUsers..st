api-calls
searchUsers: aSearchTerm
	| userArray |
	userArray := self fetchUsers: aSearchTerm.
	userArray ifNil: [ ^ #()].
	^ self parseSearchUsers: userArray