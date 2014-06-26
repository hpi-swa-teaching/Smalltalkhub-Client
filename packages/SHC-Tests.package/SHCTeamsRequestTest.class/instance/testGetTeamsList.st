as yet unclassified
testGetTeamsList
	| response |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	self assert: (response = '[{"users":["f943d5e0-889e-4108-85de-3cc4c0da0997"],"path":"~ShcTestTeam0","sid":"6db12aae-24ac-4ecd-99a5-34ddaa75fc7a","name":"ShcTestTeam0","created":3578221992},{"users":["f943d5e0-889e-4108-85de-3cc4c0da0997"],"path":"~ShcTestTeam1","sid":"52c08d8f-3b2b-4fbf-99a4-413f415b36f2","name":"ShcTestTeam1","created":3579439929}]')