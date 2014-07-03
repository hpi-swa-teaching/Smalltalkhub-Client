as yet unclassified
testGetWatchingList
	| response |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	self assert: (response = '["roebrt/test"]')