as yet unclassified
testGetWatchingList
	| jsondecoded |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	jsondecoded := self requestInstance responseContent.
	self assert: (jsondecoded = '[{"type":"project","projectId":"e4679435-a3de-46e7-8ed8-b542b66751c8","title":"created project","project":"roebrt/test","description":"","email":"roberasd@masil.com","created":3575784023,"sid":"479ab7f2-a906-4f05-8918-00b955c379f4","username":"roebrt","timestamp":3575776823}]')