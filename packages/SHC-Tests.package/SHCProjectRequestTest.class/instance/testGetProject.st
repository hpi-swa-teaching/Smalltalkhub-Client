as yet unclassified
testGetProject
	| response |
	self requestInstance username: 'ShcTestUser'.
	self requestInstance projectname: 'ShcTestProject0'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	
	self assert: (response = '{"tagsString":"swt1","owner":"f943d5e0-889e-4108-85de-3cc4c0da0997","website":"https://github.com/SWTI2014/SWTI2014-Project-04","publicWrite":false,"projectDescription":"Testdescription.","path":"~ShcTestUser/ShcTestProject0","name":"ShcTestProject0","created":3577024338,"contributors":[],"sid":"01d8cad6-e20f-4fe0-beea-ee36675285d6","license":"MIT","commitHook":"","public":true}')