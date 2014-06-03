as yet unclassified
createProject
	(self ProjectName: createProjectField contents username: usernameField contents)
	ifTrue:  [createProjectButton color: Color green]
	ifFalse: [createProjectButton color: Color red]