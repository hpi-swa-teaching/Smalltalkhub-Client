as yet unclassified
showProjects: username
	| jsonResponse projectCollection |

	jsonResponse := self listProjects: username.
	projectCollection := self projectNamesAsString: jsonResponse.
	
	projectCollection do:
		[:project | projectList contents:
			projectList content,
			Character cr asString,
			project]