as yet unclassified
testGetTimeline
	| response |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	
	"for now this only tests if the response is valid JSON and not empty"
	self assert: (response isEmpty not).
	self assert: ((WebUtils jsonDecode: (ReadStream on: response)) notNil)