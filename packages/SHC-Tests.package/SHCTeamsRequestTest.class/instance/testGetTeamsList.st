as yet unclassified
testGetTeamsList
	| jsondecoded |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	jsondecoded := self requestInstance responseContent.
	self assert: (jsondecoded = '[{"users":["f943d5e0-889e-4108-85de-3cc4c0da0997"],"path":"~ShcTestTeam0","sid":"6db12aae-24ac-4ecd-99a5-34ddaa75fc7a","name":"ShcTestTeam0","created":3578221992}]')