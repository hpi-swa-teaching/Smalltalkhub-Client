as yet unclassified
testGetUserData
	| jsondecoded |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	jsondecoded := self requestInstance responseContent.
	self assert: (jsondecoded = '{"location":"IN DA CLOUD","website":"http://hpi.de","admin":false,"watching":["e4679435-a3de-46e7-8ed8-b542b66751c8"],"fullName":"ShcTestUser","path":"~ShcTestUser","email":"test@user.com","name":"ShcTestUser","created":3576896580,"mcUsername":"","username":"ShcTestUser","sid":"f943d5e0-889e-4108-85de-3cc4c0da0997"}')