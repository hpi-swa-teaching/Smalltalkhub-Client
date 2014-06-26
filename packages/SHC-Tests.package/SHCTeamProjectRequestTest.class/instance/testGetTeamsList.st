as yet unclassified
testGetTeamsList
	| response |
	self requestInstance teamname: 'SWT'.
	self requestInstance execute.
	response := self requestInstance responseContent.
	self assert: (response = '[{"tagsString":"l33t,1337,leet","owner":"0c8e6d46-464d-48a6-8e23-5cd7dc84a6b5","website":"http://hackertyper.com/","publicWrite":false,"projectDescription":"Me GOTz 1337","path":"~SWT/L33TPr0j3ct","name":"L33TPr0j3ct","created":3575811044,"contributors":[],"sid":"5cf8546c-ae6d-49b5-af83-51e843b808c7","license":"LGPLv2","commitHook":"","public":true}]')