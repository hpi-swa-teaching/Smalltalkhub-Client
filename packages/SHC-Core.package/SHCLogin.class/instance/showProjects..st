as yet unclassified
showProjects: username
	| jsonResponse projectCollection |

	jsonResponse := self listProjects: username.
	projectCollection := self projectNamesAsString: jsonResponse.
	
	projectList contents: 'My projects:', Character cr asString.
	
	projectCollection do:
		[:project | projectList contents:
			projectList contents,
			Character cr asString,
			project]