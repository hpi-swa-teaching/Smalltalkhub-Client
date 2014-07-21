api-calls
listContributorsFromProject: aProjectName from: aUserName
	| userArray |
	userArray := self fetchContributorsFromProject: aProjectName from: aUserName.
	userArray ifNil: [ ^#() ].
	^self parseUsers: userArray