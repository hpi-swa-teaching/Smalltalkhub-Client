as yet unclassified
initializeWatchingList
	| tmpUsersList |
	self watchingList: Dictionary new.
	tmpUsersList := OrderedCollection new.
	

	tmpUsersList add: 'ShcTestUser0'.
	self watchingList at: 'ShcTestProject1' put: tmpUsersList.