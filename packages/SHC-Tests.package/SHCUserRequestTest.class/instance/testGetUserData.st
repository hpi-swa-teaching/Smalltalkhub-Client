as yet unclassified
testGetUserData
	| jsondecoded |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	jsondecoded := self requestInstance responseContent.
	self assert: (jsondecoded = '{"location":"IN DA CLOUD","website":"http://hpi.de","admin":false,"watching":[],"fullName":"ShcTestUser","path":"~ShcTestUser","email":"test@user.com","name":"ShcTestUser","created":3576874980,"mcUsername":"","username":"ShcTestUser","sid":"f943d5e0-889e-4108-85de-3cc4c0da0997"}')