as yet unclassified
testGetProject
	| response |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	
	self assert: (response = '[{"tagsString":"","owner":"f943d5e0-889e-4108-85de-3cc4c0da0997","website":"","publicWrite":false,"projectDescription":"","path":"~ShcTestUser/ShcTestProject0","name":"ShcTestProject0","created":3577017138,"contributors":[],"sid":"01d8cad6-e20f-4fe0-beea-ee36675285d6","license":"MIT","commitHook":"","public":true},{"tagsString":"","owner":"f943d5e0-889e-4108-85de-3cc4c0da0997","website":"","publicWrite":false,"projectDescription":"","path":"~ShcTestUser/ShcTestProject1","name":"ShcTestProject1","created":3577017236,"contributors":[],"sid":"e5a11500-847c-4a53-817d-929485321d32","license":"MIT","commitHook":"","public":true}]')